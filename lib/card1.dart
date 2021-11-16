import 'package:flutter/material.dart';
import 'fooderlich_theme.dart';

class Card1 extends StatelessWidget {
  const Card1({Key? key}) : super(key: key);
  // Define variáveis de string para exibir no cartão.
  // Estes são apenas dados de amostra para ajudar a construir o cartão.
  final String category = 'Escolha dos editores';
  final String title = 'A Arte da Massa';
  final String description = 'Aprenda a fazer o pão perfeito.';
  final String chef = 'Ray Wenderlich';

  // Cada widget sem estado vem com um método build() que você substitui.
  @override
  Widget build(BuildContext context) {
    // Começa com um recipiente colocado no centro.
    return Center(
      // TODO: Card1 Decorate Container
      ///child: Container(),
      child: Container(
        // TODO: Add a stack of text
        child: Stack(
          children: [
            // 8.	A categoria, Escolha do Editor, permanece onde está.
            // Lembre-se de que o Container já aplica um preenchimento de 16 em todos os lados.
            Text(
              category,
              style: FooderlichTheme.darkTextTheme.bodyText1,
            ),
            // 9.	Você coloca o título 20 pixels do topo.
            Positioned(
              child: Text(
                title,
                style: FooderlichTheme.darkTextTheme.headline2,
              ),
              top: 20,
            ),
            // 10.	Aqui, você posiciona a descrição 30 pixels da parte inferior e 0 à direita.
            Positioned(
              child: Text(
                description,
                style: FooderlichTheme.darkTextTheme.bodyText1,
              ),
              bottom: 30,
              right: 0,
            ),
            // 11.	Finalmente, você posiciona o nome do chef em 10 pixels no canto inferior direito.
            Positioned(
              child: Text(
                chef,
                style: FooderlichTheme.darkTextTheme.bodyText1,
              ),
              bottom: 10,
              right: 0,
            )
          ],
        ),

        // 1
        padding: const EdgeInsets.all(16),
        // 2
        constraints: const BoxConstraints.expand(
          width: 350,
          height: 450,
        ),
        // 3
        decoration: const BoxDecoration(
          // 4
          image: DecorationImage(
            // 5
            image: AssetImage('assets/mag1.png'),
            // 6
            fit: BoxFit.cover,
          ),
          // 7
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
      ),
    );
  }
}
