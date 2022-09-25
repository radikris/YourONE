import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:yourone/common/app_primary_button.dart';
import 'package:yourone/extensions/extensions.dart';
import 'package:yourone/theme/text_styles.dart';
import 'package:yourone/util/helper.dart';

class AppSingleChoice<T extends Enum> extends HookWidget {
  AppSingleChoice({
    super.key,
    required this.onSave,
    required this.formName,
    required this.formLabel,
    required this.enumChoice,
    required this.buttonText,
    this.isRequired = false,
    this.renderChild,
  });

  final List<T> enumChoice;
  final String formName;
  final String formLabel;
  final Function(T?) onSave;
  final WidgetChild<T>? renderChild;

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
          Text(
            formLabel,
            style: TextStyles.bold18,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 32,
          ),
          TextField(
            controller: searchController,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
              hintText: 'Enter a search term',
            ),
          ),
          Expanded(
            child: FormBuilder(
              key: _formKey,
              autovalidateMode: AutovalidateMode.disabled,
              onChanged: () {
                _formKey.currentState!.save();
                debugPrint(_formKey.currentState!.value.toString());
              },
              child: SingleChildScrollView(
                physics: const ClampingScrollPhysics(),
                child: SizedBox(
                  child: FormBuilderRadioGroup<T>(
                    orientation: OptionsOrientation.vertical,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    decoration: InputDecoration(
                      labelText: formName.capitalize(),
                      border: InputBorder.none,
                    ),
                    name: formName,
                    // initialValue: const ['Dart'],
                    options: (filteredList.value)
                        .map(
                          (e) => FormBuilderFieldOption(
                            value: e,
                            child: renderChild != null
                                ? renderChild?.call(e)
                                : Text(
                                    e.name,
                                    style: TextStyles.bold14,
                                  ),
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
          ),
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
