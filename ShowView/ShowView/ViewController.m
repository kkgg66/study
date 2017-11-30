//
//  ViewController.m
//  ShowView
//
//  Created by zhangkege on 2017/11/28.
//  Copyright © 2017年 zhangkege. All rights reserved.
//

#import "ViewController.h"
#import "YBPopupMenu.h"


@interface ViewController ()<YBPopupMenuDelegate>
{
    UIButton  *redview;
    UILabel  * greenLab;
    UIScrollView *sc;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    sc =[[UIScrollView alloc]initWithFrame:CGRectMake(0, 100,kScreenWidth , 500)];
    sc.backgroundColor =[UIColor colorWithWhite:0.9 alpha:1];
    sc.contentSize =CGSizeMake(kScreenWidth, 3000);
    redview=[UIButton buttonWithType:0];
    redview.frame=CGRectMake(100, 400, 200, 60);
    [redview setTitle:@"你有本事就点我" forState: UIControlStateNormal];
    redview.backgroundColor =[UIColor redColor];
    [redview addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
    [sc addSubview:redview];
    [sc addSubview: self.greenLab];
    [self.view addSubview:sc];
}
-(void)click{
//就这一个方法
[YBPopupMenu showRelyOnView:redview showView:self.greenLab  delegate:self];
}
-(UILabel *)greenLab{
    if (!greenLab) {
        greenLab=[[UILabel alloc]initWithFrame:CGRectMake(100, 100, 250, 100)];
        greenLab.text =@"你好你好我是zkg，你好你好你好你好我是zkg，你好你好我是zkg，你好你好我是zkg";
        greenLab.numberOfLines=0;
        greenLab.textAlignment=0;
        greenLab.textColor =[UIColor whiteColor];
        greenLab.backgroundColor =[UIColor colorWithWhite:30/255.0 alpha:0.7];
    }
    
    return greenLab;
    
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    
    
    
    
    
    
}
- (void)ybPopupMenuDidSelectedybPopupMenu:(YBPopupMenu *)ybPopupMenu{
    
    NSLog(@"取消");
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
