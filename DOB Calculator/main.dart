import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: new ThemeData(primarySwatch: Colors.blue,scaffoldBackgroundColor: Colors.lightBlue.shade900 ),
    home: new MyHomePage()));

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  double age = 0.0;
  var selectedYear;
  late Animation animation;
  late AnimationController animationController;

  @override
  void initState() {
    animationController = new AnimationController(
        vsync: this, duration: new Duration(milliseconds: 1500));
    animation = animationController;
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  void _showPicker() {
    showDatePicker(
        context: context,
        firstDate: new DateTime(1900),
        initialDate: new DateTime(2021),
        lastDate: DateTime.now()).then((dt) async {
      setState(() {
        selectedYear = dt!.year;
        calculateAge();
      });
    });
  }

  void calculateAge() {
    setState(() {
      age = (2021 - selectedYear).toDouble();
      animation = new Tween<double>(begin: animation.value, end: age).animate(
          new CurvedAnimation(
              curve: Curves.fastOutSlowIn, parent: animationController));

      animationController.forward(from: 0.0);
    });
  }

  @override
  Widget build(BuildContext context) {
    void _nextPage() {
      Navigator.of(context).push(
        MaterialPageRoute<void>(
          builder: (BuildContext context) {
            return Scaffold(
              appBar: AppBar(
                title: Text('Covid-19 Precautions'),
                backgroundColor: Colors.black,
              ),
              body: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                    width: 10,
                  ),
                  Text(
                    "   Age below 20:",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,

                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Card(
                      margin:EdgeInsets.fromLTRB(15.0,2.0, 10.0,30.0),
                      child: Column(
                        children: [
                          SizedBox(
                            height:10.0,
                          ),
                          Container(
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 5.0,
                                  ),
                                  Text(
                                    'General Rule: Always maintain a physical distance and stay home as much as possible, unless going for medical treatment or urgent supplies.',
                                    style: TextStyle(
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ],
                              )
                          ),

                          SizedBox(
                            height:5.0,
                          ),
                          Container(
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 5.0,
                                  ),
                                  Text(
                                    'If a mother and her child/children are COVID-19 positive : Let children stay with their mother, unless their mother is too sick to care for them or is hospitalized.',
                                    style: TextStyle(
                                        fontSize: 13.0,
                                    ),
                                  ),
                                ],
                              )
                          ),

                          SizedBox(
                            height:5.0,
                          ),
                          Container(
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 5.0,
                                  ),
                                  Text(
                                    'Its very important to keep yourself fit and to avoid playing outdoor games with a large number of friends.',
                                    style: TextStyle(
                                      fontSize: 13.0,
                                    ),
                                  ),
                                ],
                              )
                          ),
                          SizedBox(
                            height:5.0,
                          ),
                          Container(
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 5.0,
                                  ),
                                  Text(
                                    'Its important to report to your parents if any changes in body temperature or eye irritation',
                                    style: TextStyle(
                                      fontSize: 13.0,
                                    ),
                                  ),
                                ],
                              )
                          ),
                          SizedBox(
                            height:20.0,
                          ),


                        ],


                      )

                  ),
                  Text(
                    "   Age between 20 to 50:",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,

                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Card(
                      margin:EdgeInsets.fromLTRB(15.0,2.0, 10.0,30.0),
                      child: Column(
                        children: [
                          SizedBox(
                            height:10.0,
                          ),
                          Container(
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 5.0,
                                  ),
                                  Text(
                                    'General Rule: Always maintain a physical distance and stay home as much as possible, unless going for medical treatment or urgent supplies.',
                                    style: TextStyle(
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ],
                              )
                          ),

                          SizedBox(
                            height:5.0,
                          ),
                          Container(
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 5.0,
                                  ),
                                  Text(
                                    'When you have visitors to your home, exchange “1 metre greetings”, like a wave, nod,or bow',
                                    style: TextStyle(
                                      fontSize: 13.0,
                                    ),
                                  ),
                                ],
                              )
                          ),

                          SizedBox(
                            height:5.0,
                          ),
                          Container(
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 5.0,
                                  ),
                                  Text(
                                    'Ask visitors and those you live with to wash their hands.',
                                    style: TextStyle(
                                      fontSize: 13.0,
                                    ),
                                  ),
                                ],
                              )
                          ),
                          SizedBox(
                            height:5.0,
                          ),
                          Container(
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 5.0,
                                  ),
                                  Text(
                                    'Regularly clean and disinfect surfaces in your home, especially areas that people touch a lot.',
                                    style: TextStyle(
                                      fontSize: 13.0,
                                    ),
                                  ),
                                ],
                              )
                          ),
                          SizedBox(
                            height:5.0,
                          ),
                          Container(
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 5.0,
                                  ),
                                  Text(
                                    'If you become ill with symptoms of COVID-19, contact your healthcare provider by telephone before visiting your healthcare facility.',
                                    style: TextStyle(
                                      fontSize: 13.0,
                                    ),
                                  ),
                                ],
                              )
                          ),
                          SizedBox(
                            height:5.0,
                          ),
                          Container(
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 5.0,
                                  ),
                                  Text(
                                    'When you go out in public, follow the same preventative guidelines as you would at home.Stay up to date using information from reliable sources.',
                                    style: TextStyle(
                                      fontSize: 13.0,
                                    ),
                                  ),
                                ],
                              )
                          ),
                          SizedBox(
                            height:10.0,
                          ),



                        ],


                      )

                  ),
                  Text(
                    "   Age above 50:",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,

                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Card(
                      margin:EdgeInsets.fromLTRB(15.0,2.0, 10.0,30.0),
                      child: Column(
                        children: [
                          SizedBox(
                            height:10.0,
                          ),
                          Container(
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 5.0,
                                  ),
                                  Text(
                                    'General Rule: Always maintain a physical distance and stay home as much as possible, unless going for medical treatment or urgent supplies.',
                                    style: TextStyle(
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ],
                              )
                          ),

                          SizedBox(
                            height:5.0,
                          ),
                          Container(
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 5.0,
                                  ),
                                  Text(
                                    'Getting vaccinated, wearing a mask, practicing physical distancing, and washing hands.',
                                    style: TextStyle(
                                      fontSize: 13.0,
                                    ),
                                  ),
                                ],
                              )
                          ),

                          SizedBox(
                            height:5.0,
                          ),
                          Container(
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 5.0,
                                  ),
                                  Text(
                                    'Avoid touching your eyes, nose, and mouth with unwashed hands.',
                                    style: TextStyle(
                                      fontSize: 13.0,
                                    ),
                                  ),
                                ],
                              )
                          ),
                          SizedBox(
                            height:5.0,
                          ),
                          Container(
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 5.0,
                                  ),
                                  Text(
                                    'Cover coughs and sneezes with a tissue or the inside of your elbow. Then wash your hands.',
                                    style: TextStyle(
                                      fontSize: 13.0,
                                    ),
                                  ),
                                ],
                              )
                          ),
                          SizedBox(
                            height:20.0,
                          ),


                        ],


                      )

                  ),

                ],
              ),
            );
          },
        ),
      );
    }
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Age Calculator"),
        backgroundColor: Colors.lightBlue[900],
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end:Alignment.bottomRight,
            colors: [Colors.lightGreenAccent,Colors.lightBlue]
        )
        ),
        child: Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Select your date of birth and check Covid-19 measures for your age",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.pink[300],
                  fontWeight: FontWeight.bold,

                ),
              ),
              SizedBox(
                height: 100,
              ),
              new OutlineButton(
                child: new Text(selectedYear != null
                    ? selectedYear.toString()
                    : "DOB",
                    style: TextStyle(
                      color: Colors.white
                    ),),
                borderSide: new BorderSide(color: Colors.white, width: 3.0),
                color: Colors.red,
                onPressed: _showPicker,
              ),
              new Padding(
                padding: const EdgeInsets.all(20.0),
              ),
              new AnimatedBuilder(
                animation: animation,
                builder: (context, child) => new Text(
                  "Present Age: ${animation.value.toStringAsFixed(0)}",
                  style: new TextStyle(
                      fontSize: 30.0,
                      color: Colors.pink.shade50,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),
                ),
              ),
              SizedBox(
                height: 100,
              ),
              FloatingActionButton(
                child: Icon(Icons.arrow_forward),
               backgroundColor: Colors.pink,
               // backgroundColor: Colors.pink,


                shape: BeveledRectangleBorder(

                    borderRadius: BorderRadius.circular(25)
                ), onPressed: () {
                  _nextPage();
                  },

              ),
            ],
          ),
        ),

      ));


  }
}


