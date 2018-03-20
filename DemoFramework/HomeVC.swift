//
//  HomeVC.swift
//  DemoFramework
//
//  Created by OPTLPTP184 on 3/12/18.
//  Copyright © 2018 OPTLPTP184. All rights reserved.
//

import UIKit

public protocol HomeVCDelegate
{
    func bringHomeVC(homeView: UIView)
}

public class HomeVC: UIViewController
{
    public var delegate: HomeVCDelegate?
    
    override public func viewDidLoad()
    {
        super.viewDidLoad()

        // Do any additional setup after loading the view.        
    }
    
    public func showHomeVC()
    {
        self.delegate?.bringHomeVC(homeView: self.view)
    }
    
    convenience init() {
        let bundle = Bundle(identifier: "com.inadev.DemoFramework")
        self.init(nibName: "HomeVC", bundle: bundle)
        print(Bundle.main)
        if(Bundle.main.path(forResource: "HomeVC", ofType: "nib") != nil)
        {
            print("Nib file exist")
        }
        else
        {
            print("Nib file not exist")
        }
    }
    
    @IBAction public func clickBtnAction(_ sender: Any? = nil)
    {
        self.view.backgroundColor = UIColor.blue
    }
}
