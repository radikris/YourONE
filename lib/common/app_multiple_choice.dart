import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:yourone/gen/assets.gen.dart';

enum TestEnum { first, second, third, forth }

class AppMultipleChoice extends HookWidget {
  void _onChanged(dynamic val) => print(val.toString());
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    final searchController = useTextEditingController(text: '');

    final filteredList = useState(TestEnum.values);

    searchController.addListener(() {
      final filter = searchController.text.toLowerCase();

      filteredList.value = TestEnum.values
          .where((element) => element.name.toLowerCase().contains(filter))
          .toList();
    });

    return Column(
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
          child: FormBuilderCheckboxGroup<String>(
            orientation: OptionsOrientation.vertical,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            decoration:
                const InputDecoration(labelText: 'The language of my people'),
            name: 'languages',
            // initialValue: const ['Dart'],
            options: filteredList.value
                .map(
                  (e) => FormBuilderFieldOption(
                    value: e.name,
                  ),
                )
                .toList(),
            onChanged: _onChanged,

            validator: FormBuilderValidators.compose([
              FormBuilderValidators.minLength(1),
              FormBuilderValidators.maxLength(3),
            ]),
          ),
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState?.saveAndValidate() ?? false) {
                    debugPrint(_formKey.currentState?.value.toString());
                  } else {
                    debugPrint(_formKey.currentState?.value.toString());
                    debugPrint('validation failed');
                  }
                },
                child: const Text(
                  'Submit',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: OutlinedButton(
                onPressed: () {
                  _formKey.currentState?.reset();
                },
                // color: Theme.of(context).colorScheme.secondary,
                child: Text(
                  'Reset',
                  style:
                      TextStyle(color: Theme.of(context).colorScheme.secondary),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
