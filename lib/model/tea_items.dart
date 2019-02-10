class Tea {
  String name;
  double price;
  String imgUrl;
  double rating;

  Tea.items({
  this.name,
  this.price,
  this.imgUrl,
  this.rating
});

}

List<Tea> teaItems = [

  Tea.items(
    name: "Assam tea",
    price: 5.99,
    imgUrl: "images/assamtea.png",
    rating: 0.0
  ),

  Tea.items(
    name: "Bubble tea",
    price: 5.99,
    imgUrl: "images/bubbletea.png",
    rating: 0.0
  ),

  Tea.items(
    name: "Ice tea",
    price: 5.99,
    imgUrl: "images/icetea.png",
    rating: 0.0
  ),

  Tea.items(
    name: "Jasmine tea",
    price: 5.99,
    imgUrl: "images/jasminetea.png",
    rating: 0.0
  ),

  Tea.items(
    name: "Lemon tea",
    price: 5.99,
    imgUrl: "images/lemontea.png",
    rating: 0.0
  ),

  Tea.items(
    name: "Milk tea",
    price: 5.99,
    imgUrl: "images/milktea.png",
    rating: 0.0
  ),

  Tea.items(
    name: "Taro tea",
    price: 5.99,
    imgUrl: "images/tarotea.png",
    rating: 0.0
  ),

  Tea.items(
    name: "Black tea",
    price: 5.99,
    imgUrl: "images/blacktea.png",
    rating: 0.0
  ),

  Tea.items(
    name: "Chocolate tea",
    price: 5.99,
    imgUrl: "images/chocolatetea.png",
    rating: 0.0
  ),

];