import 'package:dimas_dicoding/clothing.dart';
import 'package:dimas_dicoding/collectionDetail.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List<String> searchResults = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search'),
        backgroundColor: const Color.fromRGBO(78, 130, 110, 1),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                onChanged: (value) {
                  // Mengambil hasil pencarian berdasarkan nilai input
                  searchResults = ClothingItems()
                      .prices
                      .keys
                      .where((key) =>
                          key.toLowerCase().contains(value.toLowerCase()))
                      .toList();
                  // Menampilkan 10 data pertama dari hasil pencarian
                  setState(() {});
                },
                decoration: InputDecoration(
                  hintText: 'Search...',
                  prefixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'Search Results',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Container(
                height: MediaQuery.of(context).size.height - 230,
                child: ListView.builder(
                  itemCount:
                      searchResults.length > 10 ? 10 : searchResults.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: SizedBox(
                        height: 100,
                        width: 100,
                        child: Image.network(
                            ClothingItems().urlList[searchResults[index]]!,
                            fit: BoxFit.cover),
                      ),
                      title: Text(searchResults[index]),
                      onTap: () {
                        // Aksi ketika item hasil pencarian ditekan
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CollectionDetail(
                              imageUrl: ClothingItems()
                                  .urlList[searchResults[index]]!,
                              title: searchResults[index],
                              price: ClothingItems()
                                      .prices[searchResults[index]] ??
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
      ),
    );
  }
}
