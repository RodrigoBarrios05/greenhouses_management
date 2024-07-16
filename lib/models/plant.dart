class Plant {
  final String id;
  final String name;
  final String? variety;
  final String? description;
  final String? brand;
  final String? imageUrl;

  Plant(
      {required this.id,
      required this.name,
      this.variety,
      this.description,
      this.brand,
      this.imageUrl}); // nullable string
}
