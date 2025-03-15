enum ViewOptionType {
  apply('내 세탁실', -1),
  status('세탁실 현황', 1);

  const ViewOptionType(
    this.text,
    this.offset,
  );

  final String text;
  final double offset;
}
