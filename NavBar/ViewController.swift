//
//  ViewController.swift
//  NavBar
//
//  Created by Fred Murakawa on 25/01/22.
//

import UIKit

class ViewController: UIViewController {

    let uiKitButton: UIButton = {
        let button = UIButton()
        button.setTitle("UIKit", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.addTarget(self, action: #selector(pushUiKitController), for: .touchUpInside)
        return button
    }()

    let swiftUIButton: UIButton = {
        let button = UIButton()
        button.setTitle("SwiftUI", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.addTarget(self, action: #selector(pushSwiftUiController), for: .touchUpInside)

        return button
    }()

    let stack: UIStackView = {
        let stack = UIStackView()
        stack.spacing = 30
        stack.axis = .vertical
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Home"

        view.addSubview(stack)

        stack.addArrangedSubview(uiKitButton)
        stack.addArrangedSubview(swiftUIButton)

        stack.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        stack.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }

    @objc private func pushUiKitController() {
        navigationController?.pushViewController(UiKitViewController(), animated: true)
    }

    @objc private func pushSwiftUiController() {
        navigationController?.pushViewController(SwiftUiViewController(rootView: SwiftUIView()), animated: true)
    }
}

