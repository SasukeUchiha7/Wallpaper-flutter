import 'package:wallpaper_app/model/catergories_model.dart';

List<CategoriesModel> getCategories() {
  List<CategoriesModel> categories = [];
  CategoriesModel categoriesModel = new CategoriesModel();

  // list
  categoriesModel.imageUrl =
      "https://images.pexels.com/photos/4543130/pexels-photo-4543130.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=627&w=1200";
  categoriesModel.categoryName = "Street Art";
  categories.add(categoriesModel);
  categoriesModel = new CategoriesModel();

  categoriesModel.imageUrl =
      "https://images.pexels.com/photos/2524874/pexels-photo-2524874.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=627&w=1200";
  categoriesModel.categoryName = "Nature";
  categories.add(categoriesModel);
  categoriesModel = new CategoriesModel();

  categoriesModel.imageUrl =
      "https://images.pexels.com/photos/112460/pexels-photo-112460.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=627&w=1200";
  categoriesModel.categoryName = "Cars";
  categories.add(categoriesModel);
  categoriesModel = new CategoriesModel();

  categoriesModel.imageUrl =
      "https://images.pexels.com/photos/3850526/pexels-photo-3850526.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=627&w=1200";
  categoriesModel.categoryName = "Wildlife";
  categories.add(categoriesModel);
  categoriesModel = new CategoriesModel();

  categoriesModel.imageUrl =
      "https://images.pexels.com/photos/1108099/pexels-photo-1108099.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=627&w=1200";
  categoriesModel.categoryName = "Dogs";
  categories.add(categoriesModel);
  categoriesModel = new CategoriesModel();

  categoriesModel.imageUrl =
      "https://images.pexels.com/photos/617278/pexels-photo-617278.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=627&w=1200";
  categoriesModel.categoryName = "Cats";
  categories.add(categoriesModel);
  categoriesModel = new CategoriesModel();

  return categories;
}
