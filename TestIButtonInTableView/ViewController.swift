//
//  ViewController.swift
//  TestIButtonInTableView
//
//  Created by Andres Felipe Ocampo Eljaiesk on 9/7/17.
//  Copyright © 2017 Andres Felipe Ocampo Eljaiesk. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    
    var arrayTexto = ["Ramos pierde los papeles", "Ramos gana al Real Madrid", "Ramos el mejor"]
    var arrayImagenes = ["ramos.png", "AM.png", "RM.png"]
    var arrayMedio = ["as1.png", "as1.png", "as1.png"]
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UINib(nibName: "SRDestacadoPrensaCustomCell", bundle: nil), forCellReuseIdentifier: "DestacadoPrensaCustomCell")
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }


    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayTexto.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let customCell = tableView.dequeueReusableCell(withIdentifier: "DestacadoPrensaCustomCell", for: indexPath) as! SRDestacadoPrensaCustomCell
        
        let modelTexto = arrayTexto[indexPath.row]
        let modelImagenes = arrayImagenes[indexPath.row]
        let modelMedio = arrayMedio[indexPath.row]
        
        
        customCell.myTitularNoticia.text = modelTexto
        customCell.myDescripcionNoticia.text = modelTexto
        customCell.myImageNoticiaDestacada.image = UIImage(named: modelImagenes)
        customCell.myImageLogoPrensa.image = UIImage(named: modelMedio)
        
        customCell.myButtonRepublicar.tag = indexPath.row
        customCell.myButtonRepublicar.addTarget(self, action: #selector(self.muestraAlerta(_:)), for: .touchUpInside)
        
        
        return customCell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 125
    }
    
    
    func muestraAlerta(_ sender : UIButton){
        let aux = arrayTexto[sender.tag]
        let alertView = UIAlertController(title: "\(aux)", message: "boton seleccionado es \(sender.tag)", preferredStyle: .alert)
        alertView.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alertView, animated: true, completion: nil)
    }
    
    

}

