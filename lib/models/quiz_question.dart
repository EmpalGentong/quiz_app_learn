class QuizQuestion {
  const QuizQuestion(this.question, this.answer);

  final String question;
  final List<String> answer;

  List<String> getShuffledAnswer() {
    final shuffled = List.of(answer);
    shuffled.shuffle();
    return shuffled;
  }
}
