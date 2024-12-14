class Note {
  final int? id;
  String content;
	
  Note({
    this.id,
    required this.content,
  });

  factory Note.fromJson(Map<String, dynamic> json) {
    return Note(
      id: json['id'] as int,
      content: json['body'] as String,
    );
  }

    Map<String, dynamic> toJson() {
    return {
      'body': content,
    };
  }
}