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

    @IBOutlet weak var stackContainer: UIStackView!
    var presenter: constrainsPresenterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Agregar pasos al stack view
        addInstructionStepsToStack()
    }
    
    private func addInstructionStepsToStack() {
        // Crear vistas para cada paso
        let stepOneView = InstructionStepView(stepNumber: "1", description: "Coloca la cámara a la altura de tus ojos y mantén tu rostro relajado.")
        let stepTwoView = InstructionStepView(stepNumber: "2", description: "Busca buena iluminación para que tu rostro no tenga sombras ni brillos.")
        let stepThreeView = InstructionStepView(stepNumber: "3", description: "No uses accesorios como lentes, gorras, cubrebocas, etc.")

        // Añadir las vistas al stack view
        stackContainer.addArrangedSubview(stepOneView)
        stackContainer.addArrangedSubview(stepTwoView)
        stackContainer.addArrangedSubview(stepThreeView)
    }

}


///Protocolo para recibir datos de presenter.
extension constrainsVC: constrainsViewProtocol {
}
