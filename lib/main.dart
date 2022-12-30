import 'package:emdaad_plus/page/switch_page.dart';
import 'package:emdaad_plus/variable/variable.dart';
import 'package:flutter/material.dart';

void main() => runApp(const app());

class app extends StatelessWidget {
  const app({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var text = ['امداد پلاس', 'Emdaad Plus', 'امداد بلس'];
    return MaterialApp(
      title: text[user.language],
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.red,
      ),
      darkTheme: ThemeData(
        primaryColor: Colors.black,
      ),
      home: const switchPage(),
    );
  }
}
