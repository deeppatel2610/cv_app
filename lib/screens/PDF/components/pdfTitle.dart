import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart'as pw;

pw.Widget pdfTitle({required String Text,required bool isColor})
{
  return pw.Column(
    crossAxisAlignment: pw.CrossAxisAlignment.start,
    children: [
      pw.Padding(
        padding: const pw.EdgeInsets.only(left: 10, top: 20),
        child: pw.Text(
          Text,
          style: pw.TextStyle(
              color:isColor? PdfColors.white:PdfColors.black, fontSize: 20),
        ),
      ),
      pw.Divider(color:isColor? PdfColors.white:PdfColors.black),
    ],
  );
}