class EnglishDataBase {
  List<String> qlist = [ //問題文のリスト
    "apple", 
    "talk",
    "irate",
    "generous",
    "clarify"
  ];
  List<List <String>> chlist = [//選択肢のリスト
    ["", "バナナ", "リンゴ", "みかん", "パイナップル"],
    ["", "しゃべる", "走る", "聞く", "座る"],
    ["", "嫉妬深い", "大人の", "年下の", "ひどく怒っている"],
    ["", "寛大な", "有害な", "本物の", "率直な"],
    ["", "～を要請する", "～を明確にする", "～を回収する", "解き放つ"]
  ];
  List<int> ansnum = [2, 1, 4, 1, 2]; //正解番号のリスト 0-index
  List<String> desc = [ //解説のリスト
    "答えは「リンゴ」です。",
    "答えは「しゃべる」です。",
    "答えは「ひどく怒っている」です。",
    "答えは「寛大な」です。",
    "答えは「～を明確にする」です。"
  ];
  List<int> unit = [0, 1, 2, 2, 1];  //単元番号のリスト 0-index　（例...　0:名詞, 1:動詞, 2:形容詞）
  List<int> difficulty = [5, 5, 1, 3, 3]; //問題の難易度のリスト 簡単5点,普通3点,難しい1点,
  List<String> unitname = ["名詞", "動詞", "形容詞"];
  List<String> unitdesc = [ //単元の解説
    "名詞が苦手です",
    "動詞が苦手です",
    "形容詞が苦手です"
  ];

  List<int> notGoodAtScore = [0, 0, 0];

  void setScore(int i, int diff){
    notGoodAtScore[i] = diff;
  }

}