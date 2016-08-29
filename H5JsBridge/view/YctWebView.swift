//
//  YctWebView.swift
//  H5JsBridge
//
//  Created by chuJohnny on 16/8/26.
//  Copyright © 2016年 顶尖旅思. All rights reserved.
//

import UIKit

class WebViewManager:NSObject{
    
    func setupWebView(webView:UIWebView,urlString:String) -> Void {
        
        let url = NSURL(string:urlString)
        let newRequest = NSMutableURLRequest(URL: url!)
        webView.loadRequest(newRequest)
        
    }
}


