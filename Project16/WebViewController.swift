//
//  WebViewController.swift
//  Project16
//
//  Created by Robin Phillips on 23/02/2022.
//

import UIKit
import WebKit

class WebViewController: UIViewController, WKNavigationDelegate {
    
    var webView: WKWebView!
    var websites = ["London": "en.wikipedia.org/wiki/London","Oslo": "en.wikipedia.org/wiki/Oslo","Paris": "en.wikipedia.org/wiki/Paris","Rome": "en.wikipedia.org/wiki/Rome","Washington DC": "en.wikipedia.org/wiki/Washington,_D.C."]
    var website = ""
    var capital = ""
    
    
    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        title = capital
        
        website = websites[capital, default: ""]

        let url = URL(string: "https://" + website)!
        webView.load(URLRequest(url: url))
        webView.allowsBackForwardNavigationGestures = true
        
//        webView.addObserver(self, forKeyPath: #keyPath(WKWebView.estimatedProgress), options: .new, context: nil)
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        title = webView.title
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
