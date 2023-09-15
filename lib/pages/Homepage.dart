import "package:flutter/material.dart";
import "package:flutter_svg/svg.dart";
import "../utils/const.dart";
import "QuizPage.dart";

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: Image.asset(
            "assets/dark-logo.png",
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                  height: 300,
                  child: SvgPicture.asset("assets/home-illustration.svg")),
              const SizedBox(
                height: 60,
              ),
              const Text(
                "Retrouvez vos bésoins ,on s'occupe du reste avec les meilleurs tallents",
                textAlign: TextAlign.center,
                style: title,
              ),
              const SizedBox(
                height: 40,
              ),
              SizedBox(
                width: 200,
                height: 40,
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(appBarColor),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)))),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const QuizPage(),
                      ));
                    },
                    child: const Text(
                      "Faire le test",
                      style: simlpleText,
                    )),
              )
            ],
          ),
        ));
  }
}
