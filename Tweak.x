#import <UIKit/UIKit.h>

%hook UIViewController

- (void)presentViewController:(UIViewController *)viewControllerToPresent
                     animated:(BOOL)animated
                   completion:(void (^)(void))completion {

    if ([viewControllerToPresent isKindOfClass:[UIAlertController class]]) {
        UIAlertController *alert = (UIAlertController *)viewControllerToPresent;

        NSLog(@"[AlertBanners] title=%@ message=%@",
              alert.title,
              alert.message);
    }

    %orig;
}

%end
