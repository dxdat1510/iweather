//
//  ViewController.m
//  iweather
//
//  Created by Super Fake on 8/19/15.
//  Copyright (c) 2015 Super Fake. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *location;
@property (weak, nonatomic) IBOutlet UIButton *temperature;
@property (weak, nonatomic) IBOutlet UIImageView *weather;
@property (weak, nonatomic) IBOutlet UILabel *idiom;
@property (weak, nonatomic) IBOutlet UILabel *FFFF;

@end

@implementation ViewController{
    NSArray* idioms;
    NSArray* locations;
    NSArray* temperatures;
    NSArray* weathers;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    idioms = @[@"trên con đường thành công không dành cho kẻ lười biếng", @"tay làm đầu phải suy nghĩ", @"nói chuyện một giờ không bằng đọc sách mười năm", @"trúng sổ số như nắng hạ gặp mưa rào"];
    locations = @[@"Thái Nguyên", @"Hà Nội", @"Quảng Ninh", @"Thái Bình", @"Thành Phố Hồ Chí Minh", @"Đà Nẵng"];
    weathers = @[@"rain", @"sunny", @"thunder", @"windy"];
    
}

- (IBAction)update:(id)sender {
    int idiomIndex = arc4random_uniform(idioms.count);
    //NSLog(@"%d", idiomIndex);
    self.idiom.text = idioms[idiomIndex];
    
    int locationIndex = arc4random_uniform(locations.count);
    self.location.text = locations[locationIndex];
    
    NSString* string = [NSString stringWithFormat:@"%2.1f", [self gettemparature]];
    [self.temperature setTitle:string forState:UIControlStateNormal];
    
    int weatherIndex = arc4random_uniform(weathers.count);
    self.weather.image = [UIImage imageNamed:weathers[weatherIndex]];
    
}
- (IBAction)farhrenheit:(id)sender {

    //NSLog(@"%2.1f", [self gettemparature]);
    //return [self gettemparature];
    //STRIng* abc = F;
    float a = [self gettemparature];
    NSLog(@"%2.1f a", a);
    float f = (a * 1.8) + 32;
    NSLog(@"nhiet do f %2.1f", f);
    NSString* fi = [NSString stringWithFormat:@"%2.1f", f];
    [self.temperature setTitle:fi forState:UIControlStateNormal];
}
- (float) gettemparatureb{
    float c = [self gettemparature];
    return c;
}

- (float) gettemparature{
    return 16 + arc4random_uniform(20) + (float)arc4random() / (float) INT32_MAX;
    //return 16;
}


@end
