//
//  DetailViewController.swift
//  homework-2-eyupemreaygun
//
//  Created by Eyüp Emre Aygün on 16.09.2022.
//

import UIKit
import WebKit

class DetailViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var lbl: UILabel!
    @IBOutlet weak var haberDetayLbl: UILabel!
    var haber : Haberler?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
      
        setUI()
        navigationItem.title = haber?.title
       


    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        guard let destination = segue.destination as? webViewController else {
            return
        }
        destination.detailUrl = haber?.haberUrl
    }
        func setUI() {
        imageView.image = UIImage(named: (haber?.haberImage)!)
        lbl.text = haber?.haberLbl
        haberDetayLbl.text = haber?.haberDetayLbl
        
           
        
        
    }
}
