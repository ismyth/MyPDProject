//
//  ViewController.m
//  MyPDProject
//
//  Created by Iain Smyth on 18/04/2018.
//  Copyright © 2018 Iain Smyth. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UISwitch *onOff;





@end

@implementation ViewController

- (IBAction)onSwitchChange:(id)sender {
    [self.patch onOff:[sender isOn]];
}

-(IBAction)onSliderChange:(id)sender {
    [self.patch oscFreq:_FSlider.value];
    
    NSLog(@"value %f", _FSlider.value);
}

-(IBAction)onSliderChange2:(id)sender {
    [self.patch oscFreq2:_FSlider2.value];
    
    NSLog(@"value %f", _FSlider2.value);
}

-(IBAction)onSliderChange3:(id)sender {
    [self.patch modIndex:_MSlider.value];
    
    NSLog(@"value %f", _FSlider2.value);
}




- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //[_FSlider addTarget:self action:@selector(onSliderChange:) forControlEvents:UIControlEventValueChanged];
    self.patch = [[PDPatch alloc]initWithFile:@"seqtest5.pd"];
    [self.patch oscFreq:500.0];
    [self.patch oscFreq2:250.0];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//-(void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
//}
//- (IBAction)onTouchMove:(id)sender {
//}


@end
