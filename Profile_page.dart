import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(
                  top: 60,
                ),
                height: 110,
                width: MediaQuery.of(context).size.width,
                // color: Colors.grey,
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage("assets/img_1.png"),
                            fit: BoxFit.cover),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 13, left: 10, right: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Book Tickets",
                                style: TextStyle(
                                    fontSize: 28, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 50,
                              ),
                              Text(
                                "Edit",
                                style: TextStyle(
                                    fontSize: 17, color: Colors.deepPurple),
                              )
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 5,),
                              Text(
                                "New-York",
                                style: TextStyle(
                                    color: Colors.grey[4600], fontSize: 15),
                              ),
                              SizedBox(height: 10,),
                              Container(
                                height: 25,
                                width: 150,
                                decoration: BoxDecoration(
                                    color: Colors.grey[300],
                                    borderRadius: BorderRadius.circular(10)),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Icon(
                                      FluentSystemIcons.ic_fluent_shield_filled,
                                      color: Color(0xFFBA68C8),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text("Premium Status")
                                  ],
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: 20,),
          Container(
            margin: EdgeInsets.only(right: 20,left: 20),
            height: 100,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Color(0xFF42A5F5),
              borderRadius: BorderRadius.circular(20),

              ),
            child: Row(

              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20,left: 20),
                  child: CircleAvatar(
                      backgroundImage: AssetImage("assets/img_8.png"),
                      radius: 30.0
                  ),
                ),
                SizedBox(width: 15,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 25,),

                  Text("You've got a new award",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w600,color: Colors.white),),
                  SizedBox(height: 5,),
                  Column(
                    children: [
                      Text("You have 150 fllights in a year",style: TextStyle(fontSize: 18),)

                    ],
                  )
                ],
              )
              ],
            ),

            ),
          SizedBox(height: 20,),
          Container(

margin: EdgeInsets.only(right: 140),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Accumulated miles",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w500,),),
                ],
              )),
          SizedBox(height: 20,),
          Text("192802",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
          SizedBox(height: 18,),
          Container(
            margin: EdgeInsets.only(right: 30,left: 30),
            height: 300,
            width: MediaQuery.of(context).size.width,
            // color: Colors.lightGreenAccent,
            child: Column(
              children: [
                Row(
                  children: [
                    Text("Miles accrued",style: TextStyle(fontSize: 20,color: Colors.grey),),
                    Expanded(child: Container()),
                    Text("23 May 2021",style: TextStyle(fontSize: 20,color: Colors.grey))
                  ],
                ),
                SizedBox(height: 25,),
                Row(
                  children: [
                   Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text("23 042",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                       Text("Miles",style: TextStyle(fontSize: 16),)
                     ],
                   ),
                   Expanded(child: Container()),
                   Column(
                     crossAxisAlignment: CrossAxisAlignment.end,
                     children: [
                       Text("Airline Co",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500)),
                       Text("Received form",style: TextStyle(fontSize: 16,letterSpacing: 0.6))
                     ],
                   ),

                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("24",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500)),
                        Text("Miles",style: TextStyle(fontSize: 16))
                      ],
                    ),
                    Expanded(child: Container()),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,

                      children: [
                        Text("McDonal's ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500)),
                        Text("Received form",style: TextStyle(fontSize: 16,letterSpacing: 0.6))
                      ],
                    ),

                  ],
                ),
                SizedBox(height: 20,),

                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("52 340",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500)),
                        Text("Miles",style: TextStyle(fontSize: 16))
                      ],
                    ),
                    Expanded(child: Container()),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text("Exuma",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500)),
                        Text("Received form",style: TextStyle(fontSize: 16,letterSpacing: 0.6))
                      ],
                    ),

                  ],
                ),
                SizedBox(height: 30),
                Text("How To get more miles",style: TextStyle(fontSize: 20,color: Colors.deepPurple),)
              ],
            ),
          )


        ],
      ),
    );
  }
}




