abstract class Instructions {
  String get title;
  String get languageToggle;
  String get instruction;
  String get prompt;
  set prompt(String value); // Setter for prompt
  String get input;
  String get buttonText;
  String get score;
  String get result;
  String get promptEditorText;
  String get reportIssueText;
  String get save;
  String get cancel;
}

class KoreanInstructions implements Instructions {
  @override
  String title = "번역 게임 데모 powered by Gemini AI v0.1";
  @override
  String languageToggle = "Language Toggle";
  @override
  String instruction = "다음 문장을 한국어로 번역하시오. 문장을 탭하여 수정할 수 있습니다.";
  String _prompt = "Hello"; // Private field for prompt
  @override
  String get prompt => _prompt; // Getter for prompt
  @override
  set prompt(String value) => _prompt = value; // Setter for prompt
  @override
  String input = "여기 입력하시오:";
  @override
  String buttonText = "제출";
  @override
  String score = "점수";
  @override
  String result = "평가";
  @override
  String promptEditorText = "문장 편집기 (영어로 써주세요)";
  @override
  String reportIssueText = "문제 신고";
  @override
  String save = "저장";
  @override
  String cancel = "취소";
}

class EnglishInstructions implements Instructions {
  @override
  String title = "Translation Game Demo powered by Gemini AI v0.1";
  @override
  String languageToggle = "언어 변경";
  @override
  String instruction =
      "Translate the following sentence into English. You may tap the sentence to edit it.";
  String _prompt = "안녕"; // Private field for prompt
  @override
  String get prompt => _prompt; // Getter for prompt
  @override
  set prompt(String value) => _prompt = value; // Setter for prompt
  @override
  String input = "Enter your translation here:";
  @override
  String buttonText = "Submit";
  @override
  String score = "Score";
  @override
  String result = "Evaluation";
  @override
  String promptEditorText = "Sentence Editor (Please write in Korean)";
  @override
  String reportIssueText = "Report Issue";
  @override
  String save = "Save";
  @override
  String cancel = "Cancel";
}
