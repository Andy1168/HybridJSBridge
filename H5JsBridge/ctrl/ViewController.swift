//
//  ViewController.swift
//  H5JsBridge
//
//  Created by chuJohnny on 16/8/26.
//  Copyright © 2016年 顶尖旅思. All rights reserved.
//

import UIKit

class MainViewController: UIViewController,UIWebViewDelegate {

    @IBOutlet weak var webView: UIWebView!

    let urlString = "http://hybrid.yctlab.com/jsdemo.php?a=1"
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let webViewManager = WebViewManager()
        webViewManager.setupWebView(webView,urlString: urlString)
        webView.delegate = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // UIWebView Delgate override
    func webView(webView: UIWebView, shouldStartLoadWithRequest request: NSURLRequest, navigationType: UIWebViewNavigationType) -> Bool {
        print("shouldStartLoadWithRequest")
        
        JSBridge.callSwift(webView, url: request.URL!)
        return true
    }
    
}
