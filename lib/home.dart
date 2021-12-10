import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Map data= {};

  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
data =ModalRoute.of(context)!.settings.arguments as Map<dynamic, dynamic>;
print(data);
    return Scaffold(
appBar: AppBar(
  title: Text(
    'location'
  ),
  centerTitle: true,
),
      body: SafeArea(

        child:
        Padding(

          padding: const EdgeInsets.fromLTRB(0,0,120,0),

          child: Column(
            children: <Widget>[
              ElevatedButton.icon(onPressed: (){
                Navigator.pushNamed(context, '/location');
              },
              label: Text('Edit Location'),
              icon: Icon(Icons.edit_location),),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:<Widget> [
                Text(data['location'],style: TextStyle(
                  letterSpacing: 2,
                  fontSize: 30,
                ),
                ),
              ],
              ),
              SizedBox(height: 20),
              Text(
                data['time'],
                textAlign: TextAlign.center,
                style: TextStyle(
                fontSize: 60,
                  fontWeight: FontWeight. bold,

              ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
