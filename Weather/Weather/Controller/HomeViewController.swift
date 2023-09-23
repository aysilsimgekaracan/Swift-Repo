//
//  ViewController.swift
//  Weather
//
//  Created by Ayşıl Simge Karacan on 22.09.2023.
//

import UIKit

class HomeViewController: UIViewController {

     // MARK: - Properties
    private let backgroundImageView = UIImageView()
    private let mainStackView = UIStackView()
    private let searchStackView = SearchStackView()
    private let statusImageView = UIImageView()
    private let temperatureLabel = UILabel()
    private let cityLabel = UILabel()
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        style()
        layout()
    }
}

    // MARK: - Helpers
extension HomeViewController {
    private func style() {
        // backgroundImageView style
        backgroundImageView.translatesAutoresizingMaskIntoConstraints = false // tells the system that you are going to provide constraints programmatically
        backgroundImageView.contentMode = .scaleAspectFill
        backgroundImageView.image = #imageLiteral(resourceName: "background") // #imageLiteral
        
        //searchStackView style
        searchStackView.translatesAutoresizingMaskIntoConstraints = false
        searchStackView.spacing = 8
        searchStackView.axis = .horizontal
        
        //mainStackView style
        mainStackView.translatesAutoresizingMaskIntoConstraints = false
        mainStackView.spacing = 10
        mainStackView.axis = .vertical
        mainStackView.alignment = .trailing
        
        //statusImageView style
        statusImageView.translatesAutoresizingMaskIntoConstraints = false
        statusImageView.image = UIImage(systemName: "sun.max")
        statusImageView.tintColor = .label
        
        //temperatureLabel style
        temperatureLabel.translatesAutoresizingMaskIntoConstraints = false
        temperatureLabel.font = UIFont.systemFont(ofSize: 80)
        temperatureLabel.attributedText = attributedText(with: "15")
        
        //cityLabel style
        cityLabel.translatesAutoresizingMaskIntoConstraints = false
        cityLabel.font = .preferredFont(forTextStyle: .largeTitle)
        cityLabel.text = "Ankara"
        
    }
    
    private func layout() {
        view.addSubview(backgroundImageView)
        view.addSubview(mainStackView)
        
        mainStackView.addArrangedSubview(searchStackView)

        mainStackView.addArrangedSubview(statusImageView)
        mainStackView.addArrangedSubview(temperatureLabel)
        mainStackView.addArrangedSubview(cityLabel)
        
        NSLayoutConstraint.activate([ // This line activates an array of constraints
            
            // backgroundImageView layout
            backgroundImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            backgroundImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            view.trailingAnchor.constraint(equalTo: backgroundImageView.trailingAnchor),
            view.bottomAnchor.constraint(equalTo: backgroundImageView.bottomAnchor),
            
            //mainStackView layout
            mainStackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8),
            mainStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8),
            view.trailingAnchor.constraint(equalTo: mainStackView.trailingAnchor, constant: 8),
            
            //searchStackView layout
            searchStackView.widthAnchor.constraint(equalTo: mainStackView.widthAnchor),
                       
            //statusImageView layout
            statusImageView.heightAnchor.constraint(equalToConstant: 85),
            statusImageView.widthAnchor.constraint(equalToConstant: 85)
            
        ])
    }
    
    private func attributedText(with text: String) -> NSMutableAttributedString {
        let attributedText = NSMutableAttributedString(string: text, attributes: [.foregroundColor: UIColor.label, .font: UIFont.boldSystemFont(ofSize: 90)])
        attributedText.append(NSAttributedString(string: "°C", attributes: [.font: UIFont.systemFont(ofSize: 50)]))
        return attributedText
    }
}

