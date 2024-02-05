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

         //   let uyariMesaji = UIAlertController(title: "Hata Mesajı", message: "Email Girilmedi", preferredStyle: UIAlertController.Style.alert)
            
         //   let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) { UIAlertAction in
                // OK Butonuna tıklanınca olacaklar closure'ı
         //       print("Ok button tıklandı")
         //   }
            
         //   uyariMesaji.addAction(okButton)
            
         //   self.present(uyariMesaji, animated: true, completion: nil )
            
            
        } else if passwordTextField.text == "" {
            //parola girilmemiş
            
            let uyariMesaji = UIAlertController(title: "Hata Mesajı", message: "PassWord  Girilmedi", preferredStyle: UIAlertController.Style.alert)
            
            let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) { UIAlertAction in
                // OK Butonuna tıklanınca olacaklar closure'ı
                print("Ok button tıklandı")
            }
            
            uyariMesaji.addAction(okButton)
            
            self.present(uyariMesaji, animated: true, completion: nil )
            
        } else if passwordAgainTextField.text != passwordTextField.text {
            //parolalar uyuşmuyor
            
            let uyariMesaji = UIAlertController(title: "Hata Mesajı", message: "PassWord Uyuşmuyor", preferredStyle: UIAlertController.Style.alert)
            
            let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) { UIAlertAction in
                // OK Butonuna tıklanınca olacaklar closure'ı
                print("Ok button tıklandı")
            }
            
            uyariMesaji.addAction(okButton)
            
            self.present(uyariMesaji, animated: true, completion: nil )
            
            
        } else {
            //Kayıt başarılı
            
            let uyariMesaji = UIAlertController(title: "Başarılı", message: "Kullanıcı Oluşturuldu", preferredStyle: UIAlertController.Style.alert)
            
            let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) { UIAlertAction in
                // OK Butonuna tıklanınca olacaklar closure'ı
                print("Ok button tıklandı")
            }
            
            uyariMesaji.addAction(okButton)
            
            self.present(uyariMesaji, animated: true, completion: nil )        }
        
        
    }
    
    
    
    
}

