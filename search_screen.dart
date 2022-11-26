import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
      children: [
          Container(
            margin: EdgeInsets.only(top: 60, right: 100),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "What are",
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.w400),
                ),
                Text(
                  "you looking for?",
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.w400),
                )
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
              margin: EdgeInsets.only(right: 20, left: 20),
              height: 40,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Color(0xFFEEEEEE),
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                children: [
                  Container(
                    height: 37,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Container(
                        margin: EdgeInsets.only(top: 10, left: 40),
                        child: Text(
                          "Airline Tickets",
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        )),
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 6, left: 40),
                      child: Text(
                        "Hotels",
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ))
                ],
              )),
          SizedBox(
            height: 25,
          ),
          Container(
            height: 45,
            width: 360,
            decoration: BoxDecoration(
                color: Color(0xFFEEEEEE),
                borderRadius: BorderRadius.circular(10)),
            child: Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.flight_takeoff_rounded,
                  size: 30,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 18,
                ),
                Text(
                  "Departure",
                  style: TextStyle(fontSize: 17),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 45,
            width: 360,
            decoration: BoxDecoration(
                color: Color(0xFFEEEEEE),
                borderRadius: BorderRadius.circular(10)),
            child: Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.flight_land_rounded,
                  size: 30,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 18,
                ),
                Text(
                  "Arrival",
                  style: TextStyle(fontSize: 18),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
              height: 50,
              width: 360,
              decoration: BoxDecoration(
                  color: Color(0xFF3F51B5),
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                  child: Text(
                "Find tickets",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ))),
          SizedBox(
            height: 20,
          ),

          Row(
            children: [
              Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  child: Text(
                    "Upcoming Fllights",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.4),
                  )),
              Expanded(child: Container()),
              Container(
                margin: EdgeInsets.only(right: 20),
                child: Text(
                  "View All",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.deepPurpleAccent,
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.only(right: 20,left: 20,bottom: 40),
            child: Row(
              children: [
                Container(
                  height: 340,
                  width: 180,
                  decoration: BoxDecoration(
                      color: Color(0xFFECEFF1),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          blurRadius: 8,
                          offset: Offset(3,5)
                      )
                    ],
                      borderRadius: BorderRadius.circular(20),

                  ),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        height: 170,
                      width: 165,
                      decoration: BoxDecoration(
                          color: Colors.pinkAccent,

                          borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage("assets/img.png"),
                          fit: BoxFit.cover
                        ),

                      ),

                      
                      
                      ),
                      SizedBox(height: 10,),
                      Container(
                          margin: EdgeInsets.only(right: 10,left: 10),
                          child: Text("20% discount on business class tickets from Airline on Internationl ",style: TextStyle(fontSize: 21),)),
                    ],
                  ),

                ),
                SizedBox(width: 20,),
                Column(
                  children: [
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 20),
                          height: 170,
                          width: 150,
                          decoration: BoxDecoration(
                              color: Colors.blue,

                              borderRadius: BorderRadius.circular(20),
                             boxShadow: [
                               BoxShadow(
                                   color: Colors.grey,
                                   blurRadius: 8,
                                   offset: Offset(2,5)
                               ),
                             ],
                            image: DecorationImage(

                              image: AssetImage("assets/img_5.png"),
                              fit: BoxFit.cover
                            ),
                            

                          ),
                          child: Container(
                            margin: EdgeInsets.only(left: 10,top: 5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                 Text("Discount ",style: TextStyle(fontSize: 22,color: Colors.black,fontWeight: FontWeight.w600),),
                                Text("For survey",style: TextStyle(fontSize: 22,color: Colors.black,fontWeight: FontWeight.w600)),
                                SizedBox(height: 8,),
                                Text("Take the survey about our services and get a discount ",style: TextStyle(fontSize:18,letterSpacing: 0.3),)
                              ],
                            ),
                          ),
                        ),

                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 180),
                          height: 170,
                          width: 150,
                          decoration: BoxDecoration(
                            
color: Colors.blueGrey,     
                              borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 8,
                                  offset: Offset(2,4)
                              ),
                            ],
                              image: DecorationImage(
                               image: AssetImage("assets/img_6.png"),
                                fit: BoxFit.cover
                            ),
                             
                          ),
                          child: Column(
                            children: [
                              SizedBox(height: 20,),
                              Text("Take Love",style: TextStyle(fontSize: 25,color: Colors.black,decorationThickness: 3,fontStyle: FontStyle.normal),),
                              SizedBox(height: 15,),
                              Text(" 😘 ❤ 🤩",style: TextStyle(fontSize: 25),)
                            ],
                          ),
                        ),

                      ],
                    ),
                  ],
                )
              ],

            ),
          ),


      ],
    ),
        ));
  }
}
