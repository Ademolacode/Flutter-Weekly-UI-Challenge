
class TopItemModel {
  String imageUrl;
  String name;
  String maker;
  double price;


  TopItemModel({
    this.imageUrl,
    this.name,
    this.maker,
    this.price,
  });
}


List<TopItemModel> destinations = [
  TopItemModel(
    imageUrl: 'assets/images/pro-vac.png',
    name: 'Pro-Vac Venco',
    maker: 'by Baximco',
   price: 34.50,
  
  ),
  TopItemModel(
    imageUrl: 'assets/images/live-b1.png',
    name: 'Disease Vaccine',
    maker: 'by B1 Strain',
    price: 21.44,
 
  ),
  
 
];
