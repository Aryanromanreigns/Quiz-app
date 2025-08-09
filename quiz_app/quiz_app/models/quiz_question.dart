class QuizQuestion {
  QuizQuestion(this.text, this.answer);

  final String text;
  final List<String> answer;

  List<String> getshuffledanswe() {
    final shuffledlist = List.of(answer);
    shuffledlist.shuffle();
    return shuffledlist;
  }
}

