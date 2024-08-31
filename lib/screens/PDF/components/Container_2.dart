import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:resume_builder/screens/PDF/components/pdfText.dart';
import 'package:resume_builder/screens/PDF/components/pdfTitle.dart';
import 'package:resume_builder/screens/PDF/components/work_column.dart';

import '../../../utils/global.dart';
import '../../../utils/lists_for.dart';
import 'education_column.dart';

pw.Widget ContainerForCVapp() {
  return pw.Container(
    width: 400,
    child: pw.Column(
      mainAxisAlignment: pw.MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: pw.CrossAxisAlignment.start,
      children: [
        pw.Padding(
          padding: const pw.EdgeInsets.only(top: 8, left: 8),
          child: pw.Container(
            alignment: pw.Alignment.center,
            height: 100,
            color: PdfColors.grey200,
            width: 360,
            child: pw.Column(
              crossAxisAlignment: pw.CrossAxisAlignment.center,
              children: [
                pw.SizedBox(height: 15),
                pw.Text(
                  "${txtFirstName.text} ${txtLastName.text}",
                  style: const pw.TextStyle(
                    color: PdfColors.black,
                    fontSize: 25,
                  ),
                ),
                pw.Divider(
                  color: PdfColors.black,
                  indent: 100,
                  endIndent: 100,
                ),
                pw.Text(
                  'Developer',
                  style: const pw.TextStyle(
                    color: PdfColors.black,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
        ),
        pdfTitle(Text: 'About Me', isColor: false),
        pw.Padding(
          padding: const pw.EdgeInsets.only(right: 30),
          child: pdfText(
            Text: 'hi',
            contoroler: txtAbout.text,
            isAddress: true,
            isTitel: false,
            isColor: false,
          ),
        ),
        ...List.generate(
          EducationList.length,
          (index) => eduColumn(index: index),
        ),
        pdfTitle(Text: 'Project', isColor: false),
        pw.Padding(
          padding: const pw.EdgeInsets.only(right: 30),
          child: pw.Column(
            children: [
              ...List.generate(
                projectList.length,
                (index) => pdfText(
                  Text: projectList[index]['project'].text,
                  contoroler: projectList[index]['Description'].text,
                  isAddress: true,
                  isTitel: true,
                  isColor: false,
                ),
              ),
            ],
          ),
        ),
        pdfTitle(Text: 'Work History', isColor: false),
        ...List.generate(
          WorkHistoryList.length,
          (index) => workColumn(index: index),
        ),
        pw.SizedBox(height: 10),
      ],
    ),
  );
}
