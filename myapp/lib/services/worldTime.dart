import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';

class WorldTime {
  String location; // location name for UI
  String time; // the time in that location
  String flag; //url to an asset flag icon
  String url; // location url for api endpoint
  bool isDaytime; //true or false if daytime or not

  WorldTime(
      {this.location = '',
      this.time = '',
      this.flag = '',
      this.url = '',
      this.isDaytime = true});

  factory WorldTime.fromJson(Map<String, dynamic> json) {
    return WorldTime(
        //datetime: json['datetime'],
        //offset: json['utc_offset'],
        );
  }

  Future<void> fetchTime() async {
    try {
      final response = await http
          .get(Uri.parse('https://worldtimeapi.org/api/timezone/$url'));
      Map data = jsonDecode(response.body);
      String datetime = data['datetime'];
      String offset = data['utc_offset'].substring(1, 3);
      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(offset)));
      //set the time property
      time = DateFormat.jm().format(now);
      isDaytime = now.hour>6 && now.hour<20 ? true : false;
      if (response.statusCode == 200) {
        // If the server did return a 200 OK response,
        // then parse the JSON.
      } else {
        // If the server did not return a 200 OK response,
        // then throw an exception.
        throw Exception('Failed to load album');
      }
    } catch (e) {
      print(e);
      time = 'could not get the actual time ';
    }

    //print(now);
    //print(offset);
    //print(data);
  }
}
