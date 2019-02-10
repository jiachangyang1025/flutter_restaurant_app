class Food {
  String name;
  double price;
  String imgUrl;
  double rating;

  Food.items({
  this.name,
  this.price,
  this.imgUrl,
  this.rating
});

}

List<Food> foodItems = [
  
  Food.items(
    name: "Egg and Tomato",
    price: 11.99,
    imgUrl:  "images/food1.jpg",
    rating: 0.0
  ),

  Food.items(
    name: "Cooked Pork",
    price: 11.99,
    imgUrl: "images/food2.jpg",
    rating: 0.0
  ),

  Food.items(
    name: "Pork Ribs",
    price: 11.99,
    imgUrl: "images/food3.jpg",
    rating: 0.0
  ),

  Food.items(
    name: "Minced Pork",
    price: 11.99,
    imgUrl: "images/food4.jpg",
    rating: 0.0
  ),

  Food.items(
    name: "Fish Soup",
    price: 11.99,
    imgUrl: "images/food5.jpg",
    rating: 0.0
  ),

  Food.items(
    name: "Beef",
    price: 11.99,
    imgUrl: "images/food6.jpg",
    rating: 0.0
  ),

  Food.items(
    name: "Pork Bone Soup",
    price: 11.99,
    imgUrl: "images/food7.jpg",
    rating: 0.0
  ),

];