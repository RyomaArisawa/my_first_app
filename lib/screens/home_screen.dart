import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _textHeader = "あなたの名前を教えてください";
  TextEditingController _textEditingController = TextEditingController();
  Widget _imageWidget = Container();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("初めてのアプリ"),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            Center(
                child: Text(
              _textHeader,
              style: TextStyle(fontSize: 20.0),
            )),
            TextField(
              keyboardType: TextInputType.text,
              style: TextStyle(fontSize: 20.0),
              controller:
                  _textEditingController, // 入力した文字を管理するTextEditingController
            ),
            Expanded(child: _imageWidget),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => _onClick(),
                child: Text(
                  "押してね",
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _onClick() {
    setState(() {
      var inputText = _textEditingController.text;
      _textHeader = "こんにちは$inputTextさん";
      _imageWidget = Image.asset("assets/images/hello.png");
    });
  }
}
