//
//  ViewController.swift
//  XMLParser
//
//  Created by sebi d on 6.1.21.
//

import Cocoa

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        var ex_maps : [map]? = []
        let mapName = "tragic triangle - 32" // Example map name
        if let mapUrl = Bundle.main.url(forResource : mapName, withExtension: "xml") {
            do {
            let xml = try String( contentsOf: mapUrl )
            let mapParser = MapParser( withXML: xml)
            let maps = mapParser.parse()
            ex_maps!.append( maps[0] )
            } catch { print("couldn't parse unitFile found \(mapUrl)")}
            } else { print("failed fetching unit file with supposed name: " + mapName)}
        print( ex_maps )
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

