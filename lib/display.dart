// ignore_for_file: must_be_immutable

import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:syncfusion_flutter_pdf/pdf.dart';
import 'mobile.dart';

class Display extends StatefulWidget {
  PickedFile imageimport1;
  Display({Key? key, required this.imageimport1}) : super(key: key);

  @override
  _DisplayState createState() => _DisplayState(imageimport1);
}

class _DisplayState extends State<Display> {
  late double height, width;
  PickedFile imageimport1;
  _DisplayState(this.imageimport1);

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Center(
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Container(
              height: height * 0.30,
              padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
              color: const Color.fromARGB(200, 24, 143, 71),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: IconButton(
                      icon: const Icon(
                        Icons.keyboard_arrow_left_outlined,
                        color: Colors.white,
                        size: 35.0,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  const Expanded(
                    flex: 12,
                    child: Text(
                      "Your Result",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Alata',
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: height * 0.75,
              width: width * 1,
              margin: EdgeInsets.only(top: height * 0.25),
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40.0),
                    topRight: Radius.circular(40.0),
                  ),
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                      height: height * 0.2,
                      width: width * .9,
                      margin: EdgeInsets.only(top: height * 0.20),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.3),
                            blurRadius: 4,
                            offset: Offset(4, 4),
                          ),
                        ],
                      ),
                      child: Card(
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              const Text(
                                'Your fruit has BLACK SPOT ',
                                style: TextStyle(
                                  fontFamily: 'Alata',
                                  fontSize: 25,
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(10),
                                margin: const EdgeInsets.only(left: 160),
                                height: 50.0,
                                width: 130,
                                decoration: const BoxDecoration(
                                  color: Color.fromARGB(200, 24, 143, 71),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(130)),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromRGBO(0, 0, 0, 0.3),
                                      blurRadius: 4,
                                      offset: Offset(4, 4),
                                    ),
                                  ],
                                ),
                                child: MaterialButton(
                                  child: const Text(
                                    "See More",
                                    style: TextStyle(
                                      fontFamily: 'Alata',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15.0,
                                    ),
                                  ),
                                  textColor: Colors.white,
                                  onPressed: () {},
                                ),
                              ),
                            ]),
                      ),
                    ),
                    Container(
                      height: height * 0.2,
                      width: width * .90,
                      margin: EdgeInsets.only(top: height * 0.03),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.3),
                            blurRadius: 4,
                            offset: Offset(4, 4),
                          ),
                        ],
                      ),
                      child: Card(
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              const Text(
                                'Percentage accuracy: 81% ',
                                style: TextStyle(
                                  fontFamily: 'Alata',
                                  fontSize: 25,
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(10),
                                margin: const EdgeInsets.only(left: 160),
                                height: 50.0,
                                width: 130,
                                decoration: const BoxDecoration(
                                  color: Color.fromARGB(200, 24, 143, 71),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(130)),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromRGBO(0, 0, 0, 0.3),
                                      blurRadius: 4,
                                      offset: Offset(4, 4),
                                    ),
                                  ],
                                ),
                                child: MaterialButton(
                                  child: const Text(
                                    "Learn More",
                                    style: TextStyle(
                                      fontFamily: 'Alata',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15.0,
                                    ),
                                  ),
                                  textColor: Colors.white,
                                  onPressed: () {},
                                ),
                              ),
                            ]),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
                height: height * 0.8,
                width: double.infinity,
                margin: EdgeInsets.only(top: height * 0.92),
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  border: Border(
                    top: BorderSide(
                        width: 2.0, color: Color.fromARGB(255, 180, 187, 190)),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    FlatButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100.0)),
                      splashColor: Color.fromARGB(255, 144, 147, 150),
                      onPressed: () {
                        _createpdf();
                      },
                      child: Icon(Icons.download_outlined,
                          color: Color.fromARGB(255, 149, 154, 157), size: 30),
                    ),
                    FlatButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100.0)),
                      splashColor: Color.fromARGB(255, 144, 147, 150),
                      onPressed: () {
                        Navigator.pop(context);
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.camera_alt_outlined,
                          color: Color.fromARGB(255, 149, 154, 157), size: 30),
                    ),
                    // FlatButton(
                    //   shape: RoundedRectangleBorder(
                    //       borderRadius: BorderRadius.circular(100.0)),
                    //   splashColor: Color.fromARGB(255, 144, 147, 150),
                    //   onPressed: () {
                    //     Navigator.pop(context);
                    //   },
                    //   child: Icon(Icons.history_outlined,
                    //       color: Color.fromARGB(255, 149, 154, 157), size: 30),
                    // ),
                  ],
                )),
            Container(
              height: height * 0.25,
              width: height * 0.25,
              margin: EdgeInsets.only(top: height * 0.18),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(100))),
              child: Card(
                color: Color.fromARGB(200, 24, 143, 71),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(100)),
                ),
                child: (imageimport1 == null)
                    ? null
                    : ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.file(File((imageimport1.path))),
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _createpdf() async {
    PdfDocument document = PdfDocument();

    PdfGrid grid = PdfGrid();

//Add columns to grid
    grid.columns.add(count: 2);

//Add rows to grid
    PdfGridRow row1 = grid.rows.add();
    row1.cells[0].value = 'Result Summary';

    PdfGridRow row2 = grid.rows.add();
    row2.cells[0].value = 'Fruit Name';
    row2.cells[1].value = 'Apple';

    PdfGridRow row3 = grid.rows.add();
    row3.cells[0].value = 'Disease Type';
    row3.cells[1].value = 'Scab';

    PdfGridRow row4 = grid.rows.add();
    row4.cells[0].value = 'Web Search';
    row4.cells[1].value = 'www.something.com';

//Set the row span
    row1.cells[0].columnSpan = 2;
    row1.height = 60;
    row2.height = 50;
    row3.height = 50;
    row4.height = 50;

//Set the row height

//Set the row style
    row1.style = PdfGridRowStyle(
        backgroundBrush: PdfBrushes.lightGray,
        textPen: PdfPens.darkGreen,
        textBrush: PdfBrushes.darkGreen,
        font: PdfStandardFont(PdfFontFamily.timesRoman, 30));

//Create the PDF grid row style. Assign to second row
    row2.style = PdfGridCellStyle(
        textPen: PdfPens.black,
        font: PdfStandardFont(PdfFontFamily.helvetica, 20));

    row3.style = PdfGridCellStyle(
        textPen: PdfPens.black,
        font: PdfStandardFont(PdfFontFamily.helvetica, 20));

    row4.style = PdfGridCellStyle(
        textPen: PdfPens.black,
        font: PdfStandardFont(PdfFontFamily.helvetica, 20));
//Draw the grid in PDF document page
    grid.draw(
        page: document.pages.add(),
        bounds: const Rect.fromLTWH(0, 0, 500, 400));

    List<int> bytes = document.save();
    document.dispose();

    saveAndOpenFile(bytes, 'Report.pdf');
  }
}
