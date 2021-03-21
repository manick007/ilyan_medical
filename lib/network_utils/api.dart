import 'dart:convert';
import 'package:http/http.dart' as http;

class Network {
  final String _url = 'http://ilyan.mrmarketafrica.org/api';
  //if you are using android studio emulator, change localhost to 10.0.2.2
  var token;

  /*_getToken() async {
    SharedPreferences localStorage = await SharedPreferences.getInstance();
    token = jsonDecode(localStorage.getString('token'))['token'];
  }*/

  authData(data, apiUrl) async {
    var fullUrl = _url + apiUrl;
    return await http.post(fullUrl,
        body: jsonEncode(data), headers: _setHeaders());
  }

  authDataPut(data, apiUrl) async {
    var fullUrl = _url + apiUrl;
    return await http.put(
      fullUrl,
      body: data /*jsonEncode(data) */, /*headers: _setHeaders()*/
    );
  }

  getData(apiUrl) async {
    var fullUrl = _url + apiUrl;
    //await _getToken();
    return await http.get(fullUrl /*, headers: _setHeaders()*/);
  }

  _setHeaders() => {
        'Content-type': 'application/json',
        'Accept': 'application/json'
        //'Authorization': 'Bearer $token'
      };
}
