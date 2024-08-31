import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:resume_builder/screens/PDF/components/pdfText.dart';
import 'package:resume_builder/screens/PDF/components/pdfTitle.dart';

import '../../../utils/global.dart';
import '../../../utils/lists_for.dart';

pw.Widget ContainerForCV() {
  return pw.Container(
    width: 220,
    decoration: pw.BoxDecoration(
      color: PdfColor.fromHex('1a2eb4'),
    ),
    child: pw.Column(
      mainAxisAlignment: pw.MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: pw.CrossAxisAlignment.start,
      children: [
        pw.Padding(
          padding: const pw.EdgeInsets.only(left: 33, top: 20),
          child: pw.Container(
            height: 150,
            width: 150,
            decoration: pw.BoxDecoration(
              shape: pw.BoxShape.circle,
              image: pw.DecorationImage(
                image: pw.MemoryImage(
                  fileImg!.readAsBytesSync(),
                ),
              ),
            ),
          ),
        ),
        pdfTitle(Text: 'Contact', isColor: true),
        pdfText(
            isColor: true,
            Text: 'Phone',
            contoroler: txtPhone.text,
            isAddress: false,
            isTitel: true),
        pdfText(
            isColor: true,
            Text: 'Email',
            contoroler: txtEmailAddress.text,
            isAddress: false,
            isTitel: true),
        pdfText(
            isColor: true,
            Text: 'Address',
            contoroler: txtAddress.text,
            isAddress: false,
            isTitel: true),
        pdfTitle(Text: 'Skills', isColor: true),
        ...List.generate(
          skillsAdd.length,
          (index) => pdfText(
              isColor: true,
              Text: jobSkills[index],
              contoroler: jobSkills[index],
              isAddress: false,
              isTitel: false),
        ),
        pdfTitle(Text: 'Languages', isColor: true),
        ...List.generate(
          languagesAdd.length,
          (index) => pdfText(
              isColor: true,
              Text: languagesAdd[index],
              contoroler: languagesAdd[index],
              isAddress: false,
              isTitel: false),
        ),
        pw.SizedBox(height: 10)
      ],
    ),
  );
}
