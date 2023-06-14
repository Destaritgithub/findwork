import 'package:flutter/material.dart';
import '../services/worldTime.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void setupWorldTime() async {
    WorldTime instance = WorldTime(
        location: 'Berlin', flag: 'germeny.png', url: 'Europe/berlin');
    await instance.fetchTime();
    Navigator.pushNamed(context, '/home', arguments: {
      'location': instance.location,
      'flag': instance.flag,
      'time': instance.time,
      'isDaytime':instance.isDaytime,
    });
  }

  //late Future<WorldTime> futureTime;

  @override
  void initState() {
    super.initState();
    // print('initState function run');
    //getTime();
    // futureAlbum = fetchAlbum();
    //fetchAlbum();
    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[600],
      body: Padding(
          padding: EdgeInsets.all(50.0),
          child: Center(
            child: SpinKitCircle(
              color: Colors.blue,
              size: 90.0,
            ),
          )),
    );
  }
}
