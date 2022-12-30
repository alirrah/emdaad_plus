import 'package:emdaad_plus/page/menu_page.dart';
import 'package:emdaad_plus/page/register_page.dart';
import 'package:emdaad_plus/variable/variable.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class switchPage extends StatefulWidget {
  const switchPage({Key? key}) : super(key: key);

  @override
  State<switchPage> createState() => _switchPageState();
}

class _switchPageState extends State<switchPage> {

  @override
  void initState() {
    load();
    super.initState();
  }

  @override
  Widget build(BuildContext context) => user.token.isEmpty ? const registerPage() : const menuPage();

  void load() async{
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      user.token = prefs.getString('token') ?? '';
      user.id = prefs.getInt('id') ?? -1;
      user.firstname = prefs.getString('firstname') ?? '';
      user.lastname = prefs.getString('lastname') ?? '';
      user.phoneNumber = prefs.getString('phone') ?? '';
      user.birthday = prefs.getString('age') ?? '';
      user.gender = prefs.getInt('sex') ?? 0;
      user.about = prefs.getString('about') ?? '';
      user.language = prefs.getInt('language') ?? 0;
      user.light = prefs.getBool('light') ?? true;
      user.image = prefs.getString('image') ?? '';
      user.blood = prefs.getString('blood') ?? '';
      user.count = prefs.getInt('count') ?? -1;
      if(user.count % 5 != 0) {
        prefs.setInt('count', ++user.count);
      }
    });
  }
}
