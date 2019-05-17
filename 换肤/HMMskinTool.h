//
//  HMMskinTool.h
//  换肤
//
//  Created by gzz on 2017/6/15.
//  Copyright © 2017年 gzz. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HMMskinTool : NSObject

/*
 返回对应的皮肤的图像
 
 
 */

+(UIImage *)returnImage:(NSString *)skinName;

//保存配置信息

+(void)saveSkinName:(NSString *)skinName;


@end
