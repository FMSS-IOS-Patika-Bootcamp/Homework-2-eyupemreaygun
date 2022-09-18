//
//  webViewController.swift
//  homework-2-eyupemreaygun
//
//  Created by Eyüp Emre Aygün on 17.09.2022.
//

import UIKit
import WebKit

class webViewController: UIViewController {
  @IBOutlet weak var webView: WKWebView!
    var detailUrl : String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Url Requested: \(detailUrl!)")


    }
    override func viewWillAppear(_ animated: Bool) {
        let url = URL(string: detailUrl!)
        let request = URLRequest(url: url!)
        
        webView.load(request)
    }
    override func dismiss(animated flag: Bool, completion: (() -> Void)? = nil) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
