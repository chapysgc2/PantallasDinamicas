//
//  constrainsRouter.swift
//  constrains
//
//  Created by Hazel Alain on 20/10/24.
//  
//

import Foundation
import UIKit

class constrainsRouter {
    private var view: constrainsVC
    private var presenter: constrainsPresenter
    private var interactor: constrainsInteractor
    private var window: UIWindow?
    init(in window: UIWindow?) {
        self.view = constrainsVC()
        self.presenter = constrainsPresenter()
        self.interactor = constrainsInteractor()
        view.presenter = self.presenter
        presenter.view = self.view
        presenter.interactor = self.interactor
        presenter.router = self
        interactor.presenter = self.presenter
        self.window = window
    }
    func showView() {
        window?.rootViewController = UINavigationController(rootViewController: view)
        window?.makeKeyAndVisible()
    }
}
extension constrainsRouter: constrainsRouterProtocol {
}

