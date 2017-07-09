//
//  SRDestacadoPrensaCustomCell.swift
//  SportReview
//
//  Created by User on 15/7/16.
//  Copyright © 2016 SportReview. All rights reserved.
//

import UIKit

class SRDestacadoPrensaCustomCell: UITableViewCell {
    
    @IBOutlet weak var myImageNoticiaDestacada: UIImageView!
    @IBOutlet weak var myImageLogoPrensa: UIImageView!
    @IBOutlet weak var myTitularNoticia: UILabel!
    @IBOutlet weak var myDescripcionNoticia: UILabel!
    @IBOutlet weak var myFechaPublicacionNoticia: UILabel!
    
    @IBOutlet weak var myButtonCompartirBTN: UIButton!
    @IBOutlet weak var myButtonMeGustaBTN: UIButton!
    
    @IBOutlet weak var myButtonComentarBTN: UIButton!
    
    @IBOutlet weak var myComentarios: UILabel!
    @IBOutlet weak var myLikes: UILabel!
    @IBOutlet weak var ojito: UILabel!
    @IBOutlet weak var myImagenTipo: UIImageView!
    
    @IBOutlet weak var myButtonRepublicar: UIButton!
    
    @IBOutlet weak var myRepublicaciones: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
