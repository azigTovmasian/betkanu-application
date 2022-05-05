import 'package:flutter/material.dart';
import 'package:kanu/Screens/betkanu_screen.dart';
import 'package:kanu/Screens/contributors_screen.dart';
import 'package:kanu/Screens/ourcenter_screen.dart';
import 'package:kanu/Screens/partners.dart';
import 'package:kanu/Screens/team_screen.dart';
import 'package:kanu/localization/set_localization.dart';
import 'package:kanu/provider/google_signin_provider.dart';
import 'package:provider/provider.dart';

class NavigationDrawerWidget extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 20);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Drawer(
        elevation: 10,
        child: Material(
          color: Color.fromARGB(255, 16, 36, 60),
          child: ListView(
            padding: padding,
            children: <Widget>[
              Container(
                height: height * 0.2,
                width: width * 0.75,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: Image.asset('images/light.jpg').image,
                        fit: BoxFit.fill)),
                child: Row(
                  children: [
                    SizedBox(width: 10),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(
                              color: Color.fromARGB(255, 232, 172, 34),
                              width: 2),
                          image: DecorationImage(
                              // or we can use AssetImage without .image
                              image: Image.asset('images/K.jpg').image)),
                    ),
                    SizedBox(width: 10),
                    Text(
                      '${getLang(context,"about_us")}',
                      style: TextStyle(
                          color: Color.fromARGB(255, 232, 172, 34),
                          fontSize: 26,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              buildMenuItem(
                  icon: Icons.home_work,
                  title: '${getLang(context,"betkanu")}',
                  onClicked: () => selectedItem(context, 0)),
              SizedBox(height: 6),
              buildMenuItem(
                  icon: Icons.group,
                  title: '${getLang(context,"team")}',
                  onClicked: () => selectedItem(context, 1)),
              SizedBox(height: 6),
              buildMenuItem(
                  icon: Icons.location_on,
                  title: '${getLang(context,"our_center")}',
                  onClicked: () => selectedItem(context, 2)),
              SizedBox(height: 6),
              buildMenuItem(
                  icon: Icons.location_history,
                  title: '${getLang(context,"partners")}',
                  onClicked: () => selectedItem(context, 3)),
              SizedBox(height: 6),
              buildMenuItem(
                  icon: Icons.accessibility,
                  title: '${getLang(context,"contributers")}',
                  onClicked: () => selectedItem(context, 4)),
              SizedBox(height: 6),
              Divider(
                color: Colors.blue[100],
                thickness: 1,
              ),
              buildMenuItem(
                  title: '${getLang(context,"log_out")}',
                  icon: Icons.logout,
                  onClicked: () {
                    final provider = Provider.of<GoogleSigninProvider>(context,
                        listen: false);
                    provider.googleLogout();
                  })
            ],
          ),
        ),
      ),
    );
  }

  Widget buildMenuItem(
      {required String title,
      required IconData icon,
      VoidCallback? onClicked}) {
    final color = Colors.white;

    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(
        title,
        style:
            TextStyle(color: color, fontSize: 16, fontWeight: FontWeight.w500),
      ),
      onTap: onClicked,
    );
  }

  void selectedItem(BuildContext context, int index) {
    Navigator.of(context).pop();
    switch (index) {
      case 0:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => BetKanuScreen()));
        break;
      case 1:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => TeamScreen()));
        break;
      case 2:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => OurCenterScreen()));
        break;
      case 3:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => PartnersScreen()));
        break;
      case 4:
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => ContributorsScreen()));
        break;
      default:
    }
  }
}
