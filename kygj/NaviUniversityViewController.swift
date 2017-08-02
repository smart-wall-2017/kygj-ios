//
//  NaviUniversityViewController.swift
//  kygj
//
//  Created by 黄奇 on 6/4/17.
//  Copyright © 2017 SmartWall. All rights reserved.
//

import UIKit
import WebKit

class NaviUniversityViewController: UIViewController {
    var webView = WKWebView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.white
        webView.frame = view.frame
        
        let config = WKWebViewConfiguration()
        //偏好设置
        config.preferences = WKPreferences()
        //字体
        config.preferences.minimumFontSize = 10
        //设置js跳转
        config.preferences.javaScriptEnabled = true
        //不自动打开窗口
        //config.preferences.javaScriptCanOpenWindowsAutomatically = true
        //web内容处理池
        //config.processPool = WKProcessPool()
        //js和webview内容交互
        //config.userContentController = WKUserContentController()
        //注入js对象名称为appmodel，当js通过appmodel来调用
        //可以在wkscriptMessagehandler的代理中接收到
        //config.userContentController. .add(self, name: "AppModel")
        
        //webView
        webView = WKWebView(frame: view.bounds, configuration: config)
        view.addSubview(webView)//
        let myUrl = URL(string: "https://www.sohu.com")!
        webView.load(URLRequest(url: myUrl));
//        let url = Bundle.main.url(forResource: "JSCallOC", withExtension: "html")
        //webView.loadRequest(NSURLRequest(url: "https://www.baidu.com"))
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
