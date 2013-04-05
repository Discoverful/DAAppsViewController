//
//  DAAppsViewCell.m
//  DAAppsViewController
//
//  Created by Daniel Amitay on 4/3/13.
//  Copyright (c) 2013 Daniel Amitay. All rights reserved.
//

#import "DAAppsViewCell.h"

@interface DAAppsViewCell ()

@property (nonatomic, strong) UIImageView *iconView;
@property (nonatomic, strong) UILabel *nameLabel;
@property (nonatomic, strong) UILabel *genreLabel;

@property (nonatomic, strong) UIImageView *starImageView;
@property (nonatomic, strong) UILabel *noRatingsLabel;
@property (nonatomic, strong) UILabel *ratingsLabel;
@property (nonatomic, strong) UIButton *purchaseButton;

@end

@implementation DAAppsViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self)
    {
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        
        UIView *cellTopWhiteLine = [[UIView alloc] init];
        cellTopWhiteLine.frame = (CGRect) {
            .size.width = self.frame.size.width,
            .size.height = 1.0f
        };
        cellTopWhiteLine.autoresizingMask = UIViewAutoresizingFlexibleWidth;
        cellTopWhiteLine.backgroundColor = [UIColor whiteColor];
        [self addSubview:cellTopWhiteLine];
        
        UIImageView *cellImageShadowView = [[UIImageView alloc] init];
        cellImageShadowView.frame = (CGRect) {
            .origin.x = 11.0f,
            .origin.y = 8.0f,
            .size.width = 66.0f,
            .size.height = 67.0f
        };
        cellImageShadowView.contentMode = UIViewContentModeScaleAspectFit;
        cellImageShadowView.image = [UIImage imageNamed:@"DAShadowImage"];
        [self addSubview:cellImageShadowView];
        
        self.iconView = [[UIImageView alloc] init];
        self.iconView.frame = (CGRect) {
            .origin.x = 12.0f,
            .origin.y = 9.0f,
            .size.width = 64.0f,
            .size.height = 64.0f
        };
        self.iconView.contentMode = UIViewContentModeScaleAspectFit;
        [self addSubview:self.iconView];
        
        self.nameLabel = [[UILabel alloc] init];
        self.nameLabel.frame = (CGRect) {
            .origin.x = 88.0f,
            .origin.y = 34.0f,
            .size.width = self.frame.size.width - 165.0f,
            .size.height = 15.0f
        };
        self.nameLabel.autoresizingMask = UIViewAutoresizingFlexibleWidth;
        self.nameLabel.font = [UIFont boldSystemFontOfSize:14.0f];
        self.nameLabel.backgroundColor = [UIColor clearColor];
        self.nameLabel.textColor = [UIColor colorWithWhite:78.0f/255.0f alpha:1.0f];
        [self addSubview:self.nameLabel];
        
        self.genreLabel = [[UILabel alloc] init];
        self.genreLabel.frame = (CGRect) {
            .origin.x = 88.0f,
            .origin.y = 20.0f,
            .size.width = 100.0f,
            .size.height = 10.0f
        };
        self.genreLabel.font = [UIFont systemFontOfSize:10.0f];
        self.genreLabel.backgroundColor = [UIColor clearColor];
        self.genreLabel.textColor = [UIColor colorWithWhite:99.0f/255.0f alpha:1.0f];
        [self addSubview:self.genreLabel];
        
        self.starImageView = [[UIImageView alloc] init];
        self.starImageView.frame = (CGRect) {
            .origin.x = 88.0f,
            .origin.y = 53.0f,
            .size.width = 44.0f,
            .size.height = 9.5f
        };
        self.starImageView.contentMode = UIViewContentModeScaleAspectFill;
        self.starImageView.clipsToBounds = YES;
        [self addSubview:self.starImageView];
        
        self.noRatingsLabel = [[UILabel alloc] init];
        self.noRatingsLabel.frame = (CGRect) {
            .origin.x = 88.0f,
            .origin.y = 53.0f,
            .size.width = 60.0f,
            .size.height = 10.0f
        };
        self.noRatingsLabel.font = [UIFont systemFontOfSize:10.0f];
        self.noRatingsLabel.textColor = [UIColor colorWithWhite:99.0f/255.0f alpha:1.0f];
        self.noRatingsLabel.backgroundColor = [UIColor clearColor];
        self.noRatingsLabel.text = @"No Ratings";
        self.noRatingsLabel.hidden = YES;
        [self addSubview:self.noRatingsLabel];
        
        self.ratingsLabel = [[UILabel alloc] init];
        self.ratingsLabel.frame = (CGRect) {
            .origin.x = 140.0f,
            .origin.y = 51.5f,
            .size.width = 60.0f,
            .size.height = 12.0f
        };
        self.ratingsLabel.font = [UIFont systemFontOfSize:12.0f];
        self.ratingsLabel.textColor = [UIColor colorWithWhite:90.0f/255.0f alpha:1.0f];
        self.ratingsLabel.backgroundColor = [UIColor clearColor];
        [self addSubview:self.ratingsLabel];
        
        self.purchaseButton = [UIButton buttonWithType:UIButtonTypeCustom];
        self.purchaseButton.frame = (CGRect) {
            .origin.x = self.frame.size.width - 67.0f,
            .origin.y = 28.0f,
            .size.width = 59.0f,
            .size.height = 25.0f
        };
        self.purchaseButton.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin;
        UIColor *titleColor = [UIColor colorWithWhite:105.0f/255.0f alpha:1.0f];
        [self.purchaseButton setTitleColor:titleColor forState:UIControlStateNormal];
        [self.purchaseButton setTitleShadowColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [self.purchaseButton.titleLabel setShadowOffset:CGSizeMake(0.0f, 1.0f)];
        [self.purchaseButton.titleLabel setFont:[UIFont boldSystemFontOfSize:13.0f]];
        [self.purchaseButton setTitle:@"VIEW" forState:UIControlStateNormal];
        UIImage *buttonImage = [UIImage imageNamed:@"DAButtonImage"];
        UIImage *buttonImageSelected = [UIImage imageNamed:@"DAButtonImageSelected"];
        [self.purchaseButton setBackgroundImage:buttonImage forState:UIControlStateNormal];
        [self.purchaseButton setBackgroundImage:buttonImageSelected forState:UIControlStateHighlighted];
        [self.purchaseButton addTarget:self
                                action:@selector(purchaseButton:)
                      forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:self.purchaseButton];
    }
    return self;
}

- (void)purchaseButton:(UIButton *)button
{
    
}

#pragma mark - Property methods

- (void)setAppId:(NSInteger)appId
{
    _appId = appId;
}

- (void)setName:(NSString *)name
{
    _name = name;
    self.nameLabel.text = _name;
}

- (void)setGenre:(NSString *)genre
{
    _genre = genre;
    self.genreLabel.text = _genre;
}

- (void)setIcon:(UIImage *)icon
{
    _icon = icon;
    self.iconView.image = _icon;
}

- (void)setUserRatingCount:(NSInteger)userRatingCount
{
    _userRatingCount = userRatingCount;
    self.ratingsLabel.text = [NSString stringWithFormat:@"(%i)", _userRatingCount];
    self.noRatingsLabel.hidden = _userRatingCount;
    self.starImageView.hidden = !_userRatingCount;
}

- (void)setUserRating:(CGFloat)userRating
{
    _userRating = userRating;
    UIImage *starsImage = [UIImage imageNamed:@"DAStarsImage"];
    UIGraphicsBeginImageContextWithOptions(self.starImageView.frame.size, NO, 0);
    CGPoint starPoint = CGPointMake(0.0f,
                                    -starsImage.size.height + self.starImageView.frame.size.height +
                                    (self.starImageView.frame.size.height * (2 * _userRating)));
    [starsImage drawAtPoint:starPoint];
    self.starImageView.image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
}

- (void)setButtonText:(NSString *)buttonText
{
    _buttonText = buttonText;
    [self.purchaseButton setTitle:_buttonText forState:UIControlStateNormal];
}

@end
