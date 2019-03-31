//
//  MainViewController.swift
//  集合视图
//
//  Created by 方瑾 on 2019/2/27.
//  Copyright © 2019 方瑾. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    var imageList : [ImageInfo] = [ImageInfo(name: "王健林", imageName: "王健林"),
                                   ImageInfo(name: "王思聪", imageName: "王思聪"),
                                   ImageInfo(name: "董明珠", imageName: "董明珠"),
                                   ImageInfo(name: "马化腾", imageName: "马化腾"),
                                   ImageInfo(name: "马云", imageName: "马云"),
                                   ImageInfo(name: "王健林", imageName: "王健林"),
                                   ImageInfo(name: "王思聪", imageName: "王思聪"),
                                   ImageInfo(name: "董明珠", imageName: "董明珠"),
                                   ImageInfo(name: "马化腾", imageName: "马化腾"),
                                   ImageInfo(name: "马云", imageName: "马云"),
                                   ImageInfo(name: "王健林", imageName: "王健林"),
                                   ImageInfo(name: "王思聪", imageName: "王思聪"),
                                   ImageInfo(name: "董明珠", imageName: "董明珠"),
                                   ImageInfo(name: "马化腾", imageName: "马化腾"),
                                   ImageInfo(name: "马云", imageName: "马云")]
    
    @IBOutlet weak var mainCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainCollectionView.delegate = self
        mainCollectionView.dataSource = self

     
    }
}
extension MainViewController: UICollectionViewDelegateFlowLayout,UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ImageCell", for: indexPath) as! ImageCollectionViewCell
        cell.itemImageView.image = UIImage(named: imageList[indexPath.row].imageName ?? "")
        cell.itemLabel.text = imageList[indexPath.row].name
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {  //设置cell的宽
        let cellWidth = (collectionView.frame.width - 30) / 2
//        let cellHeight = (collectionView.frame.height - 30) / 2    设置高   paging Enabled  表示滑动到一半的时候，会自动返回到第一个图片
        return CGSize(width: cellWidth, height: cellWidth)
    }
    
    //表示上下之间的间距
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    
    //表示左右之间的间距
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
    }
    
}
