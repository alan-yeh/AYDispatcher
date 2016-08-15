//
//  AYViewController.m
//  AYDispatcher
//
//  Created by Alan Yeh on 07/24/2016.
//  Copyright (c) 2016 Alan Yeh. All rights reserved.
//

#import "AYViewController.h"
#import <Api/ModuleA_Api.h>
#import <Api/ModuleB_Api.h>

@interface AYViewController ()

@end

@implementation AYViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)modulea_dohomework:(id)sender {
    NSString *result = [[AYDispatcher dispatcher] A_doHomework];
    NSLog(@"%@", result);
}

- (IBAction)moduleb_dohomework:(id)sender {
    NSString *result = [[AYDispatcher dispatcher] B_doHomework];
    NSLog(@"%@", result);
}
@end
