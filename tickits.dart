import 'package:bokking_details/screen/qr_code.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketsPage extends StatefulWidget {
  const TicketsPage({Key? key}) : super(key: key);

  @override
  State<TicketsPage> createState() => _TicketsPageState();
}

class _TicketsPageState extends State<TicketsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                margin: EdgeInsets.only(top: 50, left: 20, right: 230),
                child: Text(
                  "Tickets",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                )),
            SizedBox(
              height: 10,
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
                            "Upcomming",
                            style: TextStyle(fontSize: 16, color: Colors.black),
                          )),
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 6, left: 40),
                        child: Text(
                          "Previous",
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ))
                  ],
                )),
            // SizedBox(
            //   height: 20,
            // ),
            Column(
              children: [
                Container(
                  height: 560,
                  // color: Color(0xFFCFD8DC),
                  child: Container(
                    // margin: EdgeInsets.only(right: 2,left),
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(30)),
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 15, right: 30, left: 30),
                          padding:
                              EdgeInsets.only(right: 10, left: 10, top: 20),
                          height: 80,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color: Color(0xFFECEFF1),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                              )),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "NYC",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.black),
                                  ),
                                  Gap(5),
                                  Text(
                                    "New-Yourk",
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.black),
                                  )
                                ],
                              ),
                              // SizedBox(width: 20,),
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.location_searching_rounded,
                                        size: 20,
                                        color: Colors.blue,
                                      ),
                                      Text(
                                        " - - -",
                                        style: TextStyle(color: Colors.blue),
                                      ),
                                      Transform.rotate(
                                        angle: 1.5,
                                        child: Icon(
                                          Icons.local_airport,
                                          color: Colors.blue,
                                        ),
                                      ),
                                      Text(
                                        "- - -",
                                        style: TextStyle(color: Colors.blue),
                                      ),
                                      Icon(
                                        Icons.location_searching_rounded,
                                        size: 20,
                                        color: Colors.blue,
                                      ),
                                    ],
                                  ),
                                  Gap(5),
                                  Text(
                                    "8H 30Ms",
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.black),
                                  )
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Text(
                                            "LDN",
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.black),
                                          ),
                                          Gap(5),
                                          Text(
                                            "London",
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.black),
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
                          margin: EdgeInsets.only(right: 10, left: 10),
                          height: 20,
                          color: Color(0xFFECEFF1),
                          child: Row(
                            children: [
                              // SizedBox(
                              //   height: 20,
                              //   width: 10,
                              //
                              // ),
                              Container(
                                  // margin: EdgeInsets.only(right: 5),
                                  child: Icon(Icons.location_searching_rounded)),
                              Expanded(child: Container()),
                              Text(
                                " -  -  -   -   -     -    -    -    -    -     -   -    -    -   -    -    -    -   -   - ",
                                style: TextStyle(color: Colors.black),
                              ),
                              Icon(Icons.location_searching_rounded,),
                              // SizedBox(
                              //   height: 20,
                              //   width: 10,
                              //
                              // )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            right: 30,
                            left: 30,
                          ),
                          padding: EdgeInsets.only(
                            right: 10,
                            left: 10,
                          ),
                          color: Color(0xFFECEFF1),
                          height: 60,
                          width: MediaQuery.of(context).size.width,
                          child: Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "1 May",
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.black),
                                    ),
                                    Gap(5),
                                    Text(
                                      "Date",
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.black),
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
                                              color: Colors.black),
                                        ),
                                      ],
                                    ),
                                    Gap(5),
                                    Text(
                                      "Departure time",
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.black),
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Text(
                                              "23",
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.black),
                                            ),
                                            Gap(5),
                                            Text(
                                              "Number",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.black),
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
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 30, left: 30),
                          height: 20,
                          color: Color(0xFFECEFF1),
                          child: Row(
                            children: [
                              SizedBox(
                                height: 20,
                                width: 10,
                              ),
                              Expanded(child: Container()),
                              Text(
                                " -   -   -   -   -    -    -    -    -     -   -    -    -   -    -    -    -   -   - ",
                                style: TextStyle(color: Colors.black),
                              ),
                              SizedBox(
                                height: 20,
                                width: 10,
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 30, left: 30),
                          padding: EdgeInsets.only(
                            right: 10,
                            left: 10,
                          ),
                          color: Color(0xFFECEFF1),
                          height: 60,
                          width: MediaQuery.of(context).size.width,
                          child: Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Flutter DB",
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.black),
                                    ),
                                    Gap(5),
                                    Text(
                                      "Passenger",
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.black),
                                    )
                                  ],
                                ),
                                // SizedBox(width: 20,),

                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Text(
                                              "5221 478566",
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.black),
                                            ),
                                            Gap(5),
                                            Text(
                                              "Passport",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.black),
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
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 30, left: 30),
                          height: 20,
                          color: Color(0xFFECEFF1),
                          child: Row(
                            children: [
                              SizedBox(
                                height: 20,
                                width: 10,
                              ),
                              Expanded(child: Container()),
                              Text(
                                " - -     -   -    -    -    -    -    -     -   -    -    -   -    -    -    -   -   - ",
                                style: TextStyle(color: Colors.black),
                              ),
                              SizedBox(
                                height: 20,
                                width: 10,
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 30, left: 30),
                          padding: EdgeInsets.only(
                            right: 10,
                            left: 10,
                          ),
                          color: Color(0xFFECEFF1),
                          height: 60,
                          width: MediaQuery.of(context).size.width,
                          child: Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "0055 444 77146",
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.black),
                                    ),
                                    Gap(5),
                                    Text(
                                      "Passenger",
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.black),
                                    )
                                  ],
                                ),
                                // SizedBox(width: 20,),

                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Text(
                                              "B2SG28",
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.black),
                                            ),
                                            Gap(5),
                                            Text(
                                              "Booking Code",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.black),
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
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 30, left: 30),
                          height: 20,
                          color: Color(0xFFECEFF1),
                          child: Row(
                            children: [
                              SizedBox(
                                height: 20,
                                width: 10,
                              ),
                              Expanded(child: Container()),
                              Text(
                                " -   -  -   -     -    -    -    -    -     -   -    -    -   -    -    -    -   -   - ",
                                style: TextStyle(color: Colors.black),
                              ),
                              SizedBox(
                                height: 20,
                                width: 10,
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 30, left: 30),
                          padding: EdgeInsets.only(
                            right: 10,
                            left: 10,
                          ),
                          color: Color(0xFFECEFF1),
                          height: 70,
                          width: MediaQuery.of(context).size.width,
                          child: Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              "VISA ",
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.deepPurple,
                                                  fontWeight: FontWeight.bold,
                                                  fontStyle: FontStyle.italic),
                                            ),
                                            Text("*** 2462"),
                                          ],
                                        ),
                                        Gap(5),
                                        Text(
                                          "Payment method",
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.black),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                                // SizedBox(width: 20,),

                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Column(
                                          children: [
                                            Text(
                                              "249.99",
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.black),
                                            ),
                                            Gap(5),
                                            Text(
                                              "Price",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.black),
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
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        // Container(
                        //   margin: EdgeInsets.only(right: 30, left: 30),
                        //   height: 90,
                        //   width: MediaQuery.of(context).size.width,
                        //   decoration: BoxDecoration(
                        //       borderRadius: BorderRadius.circular(20),
                        //       color: Colors.white24,
                        //       image: DecorationImage(
                        //           image: NetworkImage(
                        //               "https://tse1.mm.bing.net/th?id=OIP.Cqa_P3prbaPQZxAtjhvZWgHaDc&pid=Api&P=0"),
                        //           fit: BoxFit.fill)),
                        // ),
                        // Container(
                        //   height: 200,
                        //   width: MediaQuery.of(context).size.width,
                        //   child: Column(
                        //     children: [
                        //       Container(
                        //         margin: EdgeInsets.only(top: 15, right: 20),
                        //         padding:
                        //         EdgeInsets.only(right: 10, left: 10, top: 20),
                        //         height: 80,
                        //         width: MediaQuery.of(context).size.width,
                        //         decoration: BoxDecoration(
                        //             color: Color(0xFF00796C),
                        //             borderRadius: BorderRadius.only(
                        //                 topLeft: Radius.circular(10),
                        //                 topRight: Radius.circular(10))),
                        //         child: Row(
                        //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //           children: [
                        //             Column(
                        //               children: [
                        //                 Text(
                        //                   "NYC",
                        //                   style: TextStyle(
                        //                       fontSize: 20, color: Colors.white),
                        //                 ),
                        //                 Gap(5),
                        //                 Text(
                        //                   "New-Yourk",
                        //                   style: TextStyle(
                        //                       fontSize: 15, color: Colors.white),
                        //                 )
                        //               ],
                        //             ),
                        //             // SizedBox(width: 20,),
                        //             Column(
                        //               children: [
                        //                 Row(
                        //                   children: [
                        //                     Icon(
                        //                       Icons.location_searching_rounded,
                        //                       size: 20,
                        //                       color: Colors.white,
                        //                     ),
                        //                     Text(
                        //                       " - - -",
                        //                       style: TextStyle(color: Colors.white),
                        //                     ),
                        //                     Transform.rotate(
                        //                       angle: 1.5,
                        //                       child: Icon(
                        //                         Icons.local_airport,
                        //                         color: Colors.white,
                        //                       ),
                        //                     ),
                        //                     Text(
                        //                       "- - -",
                        //                       style: TextStyle(color: Colors.white),
                        //                     ),
                        //                     Icon(
                        //                       Icons.location_searching_rounded,
                        //                       size: 20,
                        //                       color: Colors.white,
                        //                     ),
                        //                   ],
                        //                 ),
                        //                 Gap(5),
                        //                 Text(
                        //                   "8H 30Ms",
                        //                   style: TextStyle(
                        //                       fontSize: 15, color: Colors.white),
                        //                 )
                        //               ],
                        //             ),
                        //             Column(
                        //               children: [
                        //                 Row(
                        //                   children: [
                        //                     Column(
                        //                       children: [
                        //                         Text(
                        //                           "London",
                        //                           style: TextStyle(
                        //                               fontSize: 20,
                        //                               color: Colors.white),
                        //                         ),
                        //                         Gap(5),
                        //                         Text(
                        //                           "London",
                        //                           style: TextStyle(
                        //                               fontSize: 15,
                        //                               color: Colors.white),
                        //                         )
                        //                       ],
                        //                     ),
                        //                   ],
                        //                 )
                        //               ],
                        //             )
                        //           ],
                        //         ),
                        //       ),
                        //       Container(
                        //         margin: EdgeInsets.only(right: 20),
                        //         height: 20,
                        //         color: Color(0xFF8D6E63),
                        //         child: Row(
                        //           children: [
                        //             SizedBox(
                        //               height: 20,
                        //               width: 10,
                        //               child: DecoratedBox(
                        //                 decoration: BoxDecoration(
                        //                     color: Colors.white,
                        //                     borderRadius: BorderRadius.only(
                        //                         topRight: Radius.circular(10),
                        //                         bottomRight: Radius.circular(10))),
                        //               ),
                        //             ),
                        //             Expanded(child: Container()),
                        //             Text(
                        //               " -     -    -     -    -    -    -    -     -   -    -    -   -    -    -    -   -   - ",
                        //               style: TextStyle(color: Colors.white),
                        //             ),
                        //             SizedBox(
                        //               height: 20,
                        //               width: 10,
                        //               child: DecoratedBox(
                        //                 decoration: BoxDecoration(
                        //                     color: Colors.white,
                        //                     borderRadius: BorderRadius.only(
                        //                         topLeft: Radius.circular(10),
                        //                         bottomLeft: Radius.circular(10))),
                        //               ),
                        //             )
                        //           ],
                        //         ),
                        //       ),
                        //       Container(
                        //         margin: EdgeInsets.only(right: 20),
                        //         padding: EdgeInsets.only(
                        //           right: 10,
                        //           left: 10,
                        //         ),
                        //         color: Color(0xFF8D6E63),
                        //         height: 60,
                        //         width: MediaQuery.of(context).size.width,
                        //         child: Row(
                        //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //           children: [
                        //             Column(
                        //               children: [
                        //                 Text(
                        //                   "1 May",
                        //                   style: TextStyle(
                        //                       fontSize: 20, color: Colors.white),
                        //                 ),
                        //                 Gap(5),
                        //                 Text(
                        //                   "Date",
                        //                   style: TextStyle(
                        //                       fontSize: 15, color: Colors.white),
                        //                 )
                        //               ],
                        //             ),
                        //             // SizedBox(width: 20,),
                        //             Column(
                        //               children: [
                        //                 Row(
                        //                   children: [
                        //                     Text(
                        //                       "08:00 AM",
                        //                       style: TextStyle(
                        //                           fontSize: 20,
                        //                           color: Colors.white),
                        //                     ),
                        //                   ],
                        //                 ),
                        //                 Gap(5),
                        //                 Text(
                        //                   "Departure time",
                        //                   style: TextStyle(
                        //                       fontSize: 15, color: Colors.white),
                        //                 )
                        //               ],
                        //             ),
                        //             Column(
                        //               children: [
                        //                 Row(
                        //                   children: [
                        //                     Column(
                        //                       children: [
                        //                         Text(
                        //                           "23",
                        //                           style: TextStyle(
                        //                               fontSize: 20,
                        //                               color: Colors.white),
                        //                         ),
                        //                         Gap(5),
                        //                         Text(
                        //                           "Number",
                        //                           style: TextStyle(
                        //                               fontSize: 15,
                        //                               color: Colors.white),
                        //                         )
                        //                       ],
                        //                     ),
                        //                   ],
                        //                 )
                        //               ],
                        //             )
                        //           ],
                        //         ),
                        //       ),
                        //     ],
                        //   ),
                        // ),




                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
