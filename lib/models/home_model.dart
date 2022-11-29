class HomeModel {
  int? id;
  String? topic;
  String? title;
  String? iconName;

  HomeModel({
    this.id,
    this.topic,
    this.title,
    this.iconName,
  });

  HomeModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    topic = json['topic'];
    title = json['title'];
    iconName = json['iconName'];
  }
}
