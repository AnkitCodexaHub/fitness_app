import 'package:fitness_app/app/theme/app_colors.dart';
import 'package:fitness_app/app/theme/app_text_styles.dart';
import 'package:fitness_app/app/utils/responsive_extension.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateSelector extends StatefulWidget {
  const DateSelector({super.key});

  @override
  State<DateSelector> createState() => _DateSelectorState();
}

class _DateSelectorState extends State<DateSelector> {
  late int selectedIndex;
  late List<DateTime> weekDates;

  @override
  void initState() {
    super.initState();
    _generateCurrentWeek();
  }

  void _generateCurrentWeek() {
    DateTime now = DateTime.now();

    // Sunday as start of week
    int weekday = now.weekday; // 1=Mon, 7=Sun
    DateTime startOfWeek = now.subtract(Duration(days: weekday % 7));

    // Generate 7 days
    weekDates =
        List.generate(7, (index) => startOfWeek.add(Duration(days: index)));

    // auto select today's date
    selectedIndex = weekDates.indexWhere(
      (date) =>
          date.day == now.day &&
          date.month == now.month &&
          date.year == now.year,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80.h(context),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: weekDates.length + 2,
        itemBuilder: (context, index) {
          if (index == 0 || index == weekDates.length + 1) {
            return SizedBox(width: 20.w(context));
          }

          final item = weekDates[index - 1];

          return Padding(
            padding: EdgeInsets.only(right: 6.w(context)),
            child: GestureDetector(
              onTap: () {
                setState(() => selectedIndex = index - 1);
              },
              child: DateCard(
                day: DateFormat.E().format(item).substring(0, 1), // S, M, T...
                date: DateFormat.d().format(item), // 10, 11...
                isSelected: selectedIndex == index - 1,
              ),
            ),
          );
        },
      ),
    );
  }
}

class DateCard extends StatelessWidget {
  final String day;
  final String date;
  final bool isSelected;

  const DateCard({
    super.key,
    required this.day,
    required this.date,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 45.w(context),
          height: 46.h(context),
          decoration: BoxDecoration(
            color: isSelected ? Colors.black : const Color(0xFFB7E63E),
            borderRadius: BorderRadius.circular(12.w(context)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                day,
                style: AppTextStyles.semiBold(
                  fontSize: 14.sp(context),
                  color: isSelected ? Colors.white : AppColors.primaryDark,
                ),
              ),
              1.h(context).getHeightBox(context),
              Text(
                date,
                style: AppTextStyles.semiBold(
                  fontSize: 14.sp(context),
                  color: isSelected ? Colors.white : AppColors.primaryDark,
                ),
              ),
            ],
          ),
        ),
        12.h(context).getHeightBox(context),
        if (isSelected)
          Container(
            width: 6.w(context),
            height: 6.h(context),
            decoration: const BoxDecoration(
              color: Colors.black,
              shape: BoxShape.circle,
            ),
          ),
      ],
    );
  }
}
