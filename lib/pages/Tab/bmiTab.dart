import 'package:flutter/material.dart';

class BMITab extends StatefulWidget {
  const BMITab({super.key});

  @override
  State<BMITab> createState() => _BMITabState();
}

class _BMITabState extends State<BMITab> {
  final TextEditingController tinggiController = TextEditingController();
  final TextEditingController beratController = TextEditingController();
  final TextEditingController outputController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          TextField(
            controller: tinggiController,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              hintText: 'Masukkan Tinggi Badan',
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
          TextField(
            controller: beratController,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              hintText: 'Masukkan Berat Badan',
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
          TextField(
            textAlign: TextAlign.end,
            readOnly: true,
            controller: outputController,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              label: Text('Output'),
              hintText: 'output',
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
          TextButton(
            style: TextButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                textStyle:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                backgroundColor: const Color.fromARGB(255, 142, 50, 158),
                foregroundColor: Colors.white),
            onPressed: () {
              try {
                setState(() {
                  double berat = double.parse(beratController.text);
                  double tinggi = (int.parse(tinggiController.text) / 100);
                  final x = berat / (tinggi * tinggi);
                  outputController.text = x.toStringAsFixed(2);
                });
              } catch (e) {}
            },
            child: const Text('Calculate'),
          ),
        ],
      ),
    );
  }
}
