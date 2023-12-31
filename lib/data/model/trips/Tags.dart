
class Tags {
  Tags({
    this.name,
    this.id,
  });

  Tags.fromJson(dynamic json) {
    name = json['name'];
    id = json['id'];
  }

  String? name;
  int? id;

  Tags copyWith({
    String? name,
    int? id,
  }) =>
      Tags(
        name: name ?? this.name,
        id: id ?? this.id,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['id'] = id;
    return map;
  }
}
