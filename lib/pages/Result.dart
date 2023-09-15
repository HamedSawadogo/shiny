import 'package:flutter/material.dart';
import 'package:skiny/pages/Profils.dart';
import 'package:skiny/utils/const.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(children: [
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Les compétences d'ont vous avez besoin:",
            style: title,
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "UX disigner ,Developper Front End ,Developper BackEnd",
            style: simlpleText,
            textAlign: TextAlign.center,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => DevsProfils(),
                ));
              },
              child: const Text("Decouvrez les profils"))
        ]),
      ),
    );
  }
}
