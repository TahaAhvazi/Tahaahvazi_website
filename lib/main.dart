import 'package:clay_containers/widgets/clay_container.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:touch_mouse_behavior/touch_mouse_behavior.dart';
import 'package:url_launcher/link.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(14, 12, 56, 1),
      body: TouchMouseScrollable(
        child: SizedBox(
          height: height * 4,
          child: ListView(
            children: [
              Container(
                height: height,
                width: width,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/back.gif"),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: GlassmorphicContainer(
                        width: width,
                        height: height,
                        borderRadius: 10,
                        blur: 5,
                        alignment: Alignment.bottomCenter,
                        border: 0,
                        linearGradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              const Color(0xFFffffff).withOpacity(0.1),
                              const Color(0xFFFFFFFF).withOpacity(0.05),
                            ],
                            stops: const [
                              0.1,
                              1,
                            ]),
                        borderGradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            const Color(0xFFffffff).withOpacity(0.5),
                            const Color((0xFFFFFFFF)).withOpacity(0.5),
                          ],
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              left: width * 0 / 100,
                              top: height * 0 / 100,
                              child: GlassmorphicContainer(
                                width: width,
                                height: height * 6 / 100,
                                borderRadius: 0.0,
                                linearGradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: [
                                      const Color(0xFFffffff).withOpacity(0.1),
                                      const Color(0xFFFFFFFF).withOpacity(0.05),
                                    ],
                                    stops: const [
                                      0.1,
                                      1,
                                    ]),
                                border: 0,
                                blur: 2,
                                borderGradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [
                                    const Color(0xFFffffff).withOpacity(0.5),
                                    const Color((0xFFFFFFFF)).withOpacity(0.5),
                                  ],
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 18.0),
                                      child: Image.asset(
                                        'assets/logoweb.png',
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(15.0),
                                          child: Container(
                                            child: const Text(
                                              'HOME',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontFamily: 'squids',
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(15.0),
                                          child: Container(
                                            child: const Text(
                                              'ABOUT ME!',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontFamily: 'squids',
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(15.0),
                                          child: Container(
                                            child: const Text(
                                              'RESUME',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontFamily: 'squids',
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(15.0),
                                          child: Container(
                                            child: GestureDetector(
                                              onTap: () => Get.defaultDialog(
                                                backgroundColor:
                                                    Colors.blueAccent,
                                                title: 'phone: 09012431951',
                                                middleText:
                                                    'Email: tahax.dev@gmail.com',
                                                middleTextStyle:
                                                    const TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 30,
                                                  fontFamily: 'gong',
                                                  fontWeight: FontWeight.w700,
                                                ),
                                                titleStyle: const TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 30,
                                                  fontFamily: 'gong',
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                              child: const Text(
                                                'CONTACT ME',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 18,
                                                  fontFamily: 'squids',
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              left: width * 10 / 100,
                              top: height * 28 / 100,
                              child: const Text(
                                'Hello, I am',
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 50,
                                  fontFamily: 'gong',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Positioned(
                              left: width * 10 / 100,
                              top: height * 27 / 100,
                              child: const Text(
                                'Taha ahvazi',
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 150,
                                  fontFamily: 'squids',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            Positioned(
                              left: width * 10 / 100,
                              top: height * 47 / 100,
                              child: const Text(
                                'a Full-Stack mobile developer and a proffetional swimmer\n I started programmering at the age of 15 and im still learning !\n Computer Science student and 19 years old',
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 45,
                                  fontFamily: 'gong',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            Positioned(
                              left: width * 10 / 100,
                              top: height * 66 / 100,
                              child: GlassmorphicContainer(
                                blur: 30,
                                border: 2,
                                borderGradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [
                                    const Color(0xFFffffff).withOpacity(0.5),
                                    const Color((0xFFFFFFFF)).withOpacity(0.5),
                                  ],
                                ),
                                linearGradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: [
                                      const Color(0xFFffffff).withOpacity(0.1),
                                      const Color(0xFFFFFFFF).withOpacity(0.05),
                                    ],
                                    stops: const [
                                      0.1,
                                      1,
                                    ]),
                                height: height * 12 / 100,
                                width: width * 30 / 100,
                                borderRadius: 40,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        children: [
                                          Image.asset(
                                            'assets/website.png',
                                            height: height * 4 / 100,
                                            width: height * 4 / 100,
                                          ),
                                          const Text(
                                            "website",
                                            style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 255, 255, 255),
                                              fontSize: 40,
                                              fontFamily: 'gong',
                                              fontWeight: FontWeight.w700,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        children: [
                                          Link(
                                            uri: Uri.parse(
                                                'https://flutter.dev'),
                                            builder: (context, followLink) =>
                                                Image.asset(
                                              'assets/github.png',
                                              height: height * 4 / 100,
                                              width: height * 4 / 100,
                                            ),
                                          ),
                                          const Text(
                                            "GitHub",
                                            style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 255, 255, 255),
                                              fontSize: 40,
                                              fontFamily: 'gong',
                                              fontWeight: FontWeight.w700,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        children: [
                                          Image.asset(
                                            'assets/telegram.png',
                                            height: height * 4 / 100,
                                            width: height * 4 / 100,
                                          ),
                                          const Text(
                                            "Telegram",
                                            style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 255, 255, 255),
                                              fontSize: 40,
                                              fontFamily: 'gong',
                                              fontWeight: FontWeight.w700,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        children: [
                                          Link(
                                            uri: Uri.parse(
                                                'https://flutter.dev'),
                                            builder: (context, followLink) =>
                                                Image.asset(
                                              'assets/instagram.png',
                                              height: height * 4 / 100,
                                              width: height * 4 / 100,
                                            ),
                                          ),
                                          const Text(
                                            "Instagram",
                                            style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 255, 255, 255),
                                              fontSize: 40,
                                              fontFamily: 'gong',
                                              fontWeight: FontWeight.w700,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              top: height * 8 / 100,
                              right: width * 10 / 100,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  GlassmorphicContainer(
                                    width: width * 20 / 100,
                                    height: height * 27 / 100,
                                    borderRadius: 20,
                                    blur: 20,
                                    alignment: Alignment.bottomCenter,
                                    border: 2,
                                    linearGradient: LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                        colors: [
                                          const Color(0xFFffffff)
                                              .withOpacity(0.1),
                                          const Color(0xFFFFFFFF)
                                              .withOpacity(0.05),
                                        ],
                                        stops: [
                                          0.1,
                                          1,
                                        ]),
                                    borderGradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: [
                                        const Color(0xFFffffff)
                                            .withOpacity(0.5),
                                        const Color((0xFFFFFFFF))
                                            .withOpacity(0.5),
                                      ],
                                    ),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(2.0),
                                          child: Image.asset(
                                            'assets/daneshjooyar.png',
                                            height: height * 12 / 100,
                                            width: height * 12 / 100,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        const Text(
                                          "Programmering Instructure",
                                          style: const TextStyle(
                                            color: const Color.fromARGB(
                                                255, 255, 255, 255),
                                            fontSize: 40,
                                            fontFamily: 'gong',
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        const Center(
                                          child: const Text(
                                            textAlign: TextAlign.left,
                                            "In this institution, I taught 3 programming courses\n Flutter and Flutter Hardware and DRF\n also I have more than 800 students",
                                            style: TextStyle(
                                              color: const Color.fromARGB(
                                                  255, 255, 255, 255),
                                              fontSize: 25,
                                              fontFamily: 'gong',
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(height * 2 / 100),
                                    child: GlassmorphicContainer(
                                      width: width * 20 / 100,
                                      height: height * 27 / 100,
                                      borderRadius: 20,
                                      blur: 20,
                                      alignment: Alignment.bottomCenter,
                                      border: 2,
                                      linearGradient: LinearGradient(
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight,
                                          colors: [
                                            const Color(0xFFffffff)
                                                .withOpacity(0.1),
                                            const Color(0xFFFFFFFF)
                                                .withOpacity(0.05),
                                          ],
                                          stops: [
                                            0.1,
                                            1,
                                          ]),
                                      borderGradient: LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                        colors: [
                                          const Color(0xFFffffff)
                                              .withOpacity(0.5),
                                          const Color((0xFFFFFFFF))
                                              .withOpacity(0.5),
                                        ],
                                      ),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(2.0),
                                            child: Image.asset(
                                              'assets/Faradars.png',
                                              height: height * 12 / 100,
                                              width: height * 12 / 100,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          const Text(
                                            "Programmering Instructure",
                                            style: const TextStyle(
                                              color: const Color.fromARGB(
                                                  255, 255, 255, 255),
                                              fontSize: 40,
                                              fontFamily: 'gong',
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                          const Center(
                                            child: const Text(
                                              textAlign: TextAlign.left,
                                              "In this institution, I taught 1 programming courses\n Django channels also I have more than 100 students",
                                              style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 255, 255, 255),
                                                fontSize: 25,
                                                fontFamily: 'gong',
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(top: height * 2 / 100),
                                    child: GlassmorphicContainer(
                                      width: width * 20 / 100,
                                      height: height * 27 / 100,
                                      borderRadius: 20,
                                      blur: 20,
                                      alignment: Alignment.bottomCenter,
                                      border: 2,
                                      linearGradient: LinearGradient(
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight,
                                          colors: [
                                            const Color(0xFFffffff)
                                                .withOpacity(0.1),
                                            const Color(0xFFFFFFFF)
                                                .withOpacity(0.05),
                                          ],
                                          stops: [
                                            0.1,
                                            1,
                                          ]),
                                      borderGradient: LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                        colors: [
                                          const Color(0xFFffffff)
                                              .withOpacity(0.5),
                                          const Color((0xFFFFFFFF))
                                              .withOpacity(0.5),
                                        ],
                                      ),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 10.0),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                              child: Image.asset(
                                                'assets/logo.png',
                                                height: height * 10 / 100,
                                                width: height * 10 / 100,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                          const Text(
                                            "Founder of KidTV",
                                            style: TextStyle(
                                              color: const Color.fromARGB(
                                                  255, 255, 255, 255),
                                              fontSize: 40,
                                              fontFamily: 'gong',
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                          const Center(
                                            child: const Text(
                                              textAlign: TextAlign.left,
                                              "A platform for showing free children's series\n and animations with more than 100 items",
                                              style: const TextStyle(
                                                color: Color.fromARGB(
                                                    255, 255, 255, 255),
                                                fontSize: 25,
                                                fontFamily: 'gong',
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
