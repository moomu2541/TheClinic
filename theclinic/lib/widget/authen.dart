import 'package:flutter/material.dart';
import 'package:theclinic/utillity/my_style.dart';

class Authen extends StatefulWidget {
  @override
  _AuthenState createState() => _AuthenState();
}
class _AuthenState extends State<Authen> {
  double screen;
  bool statusRedEye = true;

  @override
  Widget build(BuildContext context) {
    screen = MediaQuery.of(context).size.width;
    print('screen = $screen');
    return Scaffold(
      //floatingActionButton: buildRegister(),
      body: Container(
        decoration: BoxDecoration(
          gradient: RadialGradient(
              center: Alignment(0,-0.5),
              radius: 1.5,
              colors: <Color>[Colors.white, MyStyle().prinaryColor]
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(

              mainAxisSize: MainAxisSize.min,
              children: [
                buildLogo(),
                MyStyle().titleH1('TheClinic'),
                buildUser(),
                buildPassword(),
                buildLogin(),
                buildRegister(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /*TextButton buildRegister() => TextButton(
      onPressed: () => Navigator.pushNamed(context, '/register'),
      child: Text('Register',
        style: TextStyle(color: Colors.white),
      )
  );*/

  Container buildLogin() {
    return Container(
            margin: EdgeInsets.only(top: 16),
            width: screen*0.8,
            child: ElevatedButton(
              onPressed: () {},
              child: Text('Login'),
              style: ElevatedButton.styleFrom(
                primary: MyStyle().darkColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)
                ),
              ),
            ),
          );
  }

  Container buildRegister() {
    return Container(
      margin: EdgeInsets.only(top: 2),
      width: screen*0.8,
      child: ElevatedButton(
        onPressed: () => Navigator.pushNamed(context, '/register'),
        child: Text('Register'),
        style: ElevatedButton.styleFrom(
          primary: MyStyle().darkColor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30)
          ),
        ),
      ),
    );
  }

  Container buildUser() {
    return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white54,
              ),
              margin: EdgeInsets.only(top: 16),
              width: screen *0.8,
              child: TextField(
                style: TextStyle(color: MyStyle().darkColor),
                decoration: InputDecoration(
                  hintStyle: TextStyle(color: MyStyle().darkColor),
                  hintText: 'Email',
                  prefixIcon: Icon(
                      Icons.perm_identity,
                      color: MyStyle().darkColor,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: MyStyle().darkColor),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: MyStyle().lightColor),
                  ),
                ),
              )
          );
  }

  Container buildPassword() {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.white54,
        ),
        margin: EdgeInsets.only(top: 16),
        width: screen *0.8,
        child: TextField(
          obscureText: statusRedEye,
          style: TextStyle(color: MyStyle().darkColor),
          decoration: InputDecoration(
            suffixIcon: IconButton(
                icon: statusRedEye ?
                Icon(Icons.remove_red_eye) :
                Icon(Icons.remove_red_eye_outlined),
                onPressed: (){
                  setState(() {
                    statusRedEye = !statusRedEye;
                  });
                print('statusRedEye = $statusRedEye');
              }),
            hintStyle: TextStyle(color: MyStyle().darkColor),
            hintText: 'Password',
            prefixIcon: Icon(
                Icons.lock_outline,
                color: MyStyle().darkColor,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(color: MyStyle().darkColor),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(color: MyStyle().lightColor),
            ),
          ),
        )
    );
  }

  Container buildLogo() {
    return Container(
              width: screen*0.4,
              child: MyStyle().showLogo(),
          );
  }
}
