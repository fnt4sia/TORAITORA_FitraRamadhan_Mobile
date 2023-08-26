import 'package:flutter/material.dart';
import '../yes/character.dart';

List<String> tribes = ['Warrior', 'Mage', 'Archer', 'Lancer'];
String tribesValue = tribes.first;
bool usernameEmpty = false;
Character char = Character();

class registerScreen extends StatefulWidget {
  const registerScreen({super.key});

  @override
  State<registerScreen> createState() => _registerScreenState();
}

class _registerScreenState extends State<registerScreen> {
  final textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Color(0xFF272829),
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            'TORAITORA',
            style: TextStyle(
              color: Colors.white,
              letterSpacing: 3,
            ),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 1 / 8,
                    bottom: 50,
                  ),
                  child: Text(
                    'REGISTER',
                    style: TextStyle(
                      letterSpacing: 5,
                      fontSize: 36.0,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  width: 300,
                  child: TextField(
                    controller: textController,
                    style: TextStyle(color: Colors.white, fontSize: 16),
                    decoration: InputDecoration(
                        errorText:
                            usernameEmpty ? 'Username Must Be Filled' : null,
                        errorStyle: TextStyle(
                          height: 0,
                          color: Colors.red,
                        ),
                        border: OutlineInputBorder(),
                        hintText: 'Username',
                        hintStyle: TextStyle(
                            color: Color.fromARGB(200, 255, 255, 255))),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    border:
                        Border.all(color: Color.fromARGB(255, 189, 188, 188)),
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                  width: 300,
                  child: DropdownButton<String>(
                    isExpanded: true,
                    icon: Icon(
                      Icons.arrow_downward_sharp,
                      color: Colors.white,
                    ),
                    underline: SizedBox(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                    dropdownColor: Colors.black,
                    value: tribesValue,
                    onChanged: (String? newValue) {
                      setState(() {
                        if (newValue != null) tribesValue = newValue;
                      });
                    },
                    items: tribes.map((item) {
                      return DropdownMenuItem(
                        value: item,
                        child: Text(
                          item,
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(35.0),
                  child: MaterialButton(
                    onPressed: () {
                      setState(() {
                        if (textController.text.isEmpty)
                          usernameEmpty = true;
                        else {
                          Character.username = textController.text;
                          Character.tribes = tribesValue;
                          Navigator.of(context).pushNamed('/home');
                        }
                      });
                    },
                    child: Text(
                      'SUBMIT',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    color: Colors.blue[400],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
