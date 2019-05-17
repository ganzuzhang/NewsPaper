//
//  TwoViewController.m
//  换肤
//
//  Created by gzz on 2017/6/15.
//  Copyright © 2017年 gzz. All rights reserved.
//

#import "TwoViewController.h"
#import "HMMskinTool.h"

@interface TwoViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *headerImage;

@property (weak, nonatomic) IBOutlet UIImageView *earImage;

@property (weak, nonatomic) IBOutlet UIImageView *faceImage;


@end

@implementation TwoViewController

- (void)viewDidLoad {
    
    
//    NSString *stringName =  [[NSUserDefaults standardUserDefaults]objectForKey:@"skinName"];
//    if (stringName == nil)
//    {
//        [self changeSkinName:@"green"];
//    }
    
//    [self changeSkinName:stringName];
    
    self.earImage.image = [HMMskinTool returnImage:@"ear"];
    self.faceImage.image = [HMMskinTool returnImage:@"face"];
    self.headerImage.image = [HMMskinTool returnImage:@"header"];
    
   
}

//-(void)changeSkinName:(NSString *)skinName
//{
//    
//    NSString *imageSkinEar = [NSString stringWithFormat:@"%@ear",skinName];
//    NSString *imageSkinFace = [NSString stringWithFormat:@"%@face",skinName];
//    NSString *imageSkinheader = [NSString stringWithFormat:@"%@header",skinName];
//    _headerImage.image = [UIImage imageNamed:imageSkinEar];
//    _earImage.image = [UIImage imageNamed:imageSkinFace];
//    _faceImage.image = [UIImage imageNamed:imageSkinheader];

    //    _image1.image = [UIImage imageNamed:@"greenear"];
    //    _image2.image = [UIImage imageNamed:@"greenface"];
    //    _iamge3.image = [UIImage imageNamed:@"greenheader"];
    
    
    //1、切换图像
    
    
    // 2、保存配置信息
//    
//    [[NSUserDefaults standardUserDefaults] setObject: skinName
//     
//                                              forKey:@"skinName"];
//    [[NSUserDefaults standardUserDefaults]synchronize];
//    
    
    
    
//}




@end
