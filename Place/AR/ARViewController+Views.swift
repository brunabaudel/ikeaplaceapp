//
//  ARViewController+Views.swift
//  Place
//
//  Created by Bruna Baudel on 20/11/2022.
//

import UIKit

extension ARViewController {
    func initViews() {
        sceneView = VirtualObjectARView(frame: UIScreen.main.bounds)
        sceneView.translatesAutoresizingMaskIntoConstraints = false
        
        addObjectButton = UIButton()
        addObjectButton.translatesAutoresizingMaskIntoConstraints = false
        addObjectButton.addTarget(self, action: #selector(addButtonAction), for: UIControl.Event.touchUpInside)
        addObjectButton.setImage(#imageLiteral(resourceName: "add"), for: [])
        addObjectButton.setImage(#imageLiteral(resourceName: "addPressed"), for: [.highlighted])
        
        blurView = UIVisualEffectView()
        blurView.translatesAutoresizingMaskIntoConstraints = false
        
        spinner = UIActivityIndicatorView()
        spinner.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(blurView)
        view.addSubview(sceneView)
        view.addSubview(addObjectButton)
        view.addSubview(spinner)
        
        NSLayoutConstraint.activate([
            blurView.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0),
            blurView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0),
            blurView.widthAnchor.constraint(equalTo: view.widthAnchor, constant: 0),
            blurView.heightAnchor.constraint(equalTo: view.heightAnchor, constant: 0),
        ])
        
        NSLayoutConstraint.activate([
            sceneView.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0),
            sceneView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0),
            sceneView.widthAnchor.constraint(equalTo: view.widthAnchor, constant: 0),
            sceneView.heightAnchor.constraint(equalTo: view.heightAnchor, constant: 0),
        ])
        
        NSLayoutConstraint.activate([
            addObjectButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            addObjectButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -30),
            addObjectButton.widthAnchor.constraint(equalToConstant: 48),
            addObjectButton.heightAnchor.constraint(equalToConstant: 48),
        ])
        
        NSLayoutConstraint.activate([
            spinner.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            spinner.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -30),
            spinner.widthAnchor.constraint(equalToConstant: 48),
            spinner.heightAnchor.constraint(equalToConstant: 48),
        ])
    }
}

