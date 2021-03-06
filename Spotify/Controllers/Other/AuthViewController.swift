//
//  AuthViewController.swift
//  Spotify
//
//  Created by macbook on 16/04/2021.
//

import UIKit
import WebKit

class AuthViewController: UIViewController, WKNavigationDelegate {

    private let webView : WKWebView = {
        let config = WKWebViewConfiguration()
        let prefs = WKWebpagePreferences()
        prefs.allowsContentJavaScript = true
        config.defaultWebpagePreferences = prefs
        let webView = WKWebView(frame: .zero,configuration: config)
        return webView
    }()
    
    public var completionHandler : ((Bool) -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Sign In"
        view.backgroundColor = .systemBackground
        webView.navigationDelegate = self
        view.addSubview(webView)
        
        guard let url = AuthManager.shared.signInURL else {
            return
        }
        webView.load(URLRequest(url: url))
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        webView.frame = view.bounds
    }
    
    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
        guard let url = webView.url else {
            return
        }
       
       //Exchange the code for access token
       let components = URLComponents(string: url.absoluteString)
       guard let code = components?.queryItems?.first(where: {
            $0.name == "code"
        })?.value else{
            return
        }
        
        print("Code : \(code)")
    }
}
