import 'package:flutter/material.dart';
import 'theme.dart';
import 'custom_textfield.dart';

class WaterForm extends StatefulWidget {
  const WaterForm({super.key});

  @override
  WaterFormState createState() => WaterFormState();
}

class WaterFormState extends State<WaterForm> {
  final _formKey = GlobalKey<FormState>();
  String type = '';
  int quantity = 0;
  double price = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sell Water')),
      body: Padding(
        padding: const EdgeInsets.all(paddingBig),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CustomTextField(
                  label: 'Type',
                  onSaved: (value) => type = value ?? '',
                ),
                CustomTextField(
                  label: 'Quantity',
                  keyboardType: TextInputType.number,
                  onSaved: (value) =>
                      quantity = int.tryParse(value ?? '0') ?? 0,
                ),
                CustomTextField(
                  label: 'Price',
                  keyboardType: TextInputType.number,
                  onSaved: (value) =>
                      price = double.tryParse(value ?? '0') ?? 0,
                ),
                ElevatedButton(
                  onPressed: () {
                    _formKey.currentState!.save();
                    print('Water: $type, Quantity: $quantity, Price: $price');
                  },
                  child: const Text('Save'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
