// ignore_for_file: prefer_const_constructors, duplicate_ignore, use_key_in_widget_constructors, non_constant_identifier_names, avoid_types_as_parameter_names, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sized_box_for_whitespace, avoid_print

import 'age.dart';
import 'text_field.dart';
import 'package:flutter/material.dart';
import 'hejry.dart';
import 'package:intl/intl.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
  runApp(MyApp());
}

int maxAttempts = 3;

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

// ignore: use_key_in_widget_constructors
class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePagestate();
  }
}

class HomePagestate extends State<HomePage> {
  late BannerAd staticAd;
  late BannerAd inlinead;
  bool staticAdloaded = false;
  bool inlineAdloaded = false;
  static const AdRequest request = AdRequest();
  static const AdRequest request2 = AdRequest();

  void loadstaticbannerad() {
    staticAd = BannerAd(
        size: AdSize.mediumRectangle,
      
        listener: BannerAdListener(onAdLoaded: (ad) {
          setState(() {
            staticAdloaded = true;
          });
        }, onAdFailedToLoad: (Ad, error) {
          Ad.dispose();
          // ignore: avoid_print
          print("faild to load ${error.message}");
        }),
        request: request);
    staticAd.load();
  }

  void loadinlinebannerad() {
    inlinead = BannerAd(
        size: AdSize.largeBanner,
  
        listener: BannerAdListener(onAdLoaded: (ad) {
          setState(() {
            inlineAdloaded = true;
          });
        }, onAdFailedToLoad: (Ad, error) {
          Ad.dispose();
          print("faild to load ${error.message}");
        }),
        request: request2);
    inlinead.load();
  }

  Color bla = Colors.black;
  Color whi = Colors.white;
  int yearhejry = 0;
  int meladhejry = 0;
  int halyhejry = 0;
  int year = 0;
  int month = 0;
  int day = 0;
  int totalDay = 0;
  int totMonths = 0;
  int totMonths_Day = 0;
  int totWeeks = 0;
  int totWeeks_Days = 0;
  int totHours = 0;
  int totMinutes = 0;
  int totSeconds = 0;
  static var mycontrolleryear = TextEditingController();
  static var mycontrollermonth = TextEditingController();
  static var mycontrollerday = TextEditingController();
  static var mycontrolleryearhally = TextEditingController();
  static var mycontrolleryearmelak = TextEditingController();

  @override
  void initState() {
    loadstaticbannerad();
    loadinlinebannerad();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: bla,
          // ignore: prefer_const_constructors
          bottom: TabBar(tabs: [
            Tab(
                child: Text(
                  "السنة الميلادية",
                  style: TextStyle(fontSize: 20),
                ),
                icon: Icon(
                  Icons.screen_search_desktop_sharp,
                  color: Color.fromARGB(255, 32, 48, 190),
                )),
            Tab(
              child: Text(
                "السنة الهجرية",
                style: TextStyle(fontSize: 20),
              ),
              icon: Icon(
                Icons.screen_search_desktop_sharp,
                color: Color.fromARGB(255, 32, 48, 190),
              ),
            ),
          ]),
          title: Center(
            child: Stack(
              children: <Widget>[
                // Stroked text as border.
                Text(
                  'احسب عمرك',
                  style: TextStyle(
                    fontSize: 40,
                    foreground: Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 5
                      ..color = Color.fromARGB(255, 32, 48, 190),
                  ),
                ),
                // Solid text as fill.
                Text(
                  'احسب عمرك',
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.grey[300],
                  ),
                ),
              ],
            ),
          ),
        ),
        body: TabBarView(children: [
          Scaffold(
              // ignore: sized_box_for_whitespace
              body: Container(
                  height: double.infinity,
                  child: Stack(
                    children: [
                      Image.asset('images/original.jpg',
                          width: double.maxFinite,
                          height: double.maxFinite,
                          fit: BoxFit.cover),
                      SingleChildScrollView(
                        // ignore: avoid_unnecessary_containers
                        child: Container(
                            child: Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text_field(
                                    "سنة", "ادخل السنة", mycontrolleryear),
                                Text_field(
                                    "شهر", "ادخل الشهر", mycontrollermonth),
                                Text_field(
                                    "يوم", "ادخل اليوم", mycontrollerday),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      primary: bla,
                                      padding: EdgeInsets.all(10),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(25)),
                                    ),
                                    child: Text(
                                      " امسح  ",
                                      style: TextStyle(fontSize: 20.0),
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        year = 0;
                                        month = 0;
                                        day = 0;
                                        totalDay = 0;
                                        totMonths = 0;
                                        totMonths_Day = 0;
                                        totWeeks = 0;
                                        totWeeks_Days = 0;
                                        totHours = 0;
                                        totMinutes = 0;
                                        totSeconds = 0;
                                        mycontrolleryear =
                                            TextEditingController();
                                        mycontrollermonth =
                                            TextEditingController();
                                        mycontrollerday =
                                            TextEditingController();
                                      });
                                    },
                                  ),
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        primary: bla,
                                        padding: EdgeInsets.all(13),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20))),
                                    child: Text(
                                      " احسب عمري   ",
                                      style: TextStyle(fontSize: 20.0),
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        AgeCalculator(
                                          int.parse(mycontrolleryear.text),
                                          int.parse(mycontrollermonth.text),
                                          int.parse(mycontrollerday.text),
                                        );
                                        year = AgeCalculator.years;
                                        month = AgeCalculator.months;
                                        day = AgeCalculator.days;
                                        totalDay = AgeCalculator.totalDays;
                                        totMonths = AgeCalculator.totMonths;
                                        totMonths_Day =
                                            AgeCalculator.totMonths_Day;
                                        totWeeks = AgeCalculator.totWeeks;
                                        totWeeks_Days =
                                            AgeCalculator.totWeeks_Days;
                                        totHours = AgeCalculator.totHours;
                                        totMinutes = AgeCalculator.totMinutes;
                                        totSeconds = AgeCalculator.totSeconds;
                                      });
                                    },
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              child: Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(16)),
                                color: bla.withOpacity(.6),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 10.0,
                                    ),
                                    Text(
                                        "    عمرك هو :   $year سنة $month شهر $day يوم   ",
                                        style: TextStyle(
                                            color: whi,
                                            fontWeight: FontWeight.bold)),
                                    Text("أو $totMonths شهر $totMonths_Day يوم",
                                        style: TextStyle(
                                            color: whi,
                                            fontWeight: FontWeight.bold)),
                                    Text(
                                        "أو $totWeeks أسبوع $totWeeks_Days يوم",
                                        style: TextStyle(
                                            color: whi,
                                            fontWeight: FontWeight.bold)),
                                    Text(
                                        "أو ${NumberFormat.decimalPattern().format(totalDay)} يوم",
                                        style: TextStyle(
                                            color: whi,
                                            fontWeight: FontWeight.bold)),
                                    Text(
                                        "أو ${NumberFormat.decimalPattern().format(totHours)} ساعة",
                                        style: TextStyle(
                                            color: whi,
                                            fontWeight: FontWeight.bold)),
                                    Text(
                                        "أو ${NumberFormat.decimalPattern().format(totMinutes)} دقيقة",
                                        style: TextStyle(
                                            color: whi,
                                            fontWeight: FontWeight.bold)),
                                    Text(
                                        "أو${NumberFormat.decimalPattern().format(totSeconds)} ثانية",
                                        style: TextStyle(
                                            color: whi,
                                            fontWeight: FontWeight.bold)),
                                  ],
                                ),
                              ),
                            ),
                            if (inlineAdloaded)
                              // ignore: sized_box_for_whitespace
                              Container(
                                child: AdWidget(
                                  ad: inlinead,
                                ),
                                width: inlinead.size.width.toDouble(),
                                height: inlinead.size.height.toDouble(),
                              ),
                          ],
                        )),
                      ),
                    ],
                  ))),

          //"images/original.jpg"
          Scaffold(
              appBar: AppBar(
                  backgroundColor: bla,
                  title: Text(
                    " ادخل سنة ميلاديةوليست هجرية ",
                    textAlign: TextAlign.center,
                  )),
              body: Container(
                  height: double.infinity,
                  child: Stack(
                    children: [
                      Image.asset('images/helal.jpg',
                          width: double.maxFinite,
                          height: double.maxFinite,
                          fit: BoxFit.cover),
                      SingleChildScrollView(
                        child: Container(
                          child: Column(
                            children: [
                              SizedBox(
                                height: 3,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text_field(" سنة ميلادك", "ادخل السنة",
                                      mycontrolleryearmelak),
                                  Text_field("سنة حالية", "ادخل السنة",
                                      mycontrolleryearhally),
                                ],
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Container(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        primary: bla,
                                        padding: EdgeInsets.all(15),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(25)),
                                      ),
                                      child: Text(
                                        " امسح  ",
                                        style: TextStyle(fontSize: 20.0),
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          mycontrolleryearhally =
                                              TextEditingController();
                                          mycontrolleryearmelak =
                                              TextEditingController();
                                          yearhejry = 0;
                                          meladhejry = 0;
                                          halyhejry = 0;
                                        });
                                      },
                                    ),
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          primary: bla,
                                          padding: EdgeInsets.all(13),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20))),
                                      child: Text(
                                        " احسب عمري   ",
                                        style: TextStyle(fontSize: 20.0),
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          AgeCalculatorh(
                                              int.parse(
                                                  mycontrolleryearmelak.text),
                                              int.parse(
                                                  mycontrolleryearhally.text));
                                          yearhejry = AgeCalculatorh.calc;
                                          meladhejry =
                                              AgeCalculatorh.hejrymelad;
                                          halyhejry = AgeCalculatorh.hejryhaly;
                                        });
                                      },
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                padding: EdgeInsets.all(10),
                                child: Card(
                                  margin: EdgeInsets.all(5),
                                  elevation: 200,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(16)),
                                  color: bla.withOpacity(0.6),
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 1,
                                      ),
                                      Text(
                                          "    السنة الهجرية الحالية هي : $halyhejry ",
                                          style: TextStyle(
                                              color: whi,
                                              fontWeight: FontWeight.bold)),
                                      Text(
                                          "    السنة الهجرية يوم ميلادك هي : $meladhejry      ",
                                          style: TextStyle(
                                              color: whi,
                                              fontWeight: FontWeight.bold)),
                                      Text(
                                          "      عمرك الحالي بالهجري هو : $yearhejry",
                                          style: TextStyle(
                                              color: whi,
                                              fontWeight: FontWeight.bold)),
                                    ],
                                  ),
                                ),
                              ),

                              // AdBanner2(),
                              if (staticAdloaded)
                                Container(
                                  child: AdWidget(
                                    ad: staticAd,
                                  ),
                                  width: staticAd.size.width.toDouble(),
                                  height: staticAd.size.height.toDouble(),
                                ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ))),
        ]),
      ),
    );
  }
}
