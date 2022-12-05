import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data= {};
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  Widget build(BuildContext context) {
    data = ModalRoute.of(context)!.settings.arguments as Map;
    print(data);
    return Scaffold(
      backgroundColor: Color(0xFF2F3C41),
      body:SafeArea(
      child: Column(
        children: [
          SizedBox(height: 30,),
          Container(
            height: 300,
            width: 700,
            decoration: BoxDecoration(
            color: Color(0xFF2F3C41)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Todays currencys values against US Dollar',style: TextStyle(color: Colors.white,
                    fontFamily: 'Barlow',
                    fontSize: 22



                    )),
                  ],
                ),
                SizedBox(height: 10,),
                Image(image: AssetImage('assets/4.png'),height: 80,width: 80,)
              ],
            ),
          ),
          Container(
            height: 474,
            width: 700,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))
            ),
            child: Column(
              children: [
                SizedBox(height:15,),
                Container(
                  height: 100,
                  width: 700,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Image.asset('assets/3.png',height: 80,width: 120,),
                        Text('${data['EUR']} EUR',style: TextStyle(fontSize: 20,letterSpacing: 2,))
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 100,
                  width: 700,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Image.asset('assets/1.png',height: 80,width: 120,),
                        Text('${data['AUD']} AUD',style: TextStyle(fontSize: 20,letterSpacing: 2,))
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 100,
                  width: 700,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Image.asset('assets/2.png',height: 80,width: 120,),
                        Text('${data['CAD']} CAD',style: TextStyle(fontSize: 20,letterSpacing: 2,))
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 100,
                  width: 700,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Image.asset('assets/0.png',height: 80,width: 120,),
                        Text('${data['GPB']} GPB',style: TextStyle(fontSize: 20,letterSpacing: 2,))
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    )
    );
  }
}


