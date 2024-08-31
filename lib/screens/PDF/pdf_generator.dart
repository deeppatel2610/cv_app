import 'dart:typed_data';

import 'package:pdf/widgets.dart' as pw;
import 'package:pdf/pdf.dart';

import 'components/Container_1.dart';
import 'components/Container_2.dart';

Future<Uint8List> pdfGenerator() {
  final pdf = pw.Document();
  pdf.addPage(
    pw.Page(
      margin: pw.EdgeInsets.zero,
      pageFormat: PdfPageFormat.a4,
      build: (context) {
        return pw.Row(
          children: [
            ContainerForCV(),
            ContainerForCVapp()
          ],
        );
      },
    ),
  );
  return pdf.save();
}
