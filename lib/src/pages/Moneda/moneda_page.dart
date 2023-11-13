import 'package:flutter/material.dart';

class MonedaPage extends StatelessWidget {
  const MonedaPage({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CambioMoneda(),
      
    );
  }
}

class CambioMoneda extends StatefulWidget {
  @override
  _CambioMoneda createState() => _CambioMoneda();
}

class _CambioMoneda extends State<CambioMoneda> {
  double cantidad = 0.0;
  double euro = 0.038;
  double dolar = 0.041;
  double lempira_dolar = 24.61;
  double lempira_euro = 26.31;
  String monedaSeleccionada = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("App Ceutec"),
          backgroundColor: Colors.red,
        ),
        body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              monedaSeleccionada = 'Dolar';
                            });
                          },
                          child: Text('Lempira a Dolar')),
                      SizedBox(
                        width: 30,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              monedaSeleccionada = 'Euro';
                            });
                          },
                          child: Text('Lempira a Euro')
                          ),
                           SizedBox(
                        width: 30,
                      ),
                    ],
                  ),
  ElevatedButton(
                          onPressed: () {
                            setState(() {
                              monedaSeleccionada = 'Lempira_E';
                            });
                          },
                          child: Text('Euro a Lempira')
                          ),  SizedBox(
                        width: 30,
                      ),
                           
                   ElevatedButton(
                          onPressed: () {
                            setState(() {
                              monedaSeleccionada = 'Lempira_D';
                            });
                          },
                          child: Text('Dolar a Lempira')  ),
                
                  SizedBox(height: 20.0),
                  TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: 'Cantidad',
                    ),
                    onChanged: (value) {
                      setState(() {
                        cantidad = double.tryParse(value) ?? 0.0;
                      });
                    },
                  ),
                  SizedBox(height: 20.0),
                  Text(
                    'Resultado: ${calculateResult()}',
                    style: TextStyle(fontSize: 18.0),
                  ),
                ]
                )
                
                )
     );
  }

  String calculateResult() {
    double resultado = 0.0;
    if (monedaSeleccionada == 'Dolar') {
      resultado = cantidad * dolar;
    } else if (monedaSeleccionada == 'Euro') {
      resultado = cantidad * euro;
    }
    else if (monedaSeleccionada == 'Lempira_D') {
      resultado = cantidad * lempira_dolar;
    } else if (monedaSeleccionada == 'Lempira_E') {
      resultado = cantidad * lempira_euro;
    }
    return resultado.toStringAsFixed(2);
  }
}
