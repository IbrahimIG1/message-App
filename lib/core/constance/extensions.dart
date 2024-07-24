extension StringExtension<t> on String? {
  bool isNullOrEmpty() => this == null || this!.isEmpty|| this == ""|| this == " ";
}
