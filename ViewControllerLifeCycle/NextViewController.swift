//
//  NextViewController.swift
//  ViewControllerLifeCycle
//
//  Created by David Kuo on 2026/5/6.
//

import UIKit

class NextViewController: ViewController
{
    override func viewDidLoad()
    {
        super.viewDidLoad()
        title = "Next View Controller"
        view.backgroundColor = .systemBlue

        let label = UILabel()
        label.text = "This page is pushed by code."
        label.textColor = .white
        label.font = .systemFont(ofSize: 24, weight: .semibold)
        label.translatesAutoresizingMaskIntoConstraints = false

        view.addSubview(label)

        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
}
