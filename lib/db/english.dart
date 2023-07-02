import 'subject.dart';
import 'problem.dart';
Subject english = Subject("english", problems, threshold);
int threshold = 1;
Problem problem1 = Problem(
    "りんご",
    ["apple", "banana", "potato", "lemon"],
    0,
    "解説",
    0);
Problem problem2 = Problem(
    "バナナ",
    ["apple", "banana", "potato", "lemon"],
    1,
    "解説",
    0);
List<Problem> problems = [problem1, problem2];

