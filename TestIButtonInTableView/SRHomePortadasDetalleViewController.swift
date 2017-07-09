//
//  SRHomePortadasDetalleViewController.swift
//  SportReview
//
//  Created by User on 6/12/16.
//  Copyright © 2016 SportReview. All rights reserved.
//

import UIKit

class SRHomePortadasDetalleViewController: UIViewController {

    //MARK: - VARIABLES LOCALES GLOBALES
    var imagenData : UIImage?
    var medioData : String?

    
    
    //MARK: - IBOUTLET
    @IBOutlet weak var myScrollView: UIScrollView!
    @IBOutlet weak var myDetalleFotoMuro: UIImageView!
    @IBOutlet weak var mostrarMedioBTN: UIButton!
    
    
    
    @IBAction func ocultarVC(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func muestraMedio(_ sender: Any) {
        print(medioData!)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myDetalleFotoMuro.image = imagenData!
        
        //self.title = canal
        
        myScrollView.minimumZoomScale = 1.0
        myScrollView.maximumZoomScale = 3.0
        
        
        // Do any additional setup after loading the view.
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}


//MARK: - EXTENSION
extension SRHomePortadasDetalleViewController: UIScrollViewDelegate {
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return myDetalleFotoMuro
    } 
}
