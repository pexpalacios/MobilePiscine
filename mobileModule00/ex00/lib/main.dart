import 'package:material_ui/material_ui.dart';

void main() {
	runApp(const MainApp());
}

class MainApp extends StatelessWidget 
{
	const MainApp({super.key});

	@override
	Widget build(BuildContext context) {
		return MaterialApp(
			home: Scaffold(
			appBar: AppBar(title: const Text('ex00')),
			body: ButtonExample(),
			),
		);
	}
}

class ButtonExample extends StatefulWidget {
	const ButtonExample({super.key});

	@override
	State<ButtonExample> createState() => _ButtonState();
}

class _ButtonState extends State<ButtonExample> {
	@override
	Widget build(BuildContext context) {
		final ButtonStyle style = ElevatedButton.styleFrom(
			textStyle: const TextStyle(fontSize: 20),
		);

		return Center(
			child: Column(
				mainAxisAlignment: MainAxisAlignment.center,
				children: <Widget>[
					const Text(
						'Simple text',
						style: TextStyle(fontSize:20),
						),
					const SizedBox(height: 30),
					ElevatedButton(
						style: style,
						onPressed: () {
							debugPrint('Button pressed');
						},
						child: const Text('Console button'),
					),
				],
			),
		);
	}
}