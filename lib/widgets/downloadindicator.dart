import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class DownloadProgressIndicator extends StatefulWidget {
  @override
  _DownloadProgressIndicatorState createState() =>
      _DownloadProgressIndicatorState();
}

class _DownloadProgressIndicatorState extends State<DownloadProgressIndicator> {
  double downloadProgress = 0.0; // Initialize with 0% progress

  // Simulate the download progress (for demonstration purposes)
  void startDownload() {
    // Simulate a download with a loop
    for (int i = 1; i <=80; i++) {
      Future.delayed(const Duration(milliseconds: 100), () {
        setState(() {
          downloadProgress = i /100; // Update progress
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return
      Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[

              SizedBox(
                width: 200,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: LinearProgressIndicator(
                    color: Colors.grey,
                    value: downloadProgress, // Update the progress value
                    minHeight: 16.0, // Adjust the height of the progress bar
                    backgroundColor: Colors.grey, // Background color of the progress bar
                    valueColor: const AlwaysStoppedAnimation<Color>( Color(0xff91d657)), // Color of the progress bar
                  ),
                ),
              ),
            const   SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: startDownload,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const  Color(0xff00914c),
                  shape:RoundedRectangleBorder(
                    borderRadius:BorderRadius.circular(10),
                  )
                ),
                child:  Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                    const  Icon(Icons.file_download,
                      color: Colors.white,),
                      Text(' Download',
                      style: GoogleFonts.workSans(
                        fontSize: 20,
                        color: Colors.white
                      )),
                    ],
                  ),
                ),
              ),
            ],
          ),

    );
  }
}
