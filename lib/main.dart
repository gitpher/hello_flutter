import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// refactor를 통해 적절하게 wrap
// body : SingleChildScrollView
// double.infinity
// Text()와 TextField()
// padding() & margin(), 그리고 EdgeInsets.all() 또는 .only()
// Image.network("")
// 버튼 종류: ElevatedButton, TextButton, IconButton

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Hello Flutter',
            style: TextStyle(
              fontSize: 28,
            ),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.network(
                    "https://media.nichegamer.com/wp-content/uploads/2019/06/24135959/razor-ramone-hard-gay-06-24-19-1.jpg",
                    width: double.infinity,
                  ),
                ),
                TextField(
                  decoration: InputDecoration(labelText: '이메일'),
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(labelText: '비밀번호'),
                ),
                Container(
                    width: double.infinity,
                    margin: const EdgeInsets.only(top: 16),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('로그인'),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
