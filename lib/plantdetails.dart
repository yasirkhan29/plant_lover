import 'package:flutter/material.dart';

class plantDetail extends StatelessWidget {
  const plantDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(color: Color(0xFF399D63)),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height / 2,
                child: Container(
                  height: MediaQuery.of(context).size.height / 2,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0),
                      ),
                      color: Colors.white),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  icon: Icon(Icons.arrow_back, color: Colors.white),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: 10.0, left: MediaQuery.of(context).size.width - 60.0),
                child: FloatingActionButton(
                  onPressed: () {},
                  backgroundColor: Color(0xFF4DA774),
                  mini: true,
                  elevation: 0.0,
                  child: Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                    size: 15.0,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 25.0, top: 60.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        'Alo Vera',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20.0,
                            color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
