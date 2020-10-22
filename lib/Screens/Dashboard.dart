import 'package:flutter/material.dart';
import 'package:poonji/widgets/widgets.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  List<String> images = [
    'assets/carasol/funds.png',
    'assets/carasol/bonds.png',
    'assets/carasol/ipo.png',
    'assets/carasol/explore.png'
  ];
  List<String> titles = ['Mutual Funds', 'Bonds', 'IPO', 'Explore More'];
  List<String> discs = [
    'Start Your Investment Journey with us',
    'Its a good time to invest in bonds',
    'Get your funds invested in new IPO’s coming in',
    'Explore the amazing features that  we provide',
  ];
  List<String> btns = ['Get Mutual Funds', 'Get Bonds', 'IPO', 'Explore More'];
  int currentpage = 0;
  List<DashBoardSlider> lists = new List<DashBoardSlider>();
  initState() {
    super.initState();

    lists = getCards();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: AppBar(
        title: Text('DashBoard'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            child: Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 25,
                      child: Text(
                        'P',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 250,
                    ),
                    CircleAvatar(
                      radius: 25,
                      child: Image.asset(
                        'assets/material/stories.png',
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    CircleAvatar(
                      radius: 25,
                      child: Icon(Icons.notifications),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    CircleAvatar(
                      radius: 25,
                      child: Image.asset(
                        'assets/material/control.png',
                        height: 40,
                        width: 40,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text('Pratyush'),
                    SizedBox(
                      width: 250,
                    ),
                    Text('Stores'),
                    SizedBox(
                      width: 20,
                    ),
                    Text('notifications'),
                    SizedBox(
                      width: 20,
                    ),
                    Text('control')
                  ],
                )
              ],
            ),
          ), //Head
          SizedBox(height: 0),
          Container(
            width: 600,
            height: 800,
            child: new PageView.builder(
                itemCount: 4,
                onPageChanged: (value) {
                  currentpage = value;
                },
                controller: PageController(
                  initialPage: currentpage,
                  keepPage: false,
                  viewportFraction: 0.5,
                ),
                itemBuilder: (context, index) {
                  if (index > 3) {
                    index = 0;
                  }
                  return Builder(
                    image: images[index],
                    text: titles[index],
                    docs: discs[index],
                    btn: btns[index],
                  );
                }),
          ),

          //body
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.home),
                    SizedBox(
                      width: 12,
                    ),
                    Icon(Icons.home),
                    SizedBox(
                      width: 12,
                    ),
                    Icon(Icons.home),
                    SizedBox(
                      width: 12,
                    ),
                    Icon(Icons.home),
                    SizedBox(
                      width: 12,
                    ),
                  ],
                )
              ],
            ),
          ), //Bottom Navigation
        ],
      ),
    );
  }
}

class Builder extends StatelessWidget {
  final String image, text, docs, btn;
  const Builder({Key key, this.image, this.text, this.docs, this.btn});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          image != null
              ? Image.asset(image, width: 500, height: 500)
              : Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTSu5RVwzc8LFlzQ3hbeeGM2JSLw47uwgWaAg&usqp=CAU'),
          SizedBox(height: 60),
          text != null
              ? Text(
                  text,
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                )
              : Text('null'),
          SizedBox(height: 12),
          docs != null ? Text(docs) : Text('null'),
          SizedBox(height: 100),
          Container(
            width: 500,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              ),
            ),
            child: Center(
              child: InkWell(
                child: Text(btn),
              ),
            ),
          )
        ],
      ),
    );
  }
}
