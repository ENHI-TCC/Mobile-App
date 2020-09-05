class Post {
  final String data;
  final int id;

  Post({
    this.id,
    this.data,
  });

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      id: json['id'] as int, //DEFINE ID JSON COMO INT

      data: json['data'] as String, //DEFINE DATA JSON COMO STRING
    );
  }
}
