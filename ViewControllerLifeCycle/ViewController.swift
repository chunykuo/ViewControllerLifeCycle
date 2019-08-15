//
//  ViewController.swift
//  ViewControllerLifeCycle
//
//  Created by David Kuo on 2019/6/5.
//

import UIKit

class ViewController: UIViewController
{
    @IBAction func goToNextViewButtonPress(sender: UIButton)
    {
        print("go to Next View")
    }

    override func viewDidLoad()
    {
        super.viewDidLoad()
        print("1. view Did Load")
    }
    
    override func viewWillAppear(_ animated: Bool)
    {
        print("2. view Will Appear")
    }
    
    override func viewDidAppear(_ animated: Bool)
    {
        print("3. view Did Appear")
    }
    
    override func viewWillDisappear(_ animated: Bool)
    {
        print("1. view Will Disappear")
    }
    
    override func viewDidDisappear(_ animated: Bool)
    {
        print("2. view Did Disappear")
    }

}

