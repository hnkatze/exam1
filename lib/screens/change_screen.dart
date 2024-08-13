import 'package:flutter/material.dart';
import 'package:exam1/components/multi_compo.dart';

class ChangeScreen extends StatefulWidget {
  const ChangeScreen({super.key});

  @override
  State<ChangeScreen> createState() => _ChangeScreenState();
}

class _ChangeScreenState extends State<ChangeScreen> {
  double _inputValue = 0.0;
  String _selectedCurrency = 'Dólares';
  double _result = 0.0;

  final Map<String, double> _conversionRates = {
    'Dólares': 0.041,
    'Euros': 0.038,
  };

  void _convertCurrency() {
    setState(() {
      _result = _inputValue * (_conversionRates[_selectedCurrency] ?? 1.0);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarCompo(title: "Divisas"),
      drawer: const DrawerMenu(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Convertir Lempiras a:',
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            DropdownButton<String>(
              value: _selectedCurrency,
              onChanged: (String? newValue) {
                setState(() {
                  _selectedCurrency = newValue!;
                  _convertCurrency();
                });
              },
              items: _conversionRates.keys
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            const SizedBox(height: 20),
            TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Cantidad en Lempiras',
              ),
              keyboardType: TextInputType.number,
              onChanged: (String value) {
                setState(() {
                  _inputValue = double.tryParse(value) ?? 0.0;
                  _convertCurrency();
                });
              },
            ),
            const SizedBox(height: 20),
            Text(
              'Resultado: ${_result.toStringAsFixed(2)} $_selectedCurrency',
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
