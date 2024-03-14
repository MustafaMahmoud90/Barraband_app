class Category {
  String thumbnail;
  String name;
  int noOfCourses;

  Category({
    required this.name,
    required this.noOfCourses,
    required this.thumbnail,
  });
}

List<Category> categoryList = [
  Category(
    name: '+ المبتدئين',
    noOfCourses: 55,
    thumbnail: 'assets/icons/abc.png',
  ),
  Category(
    name: 'المبتدئين',
    noOfCourses: 20,
    thumbnail: 'assets/icons/abc.png',
  ),
  Category(
    name: 'المستوي المتوسط',
    noOfCourses: 16,
    thumbnail: 'assets/icons/abc.png',
  ),
  Category(
     name: '+ + المبتدئين',
    noOfCourses: 25,
    thumbnail: 'assets/icons/abc.png',
  ),
  // Category(
  //   name: 'Product Design',
  //   noOfCourses: 25,
  //   thumbnail: 'assets/icons/design.jpg',
  // ),
  // Category(
  //   name: 'Development',
  //   noOfCourses: 55,
  //   thumbnail: 'assets/icons/laptop.jpg',
  // ),
];
