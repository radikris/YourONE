import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:yourone/common/app_primary_button.dart';
import 'package:yourone/extensions/extensions.dart';
import 'package:yourone/theme/text_styles.dart';

class AppInputForm extends StatelessWidget {
  AppInputForm(
      {Key? key,
      required this.buttonText,
      required this.formName,
      required this.formLabel,
      required this.isNumeric,
      required this.onSave,
      required this.maxValue,
      required this.isRequired,
      this.initialValue})
      : super(key: key);

  final String buttonText;
  final String formName;
  final String formLabel;
  final String? initialValue;
  final bool isNumeric;
  final bool isRequired;
  final int maxValue;
  final Function(String?) onSave;

  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          formLabel,
          style: TextStyles.bold18,
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 32,
        ),
        FormBuilder(
          key: _formKey,
          child: FormBuilderTextField(
            initialValue: initialValue,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            name: formName,
            decoration: InputDecoration(
              labelText: formName.capitalize(),
            ),

            validator: FormBuilderValidators.compose([
              FormBuilderValidators.required(),
              if (isNumeric) FormBuilderValidators.numeric(),
              isNumeric && isRequired
                  ? FormBuilderValidators.max(maxValue)
                  : FormBuilderValidators.maxLength(maxValue)
            ]),
            // initialValue: '12',
            keyboardType: isNumeric ? TextInputType.number : TextInputType.text,
          ),
        ),
        const Spacer(),
        AppButton.primary(
          text: buttonText,
          onTap: () {
            if (_formKey.currentState?.saveAndValidate() ?? false) {
              debugPrint(_formKey.currentState?.value.toString());

              onSave(_formKey.currentState?.value[formName]?.toString());
            } else {
              debugPrint(_formKey.currentState?.value.toString());
              debugPrint('validation failed');
            }
          },
        )
      ],
    );
  }
}
