import 'package:flutter/material.dart';

 class CategoryCard extends StatelessWidget {
  const CategoryCard({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: EdgeInsets.symmetric(vertical: 18, horizontal: 0),
      margin: EdgeInsets.only(left:5),
      width: MediaQuery.of(context).size.width * 0.22,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            colors: [
              const Color(0xffffff),
              const Color(0xffe46b10),
            ],
            begin: FractionalOffset.center,
            end: FractionalOffset.bottomCenter,
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp,
          )),
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        color: Colors.transparent,
        child: Stack(
          children: <Widget>[
            ListTile(
                title: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(vertical: 18, horizontal: 10),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/stats2.png"),
                      alignment: Alignment.center,
                      //fit: BoxFit.scaleDown
                    ),
                  ),
                ),
                subtitle: Text(
                  "Morning Show",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ))
          ],
        ),
      ),
    );
 
  }
}