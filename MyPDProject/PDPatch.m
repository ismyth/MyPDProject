//
//  PDPatch.m
//  MyPDProject
//
//  Created by Iain Smyth on 18/04/2018.
//  Copyright © 2018 Iain Smyth. All rights reserved.
//

#import "PDPatch.h"


@implementation PDPatch

-(void)onOff:(BOOL)yesNo{
    float yn = (float)yesNo;
    [PdBase sendFloat:yn toReceiver:@"onOff"];
}

-(void)oscFreq:(float)fvalue{
    [PdBase sendFloat:fvalue toReceiver:@"oscFreq"];
}

-(void)oscFreq2:(float)fvalue2{
    [PdBase sendFloat:fvalue2 toReceiver:@"oscFreq2"];
}

-(void)modIndex:(float)fvalue3{
    [PdBase sendFloat:fvalue3 toReceiver:@"modIndex"];
}


-(instancetype)initWithFile:(NSString *)pdFile{
    void *patch;
    self = [super init];
    if(self){
        patch = [PdBase openFile:pdFile path:[[NSBundle mainBundle]resourcePath]];
        if (!patch){
            UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Uh oh" message:@"PD Patch not found" delegate:self cancelButtonTitle:@"crap" otherButtonTitles:nil, nil];
            [alert show];
        }
    }
    return self;
}

@end
