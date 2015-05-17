//
//  BNRItem.h
//  RandomItems
//
//  Created by jiangge on 15/5/13.
//  Copyright (c) 2015年 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRItem : NSObject
{
    NSString * _itemName; //下划线表示实例变量
    NSString * _serialNumber;
    int _valueInDollars;
    NSDate *_dateCreated;
}

//类方法
+ (instancetype)randomItem;

//初始化方法，initialization methond, 也叫 initializer
- (instancetype)initWithItemName:(NSString *)name valueInDollars:(int)value serialNumber:(NSString *)sNumber;
- (instancetype)initWithItemName:(NSString *)name;

//setter和getter方法
- (void) setItemName:(NSString *)str;
- (NSString *) itemName;

- (void) setSerialNumber:(NSString *)str;
- (NSString *) seriaNumber;

- (void) setValueInDollars:(int)v;
- (int) valueInDollars;

- (NSDate *) dateCreated;

@end
