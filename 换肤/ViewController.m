//
//  ViewController.m
//  换肤
//
//  Created by gzz on 2017/6/15.
//  Copyright © 2017年 gzz. All rights reserved.
//

#import "ViewController.h"
#import "HMMskinTool.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *image1;

@property (weak, nonatomic) IBOutlet UIImageView *image2;

@property (weak, nonatomic) IBOutlet UIImageView *iamge3;

@end

@implementation ViewController

- (void)viewDidLoad {
    //3、首次加载时读取配置信息 ,设置默认皮肤
    
    
//  NSString *stringName =  [[NSUserDefaults standardUserDefaults]objectForKey:@"skinName"];
//    if (stringName == nil)
//    {
//        [self changeSkinName:@"green"];
//    }
//    
//    [self changeSkinName:stringName];
    
    
    [self changeSkinName:nil];
}
//红色背景
- (IBAction)huanhu:(id)sender
{
    
    //先保存配置信息
    
//    [HMMskinTool saveSkinName:@"red"];
//  [HMMskinTool returnImage:@"red"];
//    self.image1.image = [HMMskinTool returnImage:@"ear"];
//    self.image2.image = [HMMskinTool returnImage:@"face"];
//    self.iamge3.image = [HMMskinTool returnImage:@"header"];
    
    [self changeSkinName:@"red"];
    
    
}
//绿色背景

- (IBAction)greenSkin:(id)sender {
//    [HMMskinTool saveSkinName:@"green"];
    
//    self.image1.image = [HMMskinTool returnImage:@"ear"];
//    self.image2.image = [HMMskinTool returnImage:@"face"];
//    self.iamge3.image = [HMMskinTool returnImage:@"header"];
    
//    [HMMskinTool returnImage:@"green"];
    [self changeSkinName:@"green"];
//    _image1.image = [UIImage imageNamed:@"greenear"];
//    _image2.image = [UIImage imageNamed:@"greenface"];
//     _iamge3.image = [UIImage imageNamed:@"greenheader"];
}

//蓝色背景
- (IBAction)blueSkin:(id)sender {
// [HMMskinTool saveSkinName:@"blue"];
    
//    self.image1.image = [HMMskinTool returnImage:@"ear"];
//    self.image2.image = [HMMskinTool returnImage:@"face"];
//    self.iamge3.image = [HMMskinTool returnImage:@"header"];
    
//    [HMMskinTool returnImage:@"blue"];
    
    [self changeSkinName:@"blue"];
//    _image1.image = [UIImage imageNamed:@"blueear"];
//    _image2.image = [UIImage imageNamed:@"blueface"];
//     _iamge3.image = [UIImage imageNamed:@"blueheader"];
}


//抽取公用方法

-(void)changeSkinName:(NSString *)skinName
{
//    [HMMskinTool returnImage:skinName];
//    
//    
//    NSString *imageSkinEar = [NSString stringWithFormat:@"%@ear",skinName];
//    NSString *imageSkinFace = [NSString stringWithFormat:@"%@face",skinName];
//    NSString *imageSkinheader = [NSString stringWithFormat:@"%@header",skinName];
    
//    
//    _image1.image = [UIImage imageNamed:imageSkinEar];
//    _image2.image = [UIImage imageNamed:imageSkinFace];
//    _iamge3.image = [UIImage imageNamed:imageSkinheader];
    
//    1、判断如果皮肤传了空，那么不用保存
    if (skinName != nil) {
        [HMMskinTool saveSkinName:skinName];
    }
    
    self.image1.image = [HMMskinTool returnImage:@"ear"];
    self.image2.image = [HMMskinTool returnImage:@"face"];
    self.iamge3.image = [HMMskinTool returnImage:@"header"];
    
    
    
    //1、切换图像
    
    
    
}


@end
