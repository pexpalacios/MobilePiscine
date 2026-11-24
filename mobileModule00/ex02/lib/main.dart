import 'package:material_ui/material_ui.dart';
import 'dart:developer' as developer;

void main() {
	runApp(const MainApp());
}

class MainApp extends StatelessWidget {
	const MainApp({super.key});

	@override
	Widget build(BuildContext context) {
		const title = 'Calculator';

		return MaterialApp(
			title: title,
			home: Scaffold(
				appBar: AppBar(title: const Text(title)),
				body: Column(
					children: [
						Expanded(
							child: Container(
								alignment: Alignment.bottomRight,
								padding: const EdgeInsets.all(6),
								child: const Text(
									'0',
									style: TextStyle(fontSize:24),
								)
							),
						),
						Expanded(
							child: Container(
								alignment: Alignment.topRight,
								padding: const EdgeInsets.all(6),
								child: const Text(
									'0',
									style: TextStyle(fontSize:24),
								)
							),
						),
						GridView.count(
							shrinkWrap: true,
							crossAxisCount: 5,
							children: [
								CalcButton(label: '7', onPressed: () => debugPrint('button pressed: 7')),
								CalcButton(label: '8', onPressed: () => debugPrint('button pressed: 8')),
								CalcButton(label: '9', onPressed: () => debugPrint('button pressed: 9')),
								CalcButton(label: 'C', onPressed: () => debugPrint('button pressed: C')),
								CalcButton(label: 'AC', onPressed: () => debugPrint('button pressed: AC')),
								CalcButton(label: '4', onPressed: () => debugPrint('button pressed: 4')),
								CalcButton(label: '5', onPressed: () => debugPrint('button pressed: 5')),
								CalcButton(label: '6', onPressed: () => debugPrint('button pressed: 6')),
								CalcButton(label: '+', onPressed: () => debugPrint('button pressed: +')),
								CalcButton(label: '-', onPressed: () => debugPrint('button pressed: -')),
								CalcButton(label: '1', onPressed: () => debugPrint('button pressed: 1')),
								CalcButton(label: '2', onPressed: () => debugPrint('button pressed: 2')),
								CalcButton(label: '3', onPressed: () => debugPrint('button pressed: 3')),
								CalcButton(label: 'x', onPressed: () => debugPrint('button pressed: x')),
								CalcButton(label: '/', onPressed: () => debugPrint('button pressed: /')),
								CalcButton(label: '0', onPressed: () => debugPrint('button pressed: 0')),
								CalcButton(label: '.', onPressed: () => debugPrint('button pressed: .')),
								CalcButton(label: '00', onPressed: () => debugPrint('button pressed: 00')),
								CalcButton(label: '=', onPressed: () => debugPrint('button pressed: =')),
							]
						),
					],
				),
			),
		);
	}
}

class CalcButton extends StatelessWidget {
	final String label;
	final VoidCallback onPressed;

	const CalcButton({super.key, required this.label, required this.onPressed,});

	@override
	Widget build(BuildContext context)  {
		return Padding(
			padding: const EdgeInsets.all(4),
			child: ElevatedButton(
				onPressed: onPressed,
				child: Text(label, style: Theme.of(context).textTheme.headlineSmall,),
			),
		);
	}
}
