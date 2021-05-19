//
//  File.swift
//  
//
//  Created by arayama-kyo on 2021/05/19.
//

import Foundation
import UIKit
import AnyResourceImages

private let imagePath = AnyResourceImages.imageBundle.path(forResource: "sample", ofType: "png")!

public let stringBundle = Bundle.module
public let imageBundle = AnyResourceImages.imageBundle
public let image: UIImage = UIImage(named: imagePath)!
