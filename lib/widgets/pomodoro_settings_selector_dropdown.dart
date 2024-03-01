import 'package:flutter/material.dart';
import 'package:pomotime_app/util/app_colors.dart';

List<String> timers = ['one', 'two', 'three', 'four', 'five'];

class PomodoroSettingsSelectorDropdown extends StatefulWidget {
  const PomodoroSettingsSelectorDropdown({super.key});

  @override
  State<PomodoroSettingsSelectorDropdown> createState() =>
      _PomodoroSettingsSelectorDropdownState();
}

class _PomodoroSettingsSelectorDropdownState
    extends State<PomodoroSettingsSelectorDropdown> {
  String _selectedPomodoroTimer = timers.first;

  @override
  Widget build(BuildContext context) {
    return DropdownMenu(
      width: 312,
      inputDecorationTheme: InputDecorationTheme(
        fillColor: AppColors.spaceCadet,
      ),
      leadingIcon: IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.edit_outlined,
          color: AppColors.spaceCadet,
        ),
        style: IconButton.styleFrom(
          foregroundColor: AppColors.transparent,
        ),
      ),
      initialSelection: _selectedPomodoroTimer,
      onSelected: (value) {
        setState(() {
          _selectedPomodoroTimer = value!;
        });
      },
      dropdownMenuEntries: timers.map<DropdownMenuEntry<String>>(
        (String value) {
          return DropdownMenuEntry<String>(
            value: value,
            label: value,
          );
        },
      ).toList(),
    );
  }
}
