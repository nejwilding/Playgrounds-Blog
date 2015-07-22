//: ## UI Collection View Spacing
//:
//: Spacing within the UIColectionView and size of the cells. Covered below are inset spacing, size of the cells, horizontal spacing between cells and vertical or line spacing between cells
//:
//: ----
//:
//: This file is from the blog post UI Collection View spacing which can be found at [links](http://developer.apple.com/swift/blog).

import UIKit

// Let's start with a new UICollectionView

let myCollectionView = UICollectionView()

//: To add padding or spcing around the UI Collection View, you add Edge Insets.

myCollectionView.contentInset = UIEdgeInsets(top: 7.0, left: 1.0, bottom: 144.0, right: 1.0)

//: For the actual size of the collection view size, you can set this within the storyboard or use the UICollectionView Delegate method of sizeForItemAtIndexPath. 
//:
//: Here you return a CGSize value which outlines the width and height of the cell

// MARK: - UICollection View Delegate

func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
    return CGSize(width: collectionView.frame.size.width / 2.0, height: 151.0)
}

//: The spacing between the cells is controlled by two further delegate methods which allow you to set the minimum space between the cells horizontially and the minimum space between the cells vertically or the line space in other words. 
//:
//: Both of these return a CGFloat. The spacing can be different per section within the collection view

// MARK: - UICollection View Delegate

// Minimum space between the cells horizontally

func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAtIndex section: Int) -> CGFloat {
    return 3.0
}

// Minimum space between the cells vertically (line space)

func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAtIndex section: Int) -> CGFloat {
    return 5.0
}


