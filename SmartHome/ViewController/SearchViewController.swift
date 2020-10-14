//
//  SearchViewController.swift
//  SmartHome
//
//  Created by Joao Batista on 13/10/20.
//  Copyright © 2020 Joao Batista. All rights reserved.
//

import UIKit
import CoreBluetooth
class SearchViewController: UIViewController {
    private var centralManager: CBCentralManager!
    private var peripheral: CBPeripheral!
    private var peripherals: Set<CBPeripheral> = []
    @IBOutlet weak var devicesTable: UITableView!
    @IBOutlet weak var searchButton: UIButton! {
        didSet {
            searchButton.makeRoundBorder(withCornerRadius: 5)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        centralManager = CBCentralManager(delegate: self, queue: nil)
    }
    
    @IBAction func searchDevices(_ sender: Any) {

    }

}
extension SearchViewController: CBCentralManagerDelegate, CBPeripheralDelegate {
    func centralManagerDidUpdateState(_ central: CBCentralManager) {
        print("Cental state Update")
        switch central.state {
        case .poweredOn:
            print("Bluetooth Ativaco")
            centralManager.scanForPeripherals(withServices: nil)
        case .poweredOff:
            print("Habilite o bluetooth")
        default:
            print("ocorreu um erro. Tente novamente")
        }

    }
    func centralManager(_ central: CBCentralManager, didDiscover peripheral: CBPeripheral, advertisementData: [String : Any], rssi RSSI: NSNumber) {
        print(peripheral.name)
//        peripherals.insert(peripheral)
//        if peripherals.count == 2 {
//            centralManager.stopScan()
//            for peri in peripherals {
//                print(peri.name)
//            }
//        }
    }
//    func centralManager(_ central: CBCentralManager, didDisconnectPeripheral peripheral: CBPeripheral, error: Error?) {
////        self.centralManager.stopScan()
////        self.peripheral = peripheral
////        self.peripheral.delegate = self
////        self.centralManager.connect(self.peripheral, options: nil)
//    }
}
