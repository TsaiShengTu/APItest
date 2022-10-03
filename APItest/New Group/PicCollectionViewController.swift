//
//  PicCollectionViewController.swift
//  APItest
//
//  Created by Sheng-Yu on 2022/9/30.
//

import UIKit

private let reuseIdentifier = "Cell"

class PicCollectionViewController: UICollectionViewController {
    
    let photos = ["1","2","3","4"]

    override func viewDidLoad() {
        super.viewDidLoad()
        configureCellSize()
    }
    func configureCellSize() {
        //間距
        let itemSpace: Double = 4
        //行圖片數
        let columnCount: Double = 4
        //許澤flow預設flowlayout
        let flowLayout = collectionViewLayout as? UICollectionViewFlowLayout
        //間距算式
        let width = (collectionView.bounds.width - itemSpace * (columnCount - 1)) / columnCount
        //圖片格子大小
        flowLayout?.itemSize = CGSize(width: width, height: width)
        //預設大小為0
        flowLayout?.estimatedItemSize = .zero
        //行距
        flowLayout?.minimumLineSpacing = itemSpace
        //格子間距
        flowLayout?.minimumInteritemSpacing = itemSpace
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return photos.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PicCollectionViewCell", for: indexPath) as! PicCollectionViewCell
        
        let pic = photos[indexPath.item]
        
        cell.image.image = UIImage(named:pic)
    
        // Configure the cell
    
        return cell
    }

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */

}
