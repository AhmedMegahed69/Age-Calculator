// ignore_for_file: prefer_typing_uninitialized_variables

class AgeCalculatorh {
  static var hejryhaly;
  static var hejrymelad;

  static var calc;

  AgeCalculatorh(int yearmelady, int yearhaly) {
    hejryhaly = ((yearhaly - 622) / 0.97).round();
    hejrymelad = ((yearmelady - 622) / 0.97).round();
    calc = hejryhaly - hejrymelad;
  }
}
