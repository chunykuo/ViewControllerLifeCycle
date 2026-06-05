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
    let nextPageButton = UIButton(type: .system)
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        title = "First View Controller"
        view.backgroundColor = .white
        stackViewLayoutSetting()
        nextPageButtonLayoutSetting()
        addNewLabelToStackView(labelString: "1. view Did Load")
        
        if #available(iOS 13.0, *) {
            NotificationCenter.default.addObserver(
                self,
                selector: #selector(sceneWillEnterForeground),
                name: UIScene.willEnterForegroundNotification,
                object: nil
            )
        }
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
        stackView.spacing = 12
        stackView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(stackView)
        stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }

    func nextPageButtonLayoutSetting()
    {
        nextPageButton.setTitle("Go To Next View", for: .normal)
        nextPageButton.addTarget(self, action: #selector(goToNextViewButtonPress), for: .touchUpInside)
        stackView.addArrangedSubview(nextPageButton)
    }

    @objc func goToNextViewButtonPress()
    {
        let nextViewController = NextViewController()
        navigationController?.pushViewController(nextViewController, animated: true)
    }
    
    func addNewLabelToStackView(labelString: String)
    {
        let label = UILabel()
        label.text = labelString
        stackView.addArrangedSubview(label)
        print(labelString)
    }

    @objc func sceneWillEnterForeground()
    {
        addNewLabelToStackView(labelString: "application Will Enter Foreground")
    }
}
