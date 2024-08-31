import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:resume_builder/screens/PDF/components/pdfText.dart';
import 'package:resume_builder/screens/PDF/components/pdfTitle.dart';

import '../../../utils/global.dart';

pw.Widget workColumn({required int index})
{
  return pw.Column(
      crossAxisAlignment: pw.CrossAxisAlignment.start,
      children: [
        pw.Row(
          children: [
            pdfText(
              Text: 'Job Title',
              contoroler: WorkHistoryList[index]['JobTitle'].text,
              isAddress: false,
              isTitel: true,
              isColor: false,
            ),
            pw.SizedBox(width: 30),
            pdfText(
              Text: 'Company Name',
              contoroler: WorkHistoryList[index]['CompanyName'].text,
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
              contoroler: WorkHistoryList[index]['Start'].text,
              isAddress: false,
              isTitel: true,
              isColor: false,
            ),
            pw.SizedBox(width: 100),
            pdfText(
              Text: 'End',
              contoroler: WorkHistoryList[index]['End'].text,
              isAddress: false,
              isTitel: true,
              isColor: false,
            ),
          ],
        ),
      ]
  );
}