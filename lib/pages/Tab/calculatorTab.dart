import 'package:flutter/material.dart';

class CalculatorTab extends StatefulWidget {
  const CalculatorTab({super.key});

  @override
  State<CalculatorTab> createState() => _CalculatorTabState();
}

class _CalculatorTabState extends State<CalculatorTab> {
  TextEditingController input1Field = TextEditingController();
  TextEditingController input2Field = TextEditingController();
  TextEditingController output = TextEditingController();
  String result = '0';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          TextField(
            controller: input1Field,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              hintText: 'Masukkan angka pertama',
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
            controller: input2Field,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              hintText: 'Masukkan angka kedua',
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
            height: 50,
          ),
          TextField(
            textAlign: TextAlign.end,
            controller: output,
            readOnly: true,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
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
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                style: TextButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 12),
                    textStyle: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                    backgroundColor: const Color.fromARGB(255, 142, 50, 158),
                    foregroundColor: Colors.white),
                onPressed: () {
                  try {
                    final nilai1 = double.parse(input1Field.text);
                    final nilai2 = double.parse(input2Field.text);
                    result = (nilai1 + nilai2).toString();
                  } catch (e) {
                    result = 'Parameter input tidak lengkap';
                  }
                  setState(() {
                    output.text = result;
                  });
                },
                child: const Text('Tambah'),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                flex: 1,
                child: TextButton(
                  style: TextButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 12),
                      textStyle: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold),
                      backgroundColor: const Color.fromARGB(255, 142, 50, 158),
                      foregroundColor: Colors.white),
                  onPressed: () {
                    try {
                      final nilai1 = double.parse(input1Field.text);
                      final nilai2 = double.parse(input2Field.text);
                      result = (nilai1 - nilai2).toString();
                    } catch (e) {
                      result = 'Parameter input tidak lengkap';
                    }
                    setState(() {
                      output.text = result;
                    });
                  },
                  child: const Text('Kurang'),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child: TextButton(
                  style: TextButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 12),
                      textStyle: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold),
                      backgroundColor: const Color.fromARGB(255, 142, 50, 158),
                      foregroundColor: Colors.white),
                  onPressed: () {
                    try {
                      final nilai1 = double.parse(input1Field.text);
                      final nilai2 = double.parse(input2Field.text);
                      result = (nilai1 * nilai2).toString();
                    } catch (e) {
                      result = 'Parameter input tidak lengkap';
                    }
                    setState(() {
                      output.text = result;
                    });
                  },
                  child: const Text('Kali'),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              TextButton(
                style: TextButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 12),
                    textStyle: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                    backgroundColor: const Color.fromARGB(255, 142, 50, 158),
                    foregroundColor: Colors.white),
                onPressed: () {
                  try {
                    final nilai1 = double.parse(input1Field.text);
                    final nilai2 = double.parse(input2Field.text);
                    result = (nilai1 / nilai2).toString();
                  } catch (e) {
                    result = 'Parameter input tidak lengkap';
                  }
                  setState(() {
                    output.text = result;
                  });
                },
                child: const Text('Bagi'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
