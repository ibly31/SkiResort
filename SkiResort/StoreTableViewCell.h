//
//  StoreTableViewCell.h
//  SkiResort
//
//  Created by Billy Connolly on 2/2/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface StoreTableViewCell : UITableViewCell {
	UIImageView *previewIcon;
	UILabel *nameLabel;
	UILabel *costLabel;
}

- (id)initWithData:(NSString *)imageName name:(NSString *)name cost:(int)cost reuseIdentifier:(NSString *)reuseIdentifier;

@property (nonatomic, retain) UIImageView *previewIcon;
@property (nonatomic, retain) UILabel *nameLabel;
@property (nonatomic, retain) UILabel *costLabel;

@end
