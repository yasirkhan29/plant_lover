import 'package:flutter/material.dart';
import 'package:plant_lover/plantdetails.dart';

class plantlist extends StatefulWidget {
  const plantlist({super.key});

  @override
  State<plantlist> createState() => _plantlistState();
}

class _plantlistState extends State<plantlist> {
  late ScrollController _scrollController;
  List allDescription = [
    'Aloe vera, or Aloe barbadensis, is a thick, short-stemmed plant that stores water in its leaves. It is best known for treating skin injuries, but it also has several other uses that could potentially benefit health.',
    'Ficus benjamina, commonly known as weeping fig, benjamin fig or ficus tree, and often sold in stores as just ficus, is a species of flowering plant in the family Moraceae, native to Asia and Australia',
    'A rose is either a woody perennial flowering plant of the genus Rosa, in the family Rosaceae, or the flower it bears. There are over three hundred species and tens of thousands of cultivars. ',
  ];
  late String description;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(changedesc);
    setState(() {
      description = allDescription[0];
    });
  }

  changedesc() {
    var value = _scrollController.offset.round();
    var descIndex = (value / 150).round();
    print(value);
    setState(() {
      description = allDescription[descIndex];
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          height: 350.0,
          child: ListView(
            padding: EdgeInsets.only(left: 25.0),
            controller: _scrollController,
            scrollDirection: Axis.horizontal,
            children: [
              getplancard('images/imag.png', '25', 'OUTDOOR', 'Alo Vera'),
              SizedBox(width: 15.0),
              getplancard('images/plu.png', '25', 'INDOOR', 'Ficus'),
              SizedBox(width: 15.0),
              getplancard('images/ro.png', '25', 'INDOOR', 'Rose'),
              SizedBox(width: 15.0),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 25.0, top: 10.0),
          child: Text(
            'Descrption',
            style: TextStyle(
                fontFamily: 'Montserrat',
                color: Colors.black,
                fontSize: 17.0,
                fontWeight: FontWeight.w500),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 25.0, top: 10.0),
          child: Text(
            description,
            style: TextStyle(
              fontFamily: 'Monstserrat',
              fontSize: 12.0,
            ),
          ),
        )
      ],
    );
  }

  getplancard(
      String imgpath, String price, String plantType, String plantName) {
    return Stack(
      children: [
        Container(
          height: 325.0,
          width: 225.0,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Color(0xFF399D63)),
            height: 250.0,
            width: 225.0,
            child: Column(
              children: [
                //start row of card
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          'Form',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 12.0,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                        Text(
                          '\$ 25',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 12.0,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10.0,
                    )
                  ],
                ),
                Image(
                  image: AssetImage(imgpath),
                  height: 165.0,
                ),
                // second row below image
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          plantType,
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 12.0,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                        Text(
                          plantName,
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 12.0,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                //sun icon bottom
                Row(
                  children: [
                    SizedBox(width: 25.0),
                    Container(
                      height: 30.0,
                      width: 30.0,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Color(0xFF8AC7A4),
                              style: BorderStyle.solid,
                              width: 0.5),
                          borderRadius: BorderRadius.circular(5.0),
                          color: Color(0xFF399D63)),
                      child: Icon(
                        Icons.wb_sunny,
                        color: Colors.white.withOpacity(0.4),
                        size: 20.0,
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Container(
                      height: 30.0,
                      width: 30.0,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Color(0xFF8AC7A4),
                              style: BorderStyle.solid,
                              width: 0.5),
                          borderRadius: BorderRadius.circular(5.0),
                          color: Color(0xFF399D63)),
                      child: Icon(
                        Icons.branding_watermark,
                        color: Colors.white.withOpacity(0.4),
                        size: 20.0,
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Container(
                      height: 30.0,
                      width: 30.0,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Color(0xFF8AC7A4),
                              style: BorderStyle.solid,
                              width: 0.5),
                          borderRadius: BorderRadius.circular(5.0),
                          color: Color(0xFF399D63)),
                      child: Icon(
                        Icons.hot_tub,
                        color: Colors.white.withOpacity(0.4),
                        size: 20.0,
                      ),
                    ),
                    SizedBox(width: 10.0),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => plantDetail()));
                      },
                      child: Container(
                        height: 30.0,
                        width: 30.0,
                        decoration: BoxDecoration(color: Color(0xFF399D63)),
                        child: Icon(
                          Icons.help_outline,
                          color: Colors.white.withOpacity(0.4),
                          size: 20.0,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 90.0, top: 300.0),
          child: Container(
            height: 50.0,
            width: 50.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.0),
              color: Colors.black,
            ),
            child: Center(
              child: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
            ),
          ),
        )
      ],
    );
  }
}
