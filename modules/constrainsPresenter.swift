//
//  constrainsPresenter.swift
//  constrains
//
//  Created by Hazel Alain on 20/10/24.
//  
//

import Foundation

class constrainsPresenter {
    
    var view: constrainsViewProtocol?
    var interactor: constrainsInteractorInputProtocol?
    var router: constrainsRouterProtocol?
    
}
extension constrainsPresenter: constrainsPresenterProtocol {
}
extension constrainsPresenter: constrainsInteractorOutputProtocol {
}
