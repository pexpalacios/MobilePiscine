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
			appBar: AppBar(title: const Text('ex01')),
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
	//String _text = "Simple text";
	bool _changed = false;

	@override
	Widget build(BuildContext context) {
		final ButtonStyle style = ElevatedButton.styleFrom(
			textStyle: const TextStyle(fontSize: 20),
		);

		return Center(
			child: Column(
				mainAxisAlignment: MainAxisAlignment.center,
				children: <Widget>[
					Text(
						_changed ? 'Hello world' : 'Simple text',
						style: TextStyle(fontSize:20),
						),
					const SizedBox(height: 30),
					ElevatedButton(
						style: style,
						onPressed: () {
							setState(() {
								_changed = !_changed;
							});
						},
						child: const Text('Change text'),
					),
				],
			),
		);
	}
}
