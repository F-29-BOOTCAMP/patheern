class Company {
  final String? companyName;
  final String? job;
  final String? city;
  final String? sallary;
  final String? image;
  final String? mainCriteria;
  final String? jobOpportunity;
  final String? aboutCompany;
  final List<String>? jobResponsbilities;
  final List<String>? tag;
  Company({
    this.city,
    this.job,
    this.companyName,
    this.sallary,
    this.tag,
    this.image,
    this.mainCriteria,
    this.jobOpportunity,
    this.jobResponsbilities,
    this.aboutCompany,
  });
}

List<Company> companyList = [
  Company(
    companyName: "Nike",
    job: "UI Designer Stajyeri",
    city: "Taksim, İstanbul",
    sallary: "Ücretli",
    image: "assets/nike-Logo.png",
    tag: [
      "Tam Zamanlı",
      "İş Yerinde",
      "3 Ay",
    ],
    mainCriteria: "Tam Zamanlı",
    jobOpportunity:
      "Nike, UI tasarım alanında yetenekli ve tutkulu stajyerler arıyor. Bu staj programı, stajyerlere gerçek dünya projelerinde deneyim kazandırmayı ve profesyonel becerilerini geliştirmelerine yardımcı olmayı hedeflemektedir. Stajyerler, Nike'nin lider tasarım ekibiyle birlikte çalışacak ve kullanıcı deneyimini iyileştiren yenilikçi tasarımlar oluşturacaklar. Staj programı süresince stajyerler, gerçek projeler üzerinde sorumluluk alacak ve kendi fikirlerini sunma fırsatı bulacaklar.",
    jobResponsbilities: [
      "UI tasarım projelerinde aktif olarak yer almak.",
      "Kullanıcı araştırmalarına katılmak ve elde edilen verileri analiz etmek.",
      "Tasarım sürecinin farklı aşamalarında işbirliği yapmak ve fikirler sunmak.",
      "Tasarım trendlerini takip etmek ve güncel kalmak.",
      "Tasarım ekibine yardımcı olmak ve projelerde destek sağlamak.",
    ],
    aboutCompany:
      "Nike, spor giyim ve ayakkabı alanında dünya çapında tanınan bir markadır. 1964 yılında kurulan Nike, yenilikçi ürünleri ve etkileyici tasarımlarıyla sporculara ilham vermektedir. Nike, yaratıcı bir çalışma ortamına sahiptir ve tasarım alanında yetenekli profesyonelleri bünyesine katmayı hedeflemektedir.",
  ),
  Company(
    companyName: "Uber",
    job: "Veri Bilimi",
    city: "Levent, İstanbul",
    sallary: "Ücretli",
    image: "assets/uber-logo-redesign_1x.png",
    tag: [
      "Yarı Zamanlı",
      "Uzaktan",
      "2 Ay",
    ],
    mainCriteria: "Yarı Zamanlı",
    jobOpportunity:
        "Uber, veri bilimi alanında yetenekli ve tutkulu stajyerler arıyor. Bu staj programı, stajyerlere gerçek dünya projelerinde deneyim kazandırmayı ve veri analitiği becerilerini geliştirmelerine yardımcı olmayı hedeflemektedir. Stajyerler, Uber'ın veri bilimi ekibiyle birlikte çalışacak ve büyük veri setlerini analiz ederek iş stratejileri ve kullanıcı deneyimini iyileştiren çözümler üretecekler. Staj programı süresince stajyerler, gerçek veri projelerinde sorumluluk alacak ve veri analizi konusunda deneyim kazanacaklar.",
    jobResponsbilities: [
      "Büyük veri setlerini analiz ederek veri odaklı çözümler üretmek.",
      "Veri görselleştirme araçları ve analitik yöntemler kullanarak veri analizi yapmak.",
      "Veri tabanlarından veri çekmek ve manipüle etmek.",
      "Veri trendlerini takip etmek ve iş stratejilerine entegre etmek.",
      "Veri analizi sonuçlarını sunumlar ve raporlar halinde paylaşmak.",
    ],
    aboutCompany:
        "Uber, uluslararası bir teknoloji şirketidir ve küresel ulaşım sektöründe lider konumdadır. Uber, yenilikçi mobil uygulamasıyla kullanıcılarına kolay ve güvenli bir ulaşım deneyimi sunmaktadır. Uber'ın veri odaklı çalışma kültürü, stajyerlere değerli bir öğrenme ve deneyim fırsatı sağlamaktadır. Stajyerler, büyük veri analitiği projelerinde yer alacak ve gerçek dünya verileri üzerinde çalışarak veri bilimi becerilerini geliştirecekler.",
  ),
  Company(
    companyName: "Sound Cloud",
    job: "Stajyer Veri Mühendisi",
    city: "Nilüfer, Bursa",
    sallary: "Ücretli",
    image: "assets/soundcloud-icon.png",
    tag: [
      "Tam Zamanlı",
      "İş Yerinde",
      "3 Ay",
    ],
    mainCriteria: "İş Yerinde",
    jobOpportunity:
      "Sound Cloud, veri mühendisliği alanında yetenekli ve tutkulu stajyerler arıyor. Bu staj programı, stajyerlere gerçek dünya projelerinde deneyim kazandırmayı ve veri işleme ve analitiği becerilerini geliştirmelerine yardımcı olmayı hedeflemektedir. Stajyerler, Sound Cloud'un veri mühendisliği ekibiyle birlikte çalışacak ve büyük veri setlerini işleyerek veri tabanları oluşturacak, veri akışını optimize edecek ve veri analizi için araçlar geliştirecekler. Staj programı süresince stajyerler, gerçek veri projelerinde sorumluluk alacak ve veri mühendisliği konusunda deneyim kazanacaklar.",
    jobResponsbilities: [
      "Büyük veri setlerini işlemek ve veri tabanları oluşturmak.",
      "Veri akışını optimize etmek ve veri analitiği için araçlar geliştirmek.",
      "Veri güvenliği ve veri bütünlüğünü sağlamak.",
      "Veri tabanı performansını izlemek ve iyileştirmek.",
      "Veri işleme süreçlerini otomatikleştirmek.",
    ],
    aboutCompany:
      "Sound Cloud, müzik paylaşımı ve akışı konusunda önde gelen bir platformdur. Sound Cloud, yenilikçi teknolojileri kullanarak milyonlarca kullanıcıya müzik deneyimi sunmaktadır. Sound Cloud'un veri odaklı çalışma kültürü, stajyerlere değerli bir öğrenme ve deneyim fırsatı sağlamaktadır. Stajyerler, gerçek dünya veri projelerinde yer alacak ve veri mühendisliği becerilerini geliştirirken Sound Cloud'un büyümesine katkıda bulunacaklar.",
  ),
  Company(
    companyName: "YouTube",
    job: "Stajyer Veri Mühendisi",
    city: "Maslak, İstanbul",
    sallary: "Ücretli",
    image:
        "assets/youtube-black-icon-youtube-icon-youtube-logo-youtube-png-and-black-youtube-logo-640_640.png",
    tag: [
      "Yarı Zamanlı",
      "Uzaktan",
      "2 Ay",
    ],
    mainCriteria: "Yarı Zamanlı",
    jobOpportunity:
      "YouTube, veri analizi alanında yetenekli ve tutkulu bir stajyer arıyor. Bu staj programı, stajyerlere gerçek dünya veri projelerinde deneyim kazandırmayı ve veri analizi becerilerini geliştirmelerine yardımcı olmayı hedeflemektedir. Stajyerler, YouTube veri analitiği ekibiyle birlikte çalışacak ve büyük veri setlerini analiz edecek, veri raporları oluşturacak ve veri odaklı kararlar vermek için içgörüler sağlayacaklar. Staj programı süresince stajyerler, gerçek veri projelerinde sorumluluk alacak ve veri analitiği konusunda deneyim kazanacaklar.",
    jobResponsbilities: [
      "Büyük veri setlerini analiz etmek ve içgörüler sağlamak.",
      "Veri raporları oluşturmak ve sunmak.",
      "Veri tabanlı karar verme süreçlerine katkıda bulunmak.",
      "Veri analizi araçlarını kullanarak veri keşfi yapmak.",
      "Veri tabanlı trendleri ve pazar eğilimlerini analiz etmek.",
    ],
    aboutCompany:
      "YouTube, dünyanın en büyük video paylaşım platformlarından biridir. Milyonlarca kullanıcıya hitap eden YouTube, geniş bir veri kümesiyle çalışmaktadır. YouTube'un veri analitiği ekibi, verileri analiz ederek platformun gelişimine katkıda bulunur ve içgörüler sağlar. Stajyerler, gerçek dünya veri projelerinde yer alacak ve veri analitiği becerilerini geliştirirken YouTube'un büyümesine katkıda bulunacaklar.",
  ),
  Company(
    companyName: "Apple.inc",
    job: "Sistem Mühendisi",
    city: "Beşiktaş, İstanbul",
    sallary: "Ücretli",
    image: "assets/download.png",
    tag: [
      "Tam Zamanlı",
      "İş Yerinde",
      "3 Ay",
    ],
    mainCriteria: "Tam Zamanlı",
    jobOpportunity:
      "Apple.inc, sistem güvenlik mühendisi stajyeri aramaktadır. Bu staj programı, güvenlik konularında yetenekli ve motivasyonlu öğrencilere gerçek dünya deneyimi sağlamayı hedeflemektedir. Stajyerler, Apple'ın güvenlik mühendisleriyle birlikte çalışacak, sistem güvenliği sorunlarını analiz edecek ve güvenlik çözümleri geliştirecekler. Ayrıca, güvenlik testleri yapacak, potansiyel güvenlik açıklarını tespit edecek ve çözüm önerileri sunacaklar. Staj programı boyunca stajyerler, Apple'ın liderlik ettiği projelerde yer alacak ve güvenlik mühendisliği alanında deneyim kazanacaklar.",
    jobResponsbilities: [
      "Sistem güvenliği sorunlarını analiz etmek ve güvenlik çözümleri geliştirmek.",
      "Güvenlik testleri yapmak ve potansiyel güvenlik açıklarını tespit etmek.",
      "Güvenlik olaylarına yanıt vermek ve sorunları çözmek.",
      "Güvenlik politika ve prosedürlerini uygulamak ve güncellemek.",
      "Güvenlik açığı taramaları ve denetimleri yapmak.",
    ],
    aboutCompany:
      "Apple.inc, dünyanın önde gelen teknoloji şirketlerinden biridir. İnovasyon ve kalite odaklı ürünleriyle tanınan Apple, geniş bir ürün yelpazesine sahiptir. Apple'ın güvenlik mühendisleri, şirketin sistemlerini ve ürünlerini güvende tutmak için çalışmaktadır. Stajyerler, Apple'ın güvenlik mühendisleriyle birlikte çalışarak güvenlik mühendisliği becerilerini geliştirecek ve gerçek dünya projelerinde sorumluluk alacaklardır.",
  ),
  Company(
    companyName: "Monobank",
    job: "Stajyer Bilgisayar Mühendisi",
    city: "Beştepe, Ankara",
    sallary: "Ücretli",
    image: "assets/mb4.jpg",
    tag: [
      "Tam Zamanlı",
      "İş Yerinde",
      "3 Ay",
    ],
    mainCriteria: "Tam Zamanlı",
    jobOpportunity:
      "Monobank, bilgisayar mühendisi stajyeri aramaktadır. Bu staj programı, deneyimli ve yetenekli bir mühendise gerçek dünya deneyimi sunmayı hedeflemektedir. Stajyerler, Monobank'ın teknik ekibiyle birlikte çalışacak, uygulama geliştirme sürecinde yer alacak ve yeni projelerde sorumluluk alacaklar. Full stack teknolojileri kullanarak kullanıcı dostu ve ölçeklenebilir uygulamalar geliştirecekler. Ayrıca, mevcut ürünlerin bakımını yapacak, hataları giderip performans iyileştirmeleri yapacaklar. Staj programı boyunca stajyerler, gerçek dünya projelerinde çalışarak kapsamlı bir mühendislik deneyimi kazanacaklar.",
    jobResponsbilities: [
      "Full stack teknolojilerini kullanarak kullanıcı dostu ve ölçeklenebilir uygulamalar geliştirmek.",
      "Mevcut ürünlerin bakımını yapmak, hataları gidermek ve performans iyileştirmeleri yapmak.",
      "Yeni projelerde aktif olarak yer almak ve sorumluluk almak.",
      "Teknik ekip ile işbirliği yaparak iş akışını optimize etmek.",
      "Geliştirme sürecinde en iyi uygulamaları ve standartları takip etmek.",
    ],
    aboutCompany:
        "Monobank, finansal teknolojiler alanında önde gelen bir şirkettir. Kullanıcı dostu bankacılık çözümleri sunan Monobank, yenilikçi yaklaşımıyla bilinmektedir. Şirket, kullanıcı deneyimine odaklanarak müşterilerine benzersiz bir bankacılık deneyimi sunmayı hedeflemektedir. Stajyerler, Monobank'ın teknik ekibiyle birlikte çalışarak uygulama geliştirme ve mühendislik becerilerini geliştirecek ve finansal teknolojiler alanında deneyim kazanacaklar.",
  ),
];

List<Company> recentList = [
  Company(
    companyName: "Sound Cloud",
    job: "Stajyer Veri Mühendisi",
    city: "Nilüfer, Bursa",
    sallary: "Ücretli",
    image: "assets/soundcloud-icon.png",
    tag: [
      "Tam Zamanlı",
      "İş Yerinde",
      "3 Ay",
    ],
    mainCriteria: "İş Yerinde",
    jobOpportunity:
      "Sound Cloud, veri mühendisliği alanında yetenekli ve tutkulu stajyerler arıyor. Bu staj programı, stajyerlere gerçek dünya projelerinde deneyim kazandırmayı ve veri işleme ve analitiği becerilerini geliştirmelerine yardımcı olmayı hedeflemektedir. Stajyerler, Sound Cloud'un veri mühendisliği ekibiyle birlikte çalışacak ve büyük veri setlerini işleyerek veri tabanları oluşturacak, veri akışını optimize edecek ve veri analizi için araçlar geliştirecekler. Staj programı süresince stajyerler, gerçek veri projelerinde sorumluluk alacak ve veri mühendisliği konusunda deneyim kazanacaklar.",
    jobResponsbilities: [
      "Büyük veri setlerini işlemek ve veri tabanları oluşturmak.",
      "Veri akışını optimize etmek ve veri analitiği için araçlar geliştirmek.",
      "Veri güvenliği ve veri bütünlüğünü sağlamak.",
      "Veri tabanı performansını izlemek ve iyileştirmek.",
      "Veri işleme süreçlerini otomatikleştirmek.",
    ],
    aboutCompany:
      "Sound Cloud, müzik paylaşımı ve akışı konusunda önde gelen bir platformdur. Sound Cloud, yenilikçi teknolojileri kullanarak milyonlarca kullanıcıya müzik deneyimi sunmaktadır. Sound Cloud'un veri odaklı çalışma kültürü, stajyerlere değerli bir öğrenme ve deneyim fırsatı sağlamaktadır. Stajyerler, gerçek dünya veri projelerinde yer alacak ve veri mühendisliği becerilerini geliştirirken Sound Cloud'un büyümesine katkıda bulunacaklar.",
  ),
  Company(
    companyName: "Monobank",
    job: "Stajyer Bilgisayar Mühendisi",
    city: "Beştepe, Ankara",
    sallary: "Ücretli",
    image: "assets/mb4.jpg",
    tag: [
      "Tam Zamanlı",
      "İş Yerinde",
      "3 Ay",
    ],
    mainCriteria: "Tam Zamanlı",
    jobOpportunity:
      "Monobank, bilgisayar mühendisi stajyeri aramaktadır. Bu staj programı, deneyimli ve yetenekli bir mühendise gerçek dünya deneyimi sunmayı hedeflemektedir. Stajyerler, Monobank'ın teknik ekibiyle birlikte çalışacak, uygulama geliştirme sürecinde yer alacak ve yeni projelerde sorumluluk alacaklar. Full stack teknolojileri kullanarak kullanıcı dostu ve ölçeklenebilir uygulamalar geliştirecekler. Ayrıca, mevcut ürünlerin bakımını yapacak, hataları giderip performans iyileştirmeleri yapacaklar. Staj programı boyunca stajyerler, gerçek dünya projelerinde çalışarak kapsamlı bir mühendislik deneyimi kazanacaklar.",
    jobResponsbilities: [
      "Full stack teknolojilerini kullanarak kullanıcı dostu ve ölçeklenebilir uygulamalar geliştirmek.",
      "Mevcut ürünlerin bakımını yapmak, hataları gidermek ve performans iyileştirmeleri yapmak.",
      "Yeni projelerde aktif olarak yer almak ve sorumluluk almak.",
      "Teknik ekip ile işbirliği yaparak iş akışını optimize etmek.",
      "Geliştirme sürecinde en iyi uygulamaları ve standartları takip etmek.",
    ],
    aboutCompany:
        "Monobank, finansal teknolojiler alanında önde gelen bir şirkettir. Kullanıcı dostu bankacılık çözümleri sunan Monobank, yenilikçi yaklaşımıyla bilinmektedir. Şirket, kullanıcı deneyimine odaklanarak müşterilerine benzersiz bir bankacılık deneyimi sunmayı hedeflemektedir. Stajyerler, Monobank'ın teknik ekibiyle birlikte çalışarak uygulama geliştirme ve mühendislik becerilerini geliştirecek ve finansal teknolojiler alanında deneyim kazanacaklar.",
  ),
  Company(
    companyName: "Uber",
    job: "Veri Bilimi",
    city: "Levent, İstanbul",
    sallary: "Ücretli",
    image: "assets/uber-logo-redesign_1x.png",
    tag: [
      "Yarı Zamanlı",
      "Uzaktan",
      "30 Gün",
    ],
    mainCriteria: "Yarı Zamanlı",
    jobOpportunity:
        "Uber, veri bilimi alanında yetenekli ve tutkulu stajyerler arıyor. Bu staj programı, stajyerlere gerçek dünya projelerinde deneyim kazandırmayı ve veri analitiği becerilerini geliştirmelerine yardımcı olmayı hedeflemektedir. Stajyerler, Uber'ın veri bilimi ekibiyle birlikte çalışacak ve büyük veri setlerini analiz ederek iş stratejileri ve kullanıcı deneyimini iyileştiren çözümler üretecekler. Staj programı süresince stajyerler, gerçek veri projelerinde sorumluluk alacak ve veri analizi konusunda deneyim kazanacaklar.",
    jobResponsbilities: [
      "Büyük veri setlerini analiz ederek veri odaklı çözümler üretmek.",
      "Veri görselleştirme araçları ve analitik yöntemler kullanarak veri analizi yapmak.",
      "Veri tabanlarından veri çekmek ve manipüle etmek.",
      "Veri trendlerini takip etmek ve iş stratejilerine entegre etmek.",
      "Veri analizi sonuçlarını sunumlar ve raporlar halinde paylaşmak.",
    ],
    aboutCompany:
        "Uber, uluslararası bir teknoloji şirketidir ve küresel ulaşım sektöründe lider konumdadır. Uber, yenilikçi mobil uygulamasıyla kullanıcılarına kolay ve güvenli bir ulaşım deneyimi sunmaktadır. Uber'ın veri odaklı çalışma kültürü, stajyerlere değerli bir öğrenme ve deneyim fırsatı sağlamaktadır. Stajyerler, büyük veri analitiği projelerinde yer alacak ve gerçek dünya verileri üzerinde çalışarak veri bilimi becerilerini geliştirecekler.",
  ),
  Company(
    companyName: "Apple.inc",
    job: "Sistem Mühendisi",
    city: "Beşiktaş, İstanbul",
    sallary: "Ücretli",
    image: "assets/download.png",
    tag: [
      "Tam Zamanlı",
      "İş Yerinde",
      "3 Ay",
    ],
    mainCriteria: "Tam Zamanlı",
    jobOpportunity:
      "Apple.inc, sistem güvenlik mühendisi stajyeri aramaktadır. Bu staj programı, güvenlik konularında yetenekli ve motivasyonlu öğrencilere gerçek dünya deneyimi sağlamayı hedeflemektedir. Stajyerler, Apple'ın güvenlik mühendisleriyle birlikte çalışacak, sistem güvenliği sorunlarını analiz edecek ve güvenlik çözümleri geliştirecekler. Ayrıca, güvenlik testleri yapacak, potansiyel güvenlik açıklarını tespit edecek ve çözüm önerileri sunacaklar. Staj programı boyunca stajyerler, Apple'ın liderlik ettiği projelerde yer alacak ve güvenlik mühendisliği alanında deneyim kazanacaklar.",
    jobResponsbilities: [
      "Sistem güvenliği sorunlarını analiz etmek ve güvenlik çözümleri geliştirmek.",
      "Güvenlik testleri yapmak ve potansiyel güvenlik açıklarını tespit etmek.",
      "Güvenlik olaylarına yanıt vermek ve sorunları çözmek.",
      "Güvenlik politika ve prosedürlerini uygulamak ve güncellemek.",
      "Güvenlik açığı taramaları ve denetimleri yapmak.",
    ],
    aboutCompany:
      "Apple.inc, dünyanın önde gelen teknoloji şirketlerinden biridir. İnovasyon ve kalite odaklı ürünleriyle tanınan Apple, geniş bir ürün yelpazesine sahiptir. Apple'ın güvenlik mühendisleri, şirketin sistemlerini ve ürünlerini güvende tutmak için çalışmaktadır. Stajyerler, Apple'ın güvenlik mühendisleriyle birlikte çalışarak güvenlik mühendisliği becerilerini geliştirecek ve gerçek dünya projelerinde sorumluluk alacaklardır.",
  ),
];
