import 'package:flutter/material.dart';

class InputScreen extends StatefulWidget {
  const InputScreen({Key? key}) : super(key: key);

  @override
  State<InputScreen> createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  TextEditingController dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Input"),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 10.0,
        ),
        child: Column(
          children: [
            _inputText(),
            const SizedBox(height: 30.0),
            _inputTextPassword(),
            const SizedBox(height: 30.0),
            _inputTextNumber(),
            const SizedBox(height: 30.0),
            _inputTextEmail(),
            const SizedBox(height: 30.0),
            _inputTextDate(),
          ],
        ),
      ),
    );
  }

  Widget _inputText() {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        labelText: "Name",
        hintText: "Add your name",
        icon: const Icon(Icons.person_outline_outlined),
      ),
      onChanged: (String value) {
        print("value: $value");
      },
    );
  }

  Widget _inputTextPassword() {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        labelText: "Password",
        hintText: "Ingrese su password",
        icon: const Icon(Icons.lock),
        suffixIcon: Icon(Icons.remove_red_eye_sharp),
      ),
    );
  }

  Widget _inputTextNumber() {
    return TextField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        labelText: "DNI",
        hintText: "DNI",
        icon: const Icon(Icons.indeterminate_check_box_rounded),
      ),
    );
  }

  Widget _inputTextEmail() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        labelText: "Email",
        hintText: "Email",
        icon: const Icon(Icons.email_outlined),
      ),
    );
  }

  Widget _inputTextDate() {
    return TextField(
      controller: dateController,
      keyboardType: TextInputType.datetime,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        labelText: "Date",
        hintText: "Date",
        icon: const Icon(Icons.date_range),
      ),
      onTap: () {
        _selectDate(context);
      },
    );
  }

  _selectDate(BuildContext context) async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1990),
      lastDate: DateTime(2023),
    );

    if (picked != null) {
      dateController.text = picked.toString();
    }
  }
}
