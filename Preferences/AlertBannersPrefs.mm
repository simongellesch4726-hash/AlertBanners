#import <Preferences/PSListController.h>
#import <UIKit/UIKit.h>

@interface AlertBannersPrefsListController : PSListController
@end

@implementation AlertBannersPrefsListController

- (id)specifiers {
    if (!_specifiers) {
        _specifiers = [self loadSpecifiersFromPlistName:@"Root"
                                                 target:self];
    }

    return _specifiers;
}

- (void)testUIAlert {
    UIAlertController *alert =
        [UIAlertController alertControllerWithTitle:@"AlertBanners Test"
                                            message:@"This is a UIKit test alert."
                                     preferredStyle:UIAlertControllerStyleAlert];

    [alert addAction:[UIAlertAction actionWithTitle:@"OK"
                                              style:UIAlertActionStyleDefault
                                            handler:nil]];

    [self presentViewController:alert
                       animated:YES
                     completion:nil];
}

@end
