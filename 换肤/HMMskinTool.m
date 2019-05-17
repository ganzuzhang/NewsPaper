//
//  HMMskinTool.m
//  换肤
//
//  Created by gzz on 2017/6/15.
//  Copyright © 2017年 gzz. All rights reserved.
//

#import "HMMskinTool.h"


static NSString *  _skinName;

@implementation HMMskinTool


//保证代码只加载一次，多线程

/*
 保证代码只加载一次
  1、 多线程：  ==》》 dispathOnce
 2、只屌用i 次的方法
 
 
 
 */

/*
 load 方法，只要参与了bianyi
 */
+(void)load
{
    
}
/*类的实例创建时调用*/
+(void)initialize
{
    
    
    _skinName =  [[NSUserDefaults standardUserDefaults]objectForKey:@"skinName"];
    if (_skinName == nil)
    {
        _skinName = @"green";
    }
    
    
    
    
}

+(UIImage *)returnImage:(NSString *)skinName
{
    
    
    
//    1、读取偏好设置信息  --->> 访问磁盘信息好性能，所以只需加载一次
    
    
    
    
    //2\ 拼接文件路径
    NSString *imageStr = [NSString stringWithFormat:@"%@%@",_skinName,skinName];

//    _skinName = skinName;
 //    _image1.image = [UIImage imageNamed:imageSkinEar];
//    _image2.image = [UIImage imageNamed:imageSkinFace];
//    _iamge3.image = [UIImage imageNamed:imageSkinheader];
//
//    _image1.image = [UIImage imageNamed:@"greenear"];
//    _image2.image = [UIImage imageNamed:@"greenface"];
//    _iamge3.image = [UIImage imageNamed:@"greenheader"];
    
    return [UIImage imageNamed:imageStr];
    

    
}

//保存皮肤信息
+(void)saveSkinName:(NSString *)skinName
{
    
//    当皮肤读取改变一次之后，那么我们做皮肤保存操作，原来的_skinName
//    更改皮肤
    
    _skinName = skinName;
    
    [[NSUserDefaults standardUserDefaults] setObject: skinName
     
                                              forKey:@"skinName"];
    [[NSUserDefaults standardUserDefaults]synchronize];
    
}
//+(UIImage *)reteun:(NSString *)skinName
//
//{
//    
//    
////    访问磁盘是好性能的，所以只需加载一次
//    NSString *skinname = [[NSUserDefaults standardUserDefaults]objectForKey:@"skinName"];
//    if (skinName == nil) {
//        skinName = @"green";
//    }
//    //拼接文件路径
//    
//    NSString *skinImage = [NSString stringWithFormat:@""];
//    
//    return skinName;
//}

@end
