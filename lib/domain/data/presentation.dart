// TODO: make this json_serializable
class Presentation {
  final String author;
  final String title;
  final String id;
  final List<String> slides; // todo: put actual slides in here

  const Presentation({
    required this.id,
    required this.author,
    required this.title,
    required this.slides,
  });
}
