enum LocateType {
  maleSchool(text: '남자 학교측', title: '남자 학교 측'),
  maleDormitory(text: '남자 기숙사측', title: '남자 기숙사 측'),
  female(text: '여자 기숙사측', title: '여자 기숙사 측', exception: '여자');

  const LocateType({
    required this.text,
    required this.title,
    this.exception,
  });

  final String text;
  final String title;
  final String? exception;
}
