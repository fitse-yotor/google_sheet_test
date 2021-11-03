import 'dart:html';

import 'package:flutter/material.dart';
import 'package:gsheets/gsheets.dart';

//create credential
const _Credential = r'''
{
  "type": "service_account",
  "project_id": "flutter-test-gss",
  "private_key_id": "63a638d115a0f9567a830cc3ac6357b907a698ab",
  "private_key": "-----BEGIN PRIVATE KEY-----\nMIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQDEpw/4O98OaZmM\nbDF9nYrH0mdG55qDG2r6WKkrmCik912oUO5+gbXKVm7uMP4fwbNpoarT1+CIFBfo\nxZrpzzj9729tG1YzXmsnTrOsAPQbCZO8dfgem8nox3bZSdVdMb3OlVL64nidTvjt\n8GS0C7t4yqcD5UnP9YHaPjw7befju1b5yISFOI/rLOODy+WA4UIq5mTjAFJTKlVu\nykskPL+ogYvHxBh0AGqEHmcadSaSynvsmaxYK6QAbG3PVxP2N5mq9FIeO4M30YwK\nJzVeA76cJv7jIRW4MgbhXG+ia5HI5qHFaiMYKT/gbVpcnCNMLwCRbO/pQV3VBJJC\nZGEI6hHzAgMBAAECggEABAsKMPnbEnEONyp1OAesIlut9TaWCHn0kJvybibA/GdK\n9Z9zbV72ftQ2o+KqNkTbrGswYYQ+iEeLoiTgscICM3YMC3gITI7rmBGQl2w6XYN7\nKdcLiY3f4ZRv94fu921HzchUFsW3xJUgzygq7i3LazVkCqwdz6eP4ytOoQZSy+2c\nrAUfzJxtI1gWSQv5XxgbEvd1hCTTxQoBh/5udVAvqoc1QldHz5wahMQo6nBMX46H\nz3WkKRTbgMSSCfZDNwpQwm9XTt1fHZbawK3Vijb2T8dSc/ey3Ui1ZEp8xcWMGNEA\nVB4no2iKZAAzXxbpzWcoHeJAVFAO64owaGo5d1M3TQKBgQDvpikCx8foKQnGEVyA\nLvRra1LOoiJ7n7VdvE8NTcrj/8PwYu4Uv2mYtjq5k2LbYN8H9xA+pBrEkw1gsyyu\nyJOkUBoWj7CJ/LEwEWG42EOY6TGchA/U4Niuq6okxgKTAODhyq2hDWX5pxkiBqZo\nOnIrXrH8UWBaGMe476WZCJ4cVQKBgQDSEecNIpFuzAZwKclwPSlvtSZd1dmq/7rz\nph/XqbuK3UhmduRwjEpcG1mzmJGLPhy1SCYZJMswINO051HX7V+ZZvaxUBxjHYIF\n/m7LMSFrFpOnrZmzHhe4URQLxzWGZV5akRMWp7iMeCmc7Ofjn6tuHqF7NrRjT+Cj\nt+QX70W9JwKBgEjgxPP9gUOOx1Qej3zDyryoBKSmFcp2hRceXwPytlKjwxhlXXWd\nyCUStcUdlyCT0v9/GMeT7Df/aEAR/PKiOJPtcCGQTOWJnPC7OHaX/eaQc+/fEVlx\njzN/LNzGAp5l0/2WPzsM8gf70t7QGubzbyjVQVc0ABMmGgaZikiBoGOJAoGBAMcQ\nDemlgzkB/2vUPT2tx5FCkNvEpSJkeS0fk/cSsVQywsPOEEUSu/gyNrt4bRsMvbmP\naALVmfG+eb9ooGbEWp4MMuLtbikCMk8pvqWvpeJLn5n6aLaSYpnXwu4yVOdJMbMS\n3IrQXpJF3/EDke5iRNnyDsWqnh+p9s5NmMiRhX1rAoGBAN5quwTHA5jSTsOcDadJ\nXAxXbua89Cx+5i6z0oyuBL7qFlZKmq6DKPMq8b7kReZptOqlQ298FEFKZYs9rvbp\n4g50uoCVQDiZiQBBfOIhkfkoBP2gADDRi4MXdjmnUSkwW3+Fz69W07Z5JNb7AU4z\npGgdZjsCh/OUkupMF5a1C9xh\n-----END PRIVATE KEY-----\n",
  "client_email": "flutter-gss-test@flutter-test-gss.iam.gserviceaccount.com",
  "client_id": "102860948305315553465",
  "auth_uri": "https://accounts.google.com/o/oauth2/auth",
  "token_uri": "https://oauth2.googleapis.com/token",
  "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
  "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/flutter-gss-test%40flutter-test-gss.iam.gserviceaccount.com"
}
''';
//spreedsheet id
const _spreedSheetId = '1Z3krxPZNcEF7FMAP_iSlN_XKIdHwZZ0gghgFonZfFFc/';
void main() async {
  //inital gsheet
  final gsheets = GSheets(_Credential);
  //fetch sprred shit by id
  final ss = await gsheets.spreadsheet(_spreedSheetId);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
