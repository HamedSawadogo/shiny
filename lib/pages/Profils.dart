import 'package:flutter/material.dart';
import 'package:skiny/model/Developper.dart';
import 'package:skiny/utils/const.dart';

class DevsProfils extends StatelessWidget {
  const DevsProfils({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
      ),
      body: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 2,
        children: [
          for (Developper dev in Developper.developpers()) ProfilCard(dev: dev)
        ],
      ),
    );
  }
}

class ProfilCard extends StatelessWidget {
  const ProfilCard({super.key, required this.dev});
  final Developper dev;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(children: [
        Text(dev.speciality),
        Image.network(dev.imageUrl),
        Text(dev.name)
      ]),
    );
  }
}
