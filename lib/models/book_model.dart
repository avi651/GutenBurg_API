class BookModel {
  int? count;
  String? next;
  Null? previous;
  List<Results>? results;

  BookModel({this.count, this.next, this.previous, this.results});

  BookModel.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    next = json['next'];
    previous = json['previous'];
    if (json['results'] != null) {
      results = <Results>[];
      json['results'].forEach((v) {
        results!.add(new Results.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['count'] = this.count;
    data['next'] = this.next;
    data['previous'] = this.previous;
    if (this.results != null) {
      data['results'] = this.results!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Results {
  int? id;
  List<Authors>? authors;
  List<String>? bookshelves;
  int? downloadCount;
  Formats? formats;
  List<String>? languages;
  String? mediaType;
  List<String>? subjects;
  String? title;

  Results(
      {this.id,
      this.authors,
      this.bookshelves,
      this.downloadCount,
      this.formats,
      this.languages,
      this.mediaType,
      this.subjects,
      this.title});

  Results.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    if (json['authors'] != null) {
      authors = <Authors>[];
      json['authors'].forEach((v) {
        authors!.add(new Authors.fromJson(v));
      });
    }
    bookshelves = json['bookshelves'].cast<String>();
    downloadCount = json['download_count'];
    formats =
        json['formats'] != null ? new Formats.fromJson(json['formats']) : null;
    languages = json['languages'].cast<String>();
    mediaType = json['media_type'];
    subjects = json['subjects'].cast<String>();
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    if (this.authors != null) {
      data['authors'] = this.authors!.map((v) => v.toJson()).toList();
    }
    data['bookshelves'] = this.bookshelves;
    data['download_count'] = this.downloadCount;
    if (this.formats != null) {
      data['formats'] = this.formats!.toJson();
    }
    data['languages'] = this.languages;
    data['media_type'] = this.mediaType;
    data['subjects'] = this.subjects;
    data['title'] = this.title;
    return data;
  }
}

class Authors {
  int? birthYear;
  int? deathYear;
  String? name;

  Authors({this.birthYear, this.deathYear, this.name});

  Authors.fromJson(Map<String, dynamic> json) {
    birthYear = json['birth_year'];
    deathYear = json['death_year'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['birth_year'] = this.birthYear;
    data['death_year'] = this.deathYear;
    data['name'] = this.name;
    return data;
  }
}

class Formats {
  String? applicationXMobipocketEbook;
  String? textPlainCharsetUtf8;
  String? applicationRdfXml;
  String? textPlainCharsetIso88591;
  String? applicationEpubZip;
  String? imageJpeg;
  String? textHtmlCharsetUtf8;
  String? applicationPdf;
  String? textPlainCharsetUsAscii;
  String? applicationZip;
  String? textPlain;
  String? textHtmlCharsetIso88591;
  String? textHtmlCharsetUsAscii;
  String? textHtml;

  Formats(
      {this.applicationXMobipocketEbook,
      this.textPlainCharsetUtf8,
      this.applicationRdfXml,
      this.textPlainCharsetIso88591,
      this.applicationEpubZip,
      this.imageJpeg,
      this.textHtmlCharsetUtf8,
      this.applicationPdf,
      this.textPlainCharsetUsAscii,
      this.applicationZip,
      this.textPlain,
      this.textHtmlCharsetIso88591,
      this.textHtmlCharsetUsAscii,
      this.textHtml});

  Formats.fromJson(Map<String, dynamic> json) {
    applicationXMobipocketEbook = json['application/x-mobipocket-ebook'];
    textPlainCharsetUtf8 = json['text/plain; charset=utf-8'];
    applicationRdfXml = json['application/rdf+xml'];
    textPlainCharsetIso88591 = json['text/plain; charset=iso-8859-1'];
    applicationEpubZip = json['application/epub+zip'];
    imageJpeg = json['image/jpeg'];
    textHtmlCharsetUtf8 = json['text/html; charset=utf-8'];
    applicationPdf = json['application/pdf'];
    textPlainCharsetUsAscii = json['text/plain; charset=us-ascii'];
    applicationZip = json['application/zip'];
    textPlain = json['text/plain'];
    textHtmlCharsetIso88591 = json['text/html; charset=iso-8859-1'];
    textHtmlCharsetUsAscii = json['text/html; charset=us-ascii'];
    textHtml = json['text/html'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['application/x-mobipocket-ebook'] = this.applicationXMobipocketEbook;
    data['text/plain; charset=utf-8'] = this.textPlainCharsetUtf8;
    data['application/rdf+xml'] = this.applicationRdfXml;
    data['text/plain; charset=iso-8859-1'] = this.textPlainCharsetIso88591;
    data['application/epub+zip'] = this.applicationEpubZip;
    data['image/jpeg'] = this.imageJpeg;
    data['text/html; charset=utf-8'] = this.textHtmlCharsetUtf8;
    data['application/pdf'] = this.applicationPdf;
    data['text/plain; charset=us-ascii'] = this.textPlainCharsetUsAscii;
    data['application/zip'] = this.applicationZip;
    data['text/plain'] = this.textPlain;
    data['text/html; charset=iso-8859-1'] = this.textHtmlCharsetIso88591;
    data['text/html; charset=us-ascii'] = this.textHtmlCharsetUsAscii;
    data['text/html'] = this.textHtml;
    return data;
  }
}
