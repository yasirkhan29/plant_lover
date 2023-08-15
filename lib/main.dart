import 'package:flutter/material.dart';
import 'package:plant_lover/plantslist.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Plant lover',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    tabController = TabController(vsync: this, length: 4);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: 15.0,
          ),
          //icon manu and shoping
          Container(
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(Icons.menu),
                  onPressed: () {},
                ),
                FloatingActionButton(
                  onPressed: () {},
                  backgroundColor: Colors.grey.withOpacity(0.3),
                  mini: true,
                  elevation: 0.0,
                  child: Icon(
                    Icons.shopping_cart,
                    color: Colors.black,
                    size: 17.0,
                  ),
                ),
              ],
            ),
          ),
          //text top pics and Row Tab scrollable
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Text(
              'Top Picks',
              style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 40.0,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15.0),
            child: TabBar(
              controller: tabController,
              indicatorColor: Colors.transparent,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey.withOpacity(0.5),
              isScrollable: true,
              tabs: [
                Tab(
                  child: Text(
                    'Top',
                    style: TextStyle(
                      fontSize: 17.0,
                      fontFamily: 'montserrat',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Tab(
                    child: Text('Outdoor',
                        style: TextStyle(
                          fontSize: 17.0,
                          fontFamily: 'montserrat',
                          fontWeight: FontWeight.bold,
                        ))),
                Tab(
                    child: Text('Indoor',
                        style: TextStyle(
                          fontSize: 17.0,
                          fontFamily: 'montserrat',
                          fontWeight: FontWeight.bold,
                        ))),
                Tab(
                    child: Text('Plants',
                        style: TextStyle(
                          fontSize: 17.0,
                          fontFamily: 'montserrat',
                          fontWeight: FontWeight.bold,
                        ))),
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height - 200.0,
            child: TabBarView(
              controller: tabController,
              children: [
                plantlist(),
                plantlist(),
                plantlist(),
                plantlist(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
