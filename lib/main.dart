import 'dart:io';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Caregiver',
      theme: ThemeData(
       cardColor : Colors.tealAccent[100],
      ),
      home: CAREGIVERFORM(title: 'Caregiver'),
    );
  }
}
class CAREGIVERFORM extends StatefulWidget {
  CAREGIVERFORM({Key? key, required this.title}) : super(key: key);

  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}


  class _MyHomePageState extends State<CAREGIVERFORM> {
    @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Patient Tracker App'),
      ),
      body: Container(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
             children :  <Widget>[
              Text(
              'Hi !'
                  'Are you looking for an organizer and follower of your patients,'
                  ' a way to schedule their daly activities according to their illness and consult cases'
                  ' to give prescription !, '
                  'So,what you waiting for create your account now and start tracking ' ,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline6,
                textDirection: TextDirection.ltr,

              ),
            ElevatedButton(
                 child: Text('Create Doctor Account'),
                 onPressed: (){
                   Navigator.push(
                       context,
                       MaterialPageRoute(builder: (context) => RegistrationDoctor())
                   );
                 },
               ),
               ElevatedButton(
                 child: Text('Create Coach Account'),
                 onPressed: (){
                   Navigator.push(
                       context,
                       MaterialPageRoute(builder: (context) => RegistrationCoach())
                   );
                 },
               ),
             ],


       ),

      ),


      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: ()=> exit(0),
        tooltip: 'Close app',
        label : const Text('Exit'),
        icon: Icon(Icons.home),
        backgroundColor: Colors.lightGreen,
      ),
    );
  }
}
//------------------- RegistrationCoach -----------------

class RegistrationCoach extends StatelessWidget {
  final _pwdController = TextEditingController();
  final _fromKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create Coach Account"),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
          child: Form(
            child : Column (
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: TextFormField(
                    validator: (value){
                      if (value!.isEmpty){
                        return 'User firstname cannot be empty';
                      }
                      return null ;
                    },
                    decoration: InputDecoration(
                        labelText: 'First Name',
                        hintText: 'Put your first name',
                        border : OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0))
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child :TextFormField(
                    validator: (value){
                      if (value!.isEmpty){
                        return 'User lastname cannot be empty';
                      }
                      return null ;
                    },
                    decoration: InputDecoration(
                        labelText: 'Last Name',
                        hintText: 'Put your last name',
                        border : OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0))
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child :TextFormField(
                    validator: (value){
                      if (value!.isEmpty){
                        return 'User E-mail cannot be empty';
                      }
                      return null ;
                    },
                    decoration: InputDecoration(
                        labelText: 'E-mail',
                        hintText: 'Put your E-mail name',
                        border : OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0))
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: TextFormField(
                    obscureText: true,
                    controller: _pwdController,
                    validator: (value){
                      if (value!.isEmpty){
                        return 'User Password cannot be empty !';
                      }else if (value.length < 6){
                        return 'Password cannot be less than 6 carecters !';
                      }
                      return null ;
                    },
                    decoration: InputDecoration(
                        labelText: 'Password',
                        hintText: 'Enter your password',
                        border : OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0))
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

//------------------- RegistrationDoctor ----------------
class RegistrationDoctor extends StatelessWidget {
  final _pwdController = TextEditingController();
  final _fromKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create Doctor Account"),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
          child: Form(
            child : Column (
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
              Padding(
               padding: const EdgeInsets.all(3.0),
                child: TextFormField(
                  validator: (value){
                    if (value!.isEmpty){
                      return 'User firstname cannot be empty';
                    }
                    return null ;
                  },
                  decoration: InputDecoration(
                      labelText: 'First Name',
                      hintText: 'Put your first name',
                      border : OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0))
                  ),
                ),
      ),
              Padding(
               padding: const EdgeInsets.all(3.0),
                child :TextFormField(
                  validator: (value){
                    if (value!.isEmpty){
                      return 'User lastname cannot be empty';
                    }
                    return null ;
                  },
                  decoration: InputDecoration(
                      labelText: 'Last Name',
                      hintText: 'Put your last name',
                      border : OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0))
                  ),
                ),
              ),
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child :TextFormField(
                    validator: (value){
                      if (value!.isEmpty){
                        return 'User E-mail cannot be empty';
                      }
                      return null ;
                    },
                    decoration: InputDecoration(
                        labelText: 'E-mail',
                        hintText: 'Put your E-mail name',
                        border : OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0))
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: TextFormField(
                    obscureText: true,
                    controller: _pwdController,
                    validator: (value){
                      if (value!.isEmpty){
                        return 'User Password cannot be empty !';
                      }else if (value.length < 6){
                        return 'Password cannot be less than 6 carecters !';
                      }
                      return null ;
                    },
                    decoration: InputDecoration(
                        labelText: 'Password',
                        hintText: 'Enter your password',
                        border : OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0))
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

//------------------------- This is Login Part
  class LogIn extends StatelessWidget {
    final _pwdController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
            child: Form(
              child : Column (
                    mainAxisAlignment: MainAxisAlignment.center,
                 children: <Widget>[
                 Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextFormField(
                    validator: (value){
                      if (value!.isEmpty){
                        return 'User Email cannot be empty';
                      }
                      return null ;
                    },
                    decoration: InputDecoration(
                        labelText: 'Email',
                        hintText: 'Enter your Email',
                        border : OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0))
                    ),
                  ),),
                Padding(
                   padding: const EdgeInsets.all(15.0),
                 child : TextFormField(
                    obscureText: true,
                    controller: _pwdController,
                    validator: (value){
                      if (value!.isEmpty){
                        return 'User Password cannot be empty !';
                      }else if (value.length < 6){
                        return 'Password Incorrect !';
                      }
                      return null ;
                    },
                    decoration: InputDecoration(
                        labelText: 'Password',
                        hintText: 'Enter your password',
                        border : OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0))
                    ),
                  ),
                ),

                ElevatedButton(
                  child: Text('Create Account'),
                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LogIn())
                    );
                  },
                ),
          ],
              ),

            ),
    ),),);

  }
}
// ------------------ths is home page of caregiver after his login

class _CaregiverProfile extends State<CAREGIVERFORM> {
  final _pwdController = TextEditingController();
  final _fromKey = GlobalKey<FormState>();
  showAlertDialog(BuildContext context) {
    // set up the button
    Widget okButton = FlatButton(
      child: Text("OK"),
      onPressed: () { },
    );
    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Consult Patients List"),
      content: Text("Patients List"),
      actions: [
        okButton,
      ],
    );
    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        child: Form(
          key: _fromKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
            Text(
              'Caregiver Profile ',
              style: Theme.of(context).textTheme.headline6,
                          ),
          Text ('             '),
          RichText(
            text: TextSpan(
              text: 'Caregiver Name ',
              children: const <TextSpan>[
                TextSpan(text: 'Doctor/ Coach', style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blueGrey),
                   ),
              ],
            ),

          ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child:RaisedButton(
              child: Text('Patient Lists'),
              onPressed: () {
                showAlertDialog(context);},),
        ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child:RaisedButton(
              child: Text('Add New patient'),
              onPressed: () {
                showAlertDialog(context);},),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child:RaisedButton(
              child: Text('Give Prescription'),
              onPressed: () {
                showAlertDialog(context);},),
          ),
          ],
        ),
      ),

      ),
      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed :() {
            if (_fromKey.currentState!.validate()){
              Text('Welcome !');
          }},
          label : const Text('Exit'),
          icon: Icon(Icons.home),
          backgroundColor: Colors.lightGreen,
   ),
    );
      }
}


