//
//  ViewController+Actions.swift
//  Place
//
//  Created by Bruna Baudel on 20/11/2022.
//

import UIKit
import SceneKit

import UIKit
import SceneKit

extension ARViewController: UIGestureRecognizerDelegate {
    
    enum SegueIdentifier: String {
        case showObjects
    }
    
    // MARK: - Interface Actions
    
    @objc func addButtonAction(_ sender: UIButton) {
        guard let vo = VirtualObject.availableObject(name: "lamp") else {return}
        
        if let query = sceneView.getRaycastQuery(for: vo.allowedAlignment),
            let result = sceneView.castRay(for: query).first {
            vo.mostRecentInitialPlacementResult = result
            vo.raycastQuery = query
            
            virtualObjectSelection(vo)
        } else {
            vo.mostRecentInitialPlacementResult = nil
            vo.raycastQuery = nil
        }
    }
    
    /// - Tag: restartExperience
    func restartExperience() {
        guard isRestartAvailable, !virtualObjectLoader.isLoading else { return }
        isRestartAvailable = false

        virtualObjectLoader.removeAllVirtualObjects()
        addObjectButton.setImage(#imageLiteral(resourceName: "add"), for: [])
        addObjectButton.setImage(#imageLiteral(resourceName: "addPressed"), for: [.highlighted])

        resetTracking()

        // Disable restart for a while in order to give the session time to restart.
        DispatchQueue.main.asyncAfter(deadline: .now() + 5.0) {
            self.isRestartAvailable = true
        }
    }
}
