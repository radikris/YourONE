import 'dart:async';
import 'dart:convert';

import 'package:chopper/chopper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:uuid/uuid.dart';
import 'package:yourone/common/app_primary_button.dart';
import 'package:yourone/theme/app_dimen.dart';
import 'package:yourone/theme/text_styles.dart';
import 'package:yourone/util/helper.dart';

class AppPlacePicker extends StatefulHookWidget {
  const AppPlacePicker(
      {this.currentPlace,
      this.currentAddress,
      this.initialValue,
      required this.buttonText,
      required this.formName,
      required this.formLabel,
      required this.isRequired,
      required this.onSave,
      Key? key})
      : super(key: key);

  final String buttonText;
  final String formName;
  final bool isRequired;
  final String formLabel;
  final String? initialValue;
  final LatLng? currentPlace;
  final String? currentAddress;
  final Function(String?, LatLng?) onSave;

  @override
  _AppPlacePickerState createState() => _AppPlacePickerState();
}

class _AppPlacePickerState extends State<AppPlacePicker> {
  String? _sessionToken;
  List<dynamic> _placeList = [];
  Timer? _debounce;
  late LatLng? currentPlace;
  late String? currentAddress;
  ChopperClient client = ChopperClient();

  @override
  void initState() {
    super.initState();

    currentAddress = widget.currentAddress;
    currentPlace = widget.currentPlace;
  }

  String kPLACES_API_KEY = "AIzaSyD8tMo9qtP7vaNpzrAD2NGzmFIbAhCULXg";
  void getSuggestion(String input) async {
    String baseURL =
        'https://maps.googleapis.com/maps/api/place/autocomplete/json';
    String request =
        '$baseURL?input=$input&key=$kPLACES_API_KEY&sessiontoken=$_sessionToken&components=country:hu';
    var response = await client.get(request);
    if (response.statusCode == 200) {
      setState(() {
        _placeList = json.decode(response.body)['predictions'];
      });
    } else {
      throw Exception('Failed to load predictions');
    }
  }

  Future<void> getAddressLocation(String address) async {
    String request =
        'https://maps.googleapis.com/maps/api/geocode/json?address=$address&key=$kPLACES_API_KEY';
    var response = await ChopperClient().get(request);
    if (response.statusCode == 200) {
      final location =
          (json.decode(response.body)["results"][0]["geometry"]["location"]);
      currentPlace = LatLng(location["lat"], location["lng"]);
    } else {
      throw Exception('Failed to load predictions');
    }
  }

  void onChanged(String text) {
    if (_debounce?.isActive ?? false) _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 500), () {
      _sessionToken ??= const Uuid().v4();

      getSuggestion(text);
    });
  }

  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    final _controller = useTextEditingController(text: widget.currentAddress);
    _controller.addListener(() {
      onChanged(_controller.text);
    });

    return Column(
      children: [
        Text(
          widget.formLabel,
          style: TextStyles.bold18,
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 32,
        ),
        FormBuilder(
          key: _formKey,
          child: FormBuilderTextField(
            initialValue: widget.initialValue,
            name: widget.formName,
            controller: _controller,
            validator: FormBuilderValidators.compose([
              if (widget.isRequired) FormBuilderValidators.required(),
            ]),
            decoration: InputDecoration(
                focusColor: Colors.white,
                floatingLabelBehavior: FloatingLabelBehavior.never,
                prefixIcon: Icon(Icons.map_outlined)),
          ),
        ),
        Expanded(
          child: ListView.builder(
            physics: ClampingScrollPhysics(),
            itemCount: _placeList.length,
            itemBuilder: (context, index) {
              final address = _placeList[index]["description"];
              return ListTile(
                contentPadding: AppDimen.vertical4,
                onTap: () async {
                  await getAddressLocation(address);
                  setState(() {
                    _controller.text = address;
                    currentAddress = address;
                    _placeList.clear();
                  });
                },
                title: Text(
                  address,
                  style: TextStyles.bold16,
                ),
              );
            },
          ),
        ),
        AppButton.primary(
          text: widget.buttonText,
          onTap: () {
            if (_formKey.currentState?.saveAndValidate() ?? false) {
              if (currentAddress != null && currentPlace != null) {
                widget.onSave(currentAddress, currentPlace);
              }
            }
          },
        )
      ],
    );
  }
}
