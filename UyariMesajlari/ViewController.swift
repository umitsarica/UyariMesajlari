//
//  ViewController.swift
//  UyariMesajlari
//
//  Created by Umit SARICA on 5.02.2024.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var emailTextFiels: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    @IBOutlet weak var passwordAgainTextField: UITextField!
    
    
    func FailMsg (Title: String, Msg: String, BtnText: String) {
        
        let AlertMessage = UIAlertController(title: Title, message: Msg, preferredStyle: UIAlertController.Style.alert)
        
        let Button = UIAlertAction(title: BtnText, style: UIAlertAction.Style.default) { UIAlertAction in
            // OK Butonuna tıklanınca olacaklar closure'ı
            print("Ok button tıklandı")
        }
        
        AlertMessage.addAction(Button)
        
        self.present(AlertMessage, animated: true, completion: nil )
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func signUpTiklandi(_ sender: Any) {
        
        if emailTextFiels.text == "" {
            //email girilmemiş
            FailMsg(Title: "Fail Message", Msg: "Does Not Enter Email ", BtnText: "Ok")
            
        } else if passwordTextField.text == "" {
            //parola girilmemiş
            FailMsg(Title: "Fail Message", Msg: "Does Not Enter Password ", BtnText: "Ok")
            
        } else if passwordAgainTextField.text != passwordTextField.text {
            //parolalar uyuşmuyor
            FailMsg(Title: "Fail Message", Msg: "Does Not Mismatch Password ", BtnText: "Ok")
            
        } else {
            //Kayıt başarılı
            FailMsg(Title: "Fail Message", Msg: "Does Not Enter Email ", BtnText: "Ok")
            
        }
        
                
        
    }
    
}
