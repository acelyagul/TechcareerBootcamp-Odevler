# Techcareer Bootcamp Ödevler

Bu projede aşağıdaki test caseler yazılmıştır;

* Amazon uygulamasında register 
* Amazon uygulamasında fakerlibrary ile register 
* Amazon uygulamasında başarılı login 
* Amazon uygulamasında başarısız login 
* Amazon uygulamasında ürün arama
* Amazon uygulamasında ürün seçip beden seçme filtre uygulama ve sepete ekleme
* Amazon uygulamasında adres ekleme
* Amazon uygulamasında adres silme
* Techcareer uygulamasında sayfalar arası geçis 
* İşinolsun uygulamasında anasayfa kontrolü, iş arama ve filtreleme
* Demoqa uygulamasında register


## Kurulum Adımları

1- Bash ekranı açılır.
`

2- TechcareerBootcamp-Odevler reposu lokal cihaza kopyalanır.

 ``` git clone https://github.com/acelyagul/TechcareerBootcamp-Odevler.git ```
 
 3- Klasöre gidilir. 
 
 ``` cd TechcareerBootcamp-Odevler ```
 
 4- requirements.txt dosyası sayesinde gerekli kütüphaneler yüklenir. 
 
 ``` pip3 install -r requirements.txt ```
 
 5- Ardından test dosyaları çalıştırılır.
 
 ``` robot -d .\reports\  .\HomeworkTests\AmazonAdressTest.robot  ```
 
 ``` robot -d .\reports\  .\HomeworkTests\AmazonLoginTest.robot  ```
 
 ``` robot -d .\reports\  .\HomeworkTests\AmazonTest.robot  ```
 
 ``` robot -d .\reports\  .\HomeworkTests\DemoqaTest.robot  ```
 
 ``` robot -d .\reports\  .\HomeworkTests\isinOlsunTest.robot  ```
 
 ``` robot -d .\reports\  .\HomeworkTests\TechcareerTest.robot  ```
 
 Sonuçlar "Results" klasörü altında raporlanmaktadır. 
