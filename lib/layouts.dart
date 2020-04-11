import 'package:flutter/material.dart';

class Layout extends StatefulWidget{

  @override
  _LayoutState createState() => new _LayoutState();
}

class _LayoutState extends State<Layout> {
  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new RaisedButton(
          onPressed: alerte,
          child: Text('Appuyer'),
      ),
    );
    return null;
  }


  void snack() {
    SnackBar snackBar = new SnackBar(
        content: Text('MyProject Application needed :D'),
        duration: new Duration(seconds: 1),
    );
    Scaffold.of(context).showSnackBar(snackBar);
  }

  Future alerte() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Vous devez créer un nouveau projet'),
          content: Text('Vive MyProject'),
          actions: <Widget>[
            new FlatButton(onPressed : () {
              print('Créer ?');
              Navigator.pop(context);
              },

              child: Text('Créer ?')
              ),
            new FlatButton(onPressed : () {
              print('Annuler ?');
              Navigator.pop(context);
              },
              child: Text('Annuler ?')
            ),
          ],
        );



                /// Navigator.of(context).pop();
              },
            );
       }

}