//
//  ViewController.m
//  DES
//
//  Created by Xaofly Sho on 2016/8/30.
//  Copyright © 2016年 Xaofly Sho. All rights reserved.
//

#import "ViewController.h"
#import "XSDESEncrypt.h"

@interface ViewController ()

@property (nonatomic, weak) IBOutlet UITextView *inputTextView;

@property (nonatomic, weak) IBOutlet UITextField *keyTextField;

@property (nonatomic, weak) IBOutlet UITextView *encryptTextView;

@property (nonatomic, weak) IBOutlet UITextView *decryptTextView;

@property (nonatomic, weak) IBOutlet UIButton *encryptButton;

@property (nonatomic, weak) IBOutlet UIButton *decryptButton;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)encryptButtonClick:(id)sender {
    
    _encryptTextView.text = [XSDESEncrypt encryptUseDES:_inputTextView.text key:_keyTextField.text];
    
}

- (IBAction)decryptButtonClick:(id)sender {
    
    _decryptTextView.text = [XSDESEncrypt decryptUseDES:_encryptTextView.text key:_keyTextField.text];
    
}

- (IBAction)cButtonClick:(id)sender {
    
    _inputTextView.text = @"";
    _keyTextField.text = @"";
    _encryptTextView.text = @"";
    _decryptTextView.text = @"";
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    [self.view endEditing:YES];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
