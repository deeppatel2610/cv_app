import 'package:flutter/material.dart';
import 'package:printing/printing.dart';
import 'package:resume_builder/screens/PDF/pdf_generator.dart';

class PdfView extends StatefulWidget {
  const PdfView({super.key});

  @override
  State<PdfView> createState() => _PdfViewState();
}

class _PdfViewState extends State<PdfView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PdfPreview(
        build: (format) => pdfGenerator(),
      ),
    );
  }
}
