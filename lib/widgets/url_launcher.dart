import 'package:url_launcher/url_launcher.dart';

launchDialer(String number) async {
  String url = 'tel:' + number;
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Application unable to open dialer.';
  }
}

 launchMail() async {
  String email = Uri.encodeComponent('info@osudkini.com');
  String subject = Uri.encodeComponent("Subject");
  String body = Uri.encodeComponent("Body");
  //output: Hello%20Flutter
  Uri mail = Uri.parse("mailto:$email?subject=$subject&body=$body");

  if (await launchUrl(mail)) {
    await launch(mail.toString());
  }else{
    throw 'Application unable to open dialer.';
  }
}