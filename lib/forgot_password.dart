import 'package:flutter/material.dart';
import 'reset_password.dart';
import 'theme.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lupa Password',
      home: Scaffold(
        appBar: AppBar(
          //normalnya 56
          toolbarHeight: 80,
          backgroundColor: Colors.transparent,
          bottomOpacity: 0.0,
          elevation: 0.0,
          centerTitle: true,
          title: Text(
            "Lupa Password",
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
              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                        hintText: 'user@gmail.com/08xxxxxxxxxx',
                        hintStyle: TextStyle(
                            fontSize: 14,
                            color: textmutedColor,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 28),

                //Button lanjutkan
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: orangeColor),
                    child: Text(
                      'Lanjutkan',
                      style: poppinsTextStyle.copyWith(fontSize: 14),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) {
                            return ResetPassword();
                          },
                        ),
                      );
                    },
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