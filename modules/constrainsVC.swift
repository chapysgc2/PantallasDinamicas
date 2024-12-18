//
//  constrainsVC.swift
//  constrains
//
//  Created by Hazel Alain on 20/10/24.
//  
//

import Foundation
import UIKit

class constrainsVC: UIViewController {

    var presenter: constrainsPresenterProtocol?

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
///Protocolo para recibir datos de presenter.
extension constrainsVC: constrainsViewProtocol {
}
