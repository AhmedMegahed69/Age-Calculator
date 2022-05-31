// ignore_for_file: prefer_typing_uninitialized_variables, non_constant_identifier_names

class AgeCalculator {
  static var totalDays;
  static var years;
  static var months;
  static var days;
  static var totMonths;
  static var totMonths_Day;
  static var totWeeks;
  static var totWeeks_Days;
  static var totHours;
  static var totMinutes;
  static var totSeconds;
  AgeCalculator(int year, int month, int day) {
    totalDays = DateTime.now().difference(DateTime(year, month, day)).inDays;
    years = (totalDays / 365.25).floor();
    months = ((((totalDays / 365.25) - years) * 365.25) / 30.44).floor();
    days =
        ((((((totalDays / 365.25) - years) * 365.25) / 30.44) - months) * 30.44)
            .floor();
    totMonths = (totalDays / 30.44).floor();
    totMonths_Day =
        (((totalDays / 30.44) - (totalDays / 30.44).floor()) * 30.44).round();
    totWeeks = (totalDays / 7).floor();
    totWeeks_Days = (((totalDays / 7) - (totalDays / 7).floor()) * 7).round();
    totHours = (totalDays * 24);
    totMinutes = (totalDays * 24) * 60;
    totSeconds = (totalDays * 24) * 60 * 60;
  }
}
