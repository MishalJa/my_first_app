import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:world_time/Pages/classes.dart';


class Loading extends StatefulWidget {
  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void Trans() async {
    curry Dollar = curry(value:'Values');
    await Dollar.cur([]);
    Navigator.pushReplacementNamed(context, '/home',arguments: {
      'EUR': Dollar.EUR,
      'GPB':Dollar.GPB,
        'CAD':Dollar.CAD,
        'AUD':Dollar.AUD,
      'value':Dollar.value,

    });
  }
  @override
  void initState() {
    super.initState();
    Trans();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: SpinKitDualRing(color: Colors.cyan,),
    );
  }
}
