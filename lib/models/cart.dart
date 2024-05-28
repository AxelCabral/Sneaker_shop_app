import 'package:flutter/material.dart';

import '../models/shoe.dart';

class Cart extends ChangeNotifier {
  // list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
        name: 'Rayssa Leal',
        price: '899,99',
        imagePath: 'lib/images/snk1.png',
        description:
            'A visão de Rayssa Leal sobre o Dunk Low resume suas contribuições inovadoras para o skate competitivo, bem como seu desejo de ultrapassar limites. A partir de suas cores favoritas e designs de concurso, ele define o cenário com materiais e elementos gráficos pessoais da jornada de Rayssa.'),
    Shoe(
        name: 'Ivory Snake',
        price: '999,99',
        imagePath: 'lib/images/snk2.png',
        description:
            'A lenda vive no Nike Air Force 1 Low , uma versão moderna do ícone que combina estilo clássico e detalhes inspirados na cidade. Detalhes de design elevados, incluindo um design Swoosh arrojado.'),
    Shoe(
        name: 'Metallic Gold',
        price: '1699,99',
        imagePath: 'lib/images/snk3.png',
        description:
            'Equilibrado e sofisticado - o AJ4 "White & Gold" ilumina o seu jogo de calçados. Materiais luxuosos combinam com uma paleta de tons suaves de tons Sail e Light Bone, enquanto toques chamativos de Ouro Metálico adicionam um toque de brilho ao seu visual. Ele remete ao original com detalhes exclusivos, como a marca Jumpman em relevo na língua.'),
    Shoe(
        name: 'DT Red and Phantom',
        price: '999,99',
        imagePath: 'lib/images/snk4.png',
        description:
            'O ícone dos anos 80 retorna com materiais atualizados e um toque clássico de basquete. Couro Dark Team Red brilhante com estampa de jacaré envolve a parte superior em couro Phantom liso para uma versão elevada do original. Sua gola acolchoada e decotada permite que você leve seu jogo para qualquer lugar com conforto. Vista-o para cima ou para baixo; as cores e texturas contrastantes facilitam o estilo.'),
    Shoe(
        name: 'White and Geode Teal',
        price: '999,99',
        imagePath: 'lib/images/snk5.png',
        description:
            'A visão criativa continua a evoluir e influenciar para o Leonard McGurr (conhecido como Futura)—uma das lendas originais do grafite de Nova Iorque. Com seu estilo distinto em foco, seu trabalho evita rótulos ou gêneros apesar de ser conhecido como um dos fundadores mais infames do grafite.'),
  ];

  // list of items in user cart
  List<Shoe> userCart = [
    Shoe(
        name: 'White and Geode Teal',
        price: '999,99',
        imagePath: 'lib/images/snk5.png',
        description:
            'A visão criativa continua a evoluir e influenciar para o Leonard McGurr (conhecido como Futura)—uma das lendas originais do grafite de Nova Iorque. Com seu estilo distinto em foco, seu trabalho evita rótulos ou gêneros apesar de ser conhecido como um dos fundadores mais infames do grafite.'),
  ];

  // get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  // add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // remove item form cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
