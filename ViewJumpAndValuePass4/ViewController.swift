//
//  ViewController.swift
//  ViewJumpAndValuePass4
//
//  Created by ouyou on 2019/06/09.
//  Copyright © 2019 ouyou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textField: UITextField!
    
    var str : String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        str = textField.text

    }

    @IBAction func buttonAction(_ sender: Any) {
        if str == "A" {
            self.performSegue(withIdentifier: "Asegue", sender: nil)
        }else if str == "B" {
            self.performSegue(withIdentifier: "Bsegue", sender: nil)
        }else{
            self.performSegue(withIdentifier: "Csegue", sender: nil)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Asegue" {
            let vc = segue.destination as! AViewController
            vc.str = str
        }else if segue.identifier == "Bsegue" {
            let vc = segue.destination as! BViewController
            vc.str = str
        }else if segue.identifier == "Csegue" {
            let vc = segue.destination as! CViewController
            vc.str = str
        }
    }
    
}


/*方法四：从一个界面跳转到多个界面
 通常是点按钮或其他部件跳转到一个界面，但是如果我想根据不同的条件从一个界面跳转到不同的界面时，就需要用到界面跳转
 界面跳转：从头部最昨天的圆键按钮拉线至各个界面，并设置segue的identifier，用self.performSegue的方法来跳转
 值传递：还是用同样的方法，func prepare重写这个方法进行值的传递
 */
