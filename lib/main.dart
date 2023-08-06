import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController circleController1 = TextEditingController();
  final TextEditingController circleController2 = TextEditingController();
  final TextEditingController circleController3 = TextEditingController();
  final TextEditingController circleController4 = TextEditingController();
  final TextEditingController circleController5 = TextEditingController();
  final TextEditingController circleController6 = TextEditingController();
  final TextEditingController squareController1 = TextEditingController();
  final TextEditingController squareController2 = TextEditingController();
  final TextEditingController squareController3 = TextEditingController();
  final TextEditingController squareController4 = TextEditingController();
  final TextEditingController squareController5 = TextEditingController();
  final TextEditingController squareController6 = TextEditingController();
  final TextEditingController squareController7 = TextEditingController();
  final TextEditingController squareController8 = TextEditingController();
  final TextEditingController squareController9 = TextEditingController();
  final TextEditingController squareController10 = TextEditingController();
  final TextEditingController squareController11 = TextEditingController();
  final TextEditingController squareController12 = TextEditingController();
  final TextEditingController squareController13 = TextEditingController();
  final TextEditingController squareController14 = TextEditingController();
  final TextEditingController squareController15 = TextEditingController();
  final TextEditingController squareController16 = TextEditingController();

bool _dataLoaded = false; 
  @override
  void initState() {
    super.initState();
    _loadSavedData();
  }

  void _loadSavedData() async {
    final prefs = await SharedPreferences.getInstance();

    circleController1.text = prefs.getString('circleController1') ?? '';
    circleController2.text = prefs.getString('circleController2') ?? '';
    circleController3.text = prefs.getString('circleController3') ?? '';
    circleController4.text = prefs.getString('circleController4') ?? '';
    circleController5.text = prefs.getString('circleController5') ?? '';
    circleController6.text = prefs.getString('circleController6') ?? '';

    squareController1.text = prefs.getString('squareController1') ?? '';
    squareController2.text = prefs.getString('squareController2') ?? '';
    squareController3.text = prefs.getString('squareController3') ?? '';
    squareController4.text = prefs.getString('squareController4') ?? '';
    squareController5.text = prefs.getString('squareController5') ?? '';
    squareController6.text = prefs.getString('squareController6') ?? '';
    squareController7.text = prefs.getString('squareController7') ?? '';
    squareController8.text = prefs.getString('squareController8') ?? '';
    squareController9.text = prefs.getString('squareController9') ?? '';
    squareController10.text = prefs.getString('squareController10') ?? '';
    squareController11.text = prefs.getString('squareController11') ?? '';
    squareController12.text = prefs.getString('squareController12') ?? '';
    squareController13.text = prefs.getString('squareController13') ?? '';
    squareController14.text = prefs.getString('squareController14') ?? '';
    squareController15.text = prefs.getString('squareController15') ?? '';
    squareController16.text = prefs.getString('squareController16') ?? '';
    setState(() {
      _dataLoaded = true; // Defina a flag como true após carregar os dados
    });
  }

  void _saveData(String key, String value) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(key, value);
  }

  @override
  Widget build(BuildContext context) {
     if (!_dataLoaded) {
      return Center(
        child: CircularProgressIndicator(), // Mostra um indicador de carregamento enquanto os dados são carregados
      );
    }
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleWithText(
                  name: 'Potenciômetro 1',
                  color: Colors.black,
                  onTap: () => _showEditDialog(context, circleController1),
                  textEditingController: circleController1,
                ),
                CircleWithText(
                  name: 'Potenciômetro 2',
                  color: Colors.black,
                  onTap: () => _showEditDialog(context, circleController2),
                  textEditingController: circleController2,
                ),
                CircleWithText(
                  name: 'Potenciômetro 3',
                  color: Colors.black,
                  onTap: () => _showEditDialog(context, circleController3),
                  textEditingController: circleController3,
                ),
              ],
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleWithText(
                  name: 'Potenciômetro 4',
                  color: Colors.black,
                  onTap: () => _showEditDialog(context, circleController4),
                  textEditingController: circleController4,
                ),
                CircleWithText(
                  name: 'Potenciômetro 5',
                  color: Colors.black,
                  onTap: () => _showEditDialog(context, circleController5),
                  textEditingController: circleController5,
                ),
                CircleWithText(
                  name: 'Potenciômetro 6',
                  color: Colors.black,
                  onTap: () => _showEditDialog(context, circleController6),
                  textEditingController: circleController6,
                ),
              ],
            ),
            SizedBox(height: 60),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SquareWithText(
                  name: 'Quadrado 1',
                  color: Colors.yellow,
                  onTap: () => _showEditDialog(context, squareController1),
                  textEditingController: squareController1,
                ),
                SquareWithText(
                  name: 'Quadrado 2',
                  color: Colors.yellow,
                  onTap: () => _showEditDialog(context, squareController2),
                  textEditingController: squareController2,
                ),
                SquareWithText(
                  name: 'Quadrado 3',
                  color: Colors.yellow,
                  onTap: () => _showEditDialog(context, squareController3),
                  textEditingController: squareController3,
                ),
                SquareWithText(
                  name: 'Quadrado 4',
                  color: Colors.yellow,
                  onTap: () => _showEditDialog(context, squareController4),
                  textEditingController: squareController4,
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SquareWithText(
                  name: 'Quadrado 5',
                  color: Colors.yellow,
                  onTap: () => _showEditDialog(context, squareController5),
                  textEditingController: squareController5,
                ),
                SquareWithText(
                  name: 'Quadrado 6',
                  color: Colors.yellow,
                  onTap: () => _showEditDialog(context, squareController6),
                  textEditingController: squareController6,
                ),
                SquareWithText(
                  name: 'Quadrado 7',
                  color: Colors.yellow,
                  onTap: () => _showEditDialog(context, squareController7),
                  textEditingController: squareController7,
                ),
                SquareWithText(
                  name: 'Quadrado 8',
                  color: Colors.yellow,
                  onTap: () => _showEditDialog(context, squareController8),
                  textEditingController: squareController8,
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SquareWithText(
                  name: 'Quadrado 9',
                  color: Colors.yellow,
                  onTap: () => _showEditDialog(context, squareController9),
                  textEditingController: squareController9,
                ),
                SquareWithText(
                  name: 'Quadrado 10',
                  color: Colors.yellow,
                  onTap: () => _showEditDialog(context, squareController10),
                  textEditingController: squareController10,
                ),
                SquareWithText(
                  name: 'Quadrado 11',
                  color: Colors.yellow,
                  onTap: () => _showEditDialog(context, squareController11),
                  textEditingController: squareController11,
                ),
                SquareWithText(
                  name: 'Quadrado 12',
                  color: Colors.yellow,
                  onTap: () => _showEditDialog(context, squareController12),
                  textEditingController: squareController12,
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SquareWithText(
                  name: 'Quadrado 13',
                  color: Colors.red,
                  onTap: () => _showEditDialog(context, squareController13),
                  textEditingController: squareController13,
                ),
                SquareWithText(
                  name: 'Quadrado 14',
                  color: Colors.red,
                  onTap: () => _showEditDialog(context, squareController14),
                  textEditingController: squareController14,
                ),
                SquareWithText(
                  name: 'Quadrado 15',
                  color: Colors.red,
                  onTap: () => _showEditDialog(context, squareController15),
                  textEditingController: squareController15,
                ),
                SquareWithText(
                  name: 'Quadrado 16',
                  color: Colors.red,
                  onTap: () => _showEditDialog(context, squareController16),
                  textEditingController: squareController16,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _showEditDialog(BuildContext context, TextEditingController controller) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Editar Texto'),
          content: TextField(
            controller: controller,
            decoration: InputDecoration(hintText: 'Digite o texto'),
          ),
          actions: [
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: Text('Cancelar'),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  
                });
                Navigator.pop(context);
              },
              child: Text('Salvar'),
            ),
          ],
        );
      },
    );
  }
}

class CircleWithText extends StatelessWidget {
  final String name;
  final Color color;
  final VoidCallback onTap;
  final TextEditingController textEditingController;

  CircleWithText({
    required this.name,
    required this.color,
    required this.onTap,
    required this.textEditingController,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 140,
        height: 140,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 7,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Center(
          child: Text(
            textEditingController.text.isNotEmpty
                ? textEditingController.text
                : name,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}

class SquareWithText extends StatelessWidget {
  final String name;
  final Color color;
  final VoidCallback onTap;
  final TextEditingController textEditingController;

  SquareWithText({
    required this.name,
    required this.color,
    required this.onTap,
    required this.textEditingController,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 140,
        height: 140,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 7,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Center(
          child: Text(
            textEditingController.text.isNotEmpty
                ? textEditingController.text
                : name,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
