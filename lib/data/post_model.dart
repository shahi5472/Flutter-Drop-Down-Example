abstract class MyModel {
  late String _name;

  String? get name => _name;

  @override
  String toString() {
    return _name;
  }
}

class PostModel extends MyModel {
  int? id;
  String? title;
  String? subtitle;

  PostModel({this.id, this.title, this.subtitle});

  @override
  String get name => title!;
}

List<PostModel> postModelList = [
  PostModel(id: 1, title: 'Title 1', subtitle: 'Subtitle 1'),
  PostModel(id: 2, title: 'Title 2', subtitle: 'Subtitle 2'),
  PostModel(id: 3, title: 'Title 3', subtitle: 'Subtitle 3'),
  PostModel(id: 4, title: 'Title 4', subtitle: 'Subtitle 4'),
  PostModel(id: 5, title: 'Title 5', subtitle: 'Subtitle 5'),
];
