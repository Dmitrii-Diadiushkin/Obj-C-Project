//
//  SecondViewController.m
//  Obj-C Project
//
//  Created by Dmitrii Diadiushkin on 17.01.2021.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@property (nonatomic, strong) NSNumber *userChoice;

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self setupView];
}

- (id)initWithChoice:(NSNumber *)choice
{
   self = [super init];
   if (self) {
     _userChoice = choice;
   }
  return self;
}

- (void)setupView {
    self.view.backgroundColor = [UIColor whiteColor];
    
    UILabel *msgLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 120, self.view.frame.size.width, 30)];
    msgLabel.font = [UIFont systemFontOfSize: 24 weight:UIFontWeightHeavy];
    msgLabel.textAlignment = NSTextAlignmentCenter;
    msgLabel.textColor = [UIColor blackColor];
    [self.view addSubview:msgLabel];
    
    switch ([_userChoice integerValue]){
        case 0:{
            msgLabel.text = @"Your choice is left!";
            UIImage *imgToShow = [UIImage imageNamed: @"terrible"];
            CGFloat imageY = msgLabel.frame.origin.y + msgLabel.frame.size.height + 10;
            CGFloat imageRatio = imgToShow.size.height / imgToShow.size.width;
            CGFloat imageWidth = self.view.frame.size.width - 20;
            CGFloat imageHeight = imageWidth * imageRatio;
            UIImageView *imageView = [[UIImageView alloc] initWithImage: imgToShow];
            imageView.frame = CGRectMake(10, imageY, imageWidth, imageHeight);
            imageView.contentMode = UIViewContentModeScaleAspectFit;
            [self.view addSubview: imageView];
            break;
        }
        case 1:{
            msgLabel.text = @"Your choice is forward!";
            UIImage *imgToShow = [UIImage imageNamed: @"scream"];
            CGFloat imageY = msgLabel.frame.origin.y + msgLabel.frame.size.height + 10;
            CGFloat imageRatio = imgToShow.size.height / imgToShow.size.width;
            CGFloat imageWidth = self.view.frame.size.width - 20;
            CGFloat imageHeight = imageWidth * imageRatio;
            UIImageView *imageView = [[UIImageView alloc] initWithImage: imgToShow];
            imageView.frame = CGRectMake(10, imageY, imageWidth, imageHeight);
            imageView.contentMode = UIViewContentModeScaleAspectFit;
            [self.view addSubview: imageView];
            break;
        }
        case 2:{
            msgLabel.text = @"Your choice is right!";
            UIImage *imgToShow = [UIImage imageNamed: @"fredi"];
            CGFloat imageY = msgLabel.frame.origin.y + msgLabel.frame.size.height + 10;
            CGFloat imageRatio = imgToShow.size.height / imgToShow.size.width;
            CGFloat imageWidth = self.view.frame.size.width - 20;
            CGFloat imageHeight = imageWidth * imageRatio;
            UIImageView *imageView = [[UIImageView alloc] initWithImage: imgToShow];
            imageView.frame = CGRectMake(10, imageY, imageWidth, imageHeight);
            imageView.contentMode = UIViewContentModeScaleAspectFit;
            [self.view addSubview: imageView];
            break;
        }
        case 3:{
            msgLabel.text = @"Your choice is back!";
            UIImage *imgToShow = [UIImage imageNamed: @"back"];
            CGFloat imageY = msgLabel.frame.origin.y + msgLabel.frame.size.height + 10;
            CGFloat imageRatio = imgToShow.size.height / imgToShow.size.width;
            CGFloat imageWidth = self.view.frame.size.width - 20;
            CGFloat imageHeight = imageWidth * imageRatio;
            UIImageView *imageView = [[UIImageView alloc] initWithImage: imgToShow];
            imageView.frame = CGRectMake(10, imageY, imageWidth, imageHeight);
            imageView.contentMode = UIViewContentModeScaleAspectFit;
            [self.view addSubview: imageView];
            break;
        }
        default:
            msgLabel.text = @"Something went wrong...";
            NSLog(@"Something went wrong...");
    }
}

@end
