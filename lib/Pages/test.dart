import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  TextEditingController _controller = TextEditingController();
  bool _textFieldFilled = false;
  bool _buttonClickable = false;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            color: _buttonClickable ? Colors.blue : Colors.red,
            height: 100,
            width: double.infinity,
          ),
          const SizedBox(
            height: 20,
          ),
          TextFormField(
            onChanged: (content) {
              if (content == "") {
                _textFieldFilled = false;
                if (_textFieldFilled) {
                  setState(() {
                    _buttonClickable = false;
                  });
                }
              }
            },
            controller: _controller,
            decoration: InputDecoration(
                contentPadding: const EdgeInsets.only(left: 20),
                enabledBorder:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20))),
          )
        ],
      ),
    );
  }
}
