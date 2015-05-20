//
//  main.m
//  RandomItems
//
//  Created by jiangge on 15/5/12.
//  Copyright (c) 2015年 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        NSMutableArray *items = [[NSMutableArray alloc] init];
        [items addObject:@"One"];
        [items addObject:@"Two"];
        [items addObject:@"Three"];
        [items insertObject:@"Zero" atIndex:0];
        
        //传统的for循环遍历数组
        for (int i = 0; i < [items count]; i++) {
            NSString *item = [items objectAtIndex:i];
            NSLog(@"%@", item);
        }
        
        //快速枚举 fast enumeration
        for (NSString *item in items) {
            NSLog(@"%@", item);
        }
        
        //格式化字符串
        int a = 1;
        float b = 2.5;
        char c = 'A';
        NSLog(@"Integer: %d  Float: %f  Char: %c", a, b, c);
        
        //自定义类
        BNRItem *item = [[BNRItem alloc] init];
        NSLog(@"%@  %@  %@  %d", [item itemName], [item serialNumber], [item dateCreated], [item valueInDollars]);
        
        //setter 设置值
        [item setItemName:@"Red Sofa"]; 
        [item setSerialNumber:@"A1B2C"];
        [item setValueInDollars:100];
        NSLog(@"%@  %@  %@  %d", [item itemName], [item serialNumber], [item dateCreated], [item valueInDollars]);
        
        //使用点语法 dot syntax，也叫 dot notation
        item.itemName = @"New Red Sofa";
        item.serialNumber = @"New A1B2C";
        item.valueInDollars = 200;
        NSLog(@"%@  %@  %@  %d", item.itemName, item.serialNumber, item .dateCreated, item.valueInDollars);
        
        //调用 父类的 description 方法
        NSLog(@"%@", item);
        
        BNRItem *item2 = [[BNRItem alloc] initWithItemName:@"Black Sofa" valueInDollars:10000 serialNumber:@"a1b2ccc"];
        NSLog(@"%@", item2);
        
        
        BNRItem *itemWithName = [[BNRItem alloc] initWithItemName:@"Blue Sofa"];
        NSLog(@"%@", itemWithName);
        
        BNRItem *itemWithNoName = [[BNRItem alloc] init];
        NSLog(@"%@", itemWithNoName);

        
        NSMutableArray *mutableList = [[NSMutableArray alloc] init];
        for (int i = 0; i < 10; i++) {
            BNRItem *tempItem = [BNRItem randomItem]; //调用类方法
            [mutableList addObject: tempItem];
        }
        
        NSLog(@"-------------------");
        
        for (id item in mutableList) {
            NSLog(@"%@", item);
        }
        
        //下标语法
        NSMutableArray *itemsMuta = [[NSMutableArray alloc]init];
        itemsMuta[0] = @"A"; //add @"A"，等价于 insertObject:adIndex 消息
        itemsMuta[1] = @"B"; //add @"B"
        itemsMuta[0] = @"C"; //Replace @"A" with @"C"，等价于 replaceObjectAtIndex:withObject 消息
        
        id lastObj = [itemsMuta lastObject];
        NSLog(@"%@", lastObj);
        

    }
    return 0;
}