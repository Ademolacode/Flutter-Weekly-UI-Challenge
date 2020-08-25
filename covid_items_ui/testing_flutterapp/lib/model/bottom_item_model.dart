class ItemModel {
  String imageUrl;
  String name;
  String maker;
  double price;
   List<ItemModel> items;

 ItemModel({
    this.imageUrl,
    this.name,
    this.maker,
    this.price,
  });
}

final List<ItemModel> items = [
 
  ItemModel(
    imageUrl: 'assets/images/kn95-mask.png',
    name: 'Mask',
    maker: '',
    price: 300,
  ),
  ItemModel(
    imageUrl: 'assets/images/gloves.png',
    name: 'Gloves',
    maker: '',
    price: 240,
  ),
];
