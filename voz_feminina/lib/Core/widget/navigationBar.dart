// ignore: must_be_immutable
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:voz_feminina/Core/colors.dart';
import 'package:voz_feminina/routes/routes.dart';

// ignore: must_be_immutable
class NavigationBarVozFemina extends StatefulWidget {
  late BuildContext context;
  late int selectIndex;
  NavigationBarVozFemina( 
      {super.key, required this.context, required this.selectIndex});

  @override
  State<StatefulWidget> createState() {
    return NavigationBarState();
  }
}

class NavigationBarState extends State<NavigationBarVozFemina> {
  late int selectedIndex = widget.selectIndex;
  List<IconData> icons = [
    Icons.search,
    Icons.home,
    Icons.person,
  ];

  List<Color> unselectedColors = [
    Colors.grey,
    Colors.grey,
    Colors.grey,
  ];

  List<String> routesOnTop = [
    Routes.pesquisaPage,
    Routes.homePage,
    Routes.perfilPage,
  ];

  @override
  @override
  Widget build(BuildContext context) {
    int selectedIndex = widget.selectIndex;
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: icons.asMap().entries.map((entry) {
          int index = entry.key;
          IconData icon = entry.value;
          bool isSelected = index == selectedIndex;
          String routes = routesOnTop[index];

          // Retornar o SizedBox apenas entre o segundo e o terceiro ícones
          if (index == 2) {
            return Row(
              children: [
                SizedBox(width: 20), // Espaço de 20 pixels entre ícones
                buildIconButton(icon, isSelected, index, routes),
              ],
            );
          }

          // Retornar o IconButton normal para os outros ícones
          return buildIconButton(icon, isSelected, index, routes);
        }).toList(),
      ),
    );
  }

  Widget buildIconButton(
      IconData icon, bool isSelected, int index, String routes) {
    return IconButton(
      iconSize: 30,
      onPressed: () {
        setState(() {
          selectedIndex = index;
        });
        Get.offAllNamed(routes);
      },
      icon: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        decoration: BoxDecoration(
          border: Border.all(
              width: 5, color: isSelected ? GlobalColors().pink : Colors.transparent),
          shape: BoxShape.circle,
          color: isSelected ? GlobalColors().pink : Colors.transparent,
        ),
        child: Icon(
          icon,
          color: isSelected ? Colors.white : unselectedColors[index],
        ),
      ),
    );
  }
}

class AnimatedIconWrapper extends StatelessWidget {
  final IconData icon;
  final Color color;

  const AnimatedIconWrapper({
    Key? key,
    required this.icon,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      curve: Curves.easeInOut,
      child: Icon(
        icon,
        color: color,
      ),
    );
  }
}