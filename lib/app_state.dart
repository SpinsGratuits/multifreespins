import 'package:flutter/material.dart'
    show ChangeNotifier, Color, Colors, VoidCallback;
import 'package:shared_preferences/shared_preferences.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _Boutonsvisites =
          prefs.getStringList('ff_Boutonsvisites') ?? _Boutonsvisites;
    });
    _safeInit(() {
      _notifdicedreams =
          prefs.getBool('ff_notifdicedreams') ?? _notifdicedreams;
    });
    _safeInit(() {
      _notifcoinmaster =
          prefs.getBool('ff_notifcoinmaster') ?? _notifcoinmaster;
    });
    _safeInit(() {
      _notifpiggygo = prefs.getBool('ff_notifpiggygo') ?? _notifpiggygo;
    });
    _safeInit(() {
      _notifbingoblitz =
          prefs.getBool('ff_notifbingoblitz') ?? _notifbingoblitz;
    });
    _safeInit(() {
      _notifdominodreams =
          prefs.getBool('ff_notifdominodreams') ?? _notifdominodreams;
    });
    _safeInit(() {
      _notifmonopolygo =
          prefs.getBool('ff_notifmonopolygo') ?? _notifmonopolygo;
    });
    _safeInit(() {
      _notifmatchmasters =
          prefs.getBool('ff_notifmatchmasters') ?? _notifmatchmasters;
    });
    _safeInit(() {
      _premierlancementfait =
          prefs.getBool('ff_premierlancementfait') ?? _premierlancementfait;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<String> _Boutonsvisites = [];
  List<String> get Boutonsvisites => _Boutonsvisites;
  set Boutonsvisites(List<String> value) {
    _Boutonsvisites = value;
    prefs.setStringList('ff_Boutonsvisites', value);
  }

  void addToBoutonsvisites(String value) {
    Boutonsvisites.add(value);
    prefs.setStringList('ff_Boutonsvisites', _Boutonsvisites);
  }

  void removeFromBoutonsvisites(String value) {
    Boutonsvisites.remove(value);
    prefs.setStringList('ff_Boutonsvisites', _Boutonsvisites);
  }

  void removeAtIndexFromBoutonsvisites(int index) {
    Boutonsvisites.removeAt(index);
    prefs.setStringList('ff_Boutonsvisites', _Boutonsvisites);
  }

  void updateBoutonsvisitesAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    Boutonsvisites[index] = updateFn(_Boutonsvisites[index]);
    prefs.setStringList('ff_Boutonsvisites', _Boutonsvisites);
  }

  void insertAtIndexInBoutonsvisites(int index, String value) {
    Boutonsvisites.insert(index, value);
    prefs.setStringList('ff_Boutonsvisites', _Boutonsvisites);
  }

  bool _globalIsRefreshing = false;
  bool get globalIsRefreshing => _globalIsRefreshing;
  set globalIsRefreshing(bool value) {
    _globalIsRefreshing = value;
  }

  bool _Globalanimationcoin = false;
  bool get Globalanimationcoin => _Globalanimationcoin;
  set Globalanimationcoin(bool value) {
    _Globalanimationcoin = value;
  }

  bool _notifdicedreams = false;
  bool get notifdicedreams => _notifdicedreams;
  set notifdicedreams(bool value) {
    _notifdicedreams = value;
    prefs.setBool('ff_notifdicedreams', value);
  }

  bool _notifcoinmaster = false;
  bool get notifcoinmaster => _notifcoinmaster;
  set notifcoinmaster(bool value) {
    _notifcoinmaster = value;
    prefs.setBool('ff_notifcoinmaster', value);
  }

  bool _notifpiggygo = false;
  bool get notifpiggygo => _notifpiggygo;
  set notifpiggygo(bool value) {
    _notifpiggygo = value;
    prefs.setBool('ff_notifpiggygo', value);
  }

  bool _notifbingoblitz = false;
  bool get notifbingoblitz => _notifbingoblitz;
  set notifbingoblitz(bool value) {
    _notifbingoblitz = value;
    prefs.setBool('ff_notifbingoblitz', value);
  }

  bool _notifdominodreams = false;
  bool get notifdominodreams => _notifdominodreams;
  set notifdominodreams(bool value) {
    _notifdominodreams = value;
    prefs.setBool('ff_notifdominodreams', value);
  }

  bool _notifmonopolygo = false;
  bool get notifmonopolygo => _notifmonopolygo;
  set notifmonopolygo(bool value) {
    _notifmonopolygo = value;
    prefs.setBool('ff_notifmonopolygo', value);
  }

  bool _notifmatchmasters = false;
  bool get notifmatchmasters => _notifmatchmasters;
  set notifmatchmasters(bool value) {
    _notifmatchmasters = value;
    prefs.setBool('ff_notifmatchmasters', value);
  }

  bool _premierlancementfait = false;
  bool get premierlancementfait => _premierlancementfait;
  set premierlancementfait(bool value) {
    _premierlancementfait = value;
    prefs.setBool('ff_premierlancementfait', value);
  }

  bool _pubdejavue = false;
  bool get pubdejavue => _pubdejavue;
  set pubdejavue(bool value) {
    _pubdejavue = value;
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
