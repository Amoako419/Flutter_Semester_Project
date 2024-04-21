import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarPage extends StatefulWidget {
    CalendarPage({Key? key}) : super(key: key);

    @override
    State<CalendarPage> createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
    final ValueNotifier<DateTime> _focusedDay = ValueNotifier(DateTime.now());
    final ValueNotifier<DateTime?> _selectedDay = ValueNotifier(null);
    final ValueNotifier<List<DateTime>> _selectedDays = ValueNotifier([]);

    @override
    void dispose() {
    _focusedDay.dispose();
    _selectedDay.dispose();
    _selectedDays.dispose();
    super.dispose();
    }

    void _onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    if (!isSameDay(_selectedDay.value, selectedDay)) {
        setState(() {
        _selectedDay.value = selectedDay;
        _focusedDay.value = focusedDay;
        final List<DateTime> newSelectedDays = [..._selectedDays.value];
        if (newSelectedDays.contains(selectedDay)) {
            newSelectedDays.remove(selectedDay);
        } else {
            newSelectedDays.add(selectedDay);
        }
        _selectedDays.value = newSelectedDays;
        });
    }
    }

    @override
    Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: const Text('Calendar'),
        ),
        body: Column(
        children: [
            TableCalendar(
            focusedDay: _focusedDay.value,
            firstDay: DateTime.utc(2023, 1, 1),
            lastDay: DateTime.utc(2023, 12, 31),
            selectedDayPredicate: (day) => _selectedDays.value.contains(day),
            onDaySelected: _onDaySelected,
            ),
            const SizedBox(height: 16),
            Text('Selected date: ${_selectedDay.value}'),
            const SizedBox(height: 16),
            Text('Selected days: ${_selectedDays.value}'),
        ],
        ),
    );
    }
}