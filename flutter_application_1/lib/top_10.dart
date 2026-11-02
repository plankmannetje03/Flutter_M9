import 'package:flutter/material.dart';

class Top10Widget extends StatelessWidget {
  const Top10Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: const [
        Padding(
          padding: EdgeInsets.fromLTRB(8, 8, 8, 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Mijn Top 10 Ajax-voetballers aller tijden',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text('Mijn lijst met de beste Ajax-spelers.'),
            ],
          ),
        ),
        AjaxPlayerTile(
          number: 1,
          name: 'Johan Cruijff',
          description: 'Een beroemde Ajax-speler en een van de beste ooit.',
        ),
        AjaxPlayerTile(
          number: 2,
          name: 'Piet Keizer',
          description: 'Een goede linksbuiten die lang bij Ajax speelde.',
        ),
        AjaxPlayerTile(
          number: 3,
          name: 'Sjaak Swart',
          description: 'Hij speelde bijna zijn hele carrière bij Ajax.',
        ),
        AjaxPlayerTile(
          number: 4,
          name: 'Marco van Basten',
          description: 'Een topspits die bekend werd bij Ajax.',
        ),
        AjaxPlayerTile(
          number: 5,
          name: 'Frank Rijkaard',
          description: 'Een sterke speler die op veel plekken kon spelen.',
        ),
        AjaxPlayerTile(
          number: 6,
          name: 'Dennis Bergkamp',
          description: 'Een slimme aanvaller met veel techniek.',
        ),
        AjaxPlayerTile(
          number: 7,
          name: 'Ruud Krol',
          description: 'Een sterke verdediger uit het Ajax van de jaren 70.',
        ),
        AjaxPlayerTile(
          number: 8,
          name: 'Jari Litmanen',
          description: 'Een Finse voetballer die veel fans leuk vonden.',
        ),
        AjaxPlayerTile(
          number: 9,
          name: 'Frank de Boer',
          description: 'Een sterke verdediger die vaak aanvoerder was.',
        ),
        AjaxPlayerTile(
          number: 10,
          name: 'Luis Suárez',
          description: 'Een aanvaller die veel doelpunten maakte voor Ajax.',
        ),
      ],
    );
  }
}

class AjaxPlayerTile extends StatelessWidget {
  const AjaxPlayerTile({
    super.key,
    required this.number,
    required this.name,
    required this.description,
  });

  final int number;
  final String name;
  final String description;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Card(
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: colorScheme.primary,
          foregroundColor: colorScheme.onPrimary,
          child: Text('$number'),
        ),
        title: Text(name),
        subtitle: Text(description),
      ),
    );
  }
}
