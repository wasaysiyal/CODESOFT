import 'package:flutter/material.dart';

void main() {
  runApp(const FlashlightApp());
}

class FlashlightApp extends StatelessWidget {
  const FlashlightApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: FlashlightScreen(),
    );
  }
}

class FlashlightScreen extends StatefulWidget {
  const FlashlightScreen({super.key});

  @override
  _FlashlightScreenState createState() {
    return _FlashlightScreenState();
  }
}

class _FlashlightScreenState extends State<FlashlightScreen> {
  bool _isTorchOn = false;

  void _toggleFlashlight() {
    setState(() {
      _isTorchOn = !_isTorchOn;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text('Flashlight App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.flash_on,
              size: 200,
              color: _isTorchOn ? Colors.yellow : Colors.blueGrey,
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: _toggleFlashlight,
              child: Text(
                  _isTorchOn ? 'Turn Off' : 'Turn On',
              style: TextStyle(fontSize: 25,color: Colors.black,),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
