import 'package:flutter/material.dart';

class Key extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Custom Keyboard')),
      body: CustomKeyboard(),
    );
  }
}

class CustomKeyboard extends StatefulWidget {
  @override
  _CustomKeyboardState createState() => _CustomKeyboardState();
}

class _CustomKeyboardState extends State<CustomKeyboard> {
  String input = '';

  void _onKeyPress(String key) {
    setState(() {
      input += key;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Center(
            child: Text(
              input,
              style: TextStyle(fontSize: 24),
            ),
          ),
        ),
        GridView.count(
          crossAxisCount: 3,
          shrinkWrap: true,
          children: [
            _buildKey('1'),
            _buildKey('2'),
            _buildKey('3'),
            _buildKey('4'),
            _buildKey('5'),
            _buildKey('6'),
            _buildKey('7'),
            _buildKey('8'),
            _buildKey('9'),
            _buildKey('*'),
            _buildKey('0'),
            _buildKey('#'),
          ],
        ),
      ],
    );
  }

  Widget _buildKey(String key) {
    return GestureDetector(
      onTap: () => _onKeyPress(key),
      child: Container(
        margin: EdgeInsets.all(4),
        color: Colors.blue,
        child: Center(
          child: Text(
            key,
            style: TextStyle(fontSize: 24, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
