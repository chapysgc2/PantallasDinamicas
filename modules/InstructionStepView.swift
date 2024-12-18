//
//  InstructionStepView.swift
//  constrains
//
//  Created by Hazel Alain on 20/10/24.
//

import Foundation
import UIKit

class InstructionStepView: UIView {

    // Etiquetas para el número de paso y la descripción
    private let numberStepLabel = UILabel()
    private let descriptionLabel = UILabel()

    // Inicializador personalizado
    init(stepNumber: String, description: String) {
        super.init(frame: .zero)
        setupViews(stepNumber: stepNumber, description: description)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // Configuración de las vistas
    private func setupViews(stepNumber: String, description: String) {
        // Configurar número del paso
        numberStepLabel.text = stepNumber
        numberStepLabel.font = UIFont.boldSystemFont(ofSize: 18)
        numberStepLabel.translatesAutoresizingMaskIntoConstraints = false

        // Configurar descripción
        descriptionLabel.text = description
        descriptionLabel.font = UIFont.systemFont(ofSize: 16)
        descriptionLabel.numberOfLines = 0 // Permitir varias líneas
        descriptionLabel.translatesAutoresizingMaskIntoConstraints = false

        // Agregar las etiquetas a la vista
        addSubview(numberStepLabel)
        addSubview(descriptionLabel)

        // Configurar restricciones (Auto Layout)
        NSLayoutConstraint.activate([
            numberStepLabel.topAnchor.constraint(equalTo: topAnchor, constant: 8),
            numberStepLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            numberStepLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),

            descriptionLabel.topAnchor.constraint(equalTo: numberStepLabel.bottomAnchor, constant: 8),
            descriptionLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            descriptionLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            descriptionLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -8)
        ])
    }
}
