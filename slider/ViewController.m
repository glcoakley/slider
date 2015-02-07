//
//  ViewController.m
//  slider
//
//  Created by ITCS2825 Kozlevcar on 2/6/15.
//  Copyright (c) 2015 lcc. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UISlider *mySlider;
@property (weak, nonatomic) IBOutlet UILabel *msgLabel;
- (IBAction)sliderValueChanged:(UISlider *)sender;
- (IBAction)txtDataChanged:(UITextField *)sender;
- (IBAction)myTextFieldeditingDidEnd:(UITextField *)sender;

@property (weak, nonatomic) IBOutlet UITextField *myTextField;
@end

@implementation ViewController

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

- (IBAction)sliderValueChanged:(UISlider *)sender
{
    // integers only
    self.msgLabel.text = [NSString stringWithFormat:@"%i", (int)sender.value];
    self.myTextField.text = [NSString stringWithFormat:@"%.2f", self.mySlider.value];
}

- (IBAction)txtDataChanged:(UITextField *)sender
{
    self.mySlider.value = [self.myTextField.text floatValue];
    // set the label to the value of the textField
    self.msgLabel.text = self.myTextField.text;
}

- (IBAction)myTextFieldeditingDidEnd:(UITextField *)sender
{
    self.mySlider.value = [self.myTextField.text floatValue];
    // set the label to the value of the textField
    self.msgLabel.text = self.myTextField.text;
    
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self.myTextField endEditing:YES];
}

@end
