//
//  ViewController.swift
//  NavBarDemo
//
//  Created by 杜杜兴 on 15/10/2.
//  Copyright (c) 2015年 杜杜兴. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var count=0
    @IBAction func addClick(sender: UIBarButtonItem) {
        addOneMore()
    }
    @IBOutlet weak var navBar1: UINavigationItem!
    
    func reduceOneMore(){
       count--
  navBar1.popNavigationItemAnimated(true)
    }
    
    func addOneMore(){
       count++
        var item=UINavigationItem(title: "Count:\(count)")
        item.rightBarButtonItem=UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.Add, target: self, action: "addOneMore")
        item.leftBarButtonItem=UIBarButtonItem(title:"返回",style:UIBarButtonItemStyle.Bordered,target:self,action:"reduceOneMore")
        navBar1.pushNavigationItem(item,animated:true)
        
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

