import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:resume_builder/screens/PDF/components/pdfText.dart';
import 'package:resume_builder/screens/PDF/components/pdfTitle.dart';

import '../../../utils/global.dart';

pw.Widget eduColumn({required int index})
{
  return pw.Column(
    crossAxisAlignment: pw.CrossAxisAlignment.start,
      children: [
        pdfTitle(Text: 'Education', isColor: false),
        pw.Row(
          children: [
            pdfText(
              Text: 'School Name',
              contoroler: EducationList[index]['SchoolName'].text,
              isAddress: false,
              isTitel: true,
              isColor: false,
            ),
            pw.SizedBox(width: 30),
            pdfText(
              Text: 'Degree Name',
              contoroler: EducationList[index]['DegreeName'].text,
              isAddress: false,
              isTitel: true,
              isColor: false,
            ),
          ],
        ),
        pw.Row(
          children: [
            pdfText(
              Text: 'Start',
              contoroler: EducationList[index]['Start'].text,
              isAddress: false,
              isTitel: true,
              isColor: false,
            ),
            pw.SizedBox(width: 100),
            pdfText(
              Text: 'End',
              contoroler: EducationList[index]['End'].text,
              isAddress: false,
              isTitel: true,
              isColor: false,
            ),
          ],
        ),
        pw.Padding(
          padding: pw.EdgeInsets.only(right: 30),
          child: pdfText(
            Text: 'Description',
            contoroler: EducationList[index]['Description'].text,
            isAddress: true,
            isTitel: true,
            isColor: false,
          ),
        ),
      ]
  );
}