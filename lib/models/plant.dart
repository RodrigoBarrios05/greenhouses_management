class Plant {
  final String id;
  final String name;
  final String variety;
  final String? description;
  final String brand;
  final String? imageUrl;

  Plant(
      {required this.id,
      required this.name,
      required this.variety,
      required this.description,
      required this.brand,
      required this.imageUrl}); // nullable string
}
