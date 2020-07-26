import 'package:flutter/material.dart';
import 'package:intl/intl.dart' show DateFormat;

import '../widgets/ane_date_time_field.dart';
import '../widgets/ane_textfield.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil'),
      ),
      body: SafeArea(
        minimum: const EdgeInsets.all(16.0),
        child: ProfilePageBody(),
      ),
    );
  }
}

class ProfilePageBody extends StatelessWidget {
  const ProfilePageBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Container(
          child: ProfileForm(),
        ),
      ),
    );
  }
}

class ProfileForm extends StatelessWidget {
  final DateFormat dateFormat = DateFormat('dd.MM.yyyy');

  @override
  Widget build(BuildContext context) {
    final SizedBox smallDistance = SizedBox(height: 15.0);
    final SizedBox mediumDistance = SizedBox(height: 30.0);
    final TextStyle subTitle = Theme.of(context).textTheme.subtitle1;

    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Text(
            'Angaben zur Person',
            style: subTitle,
          ),
          smallDistance,
          AneTextField(
            labelText: 'Vorname',
          ),
          smallDistance,
          AneTextField(
            labelText: 'Nachname',
          ),
          smallDistance,
          AneDateTimeField(
            dateFormat: dateFormat,
            firstDate: DateTime(1900),
            initialDate: DateTime(1995),
            lastDate: DateTime.now(),
            labelText: 'Geburtstag',
          ),
          smallDistance,
          AneTextField(
            labelText: 'Geburtsort/ggf. -land',
          ),
          mediumDistance,
          Text(
            'Akademische Grade',
            style: subTitle,
          ),
          smallDistance,
          CheckboxListTile(
            value: false,
            title: Text('Dr. med.'),
            onChanged: (value) {},
          ),
          AneTextField(
            labelText: 'Sonstige akademische Grade',
          ),
          smallDistance,
          CheckboxListTile(
            title: Text('Ausländische Grade'),
            value: false,
            onChanged: (value) {},
          ),
          AneTextField(
            labelText: 'Welche ausländische Grade',
          ),
          mediumDistance,
          Text(
            'Angaben zu Prüfungen and Approbation',
            style: subTitle,
          ),
          smallDistance,
          AneDateTimeField(
            labelText: 'Ärztliche Prüfung',
            dateFormat: dateFormat,
            firstDate: DateTime(1900),
            initialDate: DateTime.now(),
            lastDate: DateTime.now(),
          ),
          smallDistance,
          AneDateTimeField(
            labelText: 'Zahnärztliches Staatsexamen (nur bei MKG-Chirurgie)',
            dateFormat: dateFormat,
            firstDate: DateTime(1900),
            initialDate: DateTime.now(),
            lastDate: DateTime.now(),
          ),
          smallDistance,
          AneDateTimeField(
            labelText: 'Approbation als Arzt bzw. Berufserlaubnis',
            dateFormat: dateFormat,
            firstDate: DateTime(1900),
            initialDate: DateTime.now(),
            lastDate: DateTime.now(),
          ),
          mediumDistance,
          RaisedButton(
            onPressed: () {},
            child: Text('Speichern'),
          ),
        ],
      ),
    );
  }
}
