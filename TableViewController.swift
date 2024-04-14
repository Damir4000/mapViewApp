//
//  TableViewController.swift
//  mapView
//
//  Created by Дамир Нургалиев on 11.04.2024.
//

import UIKit



class TableViewController: UITableViewController {
    
    var hotels = [Hotels(name: "Rixos President Astana", lacation: "konaev 7", image: "rixos1", image2: "rixos1", price: "Цена за сутки 1000$", stars: "3,2 ⭐️", detail: "Проведите шикарный отпуск в роскошной столице Казахстана с Rixos President Astana. Rixos President Astana расположен в самом сердце нового административного и делового района столицы Казахстана, в непосредственной близости к башне Байтерек. Астана, известная своей футуристичной архитектурой, является современным городом, полным торговых центров и поющих фонтанов. В нем можно найти несколько примеров современных архитектурных работ авторства известных архитекторов. Центральное расположение и первоклассные удобства Rixos President Astana обеспечивают великолепный отдых в стиле роскоши от Rixos: Rixos spa, изысканные рестораны и бары, а также безупречная организация заседаний и мероприятий любого масштаба.", latitude: 41.898609, longitude: 12.476873),
                 Hotels(name: "The Rits Carlton Astana", lacation: "Dostyk 16", image: "rits1", image2: "rits2", price: "Цена за Сутки 800$", stars: "4.0 ⭐️" , detail: "Откройте для себя истинную роскошь в отеле Ритц-Карлтон, Астана. Из 157 великолепно обставленных номеров и люксов открывается захватывающий вид на городской пейзаж, который позволит ощутить чарующую атмосферу столицы. Вы насладитесь крепким сном на фирменных кроватях Ritz-Carlton с мягкими перинами и роскошным постельным бельем, воплощающими наше стремление к совершенству. Побалуйте себя косметикой Diptyque, а детей особенной косметикой Ritz Kids. Наша забота о вашем комфорте проявляется в каждой детали: по запросу предоставляются подушки для аллергиков, а благодаря круглосуточной услуге доставки еды в номер вы сможете утолить голод в любое время. В Ритц-Карлтон, Астана вас ждет роскошный отдых, который превзойдет все ожидания. Приезжайте и откройте для себя магию этого отеля.", latitude: 51.12438, longitude: 71.43240),
                 Hotels(name: "St Regis Astana", lacation: "Kabanbai Batyr 1", image: "regis1", image2: "regis2", price: "Цена за сутки 1500$", stars: "5 ⭐️", detail: " Отель St. Regis Astana находится на берегу реки Ишим в сердце Центрального парка столицы Казахстана. Поездка до монумента «Байтерек», площади Независимости и оперного театра Астаны занимает 15 минут.", latitude: 51.15262, longitude: 71.42535)]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return hotels.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        let image = cell.viewWithTag(1) as! UIImageView
        image.image = UIImage(named: hotels[indexPath.row].image)
        
        let labelName = cell.viewWithTag(11) as! UILabel
        labelName.text = hotels[indexPath.row].name
        
        let labelPrice = cell.viewWithTag(12) as! UILabel
        labelPrice.text = hotels[indexPath.row].price
        
        let labelStar = cell.viewWithTag(13) as! UILabel
        labelStar.text = hotels[indexPath.row].stars
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 336
    }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detail = storyboard?.instantiateViewController(withIdentifier: "detailViewControler") as! ViewController
        
        detail.hotels = hotels[indexPath.row]
        
        navigationController?.show(detail, sender: self)
    }
}
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    /*

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

     }*/*/
