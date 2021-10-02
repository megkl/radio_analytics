import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentState = 0;
  List<Widget> widgets = [
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    HomeScreen()
  ];
  List carouselimages = [
    "assets/bg.jpg",
    "assets/bg1.jpg",
    "assets/bg2.jpg",
    "assets/bg4.jpg",
    "assets/bg5.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    var carouselSlider = CarouselSlider.builder(
      itemCount: carouselimages.length,
      itemBuilder: (BuildContext context, int itemIndex) => Container(
        child: Image.asset(
          carouselimages[itemIndex],
          fit: BoxFit.fill,
          width: double.infinity,
        ),
      ),
      options: CarouselOptions(
        autoPlay: true,
        enlargeCenterPage: true,
        viewportFraction: 0.9,
        aspectRatio: 1.0,
        initialPage: 0,
      ),
    );

    return Scaffold(
        //backgroundColor: Color(0xffEEEEFF),
        backgroundColor: Color(0xFFF5F5F5),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Image.asset(
            "assets/stats.png",
            height: 30,
            width: 30,
          ),
          automaticallyImplyLeading: false,
          actions: [
            Icon(Icons.stacked_line_chart_sharp, color: Colors.black),
            SizedBox(width: 20),
            Icon(Icons.analytics, color: Colors.black),
            SizedBox(width: 20),
            Icon(Icons.notifications, color: Colors.black),
            SizedBox(width: 20)
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          //color:  Color(0xffe46b10),
          color: Colors.white,
          shape: CircularNotchedRectangle(),
          notchMargin: 12,
          child: Container(
            height: 60,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.home),
                    color: currentState == 0 ? Colors.blue : Colors.black,
                    onPressed: () {
                      setState(() {
                        currentState = 0;
                      });
                    },
                    iconSize: 25,
                  ),
                  IconButton(
                    icon: Icon(Icons.analytics),
                    color: currentState == 1 ? Colors.blue : Colors.black,
                    onPressed: () {
                      setState(() {
                        currentState = 1;
                      });
                    },
                    iconSize: 25,
                  ),
                  IconButton(
                    icon: Icon(Icons.auto_graph),
                    color: currentState == 2 ? Colors.blue : Colors.black,
                    onPressed: () {
                      setState(() {
                        currentState = 2;
                      });
                    },
                    iconSize: 25,
                  ),
                  IconButton(
                    icon: Icon(Icons.collections),
                    color: currentState == 4 ? Colors.blue : Colors.black,
                    onPressed: () {
                      setState(() {
                        currentState = 4;
                      });
                    },
                    iconSize: 25,
                  ),
                  IconButton(
                    icon: Icon(Icons.person),
                    color: currentState == 5 ? Colors.blue : Colors.black,
                    onPressed: () {
                      setState(() {
                        currentState = 5;
                      });
                    },
                    iconSize: 25,
                  ),
                ],
              ),
            ),
          ),
        ),
        body: Stack(
          children: [
            Container(
              //padding: EdgeInsets.symmetric(vertical: 200),
              child: ListView(
                //scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(height: 10),
                  category1(),
                  SizedBox(height: 10),
                  Container2(),
                  SizedBox(height: 20),
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: RichText(
                        //textAlign: TextAlign.center,
                        text: TextSpan(
                      text: 'Analytics ',
                      style: GoogleFonts.portLligatSans(
                        textStyle: Theme.of(context).textTheme.display1,
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Color(0xffe46b10),
                      ),
                    )),
                  ),
                  SizedBox(height: 10),
                  Container3()
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 330),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //Center(child: _featureTitle()),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 360),
              // child: RecipeBlogs(
              //   url: "/product/getProducts",
              // ),
            ),
          ],
        ));
  }

  Widget _title() {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
          text: 'Summer ',
          style: GoogleFonts.portLligatSans(
            textStyle: Theme.of(context).textTheme.display1,
            fontSize: 30,
            fontWeight: FontWeight.w700,
            color: Color(0xffe46b10),
          ),
          children: [
            TextSpan(
              text: 'Radio ',
              style: TextStyle(color: Colors.black, fontSize: 30),
            ),
            TextSpan(
              text: 'Analytics',
              style: TextStyle(color: Color(0xffe46b10), fontSize: 30),
            ),
          ]),
    );
  }

  Widget category1() {
    return Container(
        margin: EdgeInsets.only(left: 10.0),
        height: 50.0,
        child: new ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Container(
              width: 120.0,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Center(
                  child: Text(
                "Morning Show",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              )),
            ),
            SizedBox(width: 10),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              width: 120.0,
              child: Center(child: Text("Breakfast Club")),
            ),
            SizedBox(width: 10),
            Container(
              width: 120.0,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Center(child: Text("Afternoon Show")),
            ),
            SizedBox(width: 10),
            Container(
              width: 120.0,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Center(child: Text("Evening Show")),
            ),
            SizedBox(width: 10),
            Container(
              width: 120.0,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Center(child: Text("Late Night Show")),
            ),
          ],
        )); //height: MediaQuery.of(context).size.height*0.2,
  }

  Widget Container2() {
    return Container(
      height: 280,
      margin: EdgeInsets.only(top: 10, left: 10, right: 10),
      child: Container(
        width: 120.0,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10, top: 10),
                      child: Text(
                        "Ksh 2,000,000",
                        style: GoogleFonts.portLligatSans(
                          textStyle: Theme.of(context).textTheme.display1,
                          fontSize: 30,
                          fontWeight: FontWeight.w700,
                          color: Color(0xffe46b10),
                        ),
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(left: 10, top: 5, bottom: 10),
                        child: Text("Kenyan Shillings",
                            style: TextStyle(color: Colors.black38))),
                  ],
                ),
                Container(
                    margin: EdgeInsets.only(top: 10, left: 10),
                    child: Icon(
                      Icons.arrow_circle_down_rounded,
                      color: Color(0xffe46b10),
                    )),
                Container(
                  margin: EdgeInsets.only(top: 10, left: 120),
                  child: Image.asset(
                    "assets/stats.png",
                    height: 40,
                    width: 40,
                  ),
                )
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                        onTap: () {
                          setState(() {
                            //Navigator.push(context, new MaterialPageRoute(builder: (context) => HomeScreen()));
                          });
                        },
                        child: Container(
                          width: 150,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Color(0xfffbb448),
                                    Color(0xffe46b10)
                                  ])),
                          child: Center(
                            child: Text(
                              "Grow Analysis",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        )),
                    SizedBox(
                      width: 20,
                    ),
                    InkWell(
                        onTap: () {
                          setState(() {
                            //Navigator.push(context, new MaterialPageRoute(builder: (context) => HomeScreen()));
                          });
                        },
                        child: Container(
                          width: 150,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Color(0xfffbb448),
                                    Color(0xffe46b10)
                                  ])),
                          child: Center(
                            child: Text(
                              "Read More",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        )),
                    SizedBox(
                      width: 20,
                    ),
                    InkWell(
                        onTap: () {
                          setState(() {
                            //Navigator.push(context, new MaterialPageRoute(builder: (context) => HomeScreen()));
                          });
                        },
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Color(0xfffbb448),
                                    Color(0xffe46b10)
                                  ])),
                          child: Center(
                            child: Text(
                              "....",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        )),
                  ],
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Text("Channels"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      margin: EdgeInsets.only(top: 10, left: 270),
                      child: Text(
                        "See all",
                        style: TextStyle(color: Color(0xffe46b10)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Card(
                child: ListTile(
                  leading: Image.asset(
                    "assets/stats2.png",
                    height: 40,
                    width: 40,
                  ),
                  title: Text(
                    "Morning Show",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text("Your breathtaking daily wakeup call"),
                  trailing: Text(
                    "Ksh 100,000",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget Container3() {
    return Container(
        margin: EdgeInsets.only(left: 10.0, top: 20),
        height: 270.0,
        child: new ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Container(
              width: 200.0,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Container(
                  margin: EdgeInsets.only(left: 10,top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Weekly Analysis",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15, color: Colors.black38),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Ksh 20,000",
                        style: GoogleFonts.portLligatSans(
                          textStyle: Theme.of(context).textTheme.display1,
                          fontSize: 25,
                          fontWeight: FontWeight.w700,
                          color: Color(0xffe46b10),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Data Analysis for the week",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15, color: Colors.black38),
                      ),
                      SizedBox(height: 20),
                      Image.asset("assets/stats.png", height: 150, width: 150)
                    ],
                  )),
            ),
            SizedBox(width: 10),
            Container(
              width: 200.0,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Container(
                  margin: EdgeInsets.only(left: 10,top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Monthly Analysis",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15, color: Colors.black38),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Ksh 100,000",
                        style: GoogleFonts.portLligatSans(
                          textStyle: Theme.of(context).textTheme.display1,
                          fontSize: 25,
                          fontWeight: FontWeight.w700,
                          color: Color(0xffe46b10),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Data Analysis for the month",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15, color: Colors.black38),
                      ),
                      SizedBox(height: 20),
                      Image.asset("assets/stats2.png", height: 150, width: 150)
                    ],
                  )),
            ),
           SizedBox(width: 10),
            Container(
              width: 200.0,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Container(
                  margin: EdgeInsets.only(left: 10,top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Annual Analysis",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15, color: Colors.black38),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Ksh 2,000,000",
                        style: GoogleFonts.portLligatSans(
                          textStyle: Theme.of(context).textTheme.display1,
                          fontSize: 25,
                          fontWeight: FontWeight.w700,
                          color: Color(0xffe46b10),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Data Analysis for the Year",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15, color: Colors.black38),
                      ),
                      SizedBox(height: 20),
                      Image.asset("assets/stats.png", height: 150, width: 150)
                    ],
                  )),
            ),
           
          ],
        )); //height: Med
  }
}
