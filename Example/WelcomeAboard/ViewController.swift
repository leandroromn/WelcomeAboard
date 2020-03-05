//
//  ViewController.swift
//  WelcomeAboard
//
//  Created by Leandro Romano on 03/03/2020.
//  Copyright (c) 2020 Leandro Romano. All rights reserved.
//

import UIKit
import WelcomeAboard

class ViewController: UIViewController {

    override func loadView() {
        super.loadView()
        let title = WAWelcomeViewContentTitle(welcomeText: "Welcome To",
                                       titleText: "Welcome to Home",
                                       type: .custom)

        let item1 = WAWelcomeViewContentCard(titleText: "First Title",
                                             descriptionText: "First Description",
                                             icon: UIImage(systemName: "command"))

        let item2 = WAWelcomeViewContentCard(titleText: "Second Title",
                                             descriptionText: "Second Description",
                                             icon: UIImage(systemName: "option"))

        let content = WAWelcomeViewContent(title: title, items: [item1, item2])

        view = WAWelcomeView(content: content)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

