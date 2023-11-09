// // import "package:dimsam_gallery/bottom.dart";
// import "package:dimsam_gallery/bottomNav/favorites.dart";
// import "package:dimsam_gallery/bottomNav/profile.dart";
// import "package:dimsam_gallery/bottomNav/seacrh.dart";
// import "package:dimsam_gallery/collectionDetail.dart";
// import "package:flutter/material.dart";
// import "package:carousel_slider/carousel_slider.dart";

// final List<String> imagesList = [
//   "https://cdn.pixabay.com/photo/2014/04/05/11/40/diamond-316610_1280.jpg",
//   "https://cdn.pixabay.com/photo/2017/09/06/21/43/crystal-2723145_1280.jpg",
//   "https://cdn.pixabay.com/photo/2014/04/05/11/40/diamond-316611_1280.jpg",
//   "https://cdn.pixabay.com/photo/2019/04/06/05/17/wallpaper-4106667_1280.jpg",
//   "https://cdn.pixabay.com/photo/2015/05/26/09/44/jewellery-784410_1280.jpg",
//   "https://cdn.pixabay.com/photo/2014/12/08/14/23/pocket-watch-560937_1280.jpg",
// ];
// final List<String> titles = [
//   "Diamond",
//   "Crystal",
//   "Blue Diamonds",
//   "Paint",
//   "Necklace",
//   "Watch",
// ];
// final List<String> imagebuttonList = [
//   // "https://cdn.pixabay.com/photo/2016/03/14/14/21/bride-1255520_1280.jpg",
//   // "https://cdn.pixabay.com/photo/2018/01/05/07/05/people-3062246_1280.jpg",
//   // "https://cdn.pixabay.com/photo/2018/01/06/09/25/hijab-3064633_1280.jpg",
//   "https://cdn.pixabay.com/photo/2016/03/27/17/40/man-1283231_1280.jpg",
//   "https://cdn.pixabay.com/photo/2016/11/18/17/08/fashion-1835871_1280.jpg",
//   "https://cdn.pixabay.com/photo/2021/03/08/12/46/loafers-6079036_1280.jpg",
//   "https://cdn.pixabay.com/photo/2015/11/26/00/14/woman-1063100_1280.jpg",
//   "https://cdn.pixabay.com/photo/2014/05/26/14/01/beauty-354565_1280.jpg",
//   "https://cdn.pixabay.com/photo/2015/03/30/12/43/high-heels-698602_1280.jpg",
//   "https://cdn.pixabay.com/photo/2015/06/22/08/40/child-817373_1280.jpg",
//   "https://cdn.pixabay.com/photo/2015/06/12/21/58/child-807547_1280.jpg",
//   "https://cdn.pixabay.com/photo/2016/11/29/01/24/children-1866531_1280.jpg",
//   "https://cdn.pixabay.com/photo/2016/11/11/07/47/jewellery-1815974_1280.jpg"
// ];

// final List<String> imageButtonTitles = [
//   "Man\"s Wear",
//   "Suit",
//   "Shoes",
//   "Women\"s Wear",
//   "Women\"s Hat",
//   "High Heels",
//   "Boy\"s Wear",
//   "Girl\"s Wear",
//   "Kid\"s Shoes",
//   "Necklaces"
// ];
// final Map<String, double> prices = {
//   "Diamond": 100.0,
//   "Crystal": 50.0,
//   "Blue Diamonds": 200.0,
//   "Paint": 20.0,
//   "Necklace": 80.0,
//   "Watch": 150.0,
//   "Man's Wear": 70.0, // Contoh nilai harga untuk "Man"s Wear"
//   "Suit": 120.0, // Contoh nilai harga untuk "Suit"
//   "Shoes": 60.0, // Contoh nilai harga untuk "Shoes"
//   "Women's Wear": 90.0, // Contoh nilai harga untuk "Women"s Wear"
//   "Women's Hat": 25.0, // Contoh nilai harga untuk "Women"s Hat"
//   "High Heels": 55.0, // Contoh nilai harga untuk "High Heels"
//   "Boy's Wear": 75.0, // Contoh nilai harga untuk "Boy"s Wear"
//   "Girl's Wear": 65.0, // Contoh nilai harga untuk "Girl"s Wear"
//   "Kid's Shoes": 40.0, // Contoh nilai harga untuk "Kid"s Shoes"
//   "Necklaces": 45.0, // Contoh nilai harga untuk "Necklaces"
// };

// final List<String> iconPaths = [
//   "assets/suit.png",
//   "assets/suit-pants.png",
//   "assets/shoes.png",
//   // Tambahkan alamat ikon lokal yang diperlukan di sini
// ];

// class Collections extends StatefulWidget {
//   const Collections({Key? key}) : super(key: key);

//   @override
//   _CollectionsState createState() => _CollectionsState();
// }

// class _CollectionsState extends State<Collections> {
//   int _selectedIndex = 0;

//   static const List<Widget> _widgetOptions = <Widget>[
//     CollectionsBody(),
//     SearchScreen(),
//     FavoritesScreen(),
//     ProfileScreen()
//     // Tambahkan widget lainnya sesuai kebutuhan
//   ];

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color.fromRGBO(232, 232, 230, 1),
//       appBar: AppBar(
//         backgroundColor: const Color.fromRGBO(78, 130, 110, 1),
//         leading: IconButton(
//           padding: const EdgeInsets.only(left: 20),
//           icon: const Icon(Icons.arrow_back_ios_new_rounded),
//           onPressed: () {
//             // Aksi saat tombol kembali ditekan
//           },
//         ),
//         title: const Text("Dimsam Gallery"),
//       ),
//       body: _widgetOptions.elementAt(_selectedIndex),
//       bottomNavigationBar: BottomNavigationBar(
//         // backgroundColor: const Color.fromRGBO(15, 13, 2, 100),
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.search),
//             label: 'Search',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.favorite),
//             label: 'Favorites',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person),
//             label: 'Profile',
//           ),
//         ],
//         currentIndex: _selectedIndex,
//         selectedItemColor: const Color.fromRGBO(78, 130, 110, 1),
//         unselectedItemColor: const Color.fromRGBO(5, 3, 4, 1),
//         onTap: _onItemTapped,
//       ),
//     );
//   }
// }

// class CollectionsBody extends StatefulWidget {
//   const CollectionsBody({Key? key}) : super(key: key);

//   @override
//   _CollectionsBodyState createState() => _CollectionsBodyState();
// }

// class _CollectionsBodyState extends State<CollectionsBody> {
//   int _currentIndex = 0;

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: Column(
//         children: [
//           CarouselSlider(
//             options: CarouselOptions(
//               autoPlay: true,
//               onPageChanged: (index, reason) {
//                 setState(() {
//                   _currentIndex = index;
//                 });
//               },
//             ),
//             items: imagesList.asMap().entries.map(
//               (entry) {
//                 final index = entry.key;
//                 final item = entry.value;

//                 return Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Card(
//                     margin: const EdgeInsets.only(
//                       top: 10.0,
//                       bottom: 10.0,
//                     ),
//                     elevation: 6.0,
//                     shadowColor: const Color.fromRGBO(78, 130, 110, 1),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(30.0),
//                     ),
//                     child: ClipRRect(
//                       borderRadius: const BorderRadius.all(
//                         Radius.circular(30.0),
//                       ),
//                       child: GestureDetector(
//                         onTap: () {
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                               builder: (context) => CollectionDetail(
//                                 imageUrl: item,
//                                 title: titles[index],
//                                 price: prices[titles[index]] ?? 0.00,
//                               ),
//                             ),
//                           );
//                         },
//                         child: Stack(
//                           children: <Widget>[
//                             Image.network(
//                               item,
//                               fit: BoxFit.cover,
//                               width: double.infinity,
//                             ),
//                             Center(
//                               child: Column(
//                                 mainAxisAlignment: MainAxisAlignment.end,
//                                 children: [
//                                   Text(
//                                     titles[index],
//                                     style: const TextStyle(
//                                       fontSize: 24.0,
//                                       fontWeight: FontWeight.bold,
//                                       backgroundColor: Colors.black45,
//                                       color: Colors.white,
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//                 );
//               },
//             ).toList(),
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: imagesList.map((urlOfItem) {
//               int index = imagesList.indexOf(urlOfItem);
//               return Container(
//                 width: 10.0,
//                 height: 10.0,
//                 margin: const EdgeInsets.symmetric(
//                   vertical: 10.0,
//                   horizontal: 2.0,
//                 ),
//                 decoration: BoxDecoration(
//                   shape: BoxShape.circle,
//                   color: _currentIndex == index
//                       ? const Color.fromRGBO(0, 0, 0, 0.8)
//                       : const Color.fromRGBO(0, 0, 0, 0.3),
//                 ),
//               );
//             }).toList(),
//           ),
//           const SizedBox(height: 30), // Spasi
//           GridView.builder(
//             shrinkWrap: true,
//             physics: const NeverScrollableScrollPhysics(),
//             gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//               crossAxisCount: 3,
//               mainAxisSpacing: 20.0, // Jarak vertikal antar grid
//               crossAxisSpacing: 20.0, // Jarak horizontal antar grid
//             ),
//             itemBuilder: (BuildContext context, int index) {
//               return ElevatedButton(
//                 onPressed: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => CollectionDetail(
//                         imageUrl: imagebuttonList[index],
//                         title: imageButtonTitles[index],
//                         price: prices[imageButtonTitles[index]] ?? 0.00,
//                       ),
//                     ),
//                   );
//                 },
//                 style: ElevatedButton.styleFrom(
//                     // backgroundColor: const Color.fromRGBO(15, 13, 2, 100)),
//                     backgroundColor: const Color.fromRGBO(78, 130, 110, 1)),
//                 // backgroundColor: const Color.fromRGBO(5, 3, 4, 1)),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Image.network(imagebuttonList[index]),
//                     const SizedBox(height: 5),
//                     Text(
//                       imageButtonTitles[index],
//                       style: const TextStyle(color: Colors.white),
//                     ),
//                   ],
//                 ),
//               );
//             },
//             itemCount: imagebuttonList.length,
//           ),
//         ],
//       ),
//     );
//   }
// }
