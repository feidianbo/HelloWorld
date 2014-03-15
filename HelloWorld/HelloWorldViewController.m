//
//  HelloWorldViewController.m
//  HelloWorld
//
//  Created by 费殿波 on 14-3-15.
//  Copyright (c) 2014年 DEO. All rights reserved.
//

#import "HelloWorldViewController.h"

@interface HelloWorldViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UITextField *textField;
- (IBAction)changeGreeting:(id)sender;

@end

@implementation HelloWorldViewController

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

- (IBAction)changeGreeting:(id)sender {
    self.userName = self.textField.text;
    NSString *nameString = self.userName;
    if ([nameString length] == 0){
        nameString = @"World";
    }
    NSString *greeting = [[NSString alloc] initWithFormat:@"Hello, %@!", nameString ];
    self.label.text = greeting;
}

- (BOOL) textFieldShouldReturn: (UITextField *) theTextField{
    if (theTextField == self.textField){
        [theTextField resignFirstResponder];
    }
    
    return YES;
}
@end
