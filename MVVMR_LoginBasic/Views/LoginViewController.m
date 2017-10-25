//
//  LoginViewController.m
//  MVVMR_LoginBasic
//
//  Created by Nick Lee on 2017/10/25.
//  Copyright © 2017年 Nick Lee. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController ()

@property (strong, nonatomic, nonnull) LoginViewModel *viewModel;
@property (strong, nonatomic, nonnull) Router *router;
@property (strong, nonatomic) UITextField *inputAccount;
@property (strong, nonatomic) UITextField *inputPassword;

@end

@implementation LoginViewController

- (instancetype)init:(LoginViewModel *)inputModel inputRouter:(Router *)inputRouter {
   
    self = [super init];
    
    if (self) {
    
        self.viewModel = inputModel;
        
        self.router = inputRouter;
        
    }
    
    return self;

}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self customizedUIComponents];
    
}

- (void)customizedUIComponents {
    
    self.title = @"Login Scene";
    self.view.backgroundColor = [UIColor orangeColor];
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(dismissKeyboard)];
    
    [self.view addGestureRecognizer: tap];
    
    self.inputAccount = [UITextField new];
    self.inputAccount.layer.borderColor = [[UIColor blackColor] CGColor];
    self.inputAccount.layer.borderWidth = 0.5;
    self.inputAccount.placeholder = @"Account";
    [self.view addSubview:self.inputAccount];
    [self.inputAccount.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor].active = true;
    [self.inputAccount.centerYAnchor constraintEqualToAnchor:self.view.centerYAnchor].active = true;
    [self.inputAccount.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor constant:30.0].active = true;
    [self.inputAccount.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor constant:-30.0].active = true;
    [self.inputAccount.heightAnchor constraintEqualToConstant:50.0].active = true;
    self.inputAccount.translatesAutoresizingMaskIntoConstraints = false;
    
    self.inputPassword = [UITextField new];
    [self.view addSubview:self.inputPassword];
    self.inputPassword.layer.borderColor = [[UIColor blackColor] CGColor];
    self.inputPassword.layer.borderWidth = 0.5;
    self.inputPassword.placeholder = @"Password";
    [self.inputPassword.topAnchor constraintEqualToAnchor:self.inputAccount.bottomAnchor constant:20.0].active = true;
    [self.inputPassword.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor constant:30.0].active = true;
    [self.inputPassword.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor constant:-30.0].active = true;
    [self.inputPassword.heightAnchor constraintEqualToConstant:50.0].active = true;
    self.inputPassword.translatesAutoresizingMaskIntoConstraints = false;
    
    UIButton *loginButton = [UIButton new];
    [loginButton setTitle:@"Login" forState:UIControlStateNormal];
    [loginButton setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [loginButton addTarget:self action:@selector(didTapLoginButton) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:loginButton];
    [loginButton.topAnchor constraintEqualToAnchor:self.inputPassword.bottomAnchor constant:20.0].active = true;
    [loginButton.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor constant:30.0].active = true;
    [loginButton.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor constant:-30.0].active = true;
    [loginButton.heightAnchor constraintEqualToConstant:50.0].active = true;
    loginButton.translatesAutoresizingMaskIntoConstraints = false;

}

- (void)didTapLoginButton {
    
    NSString *accountString = self.inputAccount.text;
    NSString *passwordString = self.inputPassword.text;
    bool isLoggedIn = [self.viewModel loginWithCredential:accountString password:passwordString];
    [self.router showNextPage:isLoggedIn];

}

- (void)dismissKeyboard {
    
    [self.view endEditing:true];
    
}

@end










