class QuizModel {
  final int id;
  final String question;
  final int correctIndex;
  final List<String> answerList;

  QuizModel(
      {required this.id,
      required this.question,
      required this.correctIndex,
      required this.answerList});
}

List<QuizModel> quizList = [
  QuizModel(
      id: 1,
      question: '풀씨의 뜻은 무엇일까요?',
      correctIndex: 0,
      answerList: ['풀그림', '아무 의미 없음', 'FULL C++', '1대 회장 이름']),
  QuizModel(
      id: 1,
      question: '풀씨에서 만든 게임이 아닌 것은 무엇일까요?',
      correctIndex: 3,
      answerList: ['굴착협객', 'MazeSurvival', 'Gravity Castle', '하늘섬']),
  QuizModel(
      id: 1,
      question: '풀씨의 동방은 어디에 있을까요?',
      correctIndex: 3,
      answerList: ['공학원 A504', '공학관 D702', '공학관 E425', '공학관 A537']),
  QuizModel(
      id: 1,
      question: '23-1 풀씨 회장 이름은 무엇일까요?',
      correctIndex: 2,
      answerList: ['진영민', '박효정', '김의준', '박하연']),
  QuizModel(
      id: 1,
      question: '풀씨는 언제 개설되었을까요?',
      correctIndex: 1,
      answerList: ['1987', '1998', '1885', '2001']),
];
