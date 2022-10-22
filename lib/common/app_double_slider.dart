import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:yourone/common/app_primary_button.dart';
import 'package:yourone/extensions/extensions.dart';
import 'package:yourone/theme/app_color.dart';
import 'package:yourone/theme/text_styles.dart';

class AppDoubleSlider extends StatelessWidget {
  AppDoubleSlider({
    Key? key,
    required this.buttonText,
    required this.formName,
    required this.formLabel,
    required this.onSave,
    required this.minimumValue,
    required this.maximumValue,
  }) : super(key: key);

  final String buttonText;
  final String formName;
  final String formLabel;
  final double minimumValue;
  final double maximumValue;
  final Function(RangeValues?) onSave;

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
          child: FormBuilderRangeSlider(
            name: formName,
            min: minimumValue,
            max: maximumValue,
            initialValue: RangeValues(minimumValue, maximumValue),
            /*   validator: FormBuilderValidators.compose([
              FormBuilderValidators.min(6),
              FormBuilderValidators.max(maximumValue),
            ]), */
            divisions: 84,
            activeColor: AppColor.primary,
            inactiveColor: AppColor.primary10,
            decoration:
                InputDecoration(labelText: formLabel, border: InputBorder.none),
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
    );
  }
}
