//
//  ViewController.swift
//  DisplayMapWithTypesApp
//
//  Created by Vishwajeet Pandey on 16/05/22.
//

import UIKit
import MapKit
import CoreLocation


class ViewController: UIViewController {
    
  //  @IBOutlet var mapView1: UIView!
    
    @IBOutlet weak var mapView2: MKMapView!
    @IBOutlet weak var sc2: UISegmentedControl!
  //  @IBOutlet var sc1: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let staticLocation = CLLocationCoordinate2D(
            latitude : 12.926214,longitude: 77.679997
        )
        let span1 = MKCoordinateSpan(latitudeDelta: 0.003, longitudeDelta: 0.003)
        let region1 = MKCoordinateRegion(center: staticLocation, span: span1)
        mapView2.setRegion(region1, animated: true)
        
        //displaying annotation
        
        let annotation = MKPointAnnotation()
        annotation.coordinate = staticLocation
        annotation.title = "Ecospace"
        annotation.subtitle = "Bangalore"
        mapView2.addAnnotation(annotation)
    }

    @IBAction func sc1Click() {
        let x : Int = sc2.selectedSegmentIndex
        
        if x == 0{
            mapView2.mapType = .standard
        }
        else if x == 1{
            mapView2.mapType = .satellite
        }
        else {
            mapView2.mapType = .hybrid

        }
        
    }
    
}

