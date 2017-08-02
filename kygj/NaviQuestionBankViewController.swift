//
//  NaviQuestionBankViewController.swift
//  kygj
//
//  Created by 黄奇 on 6/4/17.
//  Copyright © 2017 SmartWall. All rights reserved.
//

import UIKit
import WebKit

class NaviQuestionBankViewController: UIViewController, WKNavigationDelegate {
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
        webView.navigationDelegate = self
        view.addSubview(webView)//
        let myUrl = URL(string: "http://121.43.96.235:8787/sfa/mobi/exam/question_bank.html")!
        //let myUrl = NSURL(string: "https://www.sohu.com")!
        webView.load(URLRequest(url: myUrl));
        //        let url = Bundle.main.url(forResource: "JSCallOC", withExtension: "html")
        //webView.loadRequest(NSURLRequest(url: "http://www.baidu.com"))
        print("loaded");
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        
    }

//    func webView(webView: WKWebView, decidePolicyForNavigationAction navigationAction: WKNavigationAction, decisionHandler: (WKNavigationActionPolicy) -> Void) {
//        print("decidePolicyForNavigationAction")
//        decisionHandler(WKNavigationActionPolicy.Allow)
//        print("OK")
//    }
//    
//    func webView(webView: WKWebView, decidePolicyForNavigationResponse navigationResponse: WKNavigationResponse, decisionHandler: (WKNavigationResponsePolicy) -> Void) {
//        print("decidePolicyForNavigationResponse")
//        decisionHandler(WKNavigationResponsePolicy.Allow)
//    }
//    
//    func webView(webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
//        print("didStartProvisionalNavigation")
//    }
//    
//    func webView(webView: WKWebView, didReceiveServerRedirectForProvisionalNavigation navigation: WKNavigation!) {
//        print("didReceiveServerRedirectForProvisionalNavigation")
//    }
//    
//    func webView(webView: WKWebView, didFailProvisionalNavigation navigation: WKNavigation!, withError error: NSError) {
//        print("didFailProvisionalNavigation")
//        
//        print(error.debugDescription)
//    }
//    
//    func webView(webView: WKWebView, didCommitNavigation navigation: WKNavigation!) {
//        print("didCommitNavigation")
//    }
//    
//    func webView(webView: WKWebView, didFinishNavigation navigation: WKNavigation!) {
//        print("didFinishNavigation")
//    }
//    
//    func webView(webView: WKWebView, didFailNavigation navigation: WKNavigation!, withError error: NSError) {
//        print("didFailNavigation")
//        
//        print(error.debugDescription)
//    }
//    
//    func webViewWebContentProcessDidTerminate(webView: WKWebView) {
//        print("webViewWebContentProcessDidTerminate")
//    }
    
    func webView(_ webView: WKWebView, didReceive challenge: URLAuthenticationChallenge, completionHandler: @escaping (URLSession.AuthChallengeDisposition, URLCredential?) -> Void) {
        print("decidePolicyForNavigationAction")
        
        let cred = URLCredential.init(trust: challenge.protectionSpace.serverTrust!)
        completionHandler(.useCredential, cred)
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
