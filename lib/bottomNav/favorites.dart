import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:dimas_dicoding/clothing.dart';
import 'package:dimas_dicoding/collectionDetail.dart';

class FavoritesScreen extends StatefulWidget {
  const FavoritesScreen({Key? key}) : super(key: key);

  @override
  _FavoritesScreenState createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  late SharedPreferences _prefs;
  List<String> _favoriteItems = [];

  @override
  void initState() {
    super.initState();
    _loadFavorites();
  }

  Future<void> _loadFavorites() async {
    _prefs = await SharedPreferences.getInstance();
    // Mendapatkan data favorit dari SharedPreferences
    final favorites = _prefs.getStringList('favorites') ?? [];
    setState(() {
      _favoriteItems = favorites;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorites'),
        backgroundColor: const Color.fromRGBO(78, 130, 110, 1),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Your Favorite Items',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Expanded(
              child: ListView.builder(
                itemCount: _favoriteItems.length,
                itemBuilder: (context, index) {
                  // Gantilah widget di bawah sesuai dengan data favorit
                  return ListTile(
                    leading: SizedBox(
                      height: 100,
                      width: 100,
                      child: Image.network(
                          ClothingItems().urlList[_favoriteItems[index]]!,
                          fit: BoxFit.cover),
                    ),
                    title: Text(_favoriteItems[index]),
                    onTap: () {
                      // Aksi ketika item hasil pencarian ditekan
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CollectionDetail(
                            imageUrl:
                                ClothingItems().urlList[_favoriteItems[index]]!,
                            title: _favoriteItems[index],
                            price:
                                ClothingItems().prices[_favoriteItems[index]] ??
                                    0.0,
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
