import 'dart:convert';

import 'package:bokking_details/screen/Notification.dart';
import 'package:bokking_details/screen/qr_code.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';

class DemoMWDrawerScreen4 extends StatefulWidget {
  const DemoMWDrawerScreen4({Key? key}) : super(key: key);

  @override
  _DemoMWDrawerScreen4State createState() => _DemoMWDrawerScreen4State();
}

class _DemoMWDrawerScreen4State extends State<DemoMWDrawerScreen4> {
  List info = [];
  _initData() {
    DefaultAssetBundle.of(context).loadString("json/hotal.json").then((value) {
      info = json.decode(value);
    });
  }


  TextStyle boldTextStyle =
      TextStyle(fontWeight: FontWeight.bold, fontSize: 24);

  List<SampleListModel> getData = [];

  double xOffset = 0;
  double yOffset = 0;
  double scaleFactor = 1;
  double angle = 0;

  bool d1Open = false;

  late int isSelected = 0;

  closeDrawer() {
    xOffset = 0;
    yOffset = 0;
    angle = 0;
    scaleFactor = 1;
    d1Open = false;
    setStatusBarColor(appStore.scaffoldBackground!);
  }

  openDrawer() {
    xOffset = 200;
    yOffset = 80;
    scaleFactor = 0.8;
    angle = 6.18;
    d1Open = true;
    setStatusBarColor(Color(0xFF6A66BB), statusBarBrightness: Brightness.dark);
    setState(() {});
  }

  @override
  void initState() {
    setStatusBarColor(appStore.scaffoldBackground!);
    super.initState();

    init();
    _initData();
  }

  void init() async {
    await Future.delayed(Duration(seconds: 1)).then((value) => openDrawer());
  }

  @override
  void dispose() {
    setStatusBarColor(appStore.scaffoldBackground!);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Stack(
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                color: Color(0xFF6A66BB),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 16),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 40,
                          ),
                          Icon(Icons.account_circle,
                              color: Colors.white, size: 90),
                          SizedBox(
                            height: 8,
                          ),
                          Text('Hasti Moradiya',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    Row(
                      children: [
                        Icon(Icons.notifications,color: Colors.white),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          NotificationPage()));
                            },
                            child: Text("Notification",style: TextStyle(fontSize: 18,color: Colors.white),))
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.settings,color: Colors.white,),
                        TextButton(
                            onPressed: () {

                            },
                            child: Text("Setting",style: TextStyle(fontSize: 18,color: Colors.white)))
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.language_sharp,color: Colors.white,),
                        TextButton(
                            onPressed: () {

                            },
                            child: Text("Language",style: TextStyle(fontSize: 18,color: Colors.white)))
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.payments),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          NotificationPage()));
                            },
                            child: Text("Payments"))
                      ],
                    ),
                    // Row(
                    //   children: [
                    //     Icon(Icons.qr_code,color: Colors.white,),
                    //     TextButton(
                    //         onPressed: () {
                    //           Navigator.push(
                    //               context,
                    //               MaterialPageRoute(
                    //                   builder: (context) =>
                    //                       DemoGenerateQRCodeScreen()));
                    //         },
                    //         child: Text("Generate QR code",style: TextStyle(fontSize: 18,color: Colors.white)))
                    //   ],
                    // ),
                    // DemoButtonScreen(),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: [
                        ...List.generate(
                          getData.length,
                          (index) {
                            SampleListModel data = getData[index];
                            return ListTile(
                              tileColor: isSelected == index
                                  ? Color(0xFF513AAF)
                                  : Colors.transparent,
                              title: Text(
                                data.title ?? "",
                                style: TextStyle(
                                  color: isSelected == index
                                      ? Colors.white
                                      : Colors.white54,
                                ),
                              ),
                              leading: Icon(
                                data.icon,
                                color: isSelected == index
                                    ? Colors.white
                                    : Colors.white54,
                              ),
                              onTap: () {
                                isSelected = index;
                                closeDrawer();
                                setState(() {});
                              },
                            );
                          },
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 16, bottom: 40, top: 100),
                      // decoration: BoxDecoration(
                      //   border: Border.all(color: Colors.white),
                      //   borderRadius: BorderRadius.circular(32),
                      // ),
                      child: ListTile(
                        title: Row(
                          children: [
                            Icon(Icons.logout, color: Colors.white),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Logout",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25),
                            ),
                          ],
                        ),
                        onTap: () {
                          closeDrawer();
                          setState(() {});
                        },
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  closeDrawer();
                  setState(() {});
                },
                onPanUpdate: (d) {
                  closeDrawer();
                  setState(() {});
                },
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 200),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: d1Open
                        ? BorderRadius.circular(16)
                        : BorderRadius.circular(0),
                  ),
                  transform: Matrix4.translationValues(xOffset, yOffset, 0)
                    ..scale(scaleFactor)
                    ..rotateZ(angle),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        children: [
                          IconButton(
                            icon: Icon(d1Open ? Icons.arrow_back : Icons.menu,
                                size: 30),
                            onPressed: () {
                              if (d1Open) {
                                closeDrawer();
                              } else {
                                xOffset = 200;
                                yOffset = 80;
                                scaleFactor = 0.8;
                                angle = 6.18;
                                d1Open = true;
                                setStatusBarColor(Color(0xFF6A66BB));
                              }
                              setState(() {});
                            },
                          ),
                          SizedBox(width: 15),
                          Text('Hello, User',
                              style: TextStyle(
                                  fontSize: 28, fontWeight: FontWeight.bold)),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin:
                                EdgeInsets.only(top: 30, left: 20, right: 20),
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Good Morning",
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.grey),
                                    ),
                                    Gap(5),
                                    Text(
                                      "Book Tickets",
                                      style: TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                Expanded(child: Container()),
                                Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image:
                                              AssetImage("assets/img_2.png"))),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin:
                                EdgeInsets.only(right: 20, left: 20, top: 30),
                            height: 55,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(10)),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(Icons.search_rounded),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Search",
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.grey),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 20, left: 20),
                            child: Row(
                              children: [
                                Text(
                                  "Upcomming Fllights",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w500),
                                ),
                                Expanded(child: Container()),
                                Text(
                                  "View all",
                                  style: TextStyle(
                                      fontSize: 17, color: Colors.deepPurple),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 200,
                            width: MediaQuery.of(context).size.width,
                            child: PageView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: 3,
                                controller:
                                    PageController(viewportFraction: 0.9),
                                itemBuilder: (_, i) {
                                  return Container(
                                    height: 200,
                                    width: MediaQuery.of(context).size.width,
                                    child: Column(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(
                                              top: 15, right: 20),
                                          padding: EdgeInsets.only(
                                              right: 10, left: 10, top: 20),
                                          height: 80,
                                          width:
                                              MediaQuery.of(context).size.width,
                                          decoration: BoxDecoration(
                                              color: Color(0xFF00796C),
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(10),
                                                  topRight:
                                                      Radius.circular(10))),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Column(
                                                children: [
                                                  Text(
                                                    "NYC",
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        color: Colors.white),
                                                  ),
                                                  Gap(5),
                                                  Text(
                                                    "New-Yourk",
                                                    style: TextStyle(
                                                        fontSize: 15,
                                                        color: Colors.white),
                                                  )
                                                ],
                                              ),
                                              // SizedBox(width: 20,),
                                              Column(
                                                children: [
                                                  Row(
                                                    children: [
                                                      Icon(
                                                        Icons
                                                            .location_searching_rounded,
                                                        size: 20,
                                                        color: Colors.white,
                                                      ),
                                                      Text(
                                                        " - - -",
                                                        style: TextStyle(
                                                            color:
                                                                Colors.white),
                                                      ),
                                                      Transform.rotate(
                                                        angle: 1.5,
                                                        child: Icon(
                                                          Icons.local_airport,
                                                          color: Colors.white,
                                                        ),
                                                      ),
                                                      Text(
                                                        "- - -",
                                                        style: TextStyle(
                                                            color:
                                                                Colors.white),
                                                      ),
                                                      Icon(
                                                        Icons
                                                            .location_searching_rounded,
                                                        size: 20,
                                                        color: Colors.white,
                                                      ),
                                                    ],
                                                  ),
                                                  Gap(5),
                                                  Text(
                                                    "8H 30Ms",
                                                    style: TextStyle(
                                                        fontSize: 15,
                                                        color: Colors.white),
                                                  )
                                                ],
                                              ),
                                              Column(
                                                children: [
                                                  Row(
                                                    children: [
                                                      Column(
                                                        children: [
                                                          Text(
                                                            "London",
                                                            style: TextStyle(
                                                                fontSize: 20,
                                                                color: Colors
                                                                    .white),
                                                          ),
                                                          Gap(5),
                                                          Text(
                                                            "London",
                                                            style: TextStyle(
                                                                fontSize: 15,
                                                                color: Colors
                                                                    .white),
                                                          )
                                                        ],
                                                      ),
                                                    ],
                                                  )
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(right: 20),
                                          height: 20,
                                          color: Color(0xFF8D6E63),
                                          child: Row(
                                            children: [
                                              SizedBox(
                                                height: 20,
                                                width: 10,
                                                child: DecoratedBox(
                                                  decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius:
                                                          BorderRadius.only(
                                                              topRight: Radius
                                                                  .circular(10),
                                                              bottomRight:
                                                                  Radius
                                                                      .circular(
                                                                          10))),
                                                ),
                                              ),
                                              Expanded(child: Container()),
                                              Text(
                                                " -     -    -     -    -    -    -    -     -   -    -    -   -    -    -    -   -   - ",
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                              SizedBox(
                                                height: 20,
                                                width: 10,
                                                child: DecoratedBox(
                                                  decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius:
                                                          BorderRadius.only(
                                                              topLeft: Radius
                                                                  .circular(10),
                                                              bottomLeft: Radius
                                                                  .circular(
                                                                      10))),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(right: 20),
                                          padding: EdgeInsets.only(
                                            right: 10,
                                            left: 10,
                                          ),
                                          color: Color(0xFF8D6E63),
                                          height: 60,
                                          width:
                                              MediaQuery.of(context).size.width,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Column(
                                                children: [
                                                  Text(
                                                    "1 May",
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        color: Colors.white),
                                                  ),
                                                  Gap(5),
                                                  Text(
                                                    "Date",
                                                    style: TextStyle(
                                                        fontSize: 15,
                                                        color: Colors.white),
                                                  )
                                                ],
                                              ),
                                              // SizedBox(width: 20,),
                                              Column(
                                                children: [
                                                  Row(
                                                    children: [
                                                      Text(
                                                        "08:00 AM",
                                                        style: TextStyle(
                                                            fontSize: 20,
                                                            color:
                                                                Colors.white),
                                                      ),
                                                    ],
                                                  ),
                                                  Gap(5),
                                                  Text(
                                                    "Departure time",
                                                    style: TextStyle(
                                                        fontSize: 15,
                                                        color: Colors.white),
                                                  )
                                                ],
                                              ),
                                              Column(
                                                children: [
                                                  Row(
                                                    children: [
                                                      Column(
                                                        children: [
                                                          Text(
                                                            "23",
                                                            style: TextStyle(
                                                                fontSize: 20,
                                                                color: Colors
                                                                    .white),
                                                          ),
                                                          Gap(5),
                                                          Text(
                                                            "Number",
                                                            style: TextStyle(
                                                                fontSize: 15,
                                                                color: Colors
                                                                    .white),
                                                          )
                                                        ],
                                                      ),
                                                    ],
                                                  )
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                }),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 20, left: 20),
                            child: Row(
                              children: [
                                Text(
                                  "Hotels",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w500),
                                ),
                                Expanded(child: Container()),
                                Text(
                                  "View all",
                                  style: TextStyle(
                                      fontSize: 17, color: Colors.deepPurple),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: 300,
                            width: MediaQuery.of(context).size.width,
                            child: PageView.builder(
                                itemCount: info.length,
                                controller:
                                    PageController(viewportFraction: 0.8),
                                itemBuilder: (_, i) {
                                  return Container(
                                    margin: EdgeInsets.only(
                                      right: 50,
                                    ),
                                    height: 300,
                                    width: 200,
                                    decoration: BoxDecoration(
                                        color: Color(0xFFE8EAF6),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Column(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(top: 20),
                                          height: 150,
                                          width:
                                              MediaQuery.of(context).size.width,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image:
                                                    AssetImage(info[i]["img"])),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Container(
                                          padding: EdgeInsets.only(right: 90),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                info[i]["title"],
                                                style: TextStyle(
                                                    fontSize: 24,
                                                    color: Color(0xFF546E7A),
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Gap(5),
                                              Text(
                                                info[i]["price"],
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    color: Colors.blueGrey,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Gap(7),
                                              Text(
                                                "40/Night",
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    color: Color(0xFF546E7A),
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  );
                                }),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  //change status bar color
  Future<void> setStatusBarColor(
    Color statusBarColor, {
    Color? systemNavigationBarColor,
    Brightness? statusBarBrightness,
    Brightness? statusBarIconBrightness,
    int delayInMilliSeconds = 200,
  }) async {
    await Future.delayed(Duration(milliseconds: delayInMilliSeconds));

    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: statusBarColor,
        systemNavigationBarColor: systemNavigationBarColor,
        statusBarBrightness: statusBarBrightness,
        statusBarIconBrightness: statusBarIconBrightness ?? Brightness.light,
      ),
    );
  }
}

class SampleListModel {
  Widget? leading;
  String? title;
  String? subTitle;
  Widget? trailing;
  IconData? icon;
  IconData? alternateIcon;
  Function? onTap;
  Color? colors;
  Widget? launchWidget;

  SampleListModel(
      {this.leading,
      this.title,
      this.subTitle,
      this.colors,
      this.icon,
      this.alternateIcon,
      this.trailing,
      this.onTap,
      this.launchWidget});
}

AppStore appStore = AppStore();

class AppStore {
  Color? textPrimaryColor;
  Color? iconColorPrimaryDark;
  Color? scaffoldBackground;
  Color? backgroundColor;
  Color? backgroundSecondaryColor;
  Color? appColorPrimaryLightColor;
  Color? textSecondaryColor;
  Color? appBarColor;
  Color? iconColor;
  Color? iconSecondaryColor;
  Color? cardColor;

  AppStore() {
    textPrimaryColor = Color(0xFF212121);
    iconColorPrimaryDark = Color(0xFF212121);
    scaffoldBackground = Color(0xFFEBF2F7);
    backgroundColor = Colors.black;
    backgroundSecondaryColor = Color(0xFF131d25);
    appColorPrimaryLightColor = Color(0xFFF9FAFF);
    textSecondaryColor = Color(0xFF5A5C5E);
    appBarColor = Colors.white;
    iconColor = Color(0xFF212121);
    iconSecondaryColor = Color(0xFFA8ABAD);
    cardColor = Color(0xFF191D36);
  }
}
