//
//  JsBridge.swift
//  H5JsBridge
//
//  Created by chuJohnny on 16/8/26.
//  Copyright © 2016年 顶尖旅思. All rights reserved.
//

import UIKit

protocol IBridge {
    
}


class JSBridge: IBridge {
    static func callSwift(webView:UIWebView, url:NSURL){
        let scheme = url.scheme
        
        var className = url.host
        let methodName = ""
        let jsonParams = url.query
        let port = url.port
        var path = url.path
        
        if scheme == "jsbridge" {
            if !(path?.isEmpty)! {
                let range:Range = Range<String.Index>((path?.startIndex)! ..< (path?.startIndex.advancedBy(1))!)
                
                 path?.replaceRange(range, with: "")
                
            }
        }
        
    }
}