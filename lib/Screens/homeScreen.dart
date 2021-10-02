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
                children: [category1()],
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
        height: 80.0,
        child: new ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Container(
              width: 160.0,
             decoration:
                  BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
              child: Center(child: Text("Morning Show")),
            ),
            SizedBox(width: 20),
            Container(
              decoration:
                  BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
              width: 160.0,
              child: Center(child: Text("Breakfast Club")),
            ),
            SizedBox(width: 20),
            Container(
              width: 160.0,
              decoration:
                  BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
              child: Center(child: Text("Afternoon Show")),
            ),
            SizedBox(width: 20),
            Container(
              width: 160.0,
              decoration:
                  BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
              child: Center(child: Text("Evening Show")),
            ),
            SizedBox(width: 20),
            Container(
              width: 160.0,
             decoration:
                  BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
              child: Center(child: Text("Late Night Show")),
            ),
          ],
        )); //height: MediaQuery.of(context).size.height*0.2,
  }
// Container(
  //   decoration: BoxDecoration(
  //     borderRadius: BorderRadius.circular(20),
  //     color: Color(0xffe46b10),
  //   ),
  //   height: 200,
  //   width: 400,
  //   child: carouselSlider),

}
