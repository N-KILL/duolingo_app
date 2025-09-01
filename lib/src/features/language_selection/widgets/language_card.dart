part of '../view/language_selection_view.dart';

class LanguageCard extends StatefulWidget {
  const LanguageCard({super.key, required this.onTap});

  final VoidCallback onTap;
  @override
  State<LanguageCard> createState() => _LanguageCardState();
}

class _LanguageCardState extends State<LanguageCard> {
  bool isSelected = false;

  void selectLanguage() {
    setState(() {
      isSelected = true;
    });

    widget.onTap();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => selectLanguage(),
      child: Container(
        height: 200,
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(16)),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 1),
              color:
                  isSelected
                      ? AppColor.paletteColors[AppPalette.blueberry]![0]
                      : AppColor.paletteColors[AppPalette.cloud]![0],
            ),
          ],
        ),

        child: Card(
          elevation: 8,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          color:
              isSelected
                  ? AppColor.paletteColors[AppPalette.blueberry]![2]
                  : null,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 125,
                width: 125,
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/flags/usa_flag.png'),
                  foregroundColor: Colors.redAccent,
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Ingles',
                style: TextStyle(
                  fontSize: 16,
                  color:
                      isSelected
                          ? AppColor.paletteColors[AppPalette.blueberry]![0]
                          : null,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
