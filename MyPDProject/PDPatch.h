//
//  PDPatch.h
//  MyPDProject
//
//  Created by Iain Smyth on 18/04/2018.
//  Copyright © 2018 Iain Smyth. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "PdDispatcher.h"

@interface PDPatch : NSObject


-(void)onOff:(BOOL)yesNo;
-(void)oscFreq:(float)fvalue;
-(void)oscFreq2:(float)fvalue2;
-(void)modIndex:(float)fvalue3;
-(instancetype)initWithFile:(NSString *)pdFile;

@end
