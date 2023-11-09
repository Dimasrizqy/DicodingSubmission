import 'package:dimas_dicoding/paymentProduct.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:lorem_ipsum/lorem_ipsum.dart' as lorem;

class CollectionDetail extends StatefulWidget {
  final String imageUrl;
  final String title;
  final double price;

  const CollectionDetail({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.price,
  }) : super(key: key);

  @override
  _CollectionDetailState createState() => _CollectionDetailState();
}

class _CollectionDetailState extends State<CollectionDetail> {
  bool isFavorite = false;
  late SharedPreferences _prefs;

  @override
  void initState() {
    super.initState();
    _loadFavoriteStatus();
  }

  Future<void> _loadFavoriteStatus() async {
    _prefs = await SharedPreferences.getInstance();
    setState(() {
      isFavorite =
          _prefs.getStringList('favorites')?.contains(widget.title) ?? false;
    });
  }

  Future<void> _toggleFavoriteStatus() async {
    setState(() {
      isFavorite = !isFavorite;
    });

    List<String> favorites = _prefs.getStringList('favorites') ?? [];
    if (isFavorite) {
      favorites.add(widget.title);
    } else {
      favorites.remove(widget.title);
    }

    await _prefs.setStringList('favorites', favorites);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(5, 3, 4, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(78, 130, 110, 1),
        title: Text(widget.title),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              isFavorite ? Icons.favorite : Icons.favorite_border,
              color: Colors.red,
            ),
            onPressed: _toggleFavoriteStatus,
          ),
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PaymentProductPage(
                    productName: widget.title,
                    price: widget.price,
                    imageUrl: widget.imageUrl,
                  ),
                ),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              Image.network(widget.imageUrl),
              const SizedBox(height: 20),
              Text(
                widget.title,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(232, 232, 230, 1),
                ),
              ),
              Text(
                '\$ ${widget.price}',
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(232, 232, 230, 1),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                lorem.loremIpsum(),
                style: const TextStyle(
                  fontSize: 16,
                  color: Color.fromRGBO(232, 232, 230, 1),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                lorem.loremIpsum(),
                style: const TextStyle(
                  fontSize: 16,
                  color: Color.fromRGBO(232, 232, 230, 1),
                ),
              ),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
