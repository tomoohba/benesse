import 'problem.dart';
class Subject{
  String name;
  List<Problem> problems;
  int threshold; //閾値
  bool notgoodat = false;
  Subject(
      this.name,
      this.problems,
      this.threshold
      );
}
