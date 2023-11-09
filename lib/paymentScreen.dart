import 'package:dimas_dicoding/clothing.dart';
import 'package:flutter/material.dart';

class PaymentScreen extends StatefulWidget {
  final String productName;
  final double totalPrice;

  const PaymentScreen({
    Key? key,
    required this.productName,
    required this.totalPrice,
  }) : super(key: key);

  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  String selectedPaymentMethod = 'Credit Card'; // Default payment method

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(5, 3, 4, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(78, 130, 110, 1),
        title: const Text('Payment'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.network(ClothingItems().urlList[widget.productName]!),
            const SizedBox(height: 20),
            Text(
              'Product: ${widget.productName}',
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(232, 232, 230, 1),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Total Price: \$ ${widget.totalPrice.toStringAsFixed(2)}',
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(232, 232, 230, 1),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Select Payment Method:',
              style: TextStyle(
                fontSize: 18,
                color: Color.fromRGBO(232, 232, 230, 1),
              ),
            ),
            const SizedBox(height: 10),
            DropdownButton<String>(
              value: selectedPaymentMethod,
              onChanged: (value) {
                setState(() {
                  selectedPaymentMethod = value!;
                });
              },
              items: [
                'Credit Card',
                'PayPal',
                'Bank Transfer',
                'Cash on Delivery'
              ].map<DropdownMenuItem<String>>((String method) {
                return DropdownMenuItem<String>(
                  value: method,
                  child: Text(method),
                );
              }).toList(),
              style: const TextStyle(
                fontSize: 18,
                color: Color.fromRGBO(232, 232, 230, 1),
              ),
              dropdownColor: const Color.fromRGBO(78, 130, 110, 1),
              underline: Container(
                height: 2,
                color: const Color.fromRGBO(78, 130, 110, 1),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _showPaymentSuccessDialog(context);
              },
              style: ElevatedButton.styleFrom(
                primary: const Color.fromRGBO(78, 130, 110, 1),
              ),
              child: const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Complete Payment',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showPaymentSuccessDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Payment Success'),
          content: const Text('Thank you for your purchase!'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }
}
