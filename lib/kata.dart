class Kata {
  String? kataID;
  String? kata;
  String? transkripsi;
  String? makna;
  String? ayat;

  Kata({this.kataID, this.kata, this.transkripsi, this.makna, this.ayat});

  Kata.fromJson(Map<String, dynamic> json) {
    kataID = json['kataID'];
    kata = json['kata'];
    transkripsi = json['transkripsi'];
    makna = json['makna'];
    ayat = json['ayat'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['kataID'] = kataID;
    data['kata'] = kata;
    data['transkripsi'] = transkripsi;
    data['makna'] = makna;
    data['ayat'] = ayat;
    return data;
  }
}
