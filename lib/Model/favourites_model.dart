class FavouriteModel {
  int? id;
  int? title;
  bool? isFavourite;

  FavouriteModel({this.id, this.title, this.isFavourite});

  FavouriteModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    isFavourite = json['isFavourite'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['title'] = title;
    data['isFavourite'] = isFavourite;
    return data;
  }
}
