import 'package:flutter/material.dart';
import 'fooderlich_theme.dart';
import 'author_card.dart';

class Card2 extends StatelessWidget {
  const Card2({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      // 1.	O widget Center possui um widget filho Container que possui três propriedades,
      // as duas primeiras sendo restrições(constraints) e decoração(decoration).
      child: Container(
        constraints: const BoxConstraints.expand(
          width: 350,
          height: 450,
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/mag2.png'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        // 2
        child: Column(
          children: [
            // TODO 1: add author information
            const AuthorCard(
              authorName: 'Mike Katz',
              title: 'Smoothie Connoisseur',
              imageProvider: AssetImage('assets/katz.jpeg'),
            ),
            // TODO 4: add Positioned text
            // 1.	Com Expanded, você preenche o espaço disponível restante.
            Expanded(
              // 2.	Aplique um widget Stack para posicionar os textos uns sobre os outros.
              child: Stack(
                children: [
                  // 3.	Posicione o primeiro texto 16 pixels da parte inferior e 16 pixels da direita.
                  Positioned(
                    bottom: 16,
                    right: 16,
                    child: Text(
                      'Receita',
                      style: FooderlichTheme.lightTextTheme.headline1,
                    ),
                  ),
                  // 4.	Finalmente, posicione o segundo texto 70 pixels da parte inferior e
                  // 16 pixels da esquerda. Aplique também um widget RotatedBox, que gira o
                  // texto no sentido horário três quartos de volta(quarterTurns).
                  // Isso faz com que pareça vertical.
                  Positioned(
                    bottom: 70,
                    left: 16,
                    child: RotatedBox(
                      quarterTurns: 3,
                      child: Text(
                        'Smoothies',
                        style: FooderlichTheme.lightTextTheme.headline1,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
