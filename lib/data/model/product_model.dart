class MealModel {
  final String? title;
  final String? image;

  MealModel({this.title, this.image});
}

class PopularModel {
  final String? title;
  final String? image;
  final String? rate;

  PopularModel({this.rate, this.title, this.image});
}

class MostPopularModel {
  final String? title;
  final String? image;
  final String? rate;

  MostPopularModel({this.rate, this.title, this.image});
}
class RecentItems {
  final String? title;
  final String? image;
  final String? rate;

  RecentItems({this.rate, this.title, this.image});
}
class MenuList {
  final String? title;
  final String? image;
  final String? itemsNum;

  MenuList({this.itemsNum, this.title, this.image});
}
class OffersItems {
  final String? title;
  final String? image;
  final String? rate;

  OffersItems({this.rate, this.title, this.image});
}