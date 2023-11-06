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

  late String _gender;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _gender = '';
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Text(
            'BMI CALCULATOR',
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.normal,
              color: Color.fromARGB(255, 142, 50, 158),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          TextField(
            controller: tinggiController,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              hintText: 'Masukkan Tinggi Badan (cm)',
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
              hintText: 'Masukkan Berat Badan (kg)',
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
            width: 200,
            child: DropdownButton(
              alignment: AlignmentDirectional.topStart,
              items: const [
                DropdownMenuItem<String>(
                  value: 'Wanita',
                  child: Text('Wanita'),
                ),
                DropdownMenuItem<String>(
                  value: 'Pria',
                  child: Text('Pria'),
                ),
              ],
              value: _gender.isNotEmpty ? _gender : null,
              iconSize: 36,
              isExpanded: true,
              hint: const Text('Gender'),
              onChanged: (value) {
                setState(() {
                  _gender = value!;
                });
              },
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
            height: 100,
          ),
          SizedBox(
            height: 100,
            child: TextButton(
              style: TextButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  textStyle: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                  backgroundColor: const Color.fromARGB(255, 142, 50, 158),
                  foregroundColor: Colors.white,
                  shape: const CircleBorder()),
              onPressed: () {
                try {
                  setState(() {
                    double berat = double.parse(beratController.text);
                    double tinggi = (int.parse(tinggiController.text) / 100);
                    final x = berat / (tinggi * tinggi);
                    String result = '';
                    if (x < 18.5) {
                      result = 'Underweight';
                    } else if (x < 23) {
                      result = 'Normal';
                    } else if (x < 25) {
                      result = 'Overweight';
                    } else if (x < 30) {
                      result = 'Obese I';
                    } else {
                      result = 'Obese II';
                    }
                    outputController.text = result;
                  });
                } catch (e) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      dismissDirection: DismissDirection.horizontal,
                      content: Text(
                        'Occur some error, please input valid number!',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(12))),
                    ),
                  );
                }
              },
              child: const Text('Calculate'),
            ),
          ),
          const SizedBox(
            height: 30,
          )
        ],
      ),
    );
  }
}
