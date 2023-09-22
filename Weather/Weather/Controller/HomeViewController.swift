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
    private let searchStackView = UIStackView()
    private let locationButton = UIButton(type: .system)
    private let searchButton = UIButton(type: .system)
    private let searchTextField = UITextField()
    
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
        
        //locationButton style
        locationButton.translatesAutoresizingMaskIntoConstraints = false
        locationButton.setImage(UIImage(systemName: "location.circle.fill"), for: .normal)
        locationButton.tintColor = .label
        locationButton.layer.cornerRadius = 40 / 2
        locationButton.contentVerticalAlignment = .fill
        locationButton.contentHorizontalAlignment = .fill
        
        //searchButton style
        searchButton.translatesAutoresizingMaskIntoConstraints = false
        searchButton.setImage(UIImage(systemName: "magnifyingglass"), for: .normal)
        searchButton.tintColor = .label
        searchButton.layer.cornerRadius = 40 / 2
        searchButton.contentVerticalAlignment = .fill
        searchButton.contentHorizontalAlignment = .fill
        
        //searchTextField style
        searchTextField.translatesAutoresizingMaskIntoConstraints = false
        searchTextField.placeholder = "Search"
        searchTextField.font = UIFont.preferredFont(forTextStyle: .title1)
        searchTextField.borderStyle = .roundedRect
        searchTextField.textAlignment = .right
        searchTextField.backgroundColor = .systemFill
        
        //searchStackView style
        searchStackView.translatesAutoresizingMaskIntoConstraints = false
        searchStackView.spacing = 8
        searchStackView.axis = .horizontal
        
    }
    
    private func layout() {
        view.addSubview(backgroundImageView)
        view.addSubview(searchStackView)
        searchStackView.addArrangedSubview(locationButton)
        searchStackView.addArrangedSubview(searchTextField)
        searchStackView.addArrangedSubview(searchButton)
        
        NSLayoutConstraint.activate([ // This line activates an array of constraints
            
            // backgroundImageView layout
            backgroundImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            backgroundImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            view.trailingAnchor.constraint(equalTo: backgroundImageView.trailingAnchor),
            view.bottomAnchor.constraint(equalTo: backgroundImageView.bottomAnchor),
            
            //searchStackView layout
            searchStackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8),
            searchStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8),
            view.trailingAnchor.constraint(equalTo: searchStackView.trailingAnchor, constant: 8),
            
            // locationButton layout
            locationButton.heightAnchor.constraint(equalToConstant: 40),
            locationButton.widthAnchor.constraint(equalToConstant: 40),
            
            // searchButton layout
            searchButton.heightAnchor.constraint(equalToConstant: 40),
            searchButton.widthAnchor.constraint(equalToConstant: 40),
            
        ])
    }
}

