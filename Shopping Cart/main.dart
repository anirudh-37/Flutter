import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}
class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context){
    double height = (MediaQuery.of(context).padding.top+kToolbarHeight);
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(35.0),
          child: AppBar(
              title: Text('Nike',
              style: TextStyle(
                fontSize: 16.0,
              )),
              leading: IconButton(
               icon: Icon(
                 Icons.arrow_back,
                     size: 20.0,
               ), onPressed: () {  },
              ),
              actions:<Widget>[
               IconButton(
                icon: Icon(
                 Icons.shopping_cart,
                  size: 20.0,
                 ), onPressed: () {  },
              ),
      ]

    ),
        ),
      bottomNavigationBar: SizedBox(
        height:37.0,
        child: BottomAppBar(
            child: Row(
              children: [
                IconButton(icon: Icon(Icons.palette),color: Colors.blue, onPressed: () {}),
                Spacer(),
                Icon(CupertinoIcons.heart, color: Colors.red,),
                SizedBox(
                  width: 10.0,
                ),
              ],
            ),


          ),
      ),

      floatingActionButton:
      SizedBox(
        height:35.0,
        width:110.0,
        child: FloatingActionButton.extended(
          shape:RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
          icon: Icon(Icons.add,size: 15,),
          label: Text('Add to Cart',
          style: TextStyle(
            fontSize: 10.0,
          ),),


          onPressed: () {  },
        ),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,


      body: OrientationBuilder (
        builder:(context,orientation)
            {
              if(orientation == Orientation.portrait)
                {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height*0.5 - height,
                          color: Colors.blueAccent,
                          child: Image(
                            image:NetworkImage('https://images.unsplash.com/photo-1515955656352-a1fa3ffcd111?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1050&q=80'),

                          ),


                        ),
                        SizedBox(
                          height:5.0,
                          width:0.0
                        ),
                        Container(
                         child: Row(
                           children: [
                             Expanded(
                               flex: 6,
                               child: Container(
                                 child: Text(
                                         ' Blue Black Nike Shoes',
                                   style: TextStyle(
                                     fontWeight: FontWeight.bold,
                                     fontSize: 16.0
                                   ),


                                 )
                               ),
                             ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                 child: Column(
                                   children: [
                                     Text(
                                       " 35%",
                                       style: TextStyle(
                                         color: Colors.green,
                                       ),
                                     ),
                                     SizedBox(
                                       height:4.0,
                                       width:0.0
                                     ),
                                     Text(
                                       "£75",
                                       style: TextStyle(
                                         fontWeight: FontWeight.bold,
                                           fontSize: 16.0
                                       ),
                                     )
                                   ],
                                 ),
                               ),
                            )
                           ],

                         ),
                        ),
                        SizedBox(
                          height:6.0,
                        ),
                        Container(
                            child: Column(
                              children: [
                                Center(
                                  child: Text(
                                    'AVAILABLE SIZES',
                                    style: TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12.0,

                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height:6.0,
                                ),
                                Container(
                                  child: Row(

                                    children: [
                                      SizedBox(
                                        width:70.0,
                                      ),
                                      Container(
                                        child: ButtonTheme(
                                          height: 25.0,
                                          minWidth: 60.0,
                                          buttonColor: Colors.grey[200],
                                          child: RaisedButton(
                                            child: Text("UK7",
                                                style: TextStyle(
                                                    fontSize: 12.0,
                                                    color: Colors.blue,
                                                    fontWeight: FontWeight.bold
                                                )),
                                            onPressed: () {},
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(20)),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width:10.0,
                                      ),
                                      Container(
                                        child: ButtonTheme(
                                          height: 25.0,
                                          minWidth: 60.0,
                                          buttonColor: Colors.grey[200],
                                          child: RaisedButton(
                                              child: Text("UK8",
                                                  style: TextStyle(
                                                      fontSize: 12.0,
                                                      color: Colors.blue,
                                                      fontWeight: FontWeight.bold
                                                  )),
                                            onPressed: () {},
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(20)),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width:10.0,
                                      ),
                                      Container(
                                        child: ButtonTheme(
                                          height: 25.0,
                                          minWidth: 60.0,
                                          buttonColor: Colors.grey[200],
                                          child: RaisedButton(
                                              child: Text("UK9",
                                                  style: TextStyle(
                                                      fontSize: 12.0,
                                                      color: Colors.blue,
                                                      fontWeight: FontWeight.bold
                                                  )),
                                            onPressed: () {},
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(20)),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width:10.0,
                                      ),
                                      Container(
                                        child: ButtonTheme(
                                          height: 25.0,
                                          minWidth: 60.0,
                                          buttonColor: Colors.grey[200],
                                          child: RaisedButton(
                                            child: Text("UK10",
                                            style: TextStyle(
                                              fontSize: 12.0,
                                              color: Colors.blue,
                                              fontWeight: FontWeight.bold
                                            )),
                                            onPressed: () {},
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(20)),
                                          ),
                                        ),
                                      ),

                                    ],

                                  ),
                                ),
                              ],
                            )
                        ),
                        Container(

                            decoration: new BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  blurRadius: 10.0,
                                  spreadRadius: 0.0,
                                  offset: Offset(
                                    5.0,
                                    0.0,
                                  ),
                                )
                              ],
                            ),
                          child: Card(
                            margin:EdgeInsets.fromLTRB(10.0,2.0, 10.0,15.0),
                            child: Column(
                              children: [
                                SizedBox(
                                  height:10.0,
                                ),
                                Container(
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 5.0,
                                      ),
                                      Icon(
                                        Icons.circle,
                                          color: Colors.blue,
                                          size:8.0,
                                      ),
                                      SizedBox(
                                        width: 5.0,
                                      ),
                                      Text(
                                        'Cash on delivery option available,only VISA,MASTERCARD',
                                        style: TextStyle(
                                          fontSize: 11.0,
                                          fontWeight: FontWeight.bold
                                        ),
                                      ),

                                    ],
                                  )
                                ),
                                SizedBox(
                                  height:5.0,
                                ),
                                Container(
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: 5.0,
                                        ),
                                        Icon(
                                          Icons.circle,
                                          color: Colors.blue,
                                          size:8.0,
                                        ),
                                        SizedBox(
                                          width: 5.0,
                                        ),
                                        Text(
                                          'Return the shipment within 30 days from purchase',
                                          style: TextStyle(
                                              fontSize: 11.0,
                                              fontWeight: FontWeight.bold
                                          ),
                                        ),

                                      ],
                                    )
                                ),
                                SizedBox(
                                  height:10.0,
                                ),


                              ],


                            )

                          )
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          child: Column(
                            children: [
                              Container(


                                    child: Text(
                                      'Product Details',
                                      style:TextStyle(
                                        color:Colors.blue,
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.bold

                                      )
                                    ),
                                  ),
                              SizedBox(
                                height:10.0,
                              ),

                              Container(
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 5.0,
                                      ),
                                      Icon(
                                        Icons.circle,
                                        color: Colors.blue,
                                        size:8.0,
                                      ),
                                      SizedBox(
                                        width: 5.0,
                                      ),
                                      Text(
                                        'Full-length BRS 1000 carbon fiber rubber Waffle outsole for durability and traction',
                                        style: TextStyle(
                                            fontSize: 9.0,
                                            fontWeight: FontWeight.bold
                                        ),
                                      ),

                                    ],
                                  )
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Container(
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 5.0,
                                      ),
                                      Icon(
                                        Icons.circle,
                                        color: Colors.blue,
                                        size:8.0,
                                      ),
                                      SizedBox(
                                        width: 5.0,
                                      ),
                                      Text(
                                        ' Phylon forefoot provides a great toe-off low-top design for added mobility',
                                        style: TextStyle(
                                            fontSize: 9.0,
                                            fontWeight: FontWeight.bold
                                        ),
                                      ),

                                    ],
                                  )
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Container(
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 5.0,
                                      ),
                                      Icon(
                                        Icons.circle,
                                        color: Colors.blue,
                                        size:8.0,
                                      ),
                                      SizedBox(
                                        width: 5.0,
                                      ),
                                      Text(
                                        'Breathable mesh uppers with synthetic overlays provide ventilation and support',
                                        style: TextStyle(
                                            fontSize: 9.0,
                                            fontWeight: FontWeight.bold
                                        ),
                                      ),

                                    ],
                                  )
                              ),



                            ],
                          )
                        ),








                      ],
                    );

                }

              else
                {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width*0.4,
                        height: MediaQuery.of(context).size.height,
                        color: Colors.blueAccent,
                        child: Image(
                          image:NetworkImage('https://images.unsplash.com/photo-1515955656352-a1fa3ffcd111?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1050&q=80'),

                        ),
                      ),
                      Container(
                        child:Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                //crossAxisAlignment: CrossAxisAlignment.start,
                                children: [

                                  Text('Blue Black Nike Shoes',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14.0
                                      )),
                                  SizedBox(
                                    width:170.0,
                                  ),
                                  Container(
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height:3.0,
                                        ),
                                        Text(
                                          "35%",
                                          style: TextStyle(
                                            color: Colors.green,
                                              fontSize: 12.0
                                          ),
                                        ),
                                        SizedBox(
                                            height:4.0,
                                            width:0.0
                                        ),
                                        Text(
                                          "£75",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14.0
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 2.0,
                              ),

                              Row(
                                children: [
                                  SizedBox(
                                    width: 20.0,
                                  ),
                                     Text(
                                      'AVAILABLE SIZES',
                                      style: TextStyle(
                                        color: Colors.blue,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 12.0,

                                      ),
                                    ),

                                ]
                              ),
                              SizedBox(
                                height:2.0,
                              ),
                          Container(
                            child: Row(

                              children: [
                                SizedBox(
                                  width:30.0,
                                ),
                                Container(
                                  child: ButtonTheme(
                                    height: 25.0,
                                    minWidth: 60.0,
                                    buttonColor: Colors.grey[200],
                                    child: RaisedButton(
                                      child: Text("UK7",
                                          style: TextStyle(
                                              fontSize: 12.0,
                                              color: Colors.blue,
                                              fontWeight: FontWeight.bold
                                          )),
                                      onPressed: () {},
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(20)),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width:10.0,
                                ),
                                Container(
                                  child: ButtonTheme(
                                    height: 25.0,
                                    minWidth: 60.0,
                                    buttonColor: Colors.grey[200],
                                    child: RaisedButton(
                                      child: Text("UK8",
                                          style: TextStyle(
                                              fontSize: 12.0,
                                              color: Colors.blue,
                                              fontWeight: FontWeight.bold
                                          )),
                                      onPressed: () {},
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(20)),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width:10.0,
                                ),
                                Container(
                                  child: ButtonTheme(
                                    height: 25.0,
                                    minWidth: 60.0,
                                    buttonColor: Colors.grey[200],
                                    child: RaisedButton(
                                      child: Text("UK9",
                                          style: TextStyle(
                                              fontSize: 12.0,
                                              color: Colors.blue,
                                              fontWeight: FontWeight.bold
                                          )),
                                      onPressed: () {},
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(20)),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width:10.0,
                                ),
                                Container(
                                  child: ButtonTheme(
                                    height: 25.0,
                                    minWidth: 60.0,
                                    buttonColor: Colors.grey[200],
                                    child: RaisedButton(
                                      child: Text("UK10",
                                          style: TextStyle(
                                              fontSize: 12.0,
                                              color: Colors.blue,
                                              fontWeight: FontWeight.bold
                                          )),
                                      onPressed: () {},
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(20)),
                                    ),
                                  ),
                                ),

                              ],

                            ),
                          ),
                              Container(
                                  width: 370,
                                  height: 60,

                                  decoration: new BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        blurRadius: 10.0,
                                        spreadRadius: 0.0,
                                        offset: Offset(
                                          5.0,
                                          0.0,
                                        ),
                                      )
                                    ],
                                  ),
                                  child: Card(
                                      margin:EdgeInsets.fromLTRB(7.0,2.0,4.0,10.0),
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height:5.0,
                                          ),
                                          Container(
                                              child: Row(
                                                children: [
                                                  SizedBox(
                                                    width: 5.0,
                                                  ),
                                                  Icon(
                                                    Icons.circle,
                                                    color: Colors.blue,
                                                    size:8.0,
                                                  ),
                                                  SizedBox(
                                                    width: 5.0,
                                                  ),
                                                  Text(
                                                    'Cash on delivery option available,only VISA,MASTERCARD',
                                                    style: TextStyle(
                                                        fontSize: 11.0,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                  ),

                                                ],
                                              )
                                          ),
                                          SizedBox(
                                            height:5.0,
                                          ),
                                          Container(
                                              child: Row(
                                                children: [
                                                  SizedBox(
                                                    width: 5.0,
                                                  ),
                                                  Icon(
                                                    Icons.circle,
                                                    color: Colors.blue,
                                                    size:8.0,
                                                  ),
                                                  SizedBox(
                                                    width: 5.0,
                                                  ),
                                                  Text(
                                                    'Return the shipment within 30 days from purchase',
                                                    style: TextStyle(
                                                        fontSize: 11.0,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                  ),

                                                ],
                                              )
                                          ),
                                          SizedBox(
                                            height:5.0,
                                          ),


                                        ],


                                      )

                                  )
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Container(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        child:Row(
                                          children:[
                                          SizedBox(
                                           width: 145.0,
                                          ),
                                          Text(
                                            'Product Details',
                                            style:TextStyle(
                                                color:Colors.blue,
                                                fontSize: 15.0,
                                              fontWeight: FontWeight.bold


                                            )
                                        ),

                                      ]

                                  )

                                      ),
                                      SizedBox(
                                        height:10.0,
                                      ),

                                      Container(
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              SizedBox(
                                                width: 2.0,
                                              ),
                                              Icon(
                                                Icons.circle,
                                                color: Colors.blue,
                                                size:8.0,
                                              ),
                                              SizedBox(
                                                width: 5.0,
                                              ),
                                              Text(
                                                'Full-length BRS 1000 carbon fiber rubber Waffle outsole for durability and traction',
                                                style: TextStyle(
                                                    fontSize: 10.0,
                                                    fontWeight: FontWeight.bold
                                                ),
                                              ),

                                            ],
                                          )
                                      ),
                                      SizedBox(
                                        height: 5.0,
                                      ),
                                      Container(
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              SizedBox(
                                                width: 2.0,
                                              ),
                                              Icon(
                                                Icons.circle,
                                                color: Colors.blue,
                                                size:8.0,
                                              ),
                                              SizedBox(
                                                width: 5.0,
                                              ),
                                              Text(
                                                'Phylon forefoot provides a great toe-off low-top design for added mobility',
                                                style: TextStyle(
                                                    fontSize: 10.0,
                                                    fontWeight: FontWeight.bold
                                                ),
                                              ),

                                            ],
                                          )
                                      ),
                                      SizedBox(
                                        height: 5.0,
                                      ),
                                      Container(
                                          child: Row(
                                            children: [
                                              SizedBox(
                                                width: 2.0,
                                              ),
                                              Icon(
                                                Icons.circle,
                                                color: Colors.blue,
                                                size:8.0,
                                              ),
                                              SizedBox(
                                                width: 5.0,
                                              ),
                                              Text(
                                                'Breathable mesh uppers with synthetic overlays provide ventilation and support',
                                                style: TextStyle(
                                                    fontSize: 10.0,
                                                    fontWeight: FontWeight.bold
                                                ),
                                              ),

                                            ],
                                          )
                                      ),



                                    ],
                                  )
                              ),








                            ],

                            )


                      )












                    ],
                  );
                }
            }
      ),

    );

  }
  }
