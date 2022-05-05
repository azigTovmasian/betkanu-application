import 'package:flutter/material.dart';
import 'package:kanu/main.dart';
import 'package:kanu/models/language.dart';

class AppBarWidget extends StatefulWidget implements PreferredSizeWidget {
  final String title;

  AppBarWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  State<AppBarWidget> createState() => _AppBarWidgetState();
  @override
  Size get preferredSize {
    return new Size.fromHeight(75.0);
  }
}

class _AppBarWidgetState extends State<AppBarWidget> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return AppBar(
      iconTheme:
          IconThemeData(color: Color.fromARGB(255, 16, 36, 60), size: 35),
      flexibleSpace: ClipRRect(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/light.jpg'),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
      centerTitle: true,
      title: Text(
        widget.title,
        style: TextStyle(
          color: Color.fromARGB(255, 249, 177, 51),
          fontSize: height * 0.00010 * width, 
          fontWeight: FontWeight.bold,
        ),
      ),
      elevation: 8,
      shadowColor: Colors.orange[800],
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(10),
        bottomRight: Radius.circular(10),
      )),
      actions: <Widget>[
        DropdownButton(
          items: Language.languageList()
              .map<DropdownMenuItem<Language>>((lang) => DropdownMenuItem(
                    value: lang,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(lang.flag,
                            style: TextStyle(
                              fontSize: 25,
                            )),
                        Text(
                          lang.name,
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Color.fromARGB(255, 16, 38, 60)),
                        ),
                      ],
                    ),
                  ))
              .toList(),
          onChanged: (Language? lang) {
            changeLanguage(lang);
          },
          icon: Padding(
            padding: const EdgeInsets.all(10),
            child: Icon(
              Icons.language,
              color: Color.fromARGB(255, 16, 36, 60),
              size: 35,
            ),
          ),
          underline: SizedBox(),
        )
      ],
    );
  }

  void changeLanguage(Language? lang) {
    // print(lang!.languageCode); // it's just for testing
    Locale _temp;
    switch (lang!.languageCode) {
      case 'en':
        _temp = Locale(lang.languageCode);
        break;
      case 'ar':
        _temp = Locale(lang.languageCode);
        break;
      default:
        _temp = Locale('en');
        break;
    }
    MyApp.setLocale(context, _temp);
  }
}
