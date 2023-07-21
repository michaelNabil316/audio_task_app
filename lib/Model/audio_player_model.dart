class AudioModel {
  int? id;
  int? chapterId;
  int? fileSize;
  String? format;
  int? totalFiles;
  String? audioUrl;

  AudioModel(
      {this.id,
      this.chapterId,
      this.fileSize,
      this.format,
      this.totalFiles,
      this.audioUrl});

  AudioModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    chapterId = json['chapter_id'];
    fileSize = json['file_size'];
    format = json['format'];
    totalFiles = json['total_files'];
    audioUrl = json['audio_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['chapter_id'] = this.chapterId;
    data['file_size'] = this.fileSize;
    data['format'] = this.format;
    data['total_files'] = this.totalFiles;
    data['audio_url'] = this.audioUrl;
    return data;
  }
}
