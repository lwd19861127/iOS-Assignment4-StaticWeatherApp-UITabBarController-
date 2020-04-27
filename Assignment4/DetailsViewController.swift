//
//  DetailsViewController.swift
//  Assignment4
//
//  Created by WendaLi on 2020-04-26.
//  Copyright © 2020 Derrick Park. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {

    var country: String!
    var city: City!
    
    let countryLable: UILabel = {
        let lab = UILabel()
        lab.text = "Country"
        lab.textAlignment = .center
        lab.font = UIFont.boldSystemFont(ofSize: 14)
        lab.translatesAutoresizingMaskIntoConstraints = false
        return lab
    }()
    
    let countryName: UILabel = {
        let lab = UILabel()
        lab.textAlignment = .center
        lab.translatesAutoresizingMaskIntoConstraints = false
        return lab
    }()
    
    let cityLable: UILabel = {
        let lab = UILabel()
        lab.text = "City"
        lab.textAlignment = .center
        lab.font = UIFont.boldSystemFont(ofSize: 14)
        lab.translatesAutoresizingMaskIntoConstraints = false
        return lab
    }()
    
    let cityName: UILabel = {
        let lab = UILabel()
        lab.textAlignment = .center
        lab.font = UIFont.systemFont(ofSize: 20)
        lab.translatesAutoresizingMaskIntoConstraints = false
        return lab
    }()
    
    let tempLable: UILabel = {
        let lab = UILabel()
        lab.text = "Temperaure"
        lab.textAlignment = .center
        lab.font = UIFont.boldSystemFont(ofSize: 14)
        lab.translatesAutoresizingMaskIntoConstraints = false
        return lab
    }()
    
    let tempVelue: UILabel = {
        let lab = UILabel()
        lab.textAlignment = .center
        lab.font = UIFont.systemFont(ofSize: 20)
        lab.translatesAutoresizingMaskIntoConstraints = false
        return lab
    }()
    
    let sumLable: UILabel = {
        let lab = UILabel()
        lab.text = "Summary"
        lab.textAlignment = .center
        lab.font = UIFont.boldSystemFont(ofSize: 14)
        lab.translatesAutoresizingMaskIntoConstraints = false
        return lab
    }()
    
    let sumText: UILabel = {
        let lab = UILabel()
        lab.textAlignment = .center
        lab.font = UIFont.systemFont(ofSize: 20)
        lab.translatesAutoresizingMaskIntoConstraints = false
        return lab
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        countryName.text = country
        cityName.text = city.name
        tempVelue.text = String(city.temp)
        sumText.text = city.summary
        
        // Do any additional setup after loading the view.
        
        let stackView = UIStackView(arrangedSubviews: [countryLable, countryName, cityLable, cityName, tempLable, tempVelue, sumLable, sumText])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.distribution = .fillEqually
        
        view.addSubview(stackView)
        stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        stackView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        stackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        stackView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -100).isActive = true
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
