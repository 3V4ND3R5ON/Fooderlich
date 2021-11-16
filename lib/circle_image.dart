import 'package:flutter/material.dart';

class CircleImage extends StatelessWidget {
  // 1.	CircleImage tem dois parâmetros: imageProvider e imageRadius.
  const CircleImage({
    Key? key,
    this.imageProvider,
    this.imageRadius = 20,
  }) : super(key: key);

  // 2.	As declarações das propriedades imageRadius e imageProvider.
  final double imageRadius;
  final ImageProvider? imageProvider;

  @override
  Widget build(BuildContext context) {
    // 3.	CircleAvatar é um widget fornecido pela biblioteca de materiais.
    // É definido como um círculo branco com um raio de imageRadius.
    return CircleAvatar(
      backgroundColor: Colors.white,
      radius: imageRadius,
      // 4.	Dentro do círculo externo está outro CircleAvatar,
      // que é um círculo menor que inclui a imagem do perfil do usuário.
      // Tornar o círculo interno menor proporciona o efeito de borda branca.
      child: CircleAvatar(
        radius: imageRadius - 5,
        backgroundImage: imageProvider,
      ),
    );
  }
}
