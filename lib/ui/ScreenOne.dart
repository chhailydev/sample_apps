import 'package:flutter/material.dart';
import 'package:sample_app/ui/HomeScreen.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Today is 31'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text("Button ElevatedButton"),
          ),
          TextButton(
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
              overlayColor: MaterialStateProperty.resolveWith<Color?>(
                  (Set<MaterialState> states) {
                if (states.contains(MaterialState.hovered)) {
                  return Colors.blue.withOpacity(0.04);
                }
                if (states.contains(MaterialState.focused) ||
                    states.contains(MaterialState.pressed)) {
                  return Colors.blue.withOpacity(0.12);
                }
                return null;
              }),
            ),
            onPressed: () {},
            child: const Text(
              "TextButton",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          TextButton(
            style: ButtonStyle(overlayColor:
                MaterialStateProperty.resolveWith<Color?>(
                    (Set<MaterialState> states) {
              if (states.contains(MaterialState.focused)) {
                return Colors.red;
              }
              return null;
            })),
            onPressed: () {},
            child: const Text(
              "Text Button",
              style: TextStyle(fontSize: 20),
            ),
          ),
          TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.blue,
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                shadowColor: Colors.black12,
              ),
              onPressed: () {},
              child: const Text(
                "Text Button",
                style: TextStyle(fontSize: 21, color: Colors.white),
              )),
          TextButton(
            style: TextButton.styleFrom(
              foregroundColor: Colors.blue,
            ),
            onPressed: () {},
            child: const Text("Text Button"),
          ),
          TextButton(
            style: flateButtonStyle,
            onPressed: () {},
            child: const Text("Custom Button"),
          ),
          ElevatedButton(
            style: CustomEButtonStyle,
            onPressed: () {
              print("hello world");
            },
            child: const Text(
              "E Button",
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          ),
          OutlinedButton(
            onPressed: () {
              print("OUtline Button");
            },
            child: const Text(
              "Outline Button",
              style: TextStyle(color: Colors.blue),
            ),
          ),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                  (Set<MaterialState> states) {
                if (states.contains(MaterialState.disabled)) {
                  return Colors.red;
                }
                return null;
              }),
              foregroundColor: MaterialStateProperty.resolveWith<Color?>(
                  (Set<MaterialState> states) {
                if (states.contains(MaterialState.disabled)) {
                  return Colors.blue;
                }
                return null;
              }),
            ),
            onPressed: () {
              print("Elvated button");
            },
            child: const Text(
              ("Elvated Button"),
            ),
          ),
          OutlinedButton(
            style: ButtonStyle(
              shape: MaterialStateProperty.all<OutlinedBorder>(StadiumBorder()),
              side: MaterialStateProperty.resolveWith<BorderSide>(
                  (Set<MaterialState> states) {
                final Color color = states.contains(MaterialState.pressed)
                    ? Colors.blue
                    : Colors.red;
                return BorderSide(color: color, width: 2);
              }),
            ),
            onPressed: () {},
            child: const Text("Outline Button Custome"),
          )
        ],
      )),
    );
  }
}

final ButtonStyle flateButtonStyle = TextButton.styleFrom(
  // onPrimary: Colors.black87,
  // primary: Colors.grey[300],
  minimumSize: const Size(88, 36),
  padding: const EdgeInsets.symmetric(horizontal: 16),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(2)),
  ),
);

final ButtonStyle CustomEButtonStyle = ElevatedButton.styleFrom(
  backgroundColor: Colors.blue,
  minimumSize: const Size(88, 36),
  padding: const EdgeInsets.symmetric(horizontal: 16),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(5),
    ),
  ),
);

// Outline Button
final ButtonStyle outlineButtonStyle = OutlinedButton.styleFrom(
  backgroundColor: Colors.black87,
  minimumSize: const Size(88, 36),
  padding: const EdgeInsets.symmetric(horizontal: 16),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(3)),
  ),
).copyWith(
  side: MaterialStateProperty.resolveWith<BorderSide?>(
    (Set<MaterialState> states) {
      if (states.contains(MaterialState.pressed)) {
        return const BorderSide(
          color: Colors.blue,
          width: 1,
        );
      }
      return null;
    },
  ),
);
