import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:yourone/common/app_primary_button.dart';

class AppSingleChoice<T extends Enum> extends HookWidget {
  AppSingleChoice({
    super.key,
    required this.onSave,
    required this.formName,
    required this.formLabel,
    required this.enumChoice,
    required this.buttonText,
    this.isRequired = false,
  });

  final List<T> enumChoice;
  final String formName;
  final String formLabel;
  final Function(T?) onSave;
  final String buttonText;
  final bool isRequired;

  void _onChanged(dynamic val) => print(val.toString());
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    final searchController = useTextEditingController(text: '');

    final filteredList = useState(enumChoice);

    searchController.addListener(() {
      final filter = searchController.text.toLowerCase();

      filteredList.value = (enumChoice as dynamic)
          .where((element) => element.toString().toLowerCase().contains(filter))
          .toList();
    });

    return Expanded(
      child: Column(
        children: [
          TextField(
            controller: searchController,
            keyboardType: TextInputType.text,
          ),
          FormBuilder(
            key: _formKey,
            autovalidateMode: AutovalidateMode.disabled,
            onChanged: () {
              _formKey.currentState!.save();
              debugPrint(_formKey.currentState!.value.toString());
            },
            child: SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.6,
                child: FormBuilderRadioGroup<T>(
                  orientation: OptionsOrientation.vertical,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                    labelText: formLabel,
                    border: InputBorder.none,
                  ),
                  name: formName,
                  // initialValue: const ['Dart'],
                  options: (filteredList.value)
                      .map(
                        (e) => FormBuilderFieldOption(
                          value: e,
                          child: Text(e.name),
                        ),
                      )
                      .toList(),
                  onChanged: _onChanged,

                  validator: FormBuilderValidators.compose(
                      [if (isRequired) FormBuilderValidators.required()]),
                ),
              ),
            ),
          ),
          const Spacer(),
          AppButton.primary(
            text: buttonText,
            onTap: () {
              if (_formKey.currentState?.saveAndValidate() ?? false) {
                debugPrint(_formKey.currentState?.value.toString());

                onSave(_formKey.currentState?.value[formName]);
              } else {
                debugPrint(_formKey.currentState?.value.toString());
                debugPrint('validation failed');
              }
            },
          )
        ],
      ),
    );
  }
}
