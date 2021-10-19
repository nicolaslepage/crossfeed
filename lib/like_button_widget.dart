import 'package:flutter/material.dart';

// You can use a relative import, i.e. `import 'category.dart';` or
// a package import, as shown below.
// More details at http://dart-lang.github.io/linter/lints/avoid_relative_lib_imports.html

class like_button extends StatefulWidget {
  const like_button({Key? key}) : super(key: key);

  @override
  State<like_button> createState() => _like_buttonState();
}

class _like_buttonState extends State<like_button> {

  int tapped = 0;

  ImageIcon _selected_icon = ImageIcon( AssetImage('assets/fist_outlined.png'),);

  Color _selected_color = Color(0xFF2D1A45);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: IconButton(
        iconSize: 30,
        icon: _selected_icon,
        color: _selected_color,
        tooltip: 'Add to favorite',
        onPressed: () {
          setState(() {
            if( tapped == 0 ){
              _selected_icon = ImageIcon( AssetImage('assets/fist.png'),);
              _selected_color = Color(0xFFEE293A);
            }else{
              _selected_icon = ImageIcon( AssetImage('assets/fist_outlined.png'),);
            _selected_color = Color(0xFF2D1A45);
            }
            tapped = (tapped + 1) % 2;
          });
        },
      ),
    );
  }
}