import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

final List<String> items = [
  'Item1',
  'Item2',
  'Item3',
  'Item4',
];
String? selectedValue;

class DropdownWidget extends StatelessWidget {
  const DropdownWidget({
    super.key,
    required this.items,
    required this.selectedItemText,
  });

  final List<String> items;
  final String selectedItemText;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.cyan,
      child: Center(
        child: DropdownButtonHideUnderline(
          child: DropdownButton2<String>(
            isExpanded: true,
            hint: Text(
              selectedItemText,
              style: TextStyle(
                fontSize: 14,
                color: Theme.of(context).hintColor,
              ),
            ),
            items: items
                .map((String item) => DropdownMenuItem<String>(
                      value: item,
                      child: Text(
                        item,
                        style: const TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ))
                .toList(),
            value: selectedValue,
            onChanged: (String? value) {
              // setState(() {
              //   selectedValue = value;
              // });
            },
            buttonStyleData: const ButtonStyleData(
              padding: EdgeInsets.symmetric(horizontal: 16),
              height: 40,
              width: 140,
            ),
            menuItemStyleData: MenuItemStyleData(
              selectedMenuItemBuilder: (context, child) {
                return Container(
                  color: Colors.red,
                );
              },
              height: 40,
            ),
          ),
        ),
      ),
    );
  }
}
