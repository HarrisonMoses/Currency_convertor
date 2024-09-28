import 'package:flutter/material.dart';

class CurrencyConverter extends StatefulWidget {
  const CurrencyConverter({super.key});

  @override
  State<CurrencyConverter> createState() => _CurrencyConverterState();
}

class _CurrencyConverterState extends State<CurrencyConverter> {
  double result = 0.0;
  TextEditingController controller = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Currency Converter"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 204, 226, 144),
      ),
      backgroundColor: const Color.fromARGB(255, 204, 226, 144),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Ugx ${result.toStringAsFixed(2)}',
              style: const TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 14, 12, 12),
              ),
            ),
            TextField(
              keyboardType: TextInputType.number,
              controller: controller,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
              decoration: const InputDecoration(
                enabled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20.0),
                  ),
                ),
                prefixIcon: Icon(
                  Icons.attach_money_outlined,
                  weight: 10.0,
                  color: Colors.red,
                  size: 20.0,
                ),
                hintText: "Enter amount in USD",
                hintStyle: TextStyle(color: Color.fromARGB(255, 209, 68, 68)),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            const SizedBox(height: 10.0),
            TextButton(
              onPressed: () {
                setState(() {
                  result = double.parse(controller.text) * 3700;
                });
              },
              style: ButtonStyle(
                backgroundColor: WidgetStateColor.resolveWith(
                  (callback) {
                    return Colors.red;
                  },
                ),
                minimumSize: WidgetStateProperty.resolveWith(
                  (callback) {
                    return const Size(400.0, 50.0);
                  },
                ),
              ),
              child: const Text(
                "USD to Ugx",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
