import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        title: Text("My Bookings",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
        elevation: 1,
      ),
      backgroundColor: Colors.grey.shade200,
      body: ListView.builder(
          itemCount:10,
          padding: EdgeInsets.only(top: 8,bottom: 8),
          itemBuilder: (context,index){
        return TicketView();
      }),
    );
  }
  
}

class TicketView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16,right: 16,top: 8,bottom: 8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(24),topRight: Radius.circular(24))
            ),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text("NYC",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.indigo),),
                    SizedBox(width: 16,),
                    Container(
                      padding: EdgeInsets.all(6),
                      decoration: BoxDecoration(
                          color: Colors.indigo.shade50,
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: SizedBox(
                        height: 8,
                        width: 8,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            color: Colors.indigo.shade400,
                            borderRadius: BorderRadius.circular(5)
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Stack(
                          children: <Widget>[
                            SizedBox(
                              height: 24,
                              child: LayoutBuilder(builder: (context,constraints){
                                return Flex(
                                  children: List.generate((constraints.constrainWidth()/6).floor(), (index) =>
                                      SizedBox(height: 1,width: 3,child: DecoratedBox(decoration: BoxDecoration(color: Colors.grey.shade300),),)
                                  ),
                                  direction: Axis.horizontal,
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                );
                              },),
                            ),
                            Center(child: Transform.rotate(angle: 1.5,child: Icon(Icons.local_airport,color: Colors.indigo.shade300,size: 24,),))
                          ],
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(6),
                      decoration: BoxDecoration(
                          color: Colors.pink.shade50,
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: SizedBox(
                        height: 8,
                        width: 8,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                              color: Colors.pink.shade400,
                              borderRadius: BorderRadius.circular(5)
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 16,),
                    Text("SFO",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.pink),)
                  ],
                ),
                SizedBox(height: 4,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    SizedBox(width:100,child: Text("NewYork",style: TextStyle(fontSize: 12,color: Colors.grey),)),
                    Text("6H 30M",style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.black),),
                    SizedBox(width:100,child: Text("SanFransisco",textAlign: TextAlign.end,style: TextStyle(fontSize: 12,color: Colors.grey),)),
                  ],
                ),
                SizedBox(height: 16,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("08:00 AM",style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold),),
                    Text("02:30 PM",style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold),),
                  ],
                ),
                SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("1 May 2020",style: TextStyle(fontSize: 12,color: Colors.grey),),
                    Row(
                      children: <Widget>[
                        Text("Flight No : ",style: TextStyle(fontSize: 12,color: Colors.grey),),
                        Text("23",style: TextStyle(fontSize: 12,fontWeight:FontWeight.bold,color: Colors.black),),
                      ],
                    ),
                  ],
                ),

              ],
            ),
          ),
          Container(
            color: Colors.white,
            child: Row(
              children: <Widget>[
                SizedBox(
                  height: 20,
                  width: 10,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(topRight: Radius.circular(10),bottomRight: Radius.circular(10)),
                      color: Colors.grey.shade200
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: LayoutBuilder(builder: (context,constraints){
                      return Flex(
                        children: List.generate((constraints.constrainWidth()/10).floor(), (index) =>
                            SizedBox(height: 1,width: 5,child: DecoratedBox(decoration: BoxDecoration(color: Colors.grey.shade400),),)
                        ),
                        direction: Axis.horizontal,
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      );
                    },),
                  ),
                ),
                SizedBox(
                  height: 20,
                  width: 10,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10)),
                        color: Colors.grey.shade200
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left:16,right:16,bottom: 12),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(24),bottomRight: Radius.circular(24))
            ),
            child: Row(
              children: <Widget>[
                Container(
                  padding:EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.amber.shade50,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Icon(Icons.flight_land,color:Colors.amber),
                ),
                SizedBox(width: 16,),
                Text("Jet Airways",style:TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.grey)),
                Expanded(child: Text("\u0024 240",textAlign: TextAlign.end,style:TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black))),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


