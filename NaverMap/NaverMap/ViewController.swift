//
//  ViewController.swift
//  NaverMap
//
//  Created by 백대홍 on 2023/06/04.
//

import UIKit
import NMapsMap

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let defaultCameraPosition = NMFCameraPosition(NMGLatLng(lat: 35.153324, lng: 128.101011), zoom: 15, tilt: 0, heading: 0)
        var naverMapView = NMFNaverMapView() 

        naverMapView = NMFNaverMapView(frame: view.frame)
        view.addSubview(naverMapView)
        naverMapView.mapView.moveCamera(NMFCameraUpdate(position: defaultCameraPosition))
    }


}

