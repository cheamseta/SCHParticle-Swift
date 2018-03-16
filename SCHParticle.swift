//
//  SCHParticle.swift
//  SwiftHeartParticle
//
//  Created by seta cheam on 3/14/18.
//  Copyright © 2018 seta cheam. All rights reserved.
//

// This library is used to create image particle

import UIKit

class SCHParticle: NSObject {
    
    private var emitLayer : CAEmitterLayer?
    private var heartEmiter : String = "emitterCell.heart.birthRate";
    private var ggImage : CGImage?;
    private var position : CGPoint = CGPoint(x :UIScreen.main.bounds.width/2, y :UIScreen.main.bounds.height/2);
    
    init(imageView : UIImageView) {
        super.init();
        self.ggImage = self.grabImage(img: imageView).cgImage;
    }
    
    func setPosition(position:CGPoint) {
        self.position = position;
    }
    
    func grabImage(img : UIImageView) -> UIImage {
        let render = UIGraphicsImageRenderer(size: img.bounds.size);
        let imgg = render.image { (context) in
            img.drawHierarchy(in: img.bounds, afterScreenUpdates: true);
        }
        
        return imgg;
    }
    
    func startP() -> CAEmitterLayer? {
        // reset emitter layer
        self.emitLayer?.setValue(0, forKey: self.heartEmiter);
        self.emitLayer?.removeFromSuperlayer();
        
        self.emitLayer = CAEmitterLayer();
        self.emitLayer?.emitterPosition = self.position;
        self.emitLayer?.emitterSize = CGSize(width: 100, height: 100);
        self.emitLayer?.emitterShape = kCAEmitterLayerSphere;
        
        let emitterCell : CAEmitterCell = CAEmitterCell();
        emitterCell.scale = 0.2;
        emitterCell.scaleRange = 0.2;
        emitterCell.emissionRange = CGFloat(Double.pi / 2);
        emitterCell.lifetime = 3.0;
        emitterCell.birthRate = 1;
        emitterCell.velocity = 0;
        emitterCell.alphaRange = 1;
        emitterCell.velocityRange = 50;
        emitterCell.yAcceleration = -200;
        emitterCell.spinRange = 2.0;
        emitterCell.scale = 0.5;
        emitterCell.scaleRange = 0.5;
        emitterCell.name = "";
        emitterCell.contents = self.ggImage;
        
        self.emitLayer?.emitterCells = [emitterCell];
        return self.emitLayer;
        
    }
    
    

}
