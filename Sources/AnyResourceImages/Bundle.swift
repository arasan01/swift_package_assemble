//
//  File.swift
//  
//
//  Created by arayama-kyo on 2021/05/19.
//

import Foundation
import UIKit

private let imagePath = Bundle.module.path(forResource: "sample", ofType: "png")!

public let imageBundle = Bundle.module
public let image: UIImage = UIImage(named: imagePath)!
