import 'package:flutter/material.dart';
import 'package:flutter/physics.dart';
import 'package:quick_park/Transitions/SlideTransition.dart';
import 'package:quick_park/Pages/payment.dart';

class DraggableSheet extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.25,
      maxChildSize: 0.65,
      minChildSize: 0.25,
      builder: (context,scrollController){
        return SingleChildScrollView(
          controller: scrollController,
          physics: BouncingScrollPhysics(),
          child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              height: MediaQuery.of(context).size.height * 0.65,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Center(
                      child: Container(
                        width: 44,
                        height: 4,
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.4),
                            borderRadius: BorderRadius.circular(20)
                        ),
                      ),
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0,top: 22),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Perdo Garage',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 22.4,
                                letterSpacing: 0.2,
                              ),
                            ),
                            SizedBox(height: 8,),
                            Text(
                              '235 Zemblak Crest Apt. 102',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black54,
                                  fontSize: 12,
                                  letterSpacing: 0.2
                              ),
                            ),
                            SizedBox(height: 20,),
                            Row(
                              children: <Widget>[
                                Card(
                                  child: Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: Icon(
                                      Icons.local_parking,
                                      size: 16,
                                      color: Colors.white,
                                    ),
                                  ),
                                  color: Colors.grey[900],
                                  elevation: 4,
                                ),
                                SizedBox(width: 4,),
                                Text(
                                  '24 spots',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12.4
                                  ),
                                ),

                                SizedBox(width: 24,),

                                Card(
                                  child: Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: Icon(
                                      Icons.attach_money,
                                      size: 16,
                                      color: Colors.white,
                                    ),
                                  ),
                                  color: Colors.grey[900],
                                  elevation: 4,
                                ),
                                SizedBox(width: 4,),
                                Text(
                                  '10.44 p/h',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12.4
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 18.0,top: 8),
                        child: ClipRRect(
                          child: Image.asset(
                            'image/garage.jpg',
                            fit: BoxFit.cover,
                            width: 120,
                            height: 110,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ],
                  ),



                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 24.0,horizontal: 24),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      child: RaisedButton(
                        elevation: 6,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                        onPressed: (){
                          Navigator.push(context, SlideTopRoute(page: MyPaymentPage()));
                        },
                        color: Colors.black87,
                        padding: EdgeInsets.symmetric(vertical: 14),
                        child: Text(
                          'BOOK SPOT',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              wordSpacing: 4,
                              letterSpacing: 0.3
                          ),
                        ),
                      ),
                    ),
                  ),




                  SizedBox(height: 16,),
                  Padding(
                    padding: const EdgeInsets.only(left: 24.0),
                    child: Text(
                      'Working Hours',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.grey[400],
                        fontSize: 12,
                        letterSpacing: 0.2
                      ),
                    ),
                  ),
                  SizedBox(height: 8,),
                  Padding(
                    padding: const EdgeInsets.only(left: 24.0),
                    child: Text(
                      '05:00 AM - 11:00 PM',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Colors.grey[900],
                          fontSize: 18,
                          letterSpacing: 0.2
                      ),
                    ),
                  ),
                  SizedBox(height: 6,),
                  Padding(
                    padding: const EdgeInsets.only(left: 24.0),
                    child: Text(
                      'Open Now',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.green,
                          fontSize: 12.4,
                          letterSpacing: 0.2
                      ),
                    ),
                  ),



                  SizedBox(height: 38,),
                  Padding(
                    padding: const EdgeInsets.only(left: 24.0),
                    child: Text(
                      'Contacts',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.grey[400],
                          fontSize: 12,
                          letterSpacing: 0.2
                      ),
                    ),
                  ),
                  SizedBox(height: 8,),
                  Padding(
                    padding: const EdgeInsets.only(left: 24.0),
                    child: Row(
                      children: <Widget>[
                        Icon(
                            Icons.call,
                          size: 16,
                          color: Colors.grey[700],
                        ),
                        SizedBox(width: 10,),
                        Text(
                          '886-445-7822',
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.grey[900],
                              fontSize: 18,
                              letterSpacing: 0.2
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 6,),
                  Padding(
                    padding: const EdgeInsets.only(left: 24.0),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.web_asset,
                          size: 16,
                          color: Colors.grey[700],
                        ),
                        SizedBox(width: 10,),
                        Text(
                          'perdoGarage.co.us',
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.grey[900],
                              fontSize: 14.4,
                              letterSpacing: 0.2
                          ),
                        ),
                      ],
                    ),
                  ),





                  SizedBox(height: 44,),
                  Padding(
                    padding: const EdgeInsets.only(left: 24.0),
                    child: Text(
                      'Full Address',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.grey[400],
                          fontSize: 12,
                          letterSpacing: 0.2
                      ),
                    ),
                  ),
                  SizedBox(height: 8,),
                  Padding(
                    padding: const EdgeInsets.only(left: 24.0),
                    child: Text(
                      'Perdo Garage - 235 Bahringer Stravenue Suite 164 Colony Apt. 102',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Colors.grey[900],
                          fontSize: 16.5,
                          letterSpacing: 0.2
                      ),
                    ),
                  ),
                ],
              ),
          ),
        );
      },
    );
  }

}