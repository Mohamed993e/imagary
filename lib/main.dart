import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

bool passwordVisible = false;

void main() {
  runApp(const MainApp());
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
  ));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          title: const Text(
              style: TextStyle(
                fontWeight: FontWeight.w800,
              ),
              'FAT NOTHING'),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.settings_outlined),
              onPressed: () {},
            ),
          ],
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_outlined),
            tooltip: 'go back',
            onPressed: () {},
          ),
        ),
        body: Stack(
          children: [
            SafeArea(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 40),
                    const Center(
                      child: CircleAvatar(
                        radius: 70,
                        backgroundImage: AssetImage('Images/pfp.jpg'),
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Center(
                      child: Text(
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w800,
                          ),
                          "GFXAgency"),
                    ),
                    const Center(
                      child: Text(
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w800,
                            color: Color.fromARGB(123, 0, 0, 0),
                          ),
                          "UI UX Design"),
                    ),
                    const SizedBox(height: 60),
                    const Text(
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                      ),
                      'Your Email',
                    ),
                    //  THE EMAILLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL EMAIL
                    TextField(
                      onChanged: (text) {},
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.mail_outline_outlined,
                            color: Color.fromARGB(123, 0, 0, 0)),
                        hintText: 'xxx@gmail.com',
                        contentPadding: const EdgeInsets.all(20.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        hintStyle: const TextStyle(
                          color: Color.fromARGB(123, 0, 0, 0),
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                      ),
                      // THE   PHONOEEEEEEEEEEEEEEEEEE NUMBEEEEEEEEEEEEEEEEEEEEEEEERRRRRRRRRRRR  PHONE NUMBER
                      'Phone Number',
                    ),
                    TextField(
                      onChanged: (text) {},
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.phone_outlined,
                            color: Color.fromARGB(123, 0, 0, 0)),
                        hintText: '+93123135',
                        contentPadding: const EdgeInsets.all(20.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        hintStyle: const TextStyle(
                          color: Color.fromARGB(123, 0, 0, 0),
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                      ),
                      // THE WEBSITEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE THE WEBSITE
                      'Website',
                    ),
                    TextField(
                      onChanged: (text) {
                        print('Input text: $text');
                      },
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.public_outlined,
                            color: Color.fromARGB(123, 0, 0, 0)),
                        hintText: 'www.gfx.com',
                        contentPadding: const EdgeInsets.all(20.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        hintStyle: const TextStyle(
                          color: Color.fromARGB(123, 0, 0, 0),
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                      ),
                      // THE PASSSSSSSSSSSSSSSSSSSSSSWORD  THE PASSWORD THE PASWORD
                      'Password',
                    ),
                    TextField(
                      obscureText: !passwordVisible,
                      onChanged: (text) {},
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.lock_outline,
                            color: Color.fromARGB(123, 0, 0, 0)),
                        hintText: 'xxx@gmail.com',
                        suffixIcon: IconButton(
                          onPressed: () {
                            //Toggle the state of passwordVisible variable
                            // setState(() {
                            //   passwordVisible = !passwordVisible;
                            // });
                          },
                          icon: Icon(
                            passwordVisible
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ),
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 20.0, horizontal: 60.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        hintStyle: const TextStyle(
                          color: Color.fromARGB(123, 0, 0, 0),
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),

                    SizedBox(
                      height: 60,
                      child: TextButton(
                        style: TextButton.styleFrom(
                            shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                              side: BorderSide(
                                color: Color.fromARGB(
                                  255,
                                  255,
                                  165,
                                  0,
                                ),
                                width: 2,
                              ),
                            ),
                            minimumSize: const Size(double.infinity, 48)),
                        onPressed: () {},
                        child: const Text(
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 20,
                              color: Color.fromARGB(
                                255,
                                255,
                                165,
                                0,
                              ),
                            ),
                            'Log out'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              right: 120,
              top: 140,
              child: FloatingActionButton(
                onPressed: () {},
                mini: true,
                backgroundColor: const Color.fromARGB(
                  255,
                  255,
                  165,
                  0,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
                child: const Icon(Icons.edit),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
