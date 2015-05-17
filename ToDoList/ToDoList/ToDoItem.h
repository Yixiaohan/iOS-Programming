//
//  ToDoItem.h
//  ToDoList
//
//  Created by jiangge on 15/5/10.
//  Copyright (c) 2015年 John Appleseed. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ToDoItem : NSObject

@property NSString *itemName;
@property BOOL completed;
@property (readonly) NSDate *creationDate;

@end
