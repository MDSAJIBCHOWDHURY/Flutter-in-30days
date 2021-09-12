class Item {
  final String name;
  final num id;
  Item({required this.name, required this.id});

  factory Item.fromMap(Map<String, dynamic> map) => Item(
        id: map["id"],
        name: map["name"],
      );
  toMap() => {
        "id": id,
        "name": name,
      };
}
