import 'package:flutter/material.dart';
import 'package:kanu/Widgets/carton_series_widget.dart';
import 'package:kanu/Widgets/songs_widget.dart';


class StudioScreen extends StatefulWidget {
  const StudioScreen({Key? key}) : super(key: key);

  @override
  State<StudioScreen> createState() => _StudioScreenState();
}

class _StudioScreenState extends State<StudioScreen> {
 

  bool isSongs = true;
  bool isCartonSeries = false;

  late List<bool> isSelected;
  @override
  void initState() {
    isSelected = [isSongs, isCartonSeries];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //appBar: AppBarWidget(title: 'Studio'),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Center(
              child: Column(children: <Widget>[
                ToggleButtons(
                  borderWidth: 3,
                  disabledBorderColor: Colors.blueGrey,
                  selectedBorderColor: Color.fromARGB(255, 84, 197, 253),
                  splashColor: Color.fromARGB(255, 100, 210, 241),
                  borderRadius: BorderRadius.all(Radius.circular(15)),
        
                  children: [
                       Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                            'Songs',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 66, 172, 210),
                              ),
                          )),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                            'Carton series',
                            style:
                                TextStyle(
                                  fontSize: 20, 
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 66, 172, 210),
                                  ),
                          )),
                    
                  ],
                  isSelected: isSelected,
                  onPressed: choosenToggleButton,
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  child: subStudioScreen(),
                ),
              ]),
            ),
           ),
        ),
        );
  }

  void choosenToggleButton(value) {
    if (value == 0) {
      isSongs = true;
      isCartonSeries = false;
    } else {
      isSongs = false;
      isCartonSeries = true;
    }
    setState(() {
      isSelected = [isSongs, isCartonSeries];
    });
  }

  Widget subStudioScreen() {
    if (isSongs) {
      return SongsWidget();
    } else {
      return CartonSeriesWidget();
    }
  }
}
