class Questions {
  int subject = 1; //科目番号　英語：１
  int qnum = 0; //問題番号
  int qsize = 5; //問題数
  int correct = 0; //正答数
  int choice = 0; //選択した選択肢
  int threshold = 5; //苦手度判定の閾値
  List<int> difficult = [0, 0, 0]; //単元ごとの苦手度
  List<int> diffsum = [0, 0, 0]; //単元ごとの難易度の和s


  void setSubject(int newsub){
    subject = newsub;
  }

  void incQnum(){
    qnum++;
  }

  void incCorrect(int unit, int diff){
    correct++;
    diffsum[unit] += diff;
  }

  void setChoice(int c){
    choice = c;
  }

  void wrong(int unit, int diff){
    difficult[unit] += diff;
    diffsum[unit] += diff;
  }
}
