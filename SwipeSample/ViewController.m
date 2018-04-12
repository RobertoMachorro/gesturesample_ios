//
//  ViewController.m
//  SwipeSample
//
//  Created by Roberto Machorro on 4/11/18.
//  Copyright © 2018 Unplugged Ideas, LLC. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutlet UILabel *gestureMessage;

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];

	[self addTapGestureWithAction:@selector(tapGesture:)];
	[self addSwipeWithDirection:UISwipeGestureRecognizerDirectionLeft action:@selector(swipeLeft:)];
	[self addSwipeWithDirection:UISwipeGestureRecognizerDirectionRight action:@selector(swipeRight:)];
	[self addSwipeWithDirection:UISwipeGestureRecognizerDirectionUp action:@selector(swipeUp:)];
	[self addSwipeWithDirection:UISwipeGestureRecognizerDirectionDown action:@selector(swipeDown:)];
}


- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

- (void)setMessage:(NSString*)message {
	self.gestureMessage.alpha = 1;
	self.gestureMessage.text = message;
	[UIView animateWithDuration:0.95 delay:0 options:UIViewAnimationOptionCurveEaseOut animations:^{
		self.gestureMessage.alpha = 0;
	} completion:nil];
}

#pragma mark - Swipe Gestures

- (void)addTapGestureWithAction:(SEL)method {
	UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:method];
	[self.view addGestureRecognizer:tapGesture];
}

- (IBAction)tapGesture:(id)sender {
	[self setMessage:@"Tap"];
}

- (void)addSwipeWithDirection:(UISwipeGestureRecognizerDirection)direction action:(SEL)method {
	UISwipeGestureRecognizer *gestureRecognizer = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:method];
	[gestureRecognizer setDirection:direction];
	[self.view addGestureRecognizer:gestureRecognizer];
}

- (IBAction)swipeLeft:(UISwipeGestureRecognizer*)sender {
	[self setMessage:@"Left"];
}

- (IBAction)swipeRight:(UISwipeGestureRecognizer*)sender {
	[self setMessage:@"Right"];
}

- (IBAction)swipeUp:(UISwipeGestureRecognizer*)sender {
	[self setMessage:@"Up"];
}

- (IBAction)swipeDown:(UISwipeGestureRecognizer*)sender {
	[self setMessage:@"Down"];
}

@end
