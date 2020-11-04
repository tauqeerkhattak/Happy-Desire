import 'package:flutter/material.dart';
import 'package:shop_app/models/language.dart';
import 'package:shop_app/screens/language/components/language_list_item.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<Language> languages = List();

  @override
  void initState() {
    super.initState();
    languages = [
      Language(
        language: 'English',
        icon: 'assets/icons/United States.png',
        selected: true,
      ),
      Language(
        language: 'French',
        icon: 'assets/icons/France.png',
        selected: false,
      ),
      Language(
        language: 'German',
        icon: 'assets/icons/Germany.png',
        selected: false,
      ),
      Language(
        language: 'Chinese',
        icon: 'assets/icons/China.png',
        selected: false,
      ),
      Language(
        language: 'Japanese',
        icon: 'assets/icons/Japan.png',
        selected: false,
      ),
      Language(
        language: 'Turkish',
        icon: 'assets/icons/Turkey.png',
        selected: false,
      ),
    ];
  }

  changeLanguage(int index) {
    setState(() {
      for (int i = 0; i < languages.length; i++) {
        if (i == index) {
          setState(() {
            languages[i].selected = true;
          });
        } else {
          setState(() {
            languages[i].selected = false;
          });
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Text('Select a Language'),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: languages.length,
                itemBuilder: (context, index) {
                  return LanguageListItem(
                    language: languages[index].language,
                    icon: languages[index].icon,
                    selected: languages[index].selected,
                    changeLanguage: () => changeLanguage(index),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
