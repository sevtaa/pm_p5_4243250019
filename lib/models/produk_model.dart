class ProdukModel {
  final String id;
  final String nama;
  final String harga;
  final String kategori;
  final String deskripsi;

  const ProdukModel({
    required this.id,
    required this.nama,
    required this.harga,
    required this.kategori,
    required this.deskripsi,
  });
}

final List<ProdukModel> daftarProdukDummy = [
  const ProdukModel(
    id: '1',
    nama: 'Ichigo Daifuku Mochi',
    harga: 'Rp 15.000',
    kategori: 'Signature Mochi',
    deskripsi: 'Mochi super lembut dengan isian pasta cokelat manis dan buah stroberi segar utuh di dalamnya.',
  ),
  const ProdukModel(
    id: '2',
    nama: 'Matcha Boba Mochi Bites',
    harga: 'Rp 18.000',
    kategori: 'Signature Mochi',
    deskripsi: 'Potongan mochi kenyal disiram saus krim matcha premium dan tambahan boba kenyal.',
  ),
  const ProdukModel(
    id: '3',
    nama: 'Mango Cream Mille Crepe',
    harga: 'Rp 22.000',
    kategori: 'Sweet Treats',
    deskripsi: 'Kue lapis tipis bertumpuk dengan krim susu segar dan potongan buah mangga harum manis.',
  ),
  const ProdukModel(
    id: '4',
    nama: 'Soft Baked Red Velvet Cookie',
    harga: 'Rp 12.000',
    kategori: 'Cookies',
    deskripsi: 'Cookie hangat dengan tekstur lembut di dalam, bertabur lelehan krim keju (*cream cheese*).',
  ),
];
