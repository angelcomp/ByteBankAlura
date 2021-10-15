
import 'package:bytebankalura/components/editor.dart';
import 'package:bytebankalura/models/transferencia.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const _tituloAppBar = 'Criando Transferência';
const _rotuloCampoValor = 'Valor';
const _dicaCampoValor = '0.00';
const _rotuloCampoNumConta = 'Número da conta';
const _dicaCampoNumConta = '0000';
const _confirmar = 'Confirmar';


class FormularioTransferencia extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FormularioTransferenciaState();
  }
}

class FormularioTransferenciaState extends State<FormularioTransferencia> {

  final TextEditingController _controladorNumConta = TextEditingController();
  final TextEditingController _controladorValor = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_tituloAppBar),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Editor(
              controlador: _controladorNumConta,
              label: _rotuloCampoNumConta,
              hint: _dicaCampoNumConta),
          Editor(
            controlador: _controladorValor,
            label: _rotuloCampoValor,
            hint: _dicaCampoValor,
            icone: Icons.monetization_on,
          ),
          ElevatedButton(
            onPressed: () => _criaTransferencia(context),
            child: Text(_confirmar),
          )
        ]),
      ),
    );
  }

  void _criaTransferencia(BuildContext context) {
    final int? conta = int.tryParse(_controladorNumConta.text);
    final double? valor = double.tryParse(_controladorValor.text);

    if (valor != null && conta != null) {
      final Transferencia t = Transferencia(valor, conta);
      Navigator.pop(context, t);
    }
  }
}
