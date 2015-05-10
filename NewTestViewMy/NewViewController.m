//
//  NewViewController.m
//  NewTestViewMy
//
//  Created by 疯兔 on 15/5/11.
//  Copyright (c) 2015年 Mr.z. All rights reserved.
//

#import "NewViewController.h"
#import "ZOECycleView.h"
@interface NewViewController ()
- (IBAction)test:(id)sender;

@end

@implementation NewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.view setBackgroundColor:[UIColor blueColor]];
        NSMutableArray *arrayM = [NSMutableArray array];
        NSMutableArray *arrayT = [NSMutableArray array];
        for (int i = 1; i < 11; ++i) {
            NSString *name = [NSString stringWithFormat:@"%02tu",i];
            NSString *path = [[NSBundle mainBundle]pathForResource:name ofType:@"jpg" inDirectory:@"images"];
            UIImage *image = [UIImage imageWithContentsOfFile:path];
            [arrayM addObject:image];
            [arrayT addObject:name];
        }
    ZOECycleView *view = [ZOECycleView ZOECycleViewWithFrame:CGRectMake(0, 0, 320, 200) andImages:arrayM cycleTimes:3 selectAtCell:^(NSInteger selectNumber) {
        NSLog(@"%tu",selectNumber);
    }];
    [view setTitleGroup:arrayT];
    [self.view addSubview:view];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)dealloc
{
    NSLog(@"%s",__FUNCTION__);
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)test:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end