import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/intl.dart';

class MenstrualCycleTracker extends StatefulWidget {
    @override
    _MenstrualCycleTrackerState createState() => _MenstrualCycleTrackerState();
}

class _MenstrualCycleTrackerState extends State<MenstrualCycleTracker> {
    CalendarFormat _calendarFormat = CalendarFormat.month;
    DateTime _focusedDay = DateTime.now();
    DateTime? _selectedDay;
    DateTime? _startDate;
    DateTime? _endDate;

    @override
    Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text('Menstrual Cycle Tracker'),
        ),
        body: Column(
        children: [
            TableCalendar(
            focusedDay: _focusedDay,
            firstDay: DateTime(2020, 1, 1),
            lastDay: DateTime(2030, 12, 31),
            calendarFormat: _calendarFormat,
            selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
            onDaySelected: (selectedDay, focusedDay) {
                setState(() {
                _selectedDay = selectedDay;
                _focusedDay = focusedDay;

                // Update the start date if it's not set or if the selected day is before the start date
                if (_startDate == null || selectedDay.isBefore(_startDate!)) {
                    _startDate = selectedDay;
                }

                // Update the end date if it's not set or if the selected day is after the end date
                if (_endDate == null || selectedDay.isAfter(_endDate!)) {
                    _endDate = selectedDay;
                }
                });
            },
            onFormatChanged: (format) {
                setState(() {
                _calendarFormat = format;
                });
            },
            startingDayOfWeek: StartingDayOfWeek.monday,
            daysOfWeekVisible: true,
            // Customize cell color
            calendarStyle: CalendarStyle(
                isTodayHighlighted: true,
                selectedDecoration: BoxDecoration(
                color: Colors.blueAccent,
                shape: BoxShape.circle,
                ),
                selectedTextStyle: TextStyle(color: Colors.white),
                todayDecoration: BoxDecoration(
                color: Colors.orangeAccent,
                shape: BoxShape.circle,
                ),
                defaultDecoration: BoxDecoration(
                shape: BoxShape.circle,
                ),
                weekendDecoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey.shade200,
                ),
            ),
            headerStyle: HeaderStyle(
                formatButtonVisible: true,
                titleCentered: true,
                formatButtonShowsNext: false,
            ),
            ),
            SizedBox(height: 20),
            Text(
            'Start Date: ${_startDate != null ? DateFormat.yMMMd().format(_startDate!) : 'Not set'}',
            style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
            'End Date: ${_endDate != null ? DateFormat.yMMMd().format(_endDate!) : 'Not set'}',
            style: TextStyle(fontSize: 18),
            ),
        ],
        ),
    );
    }
}