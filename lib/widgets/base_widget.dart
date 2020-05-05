import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BaseWidget<T extends ChangeNotifier> extends StatefulWidget {
  final Widget Function(BuildContext) builder;
  final Function(T) onModelReady;
  final T viewModel;

  const BaseWidget({Key key, this.builder, this.onModelReady, this.viewModel}) : super(key: key);
  
  @override
  _BaseWidgetState<T> createState() => _BaseWidgetState<T>();
}

class _BaseWidgetState<T extends ChangeNotifier> extends State<BaseWidget> {
  T _model;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _model = widget.viewModel;

    if(widget.viewModel != null) {
      widget.onModelReady(_model);
    }
  }
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => _model,
      child: widget.builder(context),
    );
  }
}