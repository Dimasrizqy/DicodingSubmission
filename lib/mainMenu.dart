import 'package:dimas_dicoding/bottomNav/collections.dart';
// import 'package:dimas_dicoding/collection.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(15, 13, 2, 100),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                // Navigasi ke halaman lain saat tombol ditekan
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CollectionsBody(),
                  ),
                );
              },
              child: const Text('Collection'),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigasi ke halaman lain saat tombol ditekan
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SecondMenuItem(),
                  ),
                );
              },
              child: const Text('Item Menu 2'),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("Logout"))
          ],
        ),
      ),
    );
  }
}

class FirstMenuItem extends StatelessWidget {
  const FirstMenuItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Item Menu 1'),
      ),
      body: const Center(
        child: Text('Konten dari Item Menu 1'),
      ),
    );
  }
}

class SecondMenuItem extends StatelessWidget {
  const SecondMenuItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Item Menu 2'),
      ),
      body: const Center(
        child: Text('Konten dari Item Menu 2'),
      ),
    );
  }
}
