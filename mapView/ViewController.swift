//
//  ViewController.swift
//  mapView
//
//  Created by Дамир Нургалиев on 11.04.2024.
//

import UIKit
import MapKit

class ViewController: UIViewController, CLLocationManagerDelegate {
   
    var hotels = Hotels()
    
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var labelDetail: UILabel!
    @IBOutlet weak var mapView: MKMapView!
    
   
    
    @IBOutlet weak var button: UIButton!
    
    @IBAction func butoonOpenMap(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let detailMapVc = storyboard.instantiateViewController(withIdentifier: "detailMap") as! MapViewController
        
        detailMapVc.mapLocations = hotels
        
        navigationController?.show(detailMapVc, sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelName.text = hotels.name
        labelDetail.text = hotels.detail
        image.image = UIImage(named: hotels.image2)
        
        // Do any additional setup after loading the view.
    }


}

