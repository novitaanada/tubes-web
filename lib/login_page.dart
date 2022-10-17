import 'package:flutter/material.dart';
import 'package:locahub/coba.dart';
import 'homepage.dart';
import 'forgot_password.dart';
import 'signup_page.dart';
import 'theme.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login Page',
      home: Scaffold(
        appBar: AppBar(
          //normalnya 56
          toolbarHeight: 80,
          backgroundColor: Colors.transparent,
          bottomOpacity: 0.0,
          elevation: 0.0,
          centerTitle: true,
          title: Text(
            "Login",
            style: poppinsTextStyle.copyWith(
                fontSize: 16, fontWeight: FontWeight.w700, color: darkColor),
          ),
        ),
        body: ListView(children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: <Widget>[
                //Logo
                Image.asset('assets/images/logo.png', height: 71, width: 53),
                const SizedBox(height: 42),

                //Form login
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Email or Phone',
                      style: TextStyle(
                          fontSize: 14,
                          color: darkColor,
                          fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(height: 9),
                    TextFormField(
                      decoration: InputDecoration(
                        fillColor: lightgreyColor,
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: lightgreyColor),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: lightgreyColor),
                        ),
                        hintText: 'user@gmail.com or 08xxxxxxxxxx',
                        hintStyle: TextStyle(
                            fontSize: 14,
                            color: textmutedColor,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'Password',
                      style: TextStyle(
                          fontSize: 14,
                          color: darkColor,
                          fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(height: 9),
                    TextFormField(
                      decoration: InputDecoration(
                        fillColor: lightgreyColor,
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: lightgreyColor),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: lightgreyColor),
                        ),
                        hintText: '********',
                        hintStyle: TextStyle(
                            fontSize: 14,
                            color: textmutedColor,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    const SizedBox(height: 9),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => ForgotPassword(),
                              ),
                            );
                          },
                          child: Text(
                            'Lupa password?',
                            style: poppinsTextStyle.copyWith(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                color: orangeColor),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 28),

                //Button login
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: orangeColor),
                    child: Text(
                      'Login',
                      style: poppinsTextStyle.copyWith(fontSize: 14),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) {
                            return HomePage();
                          },
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 30),

                //Atau
                Row(
                  children: <Widget>[
                    Flexible(
                      child: Container(
                        height: 1,
                        color: greyColor,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Text('atau',
                          style: poppinsTextStyle.copyWith(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              color: darkColor)),
                    ),
                    Flexible(
                      child: Container(
                        height: 1,
                        color: greyColor,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),

                //Google dan facebook
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(25),
                          backgroundColor: greyColor),
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (_) {
                              return LoginPage();
                            },
                          ),
                        );
                      },
                      child: Image.asset(
                        'assets/images/google.png',
                        width: 20,
                        height: 20,
                      ),
                    ),
                    const SizedBox(width: 25),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(25),
                          backgroundColor: greyColor),
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (_) {
                              return Coba();
                            },
                          ),
                        );
                      },
                      child: Image.asset(
                        'assets/images/facebook.png',
                        width: 20,
                        height: 20,
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 57),

                //Daftar akun
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => SignUpPage(),
                      ),
                    );
                  },
                  child: Text.rich(
                    TextSpan(
                      style: poppinsTextStyle.copyWith(
                          fontSize: 12), //apply style to all
                      children: [
                        TextSpan(
                            text: 'Belum punya akun? Daftar akun ',
                            style: poppinsTextStyle.copyWith(
                                fontWeight: FontWeight.w400, color: darkColor)),
                        TextSpan(
                            text: 'disini!',
                            style: poppinsTextStyle.copyWith(
                                fontWeight: FontWeight.w700,
                                color: orangeColor))
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
