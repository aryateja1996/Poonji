import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:poonji/Screens/screens.dart';
import 'package:poonji/widgets/widgets.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  PageController controller;
  List<int> s = [1, 2, 3, 4];
  List<String> images = [
    'assets/carasol/bonds.png',
    'assets/carasol/funds.png',
    'assets/carasol/ipo.png',
    'assets/carasol/explore.png'
  ];
  List<String> titles = ['Bonds', 'Mutual Funds', 'IPO', 'Explore More'];
  List<String> discs = [
    'Its a good time to invest in bonds',
    'Start Your Investment Journey with us',
    'Get your funds invested in new IPO’s coming in',
    'Explore the amazing features that  we provide',
  ];
  List<String> btns = ['Get Bonds', 'Get Mutual Funds', 'IPO', 'Explore More'];
  int currentpage = 0;
  List<DashBoardSlider> lists = new List<DashBoardSlider>();
  initState() {
    super.initState();
    controller = PageController(
      initialPage: currentpage + 1,
      keepPage: false,
      viewportFraction: 0.8,
    );
    lists = getCards();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Height h = new Height();
    Width w = new Width();
    final _h = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        kToolbarHeight;
    final _w = MediaQuery.of(context).size.width;
    double radiusAvatar = _w * 0.0462;
    var a = [_h, _w];
    print(a);
    Color color = Colors.white;
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(
        child: Column(
          children: [
            Card(
              color: Colors.grey,
              elevation: 40,
              child: Container(
                padding: EdgeInsets.symmetric(
                    horizontal: _w * 0.022, vertical: _h * 0.0126),
                child: Column(
                  children: [
                    Row(
                      children: [
                        // CircleAvatar(
                        //   radius: 25,
                        //   child: Text(
                        //     'P',
                        //     style: TextStyle(
                        //       color: Colors.white,
                        //       fontSize: ,
                        //     ),
                        //   ),
                        // ),
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(radiusAvatar),
                          ),
                          child: Container(
                            width: 50,
                            height: 50,
                            child: Center(
                              child: Text(
                                'P',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: radiusAvatar,
                                ),
                              ),
                            ),
                          ),
                          color: Colors.blue,
                          elevation: 15,
                        ),
                        SizedBox(
                          width: _w * w.getW(125),
                        ),

                        CircleAvatar(
                          radius: radiusAvatar,
                          child: Image.asset(
                            'assets/material/stories.png',
                          ),
                        ),

                        SizedBox(
                          width: _w * w.getW(50),
                        ),
                        CircleAvatar(
                          radius: radiusAvatar,
                          child: Icon(Icons.notifications),
                        ),
                        SizedBox(
                          width: _w * w.getW(60),
                        ),
                        CircleAvatar(
                          radius: radiusAvatar,
                          child: Image.asset(
                            'assets/material/control.png',
                            height: _h * 0.420,
                            width: _w * 0.074,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: _h * 0.009468),
                    Row(
                      children: [
                        Text('Pratyush'),
                        SizedBox(
                          width:_w * w.getW(120),
                        ),
                        Text('Stores'),
                        SizedBox(
                          width: _w * 0.033,
                        ),
                        Text('notifications'),
                        SizedBox(
                          width: _w*w.getW(20),
                        ),
                        Text('control')
                      ],
                    )
                  ],
                ),
              ),
            ),
            //Head
            SizedBox(height: radiusAvatar),
            Container(
              width: _h*h.getH(800),
              height: _h*h.getH(725),
              child: new PageView.builder(
                itemCount: 4,
                onPageChanged: (value) {
                  currentpage = value;
                },
                controller: controller,
                itemBuilder: (context, index) {
                  if (index > 3) {
                    index = 0;
                  }
                  return Builder(
                    image: images[index],
                    text: titles[index],
                    docs: discs[index],
                    btn: btns[index],
                    y: s[index],
                  );
                },
              ),
            ),
            //body
            SizedBox(
              height: _h*h.getH(25),
            ),
            Container(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        width: _w*w.getW(20),
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.home,
                          color: color,
                        ),
                        onPressed: () {},
                      ),
                      SizedBox(
                        width: _w*w.getW(12),
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.card_membership,
                          color: color,
                        ),
                        onPressed: () {},
                      ),
                      SizedBox(
                        width: _w*w.getW(12),
                      ),
                      IconButton(
                          icon: Icon(
                            Icons.signal_cellular_4_bar_outlined,
                            color: color,
                          ),
                          onPressed: () {}),
                      SizedBox(
                        width: 12,
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.money,
                          color: color,
                        ),
                        onPressed: () {
                          print(a);
                        },
                      ),
                      SizedBox(
                        width: 12,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: _w*w.getW(67),
                      ),
                      Text(
                        'Home',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: color,
                        ),
                      ),
                      SizedBox(
                        width: _w*w.getW(67),
                      ),
                      Text(
                        'Card',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: color,
                        ),
                      ),
                      SizedBox(
                        width:  _w*w.getW(67),
                      ),
                      Text(
                        'Club',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: color,
                        ),
                      ),
                      SizedBox(
                        width:  _w*w.getW(67),
                      ),
                      Text(
                        'Money',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: color,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ), //Bottom Navigation
          ],
        ),
      ),
    );
  }
}

class Builder extends StatelessWidget {
  final String image, text, docs, btn;
  final int y;
  final Height h = new Height();
  final Width w = new Width();
   Builder({Key key, this.image, this.text, this.docs, this.btn, this.y,});
  
  @override
  Widget build(BuildContext context) {
    final _h = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        kToolbarHeight;
    final _w = MediaQuery.of(context).size.width;
    double radiusAvatar = _w * 0.0462;
    return Container(
      child: SizedBox(
        width: _w*w.getW(500),
        child: Card(
          child: InkWell(
            child: Column(
              children: [
                Image.asset(image, width: _w*w.getW(300), height: _h*h.getH(300)),
                SizedBox(
                  height: radiusAvatar,
                  width: _w*w.getW(900),
                ),
                Text(
                  text,
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: radiusAvatar,
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  child: Text(
                    docs,
                    style: TextStyle(
                      fontSize: 27,
                    ),
                  ),
                ),
                SizedBox(
                  height: _h*h.getH(85),
                ),
                InkWell(
                  child: Container(
                    width: _h*h.getH(160),
                    height: 50,
                    decoration: BoxDecoration(
                      color: y == 1 || y == 3
                          ? Colors.greenAccent
                          : Colors.redAccent,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(
                      child: Text(
                        btn,
                        style: TextStyle(
                          color: y == 1 || y == 3
                              ? Colors.redAccent
                              : Colors.greenAccent,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                  onTap: () {
                    if (y == 2) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MutualFunds(),
                        ),
                      );
                    } else if (y == 1) {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => Bonds(),
                      //   ),
                      // );
                    } else if (y == 3) {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => Ipo(),
                      //   ),
                      // );
                    } else {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => Explore(),
                      //   ),
                      // );
                    }
                  },
                )
              ],
            ),
            onTap: () {
              if (y == 2) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MutualFunds(),
                  ),
                );
              } else if (y == 1) {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => Bonds(),
                //   ),
                // );

              } else if (y == 3) {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => Ipo(),
                //   ),
                // );
              } else {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => Explore(),
                //   ),
                // );
              }
            },
          ),
          elevation: 25,
        ),
      ),
    );
  }
}