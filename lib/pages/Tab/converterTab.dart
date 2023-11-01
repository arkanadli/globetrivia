import 'package:flutter/material.dart';

class ConverterTab extends StatefulWidget {
  const ConverterTab({super.key});

  @override
  State<ConverterTab> createState() => _ConverterTabState();
}

class _ConverterTabState extends State<ConverterTab> {
  TextEditingController dollarController = TextEditingController();
  TextEditingController idrController = TextEditingController();
  double result = 0;
  void convertCurrency() {
    double userInput =
        dollarController.text != '' ? double.parse(dollarController.text) : 0;
    result = userInput * 15535.95;
    // :: this will tell the widget that this need to be rebuild, only rebuild needed widgets
    // :: its only can in statefull widgets
    setState(() {});

    print(userInput);
    print(result);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 50),
            child: Text(
              "Rp. ${result != 0 ? result.toStringAsFixed(2) : "0"}",
              style: const TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
          ),
          TextField(
            controller: dollarController,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              hintText: 'Masukkan dollar',
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white54),
                borderRadius: BorderRadius.all(
                  Radius.circular(16),
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white54),
                borderRadius: BorderRadius.all(
                  Radius.circular(16),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: double.maxFinite,
            height: 50,
            child: TextButton(
              style: TextButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  textStyle: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                  backgroundColor: const Color.fromARGB(255, 142, 50, 158),
                  foregroundColor: Colors.white),
              onPressed: () {
                try {
                  setState(() {
                    double dollar = double.parse(dollarController.text);
                    final x = dollar * 15453;
                    result = x;
                  });
                } catch (e) {}
              },
              child: const Text('Dollar to IDR'),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: double.maxFinite,
            height: 50,
            child: TextButton(
              style: TextButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  textStyle: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                  backgroundColor: const Color.fromARGB(255, 142, 50, 158),
                  foregroundColor: Colors.white),
              onPressed: () {
                try {
                  setState(() {
                    double dollar = double.parse(dollarController.text);
                    final x = dollar / 15343;
                    result = x;
                  });
                } catch (e) {}
              },
              child: const Text('IDR to Dollar'),
            ),
          ),
        ],
      ),
    );
  }
}
