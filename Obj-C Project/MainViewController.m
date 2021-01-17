//
//  MainViewController.m
//  Obj-C Project
//
//  Created by Dmitrii Diadiushkin on 16.01.2021.
//

#import "MainViewController.h"
#import "SecondViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupView];
}

- (void)setupView {
    UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 120, self.view.frame.size.width, 25)];
    titleLabel.font = [UIFont systemFontOfSize: 24 weight: UIFontWeightBold];
    titleLabel.text = @"Choose your destiny!";
    titleLabel.textAlignment = NSTextAlignmentCenter;
    titleLabel.textColor = [UIColor blackColor];
    [self.view addSubview: titleLabel];
    
    UIImage *stoneImg = [UIImage imageNamed: @"stone"];
    CGFloat imageY = titleLabel.frame.origin.y + titleLabel.frame.size.height + 10;
    CGFloat imageRatio = stoneImg.size.height / stoneImg.size.width;
    CGFloat imageWidth = self.view.frame.size.width - 20;
    CGFloat imageHeight = imageWidth * imageRatio;
    UIImageView *stoneImageView = [[UIImageView alloc] initWithImage: stoneImg];
    stoneImageView.frame = CGRectMake(10, imageY, imageWidth, imageHeight);
    stoneImageView.contentMode = UIViewContentModeScaleAspectFit;
    [self.view addSubview: stoneImageView];
    
    UISegmentedControl *chooser = [[UISegmentedControl alloc] initWithItems:@[@"Left", @"Forward", @"Right", @"Turn back"]];
    chooser.frame = CGRectMake(10, (stoneImageView.frame.origin.y + stoneImageView.frame.size.height + 25), (self.view.frame.size.width -20), 30);
    chooser.selectedSegmentIndex = 1;
    [self.view addSubview: chooser];
    
    CGFloat buttonWidth = 200;
    CGFloat buttonX = (self.view.frame.size.width / 2) - (buttonWidth / 2);
    CGFloat buttonY = chooser.frame.origin.y + chooser.frame.size.height + 50;
    UIButton *chooserButton = [UIButton buttonWithType: UIButtonTypeSystem];
    [chooserButton setTitle: @"Go!" forState: UIControlStateNormal];
    [chooserButton addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
    chooserButton.titleLabel.font = [UIFont systemFontOfSize: 30];
    chooserButton.tintColor = [UIColor whiteColor];
    chooserButton.frame = CGRectMake(buttonX, buttonY, buttonWidth, 50);
    chooserButton.backgroundColor = [UIColor systemBlueColor];
    [self.view addSubview: chooserButton];
}

- (void) buttonPressed: (UIButton *)sender {
    UISegmentedControl *chooser;
    
    for (UIView *subview in self.view.subviews) {
        if ([subview isKindOfClass: [UISegmentedControl class]]) {
            chooser = subview;
            break;
        }
    }

    switch (chooser.selectedSegmentIndex){
        case 0: {
            SecondViewController *targetVC = [[SecondViewController alloc] initWithChoice: @0];
            [self.navigationController showViewController: targetVC sender: self];
            break;
        }
        case 1:{
            SecondViewController *targetVC = [[SecondViewController alloc] initWithChoice: @1];
        [self.navigationController showViewController: targetVC sender: self];
           break;
        }
        case 2:{
            SecondViewController *targetVC = [[SecondViewController alloc] initWithChoice: @2];
            [self.navigationController showViewController: targetVC sender: self];
           break;
        }
        case 3:{
            SecondViewController *targetVC = [[SecondViewController alloc] initWithChoice: @3];
            [self.navigationController showViewController: targetVC sender: self];
       }
    }
        
}

@end
