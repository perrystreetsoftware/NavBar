//
//  UiKitViewController.swift
//  NavBar
//
//  Created by Fred Murakawa on 25/01/22.
//

import UIKit

class UiKitViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "UIKit"
        view.backgroundColor = .white


        var navItems = [UIBarButtonItem]()
        let adminButton = UIBarButtonItem(title: NSLocalizedString("Admin", comment: ""),
                                          style: .plain,
                                          target: self,
                                          action: #selector(printSomething))
        let font = UIFont.systemFont(ofSize: 14)
        adminButton.setTitleTextAttributes([NSAttributedString.Key.font: font], for: .normal)
        adminButton.setTitleTextAttributes([NSAttributedString.Key.font: font], for: .highlighted)
        navItems.append(adminButton)

        let button = UIButton(type: UIButton.ButtonType.custom)
        button.setTitle("CUSTOM", for: .normal)
        button.setTitleColor(.red, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        button.addTarget(self, action: #selector(printSomething), for: .touchUpInside)
        let barItem = UIBarButtonItem(customView: button)
        navItems.append(barItem)

        navigationItem.rightBarButtonItems = navItems
    }

    @objc private func printSomething() {
        print("PUSHED UIKIT")
    }
}
