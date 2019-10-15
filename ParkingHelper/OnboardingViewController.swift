//
//  OnboardingViewController.swift
//  ParkingHelper
//
//  Created by Pranay Boggarapu on 9/23/19.
//  Copyright © 2019 Pranay Boggarapu. All rights reserved.
//

import UIKit

class OnboardingViewController: UIViewController {

    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    var imageParkingFrustrated: UIImageView = {
       var parkingImage = UIImageView(image: UIImage(named: "firstParkingOnboardingImage"))
        parkingImage.translatesAutoresizingMaskIntoConstraints = false
        return parkingImage
    }()
    
    var onboardingText: UITextView = {
        var textView = UITextView()
        textView.text = "Are you in the constant hussle-tussle of finding a parking spot??"
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.textAlignment = .center
        textView.font = UIFont.boldSystemFont(ofSize: 18)
        textView.isEditable = false
        textView.isScrollEnabled = false
        return textView
    }()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        view.addSubview(imageParkingFrustrated)
        view.addSubview(onboardingText)
        
        setupConstraints()
    }
    
    private func setupConstraints() {
        imageParkingFrustrated.contentMode = .scaleToFill
        imageParkingFrustrated.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
        imageParkingFrustrated.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
        imageParkingFrustrated.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        imageParkingFrustrated.heightAnchor.constraint(equalToConstant: 400).isActive = true
        
        
        onboardingText.topAnchor.constraint(equalTo: imageParkingFrustrated.bottomAnchor, constant: 50).isActive = true
        onboardingText.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -50).isActive = true
        onboardingText.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 50).isActive = true
        
        
    }
}

