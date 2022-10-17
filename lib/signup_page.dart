import 'package:flutter/material.dart';
import 'otp_verification.dart';
import 'login_page.dart';
import 'theme.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sign Up Page',
      home: Scaffold(
        appBar: AppBar(
          //normalnya 56
          toolbarHeight: 80,
          backgroundColor: Colors.transparent,
          bottomOpacity: 0.0,
          elevation: 0.0,
          centerTitle: true,
          title: Text(
            "Registrasi Akun",
            style: poppinsTextStyle.copyWith(
                fontSize: 16, fontWeight: FontWeight.w700, color: darkColor),
          ),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: darkgreyColor,
              size: 14,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        body: ListView(children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              //Digunakan agar widget mengisi ruang kosong pada layar
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                //Logo
                Image.asset('assets/images/logo.png', height: 71, width: 53),
                const SizedBox(height: 42),

                //Form login
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Username',
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
                        hintText: 'johndoe',
                        hintStyle: TextStyle(
                            fontSize: 14,
                            color: textmutedColor,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'Email',
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
                        hintText: 'johndoe@gmail.com',
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
                    const SizedBox(height: 16),
                    Text(
                      'Telepon',
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
                        hintText: '08xxxxxxxxxx',
                        hintStyle: TextStyle(
                            fontSize: 14,
                            color: textmutedColor,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 28),

                //Button regis
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: orangeColor),
                    child: Text(
                      'Registrasi Akun',
                      style: poppinsTextStyle.copyWith(fontSize: 14),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) {
                            return VerifikasiOTP();
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
                              return LoginPage();
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

                //login
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(builder: (context) => LoginPage()),
                        (Route<dynamic> route) => false);
                  },
                  child: Text.rich(
                    TextSpan(
                      style: poppinsTextStyle.copyWith(
                          fontSize: 12), //apply style to all
                      children: [
                        TextSpan(
                            text: 'Sudah punya akun? Login ',
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
