class DashboardState {
  bool over = true;

  // ValueNotifier<bool> over = ValueNotifier(false);
  List<Map> products = [
    {
      'id': '1',
      'title': 'Fast Clean',
      'icon': 'assets/icons/fast_clean.png',
      'deskripsi':
          'Fast Cleaning, merupakan layanan pembersihan sepatu yang dilakukan secara cepat dengan durasi 20 – 30 menit. Layanan ini membersihkan upper dan midsole segala jenis sepatu mulai dari sneakers, boots, flat shoes, high heels, wedges dan berbagai macam sepatu anak-anak dengan semua jenis bahan sepatu.',
      'image':
          'https://img.freepik.com/premium-photo/washing-sneakers-with-special-brush-tool-dirty-shoes-cleaning_63762-8687.jpg?w=900',
    },
    {
      'id': '2',
      'title': 'Deep Clean',
      'icon': 'assets/icons/deep_clean.png',
      'deskripsi':
          'Deep Cleaning, merupakan layanan perawatan sepatu yang membersihkantidak hanya pada bagian upper dan midsole saja namun juga ke semua bagian sepatu seperti outsole, insole, dan lace. Layanan perawatan ini  menerima berbagai macam jenis dan bahan sepatu. ',
      'image':
          'https://img.freepik.com/premium-photo/washing-sneakers-with-special-brush-tool-dirty-shoes-cleaning_63762-8687.jpg?w=900',
    },
    {
      'id': '3',
      'title': 'Unyellowing',
      'icon': 'assets/icons/unyellowing.png',
      'deskripsi':
          'Unyellowing and Whitening, merupakan layanan perawatan khusus untuk sepatu putih yang menjadi kekuningan dikarenakan teroksidasi. Perawatan membersihkan ke segala bagian sepatu.',
      'image':
          'https://img.freepik.com/premium-photo/washing-sneakers-with-special-brush-tool-dirty-shoes-cleaning_63762-8687.jpg?w=900',
    }
  ];

  List<Map> categories = [
    {
      'icon':
          'https://img.freepik.com/premium-photo/white-shoe-floating-blue-backgound_514990-7.jpg?w=900',
      'title': 'Upper',
      'deskripsi':
          'Upper adalah elemen yang terletak di atas sepatu yang melindungi kaki dan memberikan penampilan estetis pada sepatu. Material yang digunakan untuk upper dapat berupa kain, kulit, atau bahan sintetis.'
    },
    {
      'icon':
          'https://img.freepik.com/premium-photo/man-changes-insole-his-shoes-white-background-closeup_76255-1804.jpg?w=900',
      'title': 'Insole',
      'deskripsi':
          'Insole adalah bagian dalam sepatu yang berada di bawah kaki dan memberikan kenyamanan pada kaki. Insole biasanya terbuat dari bahan seperti busa, kain, atau kulit.'
    },
    {
      'icon':
          'https://img.freepik.com/premium-photo/sole-cloth-shoe-isolated-white-background-with-clipping-pa_360281-1701.jpg?w=900',
      'title': 'Midsole',
      'deskripsi':
          'Insole adalah bagian dalam sepatu yang berada di bawah kaki dan memberikan kenyamanan pada kaki. Insole biasanya terbuat dari bahan seperti busa, kain, atau kulit.'
    },
    {
      'icon':
          'https://img.freepik.com/premium-photo/tread-shoe-sole-white-background-footprint-footstep_650851-5687.jpg?w=740',
      'title': 'Outsole',
      'deskripsi':
          'Outsole adalah bagian bawah sepatu yang bersentuhan langsung dengan permukaan tanah. Outsole biasanya terbuat dari karet atau bahan lain yang tahan lama.'
    },
  ];

  List carousel = [
    'https://img.freepik.com/premium-photo/male-legs-wearing-sneakers-blue-wall-sport-shoes-training-gym-man-running-sneakers-near-color-wall-close-up_179369-790.jpg?w=900',
    'https://img.freepik.com/premium-photo/casual-sneakers-white-background-creative-minimalism_77190-8631.jpg?w=900',
  ];
}
