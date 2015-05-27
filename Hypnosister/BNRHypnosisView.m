//
//  BNRHypnosisView.m
//  Hypnosister
//
//  Created by jiangge on 15/5/26.
//  Copyright (c) 2015年 Big Nerd Ranch. All rights reserved.
//

#import "BNRHypnosisView.h"

@implementation BNRHypnosisView

- (void)drawRect:(CGRect)rect
{
    CGRect bounds = self.bounds;
    
    //根据 bounds 计算中心点
    CGPoint center;
    center.x = bounds.origin.x + bounds.size.width / 2.0;
    center.y = bounds.origin.y + bounds.size.height / 2.0;
    
//    //根据视图宽和高中的较小值计算圆形的半径
//    float radius = (MIN(bounds.size.width, bounds.size.height) / 2.0);
    float maxRadius = hypot(bounds.size.width, bounds.size.height) / 2.0;
    
    
    //UIBezierPath用来绘制直线或曲线，从而形成各种图形
    UIBezierPath *path = [[UIBezierPath alloc] init];
    
//    //以中心为圆心，radius 为半径，定义一个0到 M_PI * 2.0弧度的路径（整圆）
//    [path addArcWithCenter:center
//                    radius:radius
//                startAngle:0.0
//                  endAngle:M_PI * 2.0
//                 clockwise:YES];
    
    //绘制同心圆
    for (float currentRadius = maxRadius; currentRadius > 0; currentRadius -= 20)
    {
        [path moveToPoint:CGPointMake(center.x + currentRadius, center.y)];
        
        [path addArcWithCenter:center
                        radius:currentRadius
                    startAngle:0.0
                      endAngle:M_PI * 2.0
                     clockwise:YES];
    }
    //设置线条宽度为10点
    path.lineWidth = 10;
    
    //设置绘制颜色为浅灰色
    [[UIColor lightGrayColor] setStroke];
    
    //绘制路径
    [path stroke];
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        //设置BNRHypnosisView对象的背景颜色为透明
        self.backgroundColor = [UIColor clearColor];
        
    }
    return self;
}
@end
