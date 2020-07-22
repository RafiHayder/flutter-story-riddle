import 'package:flutter/material.dart';
import 'storySection.dart';

void main() => runApp(questionRiddle());
StorySection str = StorySection();

class questionRiddle extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: questionPage(),
    );
  }
}

class questionPage extends StatefulWidget {
  @override
  _questionPageState createState() => _questionPageState();
}

class _questionPageState extends State<questionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/back.png'), fit: BoxFit.fill),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50.0, horizontal: 15.0),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                  flex: 12,
                  child: Center(
                    child: Text(
                      str.getStory(),
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white70,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: FlatButton(
                    color: Colors.green,
                    onPressed: () {
                      setState(() {
                        str.nextStory(1);
                      });
                    },
                    child: Text(
                      str.getChoice1(),
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Expanded(
                  flex: 3,
                  child: Visibility(
                    visible: str.showButton(),
                    child: FlatButton(
                      color: Colors.yellow.shade500,
                      onPressed: () {
                        setState(() {
                          str.nextStory(2);
                        });
                      },
                      child: Text(
                        str.getChoice2(),
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
