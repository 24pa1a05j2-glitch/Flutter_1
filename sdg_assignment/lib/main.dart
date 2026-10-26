
import 'package:flutter/material.dart';

void main() {
  runApp(const WasteSegregationApp());
}

enum WasteType { wet, dry, eWaste, hazardous }

class WasteInfo {
  final String name;
  final WasteType type;
  final String description;
  final String disposal;
  final IconData icon;
  final Color color;

  const WasteInfo({
    required this.name,
    required this.type,
    required this.description,
    required this.disposal,
    required this.icon,
    required this.color,
  });

  String get category {
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
}

const Color forestGreen = Color(0xFF176B45);
const Color lightGreen = Color(0xFFE8F5E9);
const Color pageBackground = Color(0xFFF6F9F6);

const List<WasteInfo> wasteDatabase = [
  WasteInfo(
    name: 'Banana Peel',
    type: WasteType.wet,
    description: 'Biodegradable kitchen waste.',
    disposal: 'Place it in your wet-waste or compost bin '
        'where local facilities accept food scraps.',
    icon: Icons.eco,
    color: Color(0xFF388E3C),
  ),
  WasteInfo(
    name: 'Food Scraps',
    type: WasteType.wet,
    description: 'Leftover food and vegetable scraps.',
    disposal: 'Separate food scraps from packaging. '
        'Compost them where suitable.',
    icon: Icons.restaurant,
    color: Color(0xFF388E3C),
  ),
  WasteInfo(
    name: 'Vegetable Peels',
    type: WasteType.wet,
    description: 'Organic kitchen waste.',
    disposal: 'Collect separately for composting or '
        'your local wet-waste collection.',
    icon: Icons.grass,
    color: Color(0xFF388E3C),
  ),
  WasteInfo(
    name: 'Tea Leaves',
    type: WasteType.wet,
    description: 'Organic waste suitable for composting.',
    disposal: 'Let excess liquid drain and compost '
        'the leaves where facilities are available.',
    icon: Icons.coffee,
    color: Color(0xFF388E3C),
  ),
  WasteInfo(
    name: 'Eggshells',
    type: WasteType.wet,
    description: 'Organic kitchen waste.',
    disposal: 'Add to a suitable compost system or '
        'follow your local organic-waste rules.',
    icon: Icons.egg_alt,
    color: Color(0xFF388E3C),
  ),
  WasteInfo(
    name: 'Paper',
    type: WasteType.dry,
    description: 'Potentially recyclable paper.',
    disposal: 'Keep it clean and dry. Recycle it if '
        'your local collection accepts that paper type.',
    icon: Icons.description,
    color: Color(0xFF1976D2),
  ),
  WasteInfo(
    name: 'Newspaper',
    type: WasteType.dry,
    description: 'Commonly recyclable paper.',
    disposal: 'Keep newspapers dry and bundle them '
        'for paper recycling.',
    icon: Icons.newspaper,
    color: Color(0xFF1976D2),
  ),
  WasteInfo(
    name: 'Cardboard',
    type: WasteType.dry,
    description: 'Recyclable packaging when accepted locally.',
    disposal: 'Flatten clean cardboard and keep it dry. '
        'Remove food-contaminated sections.',
    icon: Icons.inventory_2,
    color: Color(0xFF1976D2),
  ),
  WasteInfo(
    name: 'Plastic Bottle',
    type: WasteType.dry,
    description: 'Potentially recyclable plastic packaging.',
    disposal: 'Empty it and follow local recycling rules '
        'for the plastic type.',
    icon: Icons.water_drop,
    color: Color(0xFF1976D2),
  ),
  WasteInfo(
    name: 'Glass Bottle',
    type: WasteType.dry,
    description: 'Glass packaging that may be recyclable.',
    disposal: 'Use a designated glass collection point '
        'if available. Handle broken glass carefully.',
    icon: Icons.wine_bar,
    color: Color(0xFF1976D2),
  ),
  WasteInfo(
    name: 'Metal Can',
    type: WasteType.dry,
    description: 'Potentially recyclable metal packaging.',
    disposal: 'Empty the can and place it in an '
        'approved metal-recycling stream.',
    icon: Icons.local_drink,
    color: Color(0xFF1976D2),
  ),
  WasteInfo(
    name: 'Plastic Bag',
    type: WasteType.dry,
    description: 'Flexible plastic that is not accepted '
        'in every recycling program.',
    disposal: 'Check local rules or a designated '
        'flexible-plastic collection point.',
    icon: Icons.shopping_bag,
    color: Color(0xFF1976D2),
  ),
  WasteInfo(
    name: 'Mobile Phone',
    type: WasteType.eWaste,
    description: 'Electronic waste containing recoverable materials.',
    disposal: 'Take it to an authorized e-waste collector '
        'or manufacturer take-back program. Wipe personal data.',
    icon: Icons.phone_android,
    color: Color(0xFF7B1FA2),
  ),
  WasteInfo(
    name: 'Computer',
    type: WasteType.eWaste,
    description: 'Electronic equipment requiring special handling.',
    disposal: 'Use an authorized e-waste collection center. '
        'Back up and erase personal data first.',
    icon: Icons.computer,
    color: Color(0xFF7B1FA2),
  ),
  WasteInfo(
    name: 'Charger',
    type: WasteType.eWaste,
    description: 'Electronic accessory.',
    disposal: 'Keep it separate from household waste '
        'and take it to an e-waste collection point.',
    icon: Icons.electrical_services,
    color: Color(0xFF7B1FA2),
  ),
  WasteInfo(
    name: 'Headphones',
    type: WasteType.eWaste,
    description: 'Electronic accessory containing materials '
        'that can be recovered.',
    disposal: 'Send them to an authorized electronics '
        'recycling or take-back program.',
    icon: Icons.headphones,
    color: Color(0xFF7B1FA2),
  ),
  WasteInfo(
    name: 'Battery',
    type: WasteType.hazardous,
    description: 'Some batteries contain hazardous materials '
        'and can cause fires if damaged.',
    disposal: 'Never put batteries in ordinary waste or fire. '
        'Use an approved battery collection point. '
        'Follow local guidance for damaged batteries.',
    icon: Icons.battery_alert,
    color: Color(0xFFD84315),
  ),
  WasteInfo(
    name: 'Medicine',
    type: WasteType.hazardous,
    description: 'Unused or expired medicines need special care.',
    disposal: 'Ask a pharmacy or local health authority '
        'about medicine take-back. Do not flush medicines '
        'unless specifically instructed.',
    icon: Icons.medication,
    color: Color(0xFFD84315),
  ),
  WasteInfo(
    name: 'Paint',
    type: WasteType.hazardous,
    description: 'Some paints and solvents require special disposal.',
    disposal: 'Keep in the original labeled container '
        'and contact your local hazardous-waste service.',
    icon: Icons.format_paint,
    color: Color(0xFFD84315),
  ),
  WasteInfo(
    name: 'Pesticide',
    type: WasteType.hazardous,
    description: 'Chemical waste that can harm people and wildlife.',
    disposal: 'Do not pour it into drains or soil. '
        'Follow the label and local hazardous-waste guidance.',
    icon: Icons.warning_amber,
    color: Color(0xFFD84315),
  ),
];

class WasteSegregationApp extends StatelessWidget {
  const WasteSegregationApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EcoSort - Waste Classifier',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: forestGreen,
        ),
        scaffoldBackgroundColor: pageBackground,
        appBarTheme: const AppBarTheme(
          backgroundColor: forestGreen,
          foregroundColor: Colors.white,
          centerTitle: false,
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
            borderSide: const BorderSide(color: Color(0xFFDCE5DC)),
          ),
        ),
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

  WasteInfo? selectedWaste;
  String errorMessage = '';
  final List<String> history = [];

  final Map<String, String> aliases = {
    'banana': 'banana peel',
    'banana peel': 'banana peel',
    'banana peels': 'banana peel',
    'food': 'food scraps',
    'leftover food': 'food scraps',
    'food waste': 'food scraps',
    'vegetable': 'vegetable peels',
    'vegetables': 'vegetable peels',
    'vegetable peel': 'vegetable peels',
    'newspapers': 'newspaper',
    'plastic': 'plastic bottle',
    'plastic bottles': 'plastic bottle',
    'bottle': 'plastic bottle',
    'glass': 'glass bottle',
    'can': 'metal can',
    'aluminium can': 'metal can',
    'aluminum can': 'metal can',
    'mobile': 'mobile phone',
    'phone': 'mobile phone',
    'smartphone': 'mobile phone',
    'laptop': 'computer',
    'computer': 'computer',
    'charger cable': 'charger',
    'earphones': 'headphones',
    'earphone': 'headphones',
    'cell': 'battery',
    'cells': 'battery',
    'expired medicine': 'medicine',
    'medicines': 'medicine',
    'paint waste': 'paint',
    'pesticides': 'pesticide',
    'tea': 'tea leaves',
    'tea leaf': 'tea leaves',
    'egg shell': 'eggshells',
    'egg shells': 'eggshells',
    'carton': 'cardboard',
    'cardboard box': 'cardboard',
    'polythene bag': 'plastic bag',
  };

  void classifyWaste([String? suggestedItem]) {
    final input = (suggestedItem ?? controller.text)
        .trim()
        .toLowerCase();

    if (input.isEmpty) {
      setState(() {
        errorMessage = 'Please enter a waste item to classify.';
        selectedWaste = null;
      });
      return;
    }

    final normalizedInput = aliases[input] ?? input;

    WasteInfo? match;

    for (final item in wasteDatabase) {
      if (item.name.toLowerCase() == normalizedInput) {
        match = item;
        break;
      }
    }

    setState(() {
      if (match == null) {
        selectedWaste = null;
        errorMessage =
            'Item not found. Try one of the suggested examples below.';
        return;
      }

      selectedWaste = match;
      errorMessage = '';

      history.remove(input);
      history.insert(0, input);

      if (history.length > 5) {
        history.removeLast();
      }

      controller.text = suggestedItem ?? controller.text;
    });
  }

  void clearResult() {
    setState(() {
      controller.clear();
      selectedWaste = null;
      errorMessage = '';
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            Icon(Icons.eco, size: 28),
            SizedBox(width: 10),
            Text(
              'EcoSort',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Center(
              child: Text(
                'SDG 12',
                style: TextStyle(
                  color: Colors.white.withValues(alpha: 0.9),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 1000),
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  buildHero(),
                  const SizedBox(height: 24),
                  buildClassifier(),
                  if (selectedWaste != null) ...[
                    const SizedBox(height: 20),
                    buildResult(selectedWaste!),
                  ],
                  if (errorMessage.isNotEmpty) ...[
                    const SizedBox(height: 12),
                    buildError(),
                  ],
                  const SizedBox(height: 28),
                  buildCategories(),
                  const SizedBox(height: 28),
                  if (history.isNotEmpty) ...[
                    buildHistory(),
                    const SizedBox(height: 28),
                  ],
                  buildSdgSection(),
                  const SizedBox(height: 20),
                  const Text(
                    'EcoSort • Learn today, protect tomorrow.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildHero() {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [forestGreen, Color(0xFF319764)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 7,
            ),
            decoration: BoxDecoration(
              color: Colors.white.withValues(alpha: 0.17),
              borderRadius: BorderRadius.circular(30),
            ),
            child: const Text(
              '♻  SMART WASTE MANAGEMENT',
              style: TextStyle(
                color: Colors.white,
                fontSize: 11,
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
              ),
            ),
          ),
          const SizedBox(height: 18),
          const Text(
            'Small Steps,\nCleaner Planet.',
            style: TextStyle(
              color: Colors.white,
              fontSize: 32,
              height: 1.2,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 12),
          const Text(
            'Identify your waste, learn how to dispose of it, '
            'and make a difference every day.',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              height: 1.5,
            ),
          ),
          const SizedBox(height: 18),
          const Row(
            children: [
              Icon(Icons.public, color: Colors.white, size: 20),
              SizedBox(width: 8),
              Expanded(
                child: Text(
                  'Supporting Sustainable Development Goal 12',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildClassifier() {
    return Card(
      color: Colors.white,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        side: const BorderSide(color: Color(0xFFE0E8E0)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Identify Your Waste',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 6),
            const Text(
              'Enter an item name to discover its category.',
              style: TextStyle(color: Colors.black54),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: controller,
              textInputAction: TextInputAction.search,
              onSubmitted: (_) => classifyWaste(),
              decoration: const InputDecoration(
                labelText: 'Waste item',
                hintText: 'e.g. banana, paper, mobile phone',
                prefixIcon: Icon(Icons.search),
              ),
            ),
            const SizedBox(height: 14),
            Row(
              children: [
                Expanded(
                  child: FilledButton.icon(
                    onPressed: classifyWaste,
                    icon: const Icon(Icons.recycling),
                    label: const Text('Classify Waste'),
                    style: FilledButton.styleFrom(
                      backgroundColor: forestGreen,
                      padding: const EdgeInsets.symmetric(vertical: 15),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                OutlinedButton(
                  onPressed: clearResult,
                  style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 15,
                    ),
                  ),
                  child: const Icon(Icons.refresh),
                ),
              ],
            ),
            const SizedBox(height: 18),
            const Text(
              'Try an example:',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 10),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                'banana',
                'paper',
                'plastic bottle',
                'mobile',
                'battery',
                'medicine',
              ].map((item) {
                return ActionChip(
                  label: Text(item),
                  avatar: const Icon(Icons.add, size: 16),
                  onPressed: () {
                    controller.text = item;
                    classifyWaste(item);
                  },
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildResult(WasteInfo waste) {
    return Container(
      padding: const EdgeInsets.all(22),
      decoration: BoxDecoration(
        color: waste.color.withValues(alpha: 0.07),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: waste.color.withValues(alpha: 0.35),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 27,
                backgroundColor: waste.color.withValues(alpha: 0.15),
                child: Icon(
                  waste.icon,
                  color: waste.color,
                  size: 28,
                ),
              ),
              const SizedBox(width: 14),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'CLASSIFICATION RESULT',
                      style: TextStyle(
                        fontSize: 11,
                        letterSpacing: 1,
                        fontWeight: FontWeight.bold,
                        color: Colors.black54,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      waste.category,
                      style: TextStyle(
                        color: waste.color,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Text(
            waste.name,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 6),
          Text(waste.description),
          const SizedBox(height: 18),
          const Divider(),
          const SizedBox(height: 8),
          const Row(
            children: [
              Icon(
                Icons.lightbulb_outline,
                color: forestGreen,
              ),
              SizedBox(width: 8),
              Text(
                'Disposal Guidance',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Text(
            waste.disposal,
            style: const TextStyle(height: 1.5),
          ),
          const SizedBox(height: 12),
          const Text(
            'Note: Classification is based on a predefined list. '
            'Follow your local waste collection rules.',
            style: TextStyle(
              fontSize: 12,
              color: Colors.black54,
              fontStyle: FontStyle.italic,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildError() {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: const Color(0xFFFFF3E0),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          const Icon(
            Icons.info_outline,
            color: Color(0xFFB45309),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              errorMessage,
              style: const TextStyle(color: Color(0xFF92400E)),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildCategories() {
    final categories = [
      (
        type: WasteType.wet,
        title: 'Wet Waste',
        subtitle: 'Food and organic scraps',
        icon: Icons.eco,
        color: const Color(0xFF388E3C),
      ),
      (
        type: WasteType.dry,
        title: 'Dry Waste',
        subtitle: 'Paper and packaging',
        icon: Icons.recycling,
        color: const Color(0xFF1976D2),
      ),
      (
        type: WasteType.eWaste,
        title: 'E-Waste',
        subtitle: 'Electronic equipment',
        icon: Icons.devices,
        color: const Color(0xFF7B1FA2),
      ),
      (
        type: WasteType.hazardous,
        title: 'Hazardous',
        subtitle: 'Special handling needed',
        icon: Icons.warning_amber,
        color: const Color(0xFFD84315),
      ),
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Know Your Waste',
          style: TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 6),
        const Text(
          'Four categories to help you dispose responsibly.',
          style: TextStyle(color: Colors.black54),
        ),
        const SizedBox(height: 16),
        LayoutBuilder(
          builder: (context, constraints) {
            final columns = constraints.maxWidth >= 650 ? 4 : 2;
            final itemWidth =
                (constraints.maxWidth - (columns - 1) * 12) / columns;

            return Wrap(
              spacing: 12,
              runSpacing: 12,
              children: categories.map((category) {
                final count = wasteDatabase
                    .where((item) => item.type == category.type)
                    .length;

                return SizedBox(
                  width: itemWidth,
                  child: Card(
                    color: Colors.white,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                      side: const BorderSide(
                        color: Color(0xFFE2E9E2),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(14),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            backgroundColor: category.color.withValues(
                              alpha: 0.12,
                            ),
                            child: Icon(
                              category.icon,
                              color: category.color,
                            ),
                          ),
                          const SizedBox(height: 12),
                          Text(
                            category.title,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            category.subtitle,
                            style: const TextStyle(
                              fontSize: 12,
                              color: Colors.black54,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            '$count supported items',
                            style: TextStyle(
                              color: category.color,
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }).toList(),
            );
          },
        ),
      ],
    );
  }

  Widget buildHistory() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Recent Classifications',
          style: TextStyle(
            fontSize: 21,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        Card(
          color: Colors.white,
          elevation: 0,
          child: Column(
            children: history.map((item) {
              return ListTile(
                leading: const Icon(
                  Icons.history,
                  color: forestGreen,
                ),
                title: Text(
                  item,
                  style: const TextStyle(fontWeight: FontWeight.w500),
                ),
                trailing: const Icon(Icons.arrow_forward_ios, size: 15),
                onTap: () {
                  controller.text = item;
                  classifyWaste(item);
                },
              );
            }).toList(),
          ),
        ),
      ],
    );
  }

  Widget buildSdgSection() {
    return Container(
      padding: const EdgeInsets.all(22),
      decoration: BoxDecoration(
        color: lightGreen,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: const Color(0xFFC8E6C9)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            children: [
              Icon(
                Icons.public,
                size: 30,
                color: forestGreen,
              ),
              SizedBox(width: 10),
              Expanded(
                child: Text(
                  'Our SDG Impact',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: forestGreen,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          const Text(
            'Sustainable Development Goal 12: '
            'Responsible Consumption and Production.',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              height: 1.5,
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            'EcoSort promotes responsible waste management by '
            'helping people identify waste categories, learn about '
            'proper disposal, and understand the importance of '
            'reducing contamination and improving recycling.',
            style: TextStyle(height: 1.6),
          ),
          const SizedBox(height: 16),
          const Text(
            'Everyday actions',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 10),
          const SdgTip(
            text: 'Separate organic waste from recyclable materials.',
          ),
          const SdgTip(
            text: 'Reuse items and avoid unnecessary packaging.',
          ),
          const SdgTip(
            text: 'Keep batteries and electronics out of ordinary bins.',
          ),
          const SdgTip(
            text: 'Follow local recycling and collection instructions.',
          ),
        ],
      ),
    );
  }
}

class SdgTip extends StatelessWidget {
  final String text;

  const SdgTip({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 9),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(
            Icons.check_circle,
            color: forestGreen,
            size: 19,
          ),
          const SizedBox(width: 9),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(height: 1.4),
            ),
          ),
        ],
      ),
    );
  }
}
