### 📲 Flickr App

A mobile application that search and share photo.

## 🛠 

- MVVM design pattern use
- Programmatic UI, no storyboard.
- Firebase Auth, Storage
- SD Web Image
- IQKeyboardManager
- Flickr API

## 📸 Screenshoots 

<img width="170" alt="Ekran Resmi 2022-10-17 18 57 23" src="https://user-images.githubusercontent.com/55364051/196229052-6badfabc-4dd0-43e9-88a3-88813da6fb8e.png"> <img width="170" alt="Ekran Resmi 2022-10-17 18 57 53" src="https://user-images.githubusercontent.com/55364051/196229117-f27e5a74-381a-455f-beff-1dea28ac4b92.png"> <img width="170" alt="Ekran Resmi 2022-10-17 18 58 15" src="https://user-images.githubusercontent.com/55364051/196230128-708f3b27-e13e-4e7e-8f6a-8b55c5087bd3.png"> <img width="170" alt="Ekran Resmi 2022-10-17 18 58 53" src="https://user-images.githubusercontent.com/55364051/196230204-5d758bcb-4133-462d-a903-85233248f76f.png"> <img width="170" alt="Ekran Resmi 2022-10-17 19 00 38" src="https://user-images.githubusercontent.com/55364051/196230490-1a11d135-d07e-43c5-9392-56c2661a4762.png"> <img width="170" alt="Ekran Resmi 2022-10-17 19 01 15" src="https://user-images.githubusercontent.com/55364051/196230711-2edbea38-ef45-4426-829a-8799f58a3927.png"> <img width="170" alt="Ekran Resmi 2022-10-17 19 02 14" src="https://user-images.githubusercontent.com/55364051/196230853-00c487d3-e26a-44cb-ba8a-789af5fcf4f3.png"> <img width="170" alt="Ekran Resmi 2022-10-17 19 25 29" src="https://user-images.githubusercontent.com/55364051/196231474-8ef6ee8c-682c-46f9-afd3-c71bda6afe6d.png"> <img width="170" alt="Ekran Resmi 2022-10-17 18 59 58" src="https://user-images.githubusercontent.com/55364051/196231640-b464237a-8b13-4584-8d9c-3d9262b6fdc6.png">



# Pazarama iOS Bootcamp - Hafta 4 - Ödev

## Flickr App

Uygulamamızı geliştirirken Flickr API ve Firebase araçlarını kullanacağız. Uygulamada Firebase Auth ile kullanıcı kayıt ve giriş işlemlerini yöneteceğiz. Uygulamanın ana ekranında Flickr API’ı kullanarak son yüklenen fotoğrafları UITableViewController kullanarak listeleyeceğiz. Bu aşamada özelleşmiş bir UITableViewCell ile Instagram’daki post benzeri bir görünüm oluşturacağız. Kullanıcı görseli beğenebilir, kütüphanesine kaydedebilir ve profil ekranından önceden beğendiği veya kütüphaneye kaydettiği fotoğrafları görüntüleyebilir. Firebase firestore kullanılarak bilgiler buluta kaydedilmelidir.

Uygulamada arama ekranı olmalıdır. Arama ekranında mevcut bir arama olmadığı sürece popüler fotoğraflar UICollectionViewController ile grid görünümünde listelenmelidir. Eğer bir arama işlemi gerçekleştirilirse Flickr API aracılı ile girilen anahtar kelimeye uygun olarak arama yapılır ve görseller listelenir. Arama işlemi bittiğinde ekranda popüler paylaşımlar gözükmeye devam edecektir. 

Kullanıcı profilini düzenleyebilir olmalıdır. Bir profil fotoğrafı ekleyebilir veya kullanıcı adını değiştirebilir. Firebase remote config kullanılarak uygulamaya kayıt olma özelliği etkinleştirilebilir veya devre dışı bırakabilir. Kullanıcı profil ekranından çıkış yapıp giriş ekranına yönlendirilmelidir.

![img](flickr-app.png)

## Değerlendirme Kriterleri

1. Flickr API ile iletişim katmanının Moya kütüphanesi aracılığı ile oluşturulması.
2. Firebase Auth, Remote Config ve Firestore özelliklerinin kullanılması.
3. Uygulamanın ekranlarının açıklamaya uygun şekilde tasarlanması.
4. MVVM tasarım düzeninin kullanılması.
5. Controller ve ViewModel arasındaki iletişimin Delegate veya Closure kullanılarak yapılması.
6. Ekran tasarımlarının SnapKit ile programlayarak veya Xib dosyaları ile yapılması.
7. Minimum versiyon desteğinin iOS 12.0 olması.
8. IQKeyboardManager ile input alanları arasındaki geçişin yönetilmesi. Klavyenin ekranda bir boşluğa dokununca veya klavye üstündeki toolbarda yer alan KAPAT butonuna basarak kapatılabilmesi.
9. Üçüncü parti kütüphanelerin Cocoapods veya SPM ile entegrasyonu.

## Faydalı Linkler

- Flickr API: https://www.flickr.com/services/api/
- Firebase Auth: https://firebase.google.com/docs/auth/ios/start
- Firebase Firestore: https://firebase.google.com/docs/firestore/quickstart
- Firebase Cloud Storage: https://firebase.google.com/docs/firestore/quickstart
- Firebase Remote Config: https://firebase.google.com/docs/remote-config/?authuser=0
- Örnek Proje:  https://github.com/232-Pazarama-iOS-Swift-Bootcamp/week4_day1_crypto_app
