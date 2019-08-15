//
//  ViewController.swift
//  ViewControllerLifeCycle
//
//  Created by David Kuo on 2019/6/5.
//

import UIKit

class ViewController: UIViewController
{
    let stackView = UIStackView()
    
    @IBAction func goToNextViewButtonPress(sender: UIButton)
    {
        print("go to Next View")
    }

    override func viewDidLoad()
    {
        super.viewDidLoad()
        addNewLabelToStackView(labelString: "1. view Did Load")
        
        stackViewLayoutSetting()
    }
    
    override func viewWillAppear(_ animated: Bool)
    {
        addNewLabelToStackView(labelString: "2. view Will Appear")
    }
    
    override func viewDidAppear(_ animated: Bool)
    {
        addNewLabelToStackView(labelString: "3. view Did Appear")
    }
    
    override func viewWillDisappear(_ animated: Bool)
    {
        print("1. view Will Disappear")
    }
    
    override func viewDidDisappear(_ animated: Bool)
    {
        print("2. view Did Disappear")
    }
    
    func stackViewLayoutSetting()
    {
        stackView.axis = .vertical
        stackView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(stackView)
        stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    
    func addNewLabelToStackView(labelString: String)
    {
        let label = UILabel()
        label.text = labelString
        stackView.addArrangedSubview(label)
        print(labelString)
    }

}

