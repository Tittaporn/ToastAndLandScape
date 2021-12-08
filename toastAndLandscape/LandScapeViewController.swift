//
//  LandScapeViewController.swift
//  toastAndLandscape
//
//  Created by Lee McCormick on 12/7/21.
//

import UIKit

class LandScapeViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.showToast(message: "I am in landscape screen!", font: .systemFont(ofSize: 12.0))
        view.backgroundColor = .yellow
    }
    
    override public var shouldAutorotate: Bool {
        return false
    }
    override public var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return .landscapeRight
    }
    override public var preferredInterfaceOrientationForPresentation: UIInterfaceOrientation {
        return .landscapeRight
    }
    
    func setupLandscapeView() -> UIViewController {
      let viewController = LandScapeViewController()
      viewController.modalPresentationStyle = .fullScreen
      return viewController
    }
}


//https://code.likeagirl.io/xcode-how-to-force-a-view-into-landscape-mode-in-ios-13-15340978e3f4
