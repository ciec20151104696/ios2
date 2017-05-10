//
//  ViewController.swift
//  ios2
//
//  Created by s20151104696 on 17/3/8.
//  Copyright © 2017年 s20151104696. All rights reserved.
//

import UIKit

class ViewController: UIViewController,
    UIImagePickerControllerDelegate,
    UINavigationControllerDelegate{
    @IBOutlet weak var showone: UILabel!
    @IBOutlet weak var text1: UILabel!
    @IBOutlet weak var text2: UILabel!
    @IBOutlet weak var showtwo: UILabel!
    @IBOutlet weak var text3: UILabel!
    @IBOutlet weak var newone: UILabel!
    @IBOutlet weak var newtwo: UILabel!
    @IBOutlet weak var text4: UILabel!
    var a:Int=0
    var b:Int=0
    var c:Int=0
    var d:Int=0
    var dlg:Int=0
    var flagA:Int=0
    var flagB:Int=0
    @IBAction func tu1(_ sender: Any) {
        if(dlg==0){
            flagA=1
            flagB=0
            if UIImagePickerController.isSourceTypeAvailable(.photoLibrary){
                //初始化图片控制器
                let picker = UIImagePickerController()                //设置代理
                picker.delegate = self
                //指定图片控制器类型
                picker.sourceType = UIImagePickerControllerSourceType.photoLibrary
                //弹出控制器，显示界面
                self.present(picker,animated: true, completion: {
                    ()->Void in
                })
                
            }else{
                print("读取相册错误")
            }
        }
        
}
    @IBAction func leftone(_ sender: Any) {
        var score:Int;
        score = Int(showone.text!)!;
        if score>0{
            score = score - 1;
            showone.text = ("\(score)");
        }
}
    @IBAction func lefttwo(_ sender: Any) {
        var score:Int;
        var score2:Int;
        score = Int(showone.text!)!;
        score2 = Int(showtwo.text!)!;
        score = score + 1;
        showone.text = ("\(score)");
        if(score>=11 && score>=2+score2){
            a = a+1;
            text1.text = ("\(a)");
            showone.text = ("0");
            showtwo.text = ("0");
        }
        if(a==3){
            let alertVC = UIAlertController(title: "提示", message: "张三胜！！！", preferredStyle: UIAlertControllerStyle.alert)
            a=0;
            b=0;
            text1.text=("\(a)");
            text2.text=("\(b)");
            
            let acSure = UIAlertAction(title: "确定", style: UIAlertActionStyle.destructive) { (UIAlertAction) -> Void in
                print("click Sure")
            }
            let acCancel = UIAlertAction(title: "取消", style: UIAlertActionStyle.cancel) { (UIAlertAction) -> Void in
                print("click Cancel")
            }
            alertVC.addAction(acSure)
            alertVC.addAction(acCancel)
            self.present(alertVC, animated: true, completion: nil)
        }
    }
    @IBAction func rightone(_ sender: Any) {
        var score:Int;
        score = Int(showtwo.text!)!;
        if score>0{
            score = score - 1;
            showtwo.text = ("\(score)");
        }
    }
    @IBAction func righttwo(_ sender: Any) {
        var score:Int;
        var score2:Int;
        score2 = Int(showtwo.text!)!;
        score = Int(showone.text!)!;
        score2 = score2 + 1;
        showtwo.text = ("\(score2)");
        if(score2>=11 && score2>=2+score){
            b = b+1;
            text2.text = ("\(b)");
            showone.text = ("0");
            showtwo.text = ("0");
        }
        if(b==3){
            let alertVC = UIAlertController(title: "提示", message: "李四胜！！！", preferredStyle: UIAlertControllerStyle.alert)
            a=0;
            b=0;
            text1.text=("\(a)");
            text2.text=("\(b)");
            
            let acSure = UIAlertAction(title: "确定", style: UIAlertActionStyle.destructive) { (UIAlertAction) -> Void in
                print("click Sure")
            }
            let acCancel = UIAlertAction(title: "取消", style: UIAlertActionStyle.cancel) { (UIAlertAction) -> Void in
                print("click Cancel")
            }
            alertVC.addAction(acSure)
            alertVC.addAction(acCancel)
            self.present(alertVC, animated: true, completion: nil)
        }
    }
    @IBAction func newleftone(_ sender: Any) {
        var score:Int;
        score = Int(newone.text!)!;
        if score>0{
            score = score - 1;
            newone.text = ("\(score)");
        }
    }
    @IBAction func newlefttwo(_ sender: Any) {
        var score:Int;
        score = Int(newone.text!)!;
        score = score + 1;
        newone.text = ("\(score)");
        
        if(c==3){
            let alertVC = UIAlertController(title: "提示", message: "张三胜！！！", preferredStyle: UIAlertControllerStyle.alert)
            c=0;
            d=0;
            text3.text=("\(c)");
            text4.text=("\(d)");
            
            let acSure = UIAlertAction(title: "确定", style: UIAlertActionStyle.destructive) { (UIAlertAction) -> Void in
                print("click Sure")
            }
            let acCancel = UIAlertAction(title: "取消", style: UIAlertActionStyle.cancel) { (UIAlertAction) -> Void in
                print("click Cancel")
            }
            alertVC.addAction(acSure)
            alertVC.addAction(acCancel)
            self.present(alertVC, animated: true, completion: nil)
        }

    }
    @IBAction func newrightone(_ sender: Any) {
        var score:Int;
        score = Int(newtwo.text!)!;
        if score>0{
            score = score - 1;
            newtwo.text = ("\(score)");
        }
    }
    @IBAction func newrighttwo(_ sender: Any) {
        var score:Int;
        score = Int(newtwo.text!)!;
        score = score + 1;
        newtwo.text = ("\(score)");
        if(d==3){
            let alertVC = UIAlertController(title: "提示", message: "张三胜！！！", preferredStyle: UIAlertControllerStyle.alert)
            c=0;
            d=0;
            text3.text=("\(c)");
            text4.text=("\(d)");
            
            let acSure = UIAlertAction(title: "确定", style: UIAlertActionStyle.destructive) { (UIAlertAction) -> Void in
                print("click Sure")
            }
            let acCancel = UIAlertAction(title: "取消", style: UIAlertActionStyle.cancel) { (UIAlertAction) -> Void in
                print("click Cancel")
            }
            alertVC.addAction(acSure)
            alertVC.addAction(acCancel)
            self.present(alertVC, animated: true, completion: nil)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

