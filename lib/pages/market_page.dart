import 'package:flutter/material.dart';

class MarketUiPage extends StatefulWidget {
  static const id = "/market_ui";
  const MarketUiPage({Key? key}) : super(key: key);

  @override
  State<MarketUiPage> createState() => _MarketUiPageState();
}

class _MarketUiPageState extends State<MarketUiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: null,
        title: Text("Cars", style: TextStyle(color: Colors.black, fontSize: 25),),
        brightness: Brightness.light,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.notifications_none, color: Colors.black,), onPressed: () {  },
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart, color: Colors.black,), onPressed: () {  },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    singleTab(true,"All"),
                    singleTab(false,"Red"),
                    singleTab(false,"Blue"),
                    singleTab(false,"Green"),
                    singleTab(false,"Grey"),
                  ],
                ),
              ),
              const SizedBox(height: 20,),
              makeItem("assets/images/im_car1.jpg"),
              makeItem("assets/images/im_car2.jpg"),
              makeItem("assets/images/im_car3.jpg"),
              makeItem("assets/images/im_car4.png"),
              makeItem("assets/images/im_car5.jpg"),
            ],
          ),
        ),
      ),
    );
  }

  Widget singleTab(bool type, String text){
    return AspectRatio(
      aspectRatio: 2.2/1,
      child: Container(
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          color: type ? Colors.grey[200]:Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(text,style: TextStyle(fontSize: type? 20: 17),),
        ),
      ),
    );
  }

  Widget makeItem(String image){
    return Container(
      height: 250,
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover
          ),
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 10,
              offset: Offset(0,10),
            ),
          ]
      ),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
              begin: Alignment.bottomRight,
              colors: [
                Colors.black.withOpacity(0.9),
                Colors.black.withOpacity(0.6),
                Colors.black.withOpacity(0.3),
                Colors.black.withOpacity(0.2),
              ]
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("PDP Car",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
                      SizedBox(height: 10,),
                      Text("Electric",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                    ],
                  ),
                ),
                Container(
                  width: 35,
                  height: 35,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white
                  ),
                  child: const Center(
                    child: Icon(Icons.favorite_border, size: 20,),
                  ),
                ),
              ],
            ),
            Text("100\$", style: const TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),)
          ],
        ),
      ),
    );
  }
}
