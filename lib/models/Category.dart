class Category{
  final String title;
  final String image;

  Category({
    required this.title,
    required this.image,
  });
}

final List<Category> categories = [
  Category(title: "General", image: "assets/ChooseBin/general.png"),
  Category(title: "Hazardous", image: "assets/ChooseBin/hazardous.png"),
  Category(title: "Organic", image: "assets/ChooseBin/organic.png"),
  Category(title: "Recycle", image: "assets/ChooseBin/recycle.png"),
];