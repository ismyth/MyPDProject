//
//  ViewController.h
//  MyPDProject
//
//  Created by Iain Smyth on 18/04/2018.
//  Copyright © 2018 Iain Smyth. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PDpatch.h"

@interface ViewController : UIViewController

@property(strong, nonatomic) PDPatch *patch;

@property (strong, nonatomic) IBOutlet UISlider *FSlider;
@property (strong, nonatomic) IBOutlet UISlider *FSlider2;
@property (strong, nonatomic) IBOutlet UISlider *MSlider;



@end

