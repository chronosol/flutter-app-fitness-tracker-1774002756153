class Exercise {
  final String id;
  final String name;
  final String description;

  const Exercise({
    required this.id,
    required this.name,
    required this.description,
  });

  Exercise copyWith({
    String? id,
    String? name,
    String? description,
  }) {
    return Exercise(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Exercise &&
          runtimeType == other.runtimeType &&
          id == other.id;

  @override
  int get hashCode => id.hashCode;

  @override
  String toString() => 'Exercise(id: $id, name: $name)';
}
