import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

pw.Widget pdfText({
  required String Text,
  required contoroler,
  required bool isAddress,
  required bool isTitel,
  required bool isColor
}) {
  return pw.Column(
    crossAxisAlignment: pw.CrossAxisAlignment.start,
    children: [
      isTitel
          ? pw.Padding(
              padding: const pw.EdgeInsets.only(top: 10, left: 20),
              child: pw.Text(
                Text,
                style:  pw.TextStyle(
                  fontSize: 18,
                  fontWeight: pw.FontWeight.bold,
                  color: isColor? PdfColors.white:PdfColors.black
                ),
              ),
            )
          : pw.Padding(
              padding: pw.EdgeInsets.all(0),
            ),
      pw.Padding(
        padding: const pw.EdgeInsets.only(top: 5, left: 20),
        child: pw.Text(
          contoroler,
          maxLines: isAddress?3:1,
          style: pw.TextStyle(
            fontSize: 14,
            color: isColor? PdfColors.white:PdfColors.black
          ),
        ),
      ),
    ],
  );
}
