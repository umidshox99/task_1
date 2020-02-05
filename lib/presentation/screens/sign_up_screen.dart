import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';
import 'package:task_1/utils/utils.dart';

class SignUp extends StatefulWidget {
  SignUp({Key key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    var controller = new MaskedTextController(mask: '000-00-00');
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Register",
            style: TextStyle(fontSize: 16),
          ),
          centerTitle: true,
        ),
        resizeToAvoidBottomPadding: false,
        resizeToAvoidBottomInset: false,
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 45,
                  child: RaisedButton(
                    color: signFacebook,
                    child: Text(
                      'Connect with Facebook',
                      style: TextStyle(color: Colors.white),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(15.0),
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 8, 8, 4),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          height: 50,
                          child: CountryCodePicker(
                            textStyle:
                                TextStyle(fontSize: 15, color: Colors.black),
                            onChanged: (value) {},
                            initialSelection: 'UZ',
                            favorite: ['+998', 'UZ'],
                            showCountryOnly: false,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(width: 0.2),
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0)),
                          ),
                        ),
                        flex: 3,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        flex: 4,
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                            border: Border.all(width: 0.2),
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0)),
                          ),
                          child: TextField(
                              controller: controller,
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: '  Phone number'),
                              style: TextStyle(fontSize: 15),
                              keyboardType: TextInputType.number),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(8, 0, 8, 8),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(width: 0.2),
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: '  Password (min 4 characters)'),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(width: 0.2),
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none, hintText: '  Name Surname'),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(8, 0, 8, 8),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(width: 0.2),
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none, hintText: '  E-mail'),
                  ),
                ),
              ),
              Row(
                children: <Widget>[
                  Checkbox(
                    value: false,
                    onChanged: (bool value) {},
                  ),
                  Flexible(
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(color: Colors.grey[800], fontSize: 10),
                        children: <TextSpan>[
                          TextSpan(text: 'I have read and accept'),
                          TextSpan(
                              text: 'Terms and Condition ',
                              style:
                                  TextStyle(color: primaryColor, fontSize: 10),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {}),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Checkbox(
                    value: true,
                    checkColor: primaryColor,
                    activeColor: Colors.grey[200],
                    onChanged: (bool value) {},
                  ),
                  Flexible(
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(
                          color: Colors.grey[800],
                          fontSize: 10,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                              text:
                                  'I give permission for the use of my personal data for special of-fers and for recieving electronic communication,within the scope of'),
                          TextSpan(
                              text: 'The Law on Protection of Personal Data ',
                              style:
                                  TextStyle(color: primaryColor, fontSize: 12),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {}),
                          TextSpan(text: 'clarification document'),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Align(
                    alignment: FractionalOffset.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 45,
                        width: MediaQuery.of(context).size.width,
                        child: RaisedButton(
                          onPressed: () {},
                          child: Text(
                            "Register",
                            style: TextStyle(color: Colors.white),
                          ),
                          color: primaryColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(15.0),
                          ),
                        ),
                      ),
                    )),
              )
            ],
          ),
        ));
  }
}
