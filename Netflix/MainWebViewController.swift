//
//  MainViewController.swift
//  Netflix
//
//  Created by Lode Vanhove on 15/09/2018.
//  Copyright © 2018 Lode Vanhove. All rights reserved.
//

import Cocoa
import WebKit

class MainWebViewController: NSViewController {
  @IBOutlet var webView: MainWebView!

  override func viewDidLoad() {
    super.viewDidLoad()

    webView.isHidden = true
    webView.navigationDelegate = self

    loadHomepage()
  }

  func loadHomepage() {
    if let url = URL(string: Constants.WebView.homePage) {
      let request = URLRequest(url: url)
      webView.load(request)
    }
  }
}

extension MainWebViewController: WKNavigationDelegate {
  func webView(_ webView: WKWebView, didFinish _: WKNavigation!) {
    webView.isHidden = false
  }
}
