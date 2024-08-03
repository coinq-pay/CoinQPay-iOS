//
//  OrderSharedData.h
//  CoinQPaySDK
//
//  Created by dushiling on 2024/6/21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface OrderSharedData : NSObject

@property (nonatomic, copy) NSString *merchantName;//商户名称      // 如：商户一号        <required>
@property (nonatomic, copy) NSString *orderCode;//订单号           // OrderNumber      <required>
@property (nonatomic, copy) NSString *network;//网络              //如:Ethereum        <required>
@property (nonatomic, copy) NSString *chainId;//链id              //如：BSC 56;        <optional>
@property (nonatomic, copy) NSString *symbol;//支付币种            // token symbol;    <required>
@property (nonatomic, copy) NSString *amount;//支付数量            // decimal value;   <required>
@property (nonatomic, assign) int decimal;   //精度               // token decimals;   <required>
@property (nonatomic, copy) NSString *address;//收款地址           // receiver;        <required>
@property (nonatomic, copy) NSString *contractAddress;//合约地址   // token contract;  <optional>

+ (instancetype)shared;

@end

NS_ASSUME_NONNULL_END
