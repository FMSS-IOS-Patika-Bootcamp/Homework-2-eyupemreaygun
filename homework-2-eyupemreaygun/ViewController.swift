//
//  ViewController.swift
//  homework-2-eyupemreaygun
//
//  Created by Eyüp Emre Aygün on 16.09.2022.
//

import UIKit
protocol DetayVCToViewControllerDelegate: AnyObject {
    func veriGonder(mesaj:String)
    
}

class ViewController: UIViewController {
    weak var delegate: DetayVCToViewControllerDelegate?
     @IBOutlet weak var searchBar: UISearchBar!
     @IBOutlet weak var tableView: UITableView!
    var haber = [Haberler]()
  
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        searchBar.delegate = self
        
        
      
        
        
        let h1  = Haberler(haberId: 1, haberImage: "azerbaycan", haberLbl: "Azerbaycan, Ermenistan ordusuna ait askeri birliği Bayraktar TB2 SİHA'larla yerle bir etti",haberDetayLbl: "Azerbaycan ordusu, Zod bölgesinde bulunan Ermeni askeri birliğini Bayraktar TB-2'lerden açılan ateşle resmen yerle bir etti. İnsansız hava aracından anbean kaydedilen görüntülerde Ermenistan askerlerinin binayı terk ettiği görülürken, akşam saatlerinde Azerbaycan Savunma Bakanlığı'ndan yapılan açıklamada saldırılarda 400 Ermeni askerinin öldürüldüğü ifade edildi.",haberUrl: "https://www.haberler.com/3-sayfa/azerbaycan-ermenistan-ordusuna-ait-askeri-birligi-15280078-haberi/",title: "Haber Detay")
        
        let h2  = Haberler(haberId: 2, haberImage: "dolar", haberLbl: "Merkez Bankası anketinde yıl sonu dolar tahmini 19,51 liraya, enflasyon ise yüzde 67,73'e geriledi",haberDetayLbl: "Merkez Bankası'nın eylül ayına ilişkin Piyasa Katılımcıları Anketinde yılsonu TÜFE ve dolar/TL beklentilerinde düşüş yaşandı. Katılımcıların cari yıl sonu dolar beklentisi 19,65'ten 19,51 lira seviyesine gerilirken, enflasyon beklentisi ise yüzde 70,6'dan yüzde 67,73'e geriledi.",haberUrl: "https://www.haberler.com/ekonomi/arac-sahiplerine-guzel-haber-motorinde-buyuk-15281914-haberi/",title: "Haber Detay")
        
        let h3  = Haberler(haberId: 3, haberImage: "benzin", haberLbl: "Motorine büyük indirim bekleniyor! Dillendirilen rakam sevindirici",haberDetayLbl: "Brent petrol ve uluslararası piyasalarda ürün fiyatının düşmesi akaryakıt fiyatlarında indirim beklentilerini de beraberinde getirdi. Akaryakıt sektörü kaynakları; bugün petrol, dolar ve ürün fiyatlarında yukarı yönlü ciddi bir hareket olmaması durumunda motorine 1,5 TL ile 2 TL arasında bir indirim gelebiceğini öngörüyor.",haberUrl: "https://www.haberler.com/ekonomi/yil-sonu-dolar-kuru-beklentisi-geriledi-15281076-haberi/",title: "Haber Detay")
        
        let h4  = Haberler(haberId: 4, haberImage: "konut", haberLbl: "Merkez Bankası verileri paylaştı! Konut fiyatları temmuz ayında bir önceki yıla göre yüzde 173,8 arttı",haberDetayLbl: "Merkez Bankası verilerine göre Türkiye genelinde konut fiyatları temmuz ayında bir önceki aya göre yüzde 8, bir önceki yılın aynı döneminde göre yüzde 173,8 arttı. Konut fiyatlarının yüzde 200,1 artış gösterdiği İstanbul'da da ortalama bir konutun metrekare başı fiyatı temmuzda 22 bin 590 TL'ye yükseldi.",haberUrl: "https://www.haberler.com/ekonomi/merkez-bankasi-verileri-paylasti-konut-fiyatlari-15282383-haberi/",title: "Haber Detay")
        
        let h5  = Haberler(haberId: 5, haberImage: "milliTakim", haberLbl: "Türkiye UEFA Uluslar Ligi aday kadrosu belli oldu mu?",haberDetayLbl: "Türkiye A Milli Futbol Takımımızın Uluslar Ligi'ndeki zorlu ekipler Lüksemburg ve Faroe Adaları ile yapacağı maç öncesi aday kadrosu açıklandı. Peki, A Milli Takım aday kadrosunda kimler var? Milli takım kadrosunda kimler var? İşte A Milli Takım aday kadrosu!",haberUrl: "https://www.haberler.com/haberler/a-milli-takim-aday-kadrosunda-kimler-var-milli-15282302-haberi/",title: "Haber Detay")
        
        let h6  = Haberler(haberId: 6, haberImage: "konutBasvuru", haberLbl: "Konut projesine başvuru ücreti 500 TL olarak belirlendi! Peki, kurada ismi çıkmayan parasını geri alabilecek mi?",haberDetayLbl: "Detaylarını Cumhurbaşkanı Erdoğan'ın açıkladığı sosyal konut projesinde başvurular bugün başladı. 31 Ekim tarihine kadar sürecek olan başvurularda vatandaşların 500 TL ödeme yapması gerekecek. Kurada, hak sahibi olamayanlar başvuru bedellerini, kura çekiliş tarihinden itibaren 5 iş günü sonrasında bankalardan ve ATM'lerden geri alabilecek.",haberUrl: "https://www.yenisafak.com/18-30-yas-genc-evli-ise-toki-basvurusu-yapabilir-mi-bekar-18-30-yas-arasi-kizlar-tokiye-basvurabilir-mi-h-3858758",title: "Haber Detay")
        
        
        haber.append(h1)
        haber.append(h2)
        haber.append(h3)
        haber.append(h4)
        haber.append(h5)
        haber.append(h6)
       
        
   }
    

}
extension ViewController: UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let haberListe = haber[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableViewCell", for: indexPath) as! TableViewCell
        cell.haberResim.image = UIImage(named: haberListe.haberImage!)
        cell.lbl.text = haberListe.haberLbl!
        
        
        return cell
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return haber.count
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "toDetail") as! DetailViewController
        vc.modalPresentationStyle = .fullScreen
        tableView.deselectRow(at: indexPath, animated: true)
        vc.haber = haber[indexPath.row]
    
        self.navigationController?.pushViewController(vc, animated: true)
        
 
        }
      
        
    }
extension ViewController: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        
    }
}
    
    
    

