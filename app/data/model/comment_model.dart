class CommentModel {
  dynamic msg;

  CommentModel({this.msg});

  CommentModel.fromJson(Map<String, dynamic> json) {
    msg = json['msg'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['msg'] = this.msg;
    return data;
  }
}
