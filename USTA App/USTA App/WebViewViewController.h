//
//  WebViewViewController.h
//  USTA App
//
//  Created by Cormac Chester on 7/30/13.
//  Copyright (c) 2013 Testman. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WebViewViewController : UIViewController<UIWebViewDelegate>
{
    IBOutlet UIWebView *webView;
}

@property (nonatomic, retain) UIWebView *webView;

@end
