import 'package:flutter/material.dart';
import 'package:splashun_flutter/imageCardDetail/imageCardDetail.page.dart';

class ImageCards extends StatelessWidget {
  final List<String> _imageCardList;

  ImageCards(this._imageCardList);

  Widget _buildImageList(BuildContext context, int index) {
    return new Card(
      child: new Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: new Column(
          // Column is also layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug paint" (press "p" in the console where you ran
          // "flutter run", or select "Toggle Debug Paint" from the Flutter tool
          // window in IntelliJ) to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Image.asset('assets/images/myself.jpeg'),
            new RaisedButton(
              elevation: 3.0,
              highlightElevation: 8.0,
              highlightColor: Colors.black26,
              color: Colors.white,
              child: new Text('Details for: ' + index.toString()),
              onPressed: () => Navigator.push<bool>(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  ImageCardDetailPage(index.toString())))
                      .then((value) {
                    if (value) {
                      _imageCardList.removeAt(index);
                    }
                  }),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
// Creates a scrollable, linear array of widgets that are created on demand.
// This constructor is appropriate for list views with a large (or infinite) number of children because the builder is called only for those children that are actually visible.
// Providing a non-null itemCount improves the ability of the ListView to estimate the maximum scroll extent.
// The itemBuilder callback will be called only with indices greater than or equal to zero and less than itemCount.
// The itemBuilder should actually create the widget instances when called.
// Avoid using a builder that returns a previously-constructed widget;
// if the list view's children are created in advance, or all at once when the ListView itself is created,
// it is more efficient to use new ListView. Even more efficient,
// however, is to create the instances on demand using this constructor's itemBuilder callback.
    return _imageCardList.length > 0
        ? new ListView.builder(
            itemBuilder: _buildImageList,
            itemCount: _imageCardList.length,
          )
        : Center(
            child: Container(
              padding: EdgeInsets.all(3.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3.0),
                border: Border.all(style: BorderStyle.solid, width: 2.0),
              ),
              child: Text(
                "No data",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.red,
                  textBaseline: TextBaseline.alphabetic,
                  fontSize: 26.0,
                  fontFamily: 'Ubuntu',
                ),
              ),
            ),
          );
  }
}
