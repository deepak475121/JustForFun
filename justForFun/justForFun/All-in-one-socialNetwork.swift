
//
//  All-in-one-socialNetwork.swift
//  justForFun
//
//  Created by Hari Crayond Digital Reach Pvt Ltd on 17/02/2017.
//  Copyright © 2017 Crayond Digital Reach Pvt Ltd. All rights reserved.
//

import UIKit
import LocalAuthentication
import CoreMotion

class All_in_one_socialNetwork: UIViewController,UIWebViewDelegate {

    @IBOutlet weak var back: UIBarButtonItem!
    @IBOutlet weak var farword: UIBarButtonItem!
    @IBOutlet weak var webView: UIWebView!
    @IBOutlet weak var segOut: UISegmentedControl!
    @IBOutlet weak var Activity: UIActivityIndicatorView!

    let myMotionTest = CMMotionManager()
    let userName:UITextField = UITextField()
    let passWord:UITextField = UITextField()

    override func viewDidLoad() {
        super.viewDidLoad()
        webView.delegate = self
        self.navigationItem.title = "All-in-one"
        segOut.isEnabled = false
        let url = NSURL(string:"https://media.giphy.com/media/grNDsG4bMJRsI/giphy.gif")
        let req = NSURLRequest(url:url! as URL)
        webView.loadRequest(req as URLRequest)
        self.authSetup()
        buttonCheck()

        //Motion activation
        if myMotionTest.isGyroAvailable {
            myMotionTest.startGyroUpdates()
        }
        
        //Motion activits
        if myMotionTest.isDeviceMotionAvailable {
            myMotionTest.deviceMotionUpdateInterval = 0.02
            myMotionTest.startDeviceMotionUpdates(to: .main) {
                [weak self] (data: CMDeviceMotion?, error: Error?) in
                if let x = data?.userAcceleration.x,
                    x < -2.5 {
                    
                    print("left")
                    self?.segOut.selectedSegmentIndex -= 1
                    if self?.segOut.selectedSegmentIndex == 0{
                        self?.navigationItem.title = "facebook"
                        let url = NSURL(string:"http://m.facebook.com/")
                        let req = NSURLRequest(url:url! as URL)
                        self?.webView.loadRequest(req as URLRequest)
                    }else if self?.segOut.selectedSegmentIndex == 1{
                        self?.navigationItem.title = "linkedin"
                        let url = NSURL(string:"https://in.linkedin.com/")
                        let req = NSURLRequest(url:url! as URL)
                        self?.webView.loadRequest(req as URLRequest)
                    }else if self?.segOut.selectedSegmentIndex == 2{
                        self?.navigationItem.title = "twitter"
                        let url = NSURL(string:"http://www.twitter.com/")
                        let req = NSURLRequest(url:url! as URL)
                        self?.webView.loadRequest(req as URLRequest)
                    }else if self?.segOut.selectedSegmentIndex == 3{
                        self?.navigationItem.title = "G+"
                        let url = NSURL(string:"http:/plus.google.com/")
                        let req = NSURLRequest(url:url! as URL)
                        self?.webView.loadRequest(req as URLRequest)
                    }else if self?.segOut.selectedSegmentIndex == 4{
                        self?.navigationItem.title = "yandex"
                        let url = NSURL(string:"https://mail.yandex.com")
                        let req = NSURLRequest(url:url! as URL)
                        self?.webView.loadRequest(req as URLRequest)
                    }else if self?.segOut.selectedSegmentIndex == 5{
                        self?.navigationItem.title = "cash no cash"
                        let url = NSURL(string:"https://cashnocash.quikr.com")
                        let req = NSURLRequest(url: url! as URL)
                        self?.webView.loadRequest(req as URLRequest)
                    }else{
                        self?.navigationItem.title = "All-in-one"
                        let url = NSURL(string:"https://media.giphy.com/media/grNDsG4bMJRsI/giphy.gif")
                        let req = NSURLRequest(url:url! as URL)
                        self?.webView.loadRequest(req as URLRequest)
   
                    }
                }else if let xP = data?.userAcceleration.x,
                    xP > 2.5{
                    self?.segOut.selectedSegmentIndex += 1
                    if self?.segOut.selectedSegmentIndex == 0{
                        self?.navigationItem.title = "facebook"
                        let url = NSURL(string:"http://m.facebook.com/")
                        let req = NSURLRequest(url:url! as URL)
                        self?.webView.loadRequest(req as URLRequest)
                    }else if self?.segOut.selectedSegmentIndex == 1{
                        self?.navigationItem.title = "linkedin"
                        let url = NSURL(string:"https://in.linkedin.com/")
                        let req = NSURLRequest(url:url! as URL)
                        self?.webView.loadRequest(req as URLRequest)
                    }else if self?.segOut.selectedSegmentIndex == 2{
                        self?.navigationItem.title = "twitter"
                        let url = NSURL(string:"http://www.twitter.com/")
                        let req = NSURLRequest(url:url! as URL)
                        self?.webView.loadRequest(req as URLRequest)
                    }else if self?.segOut.selectedSegmentIndex == 3{
                        self?.navigationItem.title = "G+"
                        let url = NSURL(string:"http:/plus.google.com/")
                        let req = NSURLRequest(url:url! as URL)
                        self?.webView.loadRequest(req as URLRequest)
                    }else if self?.segOut.selectedSegmentIndex == 4{
                        self?.navigationItem.title = "yandex"
                        let url = NSURL(string:"https://mail.yandex.com")
                        let req = NSURLRequest(url:url! as URL)
                        self?.webView.loadRequest(req as URLRequest)
                    }else if self?.segOut.selectedSegmentIndex == 5{
                        self?.navigationItem.title = "cash no cash"
                        let url = NSURL(string:"https://cashnocash.quikr.com")
                        let req = NSURLRequest(url: url! as URL)
                        self?.webView.loadRequest(req as URLRequest)
                    }else{
                        self?.navigationItem.title = "All-in-one"
                        let url = NSURL(string:"https://media.giphy.com/media/grNDsG4bMJRsI/giphy.gif")
                        let req = NSURLRequest(url:url! as URL)
                        self?.webView.loadRequest(req as URLRequest)
                    }
                }
            }
        }
    }
    
    // LOADING ANIMI START
    func webViewDidStartLoad(_ webView: UIWebView) {
        buttonCheck()
        Activity.startAnimating()
    }
    
    // LOADING ANIMI STOP
    func webViewDidFinishLoad(_ webView: UIWebView) {
        buttonCheck()
        Activity.stopAnimating()
    }

    // SEGMENT SET
    @IBAction func segAction(_ sender: Any) {
        buttonCheck()
        switch segOut.selectedSegmentIndex
        {
        case 0:
            self.navigationItem.title = "facebook"
            let url = NSURL(string:"http://m.facebook.com/")
            let req = NSURLRequest(url:url! as URL)
            webView.loadRequest(req as URLRequest)
            
        case 1:
            self.navigationItem.title = "linkedin"
            let url = NSURL(string:"https://in.linkedin.com/")
            let req = NSURLRequest(url:url! as URL)
            webView.loadRequest(req as URLRequest)
        case 2:
            self.navigationItem.title = "twitter"
            let url = NSURL(string:"http://www.twitter.com/")
            let req = NSURLRequest(url:url! as URL)
            webView.loadRequest(req as URLRequest)
        case 3:
            self.navigationItem.title = "G+"
            let url = NSURL(string:"http:/plus.google.com/")
            let req = NSURLRequest(url:url! as URL)
            webView.loadRequest(req as URLRequest)
        case 4:
            self.navigationItem.title = "yandex"
            let url = NSURL(string:"https://mail.yandex.com")
            let req = NSURLRequest(url:url! as URL)
            webView.loadRequest(req as URLRequest)
        case 5:
            self.navigationItem.title = "Google"
            let url = NSURL(string:"https://google.com")
            let req = NSURLRequest(url: url! as URL)
            webView.loadRequest(req as URLRequest)
            
        default:
            break;
        }

    }

    // BACKWORD SET
    @IBAction func backActionNav(_ sender: Any) {
        buttonCheck()
        if(webView.canGoBack) {
            webView.goBack()
        } else {
            let alartController = UIAlertController(title: "No more Back", message: "Click Segment On Top.", preferredStyle: .alert)
            let alartAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alartController.addAction(alartAction)
            self.present(alartController, animated: true, completion: nil)
        }
    }
    
    //FORWARD SET
    @IBAction func farwardActionNav(_ sender: Any) {
        buttonCheck()
        if(webView.canGoForward){
            webView.goForward()
        }else{
            let alartController = UIAlertController(title: "No more Forward", message: "Click Segment On Top or Back.", preferredStyle: .alert)
            let alartAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alartController.addAction(alartAction)
            self.present(alartController, animated: true, completion: nil)
        }
    }
    
    //RELOAD ACTION
    @IBAction func Reload(_ sender: Any) {
        webView.reload()
    }
    
    //CLEAR ALL ACTIVITY
    @IBAction func clearNav(_ sender: Any) {
        
        URLCache.shared.removeAllCachedResponses()
        URLCache.shared.diskCapacity = 0
        URLCache.shared.memoryCapacity = 0
        
        if let cookies = HTTPCookieStorage.shared.cookies {
            for cookie in cookies {
                HTTPCookieStorage.shared.deleteCookie(cookie)
            }
        }
        webView.reload()
    }

    //BIOMATRIC SETUP
    func authSetup() {
        
        let contact = LAContext()
        var error:NSError?
        let resonString = "Authencation is needed for this application"
        
        if contact.canEvaluatePolicy(LAPolicy.deviceOwnerAuthenticationWithBiometrics, error: &error){
            
            contact.evaluatePolicy(LAPolicy.deviceOwnerAuthenticationWithBiometrics, localizedReason: resonString, reply: { (sucess, policyError) in
                
                if sucess{
                    print("Aouth sucess...")
                    self.segOut.isEnabled = true
                }else{
                    print(error?.localizedDescription as Any)
                    OperationQueue.main.addOperation({ () -> Void in
                        self.showPass()})
                }
            })
        }else{
            print(error?.localizedDescription as Any)
            OperationQueue.main.addOperation({ () -> Void in
                self.showPass()
            })
        }
    }
    
    //USER PASSWORD ENTRY FIELDS
    func showPass(){
        
        let alartController = UIAlertController(title: "User ID password", message: "Password : deepak", preferredStyle: .alert)
    
        let defaultAction = UIAlertAction(title: "OK", style: .cancel) { (action) -> Void in
            
            if let textField = (alartController.textFields?.first)! as UITextField?{
                if textField.text == "deepak"{
                    print("Auth sucess")
                    self.segOut.isEnabled = true
                }else{
                    self.showPass()
                }
            }
        }
        alartController.addAction(defaultAction)
        alartController.addTextField { (textField) in
            textField.placeholder = "Password"
            textField.isSecureTextEntry = true
        }
        
        self.present(alartController, animated: true, completion: nil)
    }
    
    //ACTIVITY CHECK
    func buttonCheck(){
        if webView.canGoBack{
            back.isEnabled = true
        }else{
            back.isEnabled = false
        }
        if webView.canGoForward{
            farword.isEnabled = true
        }else{
            farword.isEnabled = false
        }
    }
    
  }
