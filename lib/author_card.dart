import 'package:flutter/material.dart';
import 'fooderlich_theme.dart';
import 'circle_image.dart';

class AuthorCard extends StatelessWidget {
  // 1
  final String authorName;
  final String title;
  final ImageProvider? imageProvider;

  const AuthorCard({
    Key? key,
    required this.authorName,
    required this.title,
    this.imageProvider,
  }) : super(key: key);

  // 2
  @override
  Widget build(BuildContext context) {
    // TODO: Replace return Container(...);
    /*return Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [],
      ),
    );*/
    return Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        // TODO 3: add alignment
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // 1.	A linha(Row) interna agrupa o CircleImage e as informações de Text do autor.
          Row(
            children: [
              CircleImage(
                imageProvider: imageProvider,
                imageRadius: 28,
              ),
              // 2.	Aplica 8 pixels de preenchimento entre a imagem e o texto.
              const SizedBox(width: 8),
              // 3.	Estabelece o nome do autor e o cargo verticalmente usando uma coluna(Column).
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    authorName,
                    style: FooderlichTheme.lightTextTheme.headline2,
                  ),
                  Text(
                    title,
                    style: FooderlichTheme.lightTextTheme.headline3,
                  )
                ],
              ),
            ],
          ),
          // TODO 2: add IconButton
          IconButton(
              // 4.	Defina o ícone, tamanho e cor do ícone.
              icon: const Icon(Icons.favorite_border),
              iconSize: 30,
              color: Colors.grey[400],
              // 5.	Quando o usuário pressiona o ícone, exibe uma barra de ferramentas.
              onPressed: () {
                const snackBar = SnackBar(content: Text('Adicionado aos Favoritos'));
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              }),
        ],
      ),
    );
  }
}
