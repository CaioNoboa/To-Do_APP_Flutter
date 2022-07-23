class StandardList {
  final String id;
  final String title;
  bool isChecked;

  StandardList({
    required this.id,
    required this.title,
    this.isChecked = false,
  });
}
