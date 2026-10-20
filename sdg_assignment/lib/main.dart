import 'package:flutter/material.dart';

void main() {
  runApp(const WasteSegregationApp());
}

// Enum for waste categories
enum WasteType {
  wet,
  dry,
  eWaste,
  hazardous,
}

class WasteSegregationApp extends StatelessWidget {
  const WasteSegregationApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Waste Segregation Classifier',
      theme: ThemeData(
        primarySwatch: Colors.green,
        useMaterial3: true,
      ),
      home: const WasteHomePage(),
    );
  }
}

class WasteHomePage extends StatefulWidget {
  const WasteHomePage({super.key});

  @override
  State<WasteHomePage> createState() => _WasteHomePageState();
}

class _WasteHomePageState extends State<WasteHomePage> {
  final TextEditingController controller = TextEditingController();

  WasteType? selectedType;
  String result = '';

  // Collection containing sample waste items
  final Map<String, WasteType> wasteItems = {
    'banana': WasteType.wet,
    'food': WasteType.wet,
    'vegetable': WasteType.wet,
    'paper': WasteType.dry,
    'newspaper': WasteType.dry,
    'plastic bottle': WasteType.dry,
    'mobile': WasteType.eWaste,
    'computer': WasteType.eWaste,
    'battery': WasteType.hazardous,
    'medicine': WasteType.hazardous,
  };

  void classifyWaste() {
    String waste = controller.text.trim().toLowerCase();

    if (waste.isEmpty) {
      setState(() {
        result = 'Please enter a waste item.';
        selectedType = null;
      });
      return;
    }

    WasteType? type = wasteItems[waste];

    if (type == null) {
      setState(() {
        result = 'Waste item not found.';
        selectedType = null;
      });
      return;
    }

    setState(() {
      selectedType = type;
      result = getWasteCategory(type);
    });
  }

  // Switch used to convert enum into category name
  String getWasteCategory(WasteType type) {
    switch (type) {
      case WasteType.wet:
        return 'Wet Waste';

      case WasteType.dry:
        return 'Dry Waste';

      case WasteType.eWaste:
        return 'E-Waste';

      case WasteType.hazardous:
        return 'Hazardous Waste';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Waste Segregation'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Icon(
              Icons.recycling,
              size: 80,
              color: Colors.green,
            ),
            const SizedBox(height: 15),
            const Text(
              'Waste Segregation Classifier',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Enter a waste item to identify its category.',
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 25),
            TextField(
              controller: controller,
              decoration: const InputDecoration(
                labelText: 'Enter waste item',
                hintText: 'Example: banana, paper, battery',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.delete_outline),
              ),
            ),
            const SizedBox(height: 15),
            ElevatedButton.icon(
              onPressed: classifyWaste,
              icon: const Icon(Icons.search),
              label: const Text('Classify Waste'),
            ),
            const SizedBox(height: 25),
            if (result.isNotEmpty)
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      const Text(
                        'Classification Result',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        result,
                        style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            const SizedBox(height: 25),
            const Text(
              'Supported Categories',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                Chip(label: Text('Wet Waste')),
                Chip(label: Text('Dry Waste')),
                Chip(label: Text('E-Waste')),
                Chip(label: Text('Hazardous Waste')),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}