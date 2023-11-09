import "package:dimas_dicoding/bottomNav/listCollection.dart";
import "package:dimas_dicoding/collectionDetail.dart";
import "package:flutter/material.dart";
import "package:carousel_slider/carousel_slider.dart";
// class CollectionsScreen extends StatelessWidget {
//   const CollectionsScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Center(
//       child: Text('Collections Screen',
//           style: TextStyle(color: Color.fromRGBO(5, 3, 4, 1))),
//     );
//   }
// }
class CollectionsBody extends StatefulWidget {
  const CollectionsBody({Key? key}) : super(key: key);

  @override
  _CollectionsBodyState createState() => _CollectionsBodyState();
}

class _CollectionsBodyState extends State<CollectionsBody> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Center(
      child: Column(
        children: [
          const SizedBox(height: 40),
          CarouselSlider(
            options: CarouselOptions(
              autoPlay: true,
              onPageChanged: (index, reason) {
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
            items: imagesList.asMap().entries.map(
              (entry) {
                final index = entry.key;
                final item = entry.value;

                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    margin: const EdgeInsets.only(
                      top: 10.0,
                      bottom: 10.0,
                    ),
                    elevation: 6.0,
                    shadowColor: const Color.fromRGBO(78, 130, 110, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(30.0),
                      ),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CollectionDetail(
                                imageUrl: item,
                                title: titles[index],
                                price: prices[titles[index]] ?? 0.00,
                              ),
                            ),
                          );
                        },
                        child: Stack(
                          children: <Widget>[
                            Image.network(
                              item,
                              fit: BoxFit.cover,
                              width: double.infinity,
                            ),
                            Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    titles[index],
                                    style: const TextStyle(
                                      fontSize: 24.0,
                                      fontWeight: FontWeight.bold,
                                      // backgroundColor: Colors.black45,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ).toList(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: imagesList.map((urlOfItem) {
              int index = imagesList.indexOf(urlOfItem);
              return Container(
                width: 10.0,
                height: 10.0,
                margin: const EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 2.0,
                ),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _currentIndex == index
                      ? const Color.fromRGBO(0, 0, 0, 0.8)
                      : const Color.fromRGBO(0, 0, 0, 0.3),
                ),
              );
            }).toList(),
          ),
          // const SizedBox(height: 10), // Spasi
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 20.0, // Jarak vertikal antar grid
              crossAxisSpacing: 20.0, // Jarak horizontal antar grid
            ),
            itemBuilder: (BuildContext context, int index) {
              return ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ItemListScreen(
                        imageUrl: imagebuttonList[index],
                        title: imageButtonTitles[index],
                        price: prices[imageButtonTitles[index]] ?? 0.00,
                      ),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                    // backgroundColor: const Color.fromRGBO(15, 13, 2, 100)),
                    backgroundColor: const Color.fromRGBO(78, 130, 110, 1)),
                // backgroundColor: const Color.fromRGBO(5, 3, 4, 1)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(imagebuttonList[index]),
                    const SizedBox(height: 5),
                    Text(
                      imageButtonTitles[index],
                      style: const TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              );
            },
            itemCount: imagebuttonList.length,
          ),
        ],
      ),
    ));
  }
}

final List<String> imagesList = [
  "https://cdn.pixabay.com/photo/2014/04/05/11/40/diamond-316610_1280.jpg",
  "https://cdn.pixabay.com/photo/2017/09/06/21/43/crystal-2723145_1280.jpg",
  "https://cdn.pixabay.com/photo/2014/04/05/11/40/diamond-316611_1280.jpg",
  "https://cdn.pixabay.com/photo/2019/04/06/05/17/wallpaper-4106667_1280.jpg",
  "https://cdn.pixabay.com/photo/2015/05/26/09/44/jewellery-784410_1280.jpg",
  "https://cdn.pixabay.com/photo/2014/12/08/14/23/pocket-watch-560937_1280.jpg",
];
final List<String> titles = [
  "Diamond",
  "Crystal",
  "Blue Diamonds",
  "Paint",
  "Necklace",
  "Watch",
];
final List<String> imagebuttonList = [
  // "https://cdn.pixabay.com/photo/2016/03/14/14/21/bride-1255520_1280.jpg",
  // "https://cdn.pixabay.com/photo/2018/01/05/07/05/people-3062246_1280.jpg",
  // "https://cdn.pixabay.com/photo/2018/01/06/09/25/hijab-3064633_1280.jpg",
  "https://cdn.pixabay.com/photo/2016/03/27/17/40/man-1283231_1280.jpg",
  "https://cdn.pixabay.com/photo/2016/11/18/17/08/fashion-1835871_1280.jpg",
  "https://cdn.pixabay.com/photo/2021/03/08/12/46/loafers-6079036_1280.jpg",
  "https://cdn.pixabay.com/photo/2015/11/26/00/14/woman-1063100_1280.jpg",
  "https://cdn.pixabay.com/photo/2014/05/26/14/01/beauty-354565_1280.jpg",
  "https://cdn.pixabay.com/photo/2015/03/30/12/43/high-heels-698602_1280.jpg",
  "https://cdn.pixabay.com/photo/2015/06/22/08/40/child-817373_1280.jpg",
  "https://cdn.pixabay.com/photo/2015/06/12/21/58/child-807547_1280.jpg",
  "https://cdn.pixabay.com/photo/2016/11/29/01/24/children-1866531_1280.jpg",
  "https://cdn.pixabay.com/photo/2016/11/11/07/47/jewellery-1815974_1280.jpg"
];

final List<String> imageButtonTitles = [
  "Man's Wear",
  "Suit",
  "Shoes",
  "Women's Wear",
  "Women's Hat",
  "High Heels",
  "Boy's Wear",
  "Girl's Wear",
  "Kid's Shoes",
  "Necklaces"
];
final Map<String, double> prices = {
  "Diamond": 100.0,
  "Crystal": 50.0,
  "Blue Diamonds": 200.0,
  "Paint": 20.0,
  "Necklace": 80.0,
  "Watch": 150.0,
  "Man's Wear": 70.0,
  "Suit": 120.0,
  "Shoes": 60.0,
  "Women's Wear": 90.0,
  "Women's Hat": 25.0,
  "High Heels": 55.0,
  "Boy's Wear": 75.0,
  "Girl's Wear": 65.0,
  "Kid's Shoes": 40.0,
  "Necklaces": 45.0,
};

final List<String> iconPaths = [
  "assets/suit.png",
  "assets/suit-pants.png",
  "assets/shoes.png",
  // Tambahkan alamat ikon lokal yang diperlukan di sini
];
