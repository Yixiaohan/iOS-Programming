//
//  BNRItem.m
//  RandomItems
//
//  Created by jiangge on 15/5/13.
//  Copyright (c) 2015年 Big Nerd Ranch. All rights reserved.
//

#import "BNRItem.h"

@implementation BNRItem
// 覆盖方法 override 父类的方法
- (NSString *)description
{
    NSString *descriptionString = [[NSString alloc] initWithFormat:@"%@ (%@): Worth $%d, recorded on %@", self.itemName, self.seriaNumber, self.valueInDollars, self.dateCreated ];
    
    return descriptionString;
}

+ (instancetype)randomItem
{
    //创建不可变数组对象，包含三个形容词
    NSArray *randomAdjectiveList = @[@"Fluffy", @"Rusty", @"Shiny"];
    
    //创建不可变数组对象，包含三个名词
    NSArray *randomNounList = @[@"Bear", @"Spark", @"Mac"];
    
    NSInteger adjectiveIndex = arc4random() % [randomAdjectiveList count];
    NSInteger nounIndex = arc4random() % [randomNounList count];
    
    NSString *randomName = [NSString stringWithFormat:@"%@ %@", [randomAdjectiveList objectAtIndex:adjectiveIndex], [randomNounList objectAtIndex:nounIndex]];
    
    int randomValue = arc4random() % 100;
    
    NSString *randomSerialNumber = [NSString stringWithFormat:@"%c%c%c%c%c",
        '0' + arc4random() % 10,
        'A' + arc4random() % 26,
        '0' + arc4random() % 10,
        'A' + arc4random() % 26,
        '0' + arc4random() % 10];
    
    BNRItem *newItem = [[self alloc] initWithItemName:randomName valueInDollars:randomValue serialNumber:randomSerialNumber];
    
    return newItem;
    
}

- (instancetype)initWithItemName:(NSString *)name valueInDollars:(int)value serialNumber:(NSString *)sNumber
{
    //调用父类的指定初始化方法 designated initializer
    self = [super init];
    if (self) {
        //为实例变量设定初始值
        _itemName = name;
        _serialNumber = sNumber;
        _valueInDollars = value;
        //设置为系统当前时间
        _dateCreated = [[NSDate alloc] init];
    }
    return self;
}

- (instancetype)initWithItemName:(NSString *)name
{
    return [self initWithItemName:name valueInDollars:0 serialNumber:@""];
}

- (instancetype)init
{
    return [self initWithItemName:@"Item"];
}

- (void) setItemName:(NSString *)str
{
    _itemName = str;
}

- (NSString *) itemName
{
    return _itemName;
}

- (void) setSerialNumber:(NSString *)str
{
    _serialNumber = str;
}

- (NSString *) seriaNumber
{
    return _serialNumber;
}

- (void) setValueInDollars:(int)v
{
    _valueInDollars = v;
}

- (int) valueInDollars
{
    return _valueInDollars;
}

- (NSDate *) dateCreated
{
    return _dateCreated;
}

@end
