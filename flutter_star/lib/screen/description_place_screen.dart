import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DescriptionPlaceScreen extends StatelessWidget {
  const DescriptionPlaceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const TextStyle titleStyle= TextStyle(
      fontSize: 30.0,
      fontWeight: FontWeight.bold,
    );

    const descriptionText = 'Occaecat nostrud Lorem qui non eu est reprehenderit. Anim sint sint laboris consectetur cillum aliquip ad ex adipisicing. Officia consectetur incididunt ipsum eu ullamco ex anim incididunt. Qui ex do consectetur magna duis cupidatat dolor nisi in esse exercitation sit adipisicing commodo. Anim veniam anim culpa exercitation deserunt est nisi exercitation proident veniam excepteur. Irure ad eiusmod amet aute ullamco. \n\n Amet veniam et ipsum duis reprehenderit cupidatat qui laborum mollit nisi sint. Et duis ex aute esse. Ad fugiat elit ad incididunt amet pariatur velit. Sunt amet duis elit consequat ullamco pariatur velit laborum et. Dolore dolor velit tempor sit dolore fugiat labore aliqua ad nulla excepteur pariatur magna eiusmod.';

    final star= Container(
      margin: const EdgeInsets.only(
        top: 323,
        right: 3.0,
      ),
      child: const Icon(
        Icons.star,
        color: Colors.amber,
      ) ,
    );

  final description = Container(
    margin: const EdgeInsets.only(
      top: 20.0,
      left: 20.0,
      right: 20.0,
    ),
    child: Text(
      descriptionText,
      style: GoogleFonts.almendra(
        textStyle: const TextStyle(
          fontSize: 16.0,
        )
      ),
    ),
  );

  final titleAndStars= Row(
    children: [
      Container(
        margin: const EdgeInsets.only(
          top: 320.0,
          left:20.0,
          right:20.0
        ),
        child: const Text(
          "Duwuili Ella",
          style: titleStyle,
          textAlign: TextAlign.left,
        ),
      ),
      star,
      star,
      star,
      star,
      star,
      star,
    ],
  );
    return Column(
      children: [
        titleAndStars,
        description,
      ],
    );
  }
}
