import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TemperatureSettingWidget extends StatefulWidget {
  const TemperatureSettingWidget({Key? key}) : super(key: key);

  @override
  _TemperatureSettingWidgetState createState() => _TemperatureSettingWidgetState();
}

class _TemperatureSettingWidgetState extends State<TemperatureSettingWidget> {

  double size = 50; //위젯의 크기를 정할 변수
  double _counter = 18.0; //최초 온도를 나타내는 변수

  void plus() { //+버튼 작동 시
    setState(() {
      if(_counter >= 30.0) {
      } else {
        _counter++;
      }
    });
  }

  void minus() { // -버튼 작동 시
    setState(() {
      if(_counter <= 17.0) {
      } else {
        _counter--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: size * 3,
          height: size * 3,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xFF282a57), Colors.black],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter
            ),
          ),
          child: Column(
            children: <Widget>[
              Container(
                width: size * 3,
                height: size,
                child: RawMaterialButton (
                  onPressed: plus,
                  child: IconButton(
                    icon: const Icon(
                      Icons.add,
                      color: Colors.red,
                    ),
                    onPressed: plus,
                  ),
                ),
              ),
              Container(
                width: size * 3,
                height: size,
                child: Text(
                  '$_counter''.0º',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 33,
                    color: Colors.white,
                    height: 1.4,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                width: size * 3,
                height: size,
                child: IconButton(
                  icon: const Icon(
                    Icons.remove,
                    color: Colors.white,
                  ),
                  onPressed: minus,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



