//
//  DLViewController.m
//  CoinQPay-iOS
//
//  Created by x-oauth-basic on 08/02/2024.
//  Copyright (c) 2024 x-oauth-basic. All rights reserved.
//

#import "DLViewController.h"
#import <CoinQPay/CoinQPay.h>

@interface DLViewController ()
@property (weak, nonatomic) IBOutlet UITextField *merchantNameTF;
@property (weak, nonatomic) IBOutlet UITextField *orderCodeTF;
@property (weak, nonatomic) IBOutlet UITextField *networkTF;
@property (weak, nonatomic) IBOutlet UITextField *chainIdTF;
@property (weak, nonatomic) IBOutlet UITextField *symbolTF;
@property (weak, nonatomic) IBOutlet UITextField *amountTF;
@property (weak, nonatomic) IBOutlet UITextField *decimalTF;
@property (weak, nonatomic) IBOutlet UITextField *addressTF;
@property (weak, nonatomic) IBOutlet UITextField *contractAddressTF;

@end

@implementation DLViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(closeKeybord)];
    [self.view addGestureRecognizer:tap];
}
- (void)closeKeybord {
    [self.view endEditing:YES];
}

- (IBAction)UseCoinQPay:(id)sender {
    
    OrderSharedData.shared.merchantName =  _merchantNameTF.text;
    OrderSharedData.shared.orderCode =  _orderCodeTF.text;
    OrderSharedData.shared.network =   _networkTF.text;
    OrderSharedData.shared.chainId =   _chainIdTF.text;
    OrderSharedData.shared.symbol =  _symbolTF.text;
    OrderSharedData.shared.amount =  _amountTF.text;
    OrderSharedData.shared.decimal = [_decimalTF.text intValue] ;
    OrderSharedData.shared.address =  _addressTF.text;;
    OrderSharedData.shared.contractAddress =  _contractAddressTF.text;;
    
    if(_merchantNameTF.text.length==0||_orderCodeTF.text.length==0||_networkTF.text.length==0||_orderCodeTF.text.length==0||_symbolTF.text.length==0||_amountTF.text.length==0||_addressTF.text.length==0){
        
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"提示" message:@"有必传项未输入" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *action = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:nil];
        [alert addAction:action];
        [self presentViewController:alert animated:YES completion:nil];
        
        return;
    }
    
    
    OrderPayViewController *payVC = [[OrderPayViewController alloc]init];
    [self.navigationController pushViewController:payVC animated:YES];
 
    
}
- (IBAction)directUseFuc:(id)sender {
    
    OrderSharedData.shared.merchantName =  @"商户一号";
    OrderSharedData.shared.orderCode =  @"123456789";
    OrderSharedData.shared.amount =  @"0.002";
    
//    //Tron 正式环境
//    OrderSharedData.shared.decimal =  6;
//    OrderSharedData.shared.network =  @"Tron";
//    OrderSharedData.shared.symbol =  @"TRX";
//    OrderSharedData.shared.address =  @"TAzNdisHqicoQHr3NVBKqqZrwqHunXSkDS";
//
    //Sepolia 测试网
    OrderSharedData.shared.decimal =  18;
    OrderSharedData.shared.network =  @"ethereum";
    OrderSharedData.shared.chainId =  @"11155111";
    OrderSharedData.shared.symbol =  @"ETH";
    OrderSharedData.shared.address =  @"0x58806D167911019Cf86a39944830aBd791922883";
    
    
    OrderPayViewController *payVC = [[OrderPayViewController alloc]init];
    [self.navigationController pushViewController:payVC animated:YES];
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
