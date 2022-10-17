import 'package:flutter/material.dart';
import 'login_page.dart';
import 'reset_password.dart';
import 'theme.dart';

class VerifikasiOTP extends StatefulWidget {
  const VerifikasiOTP({super.key});

  @override
  State<VerifikasiOTP> createState() => _VerifikasiOTPState();
}

class _VerifikasiOTPState extends State<VerifikasiOTP> {
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
            "Verifikasi OTP",
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

                Padding(
                  //harusnya 28
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text.rich(
                    textAlign: TextAlign.center,
                    TextSpan(
                      style: poppinsTextStyle.copyWith(
                          fontSize: 12), //apply style to all
                      children: [
                        TextSpan(
                            text:
                                'Kode OTP bersifat rahasia.\nJangan berikan kode OTP kepada siapapun termasuk pihak ',
                            style: poppinsTextStyle.copyWith(
                                fontWeight: FontWeight.w400, color: darkColor)),
                        TextSpan(
                            text: 'Locahub ',
                            style: poppinsTextStyle.copyWith(
                                fontWeight: FontWeight.w700,
                                color: orangeColor)),
                        TextSpan(
                            text: 'sekalipun.',
                            style: poppinsTextStyle.copyWith(
                                fontWeight: FontWeight.w400, color: darkColor)),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 16),

                //Form otp
                TextFormField(
                  textAlign: TextAlign.center,
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
                    hintText: '1 - 2 - 3 - 4 - 5 - 6',
                    hintStyle: TextStyle(
                      fontSize: 14,
                      color: textmutedColor,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
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
                      Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(builder: (context) => LoginPage()),
                          (Route<dynamic> route) => false);

                      // Navigator.pushAndRemoveUntil(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (BuildContext context) => LoginPage(),
                      //   ),
                      //   (route) => false,
                      // );

                      // Navigator.of(context).push(
                      //   MaterialPageRoute(
                      //     builder: (_) {
                      //       return LoginPage();
                      //     },
                      //   ),
                      // );
                    },
                  ),
                ),
                const SizedBox(height: 30),

                //Kirim ulang OTP
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => VerifikasiOTP(),
                      ),
                    );
                  },
                  child: Text.rich(
                    TextSpan(
                      style: poppinsTextStyle.copyWith(
                          fontSize: 12), //apply style to all
                      children: [
                        TextSpan(
                            text: 'Kirim Ulang',
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
