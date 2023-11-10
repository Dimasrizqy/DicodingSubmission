import 'package:flutter/material.dart';
import 'package:dimas_dicoding/collectionDetail.dart';
import 'package:dimas_dicoding/clothing.dart';

class ItemListScreen extends StatelessWidget {
  final String imageUrl;
  final String title;
  final double price;

  const ItemListScreen({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String category = title;
    List<String>? itemList = listItem[category];
    return Scaffold(
      appBar: AppBar(
        title: Text(category),
        backgroundColor: const Color.fromRGBO(78, 130, 110, 1),
      ),
      body: Container(
        decoration: const BoxDecoration(color: Color.fromRGBO(5, 3, 4, 1)),
        child: ListView.builder(
          itemCount: itemList?.length,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.only(
                  bottom: 10), // Add a 10-pixel margin at the bottom
              decoration:
                  const BoxDecoration(color: Color.fromRGBO(78, 130, 110, 1)),
              child: ListTile(
                leading: SizedBox(
                  height: 100,
                  width: 100,
                  child: Image.network(
                    ClothingItems().urlList[itemList![index]]!,
                    fit: BoxFit.cover,
                  ),
                ),
                title: Text(
                  itemList[index],
                  style:
                      const TextStyle(color: Color.fromRGBO(232, 232, 230, 1)),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CollectionDetail(
                        imageUrl: ClothingItems().urlList[itemList[index]]!,
                        title: itemList[index],
                        price: ClothingItems().prices[itemList[index]] ?? 0.0,
                      ),
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}

final List<String> wearItems = [
  "Tops",
  "Bottoms",
  "Outerwear",
  "Activewear",
  "Swimwear",
  "Sleepwear",
  "Accessories",
  "Footwear",
  // Anda dapat menambahkan kategori pakaian pria lainnya di sini
];

final List<String> imageUrlList = [
  "https://images.pexels.com/photos/6214193/pexels-photo-6214193.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
  "https://images.pexels.com/photos/7062179/pexels-photo-7062179.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
  "https://images.pexels.com/photos/5658857/pexels-photo-5658857.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
  "https://images.pexels.com/photos/944761/pexels-photo-944761.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
  "https://images.pexels.com/photos/3836820/pexels-photo-3836820.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
  "https://images.pexels.com/photos/5338316/pexels-photo-5338316.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
  "https://images.pexels.com/photos/3951790/pexels-photo-3951790.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
  "https://images.pexels.com/photos/4005082/pexels-photo-4005082.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
  "https://images.pexels.com/photos/1162983/pexels-photo-1162983.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
  "https://images.pexels.com/photos/10343908/pexels-photo-10343908.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
];

List<String> imageButtonTitles = [
  "Elegant Evening Dress",
  "Stylish High Heels",
  "Designer Handbag",
  "Fashionable Sunglasses",
  "Trendy Men's Suit",
  "Chic Women's Hat",
  "Street Style Fashion",
  "Casual Denim Jeans",
  "Boho Accessories",
  "Luxury Wristwatches",
];

final Map<String, List<String>> listItem = {
  "Man's Wear": ClothingItems().menClothing,
  "Suit": ClothingItems().menSuitCollection,
  "Shoes": ClothingItems().menShoes,
  "Women's Wear": ClothingItems().womenClothing,
  "Women's Hat": ClothingItems().womenHats,
  "High Heels": ClothingItems().womensHighHeels,
  "Boy's Wear": ClothingItems().boysClothing,
  "Girl's Wear": ClothingItems().girlClothes,
  "Kid's Shoes": ClothingItems().childrensShoes,
  "Necklaces": ClothingItems().necklaces,
};
