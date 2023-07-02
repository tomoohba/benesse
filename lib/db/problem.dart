class Problem{
  String questionText;
  List<String> choiceTextList;
  int answer;
  String commentText; //解説
  int difficulty; //難易度
  Problem(
      this.questionText,
      this.choiceTextList,
      this.answer,
      this.commentText,
      this.difficulty);
}
