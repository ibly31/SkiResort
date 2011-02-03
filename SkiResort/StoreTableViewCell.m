//
//  StoreTableViewCell.m
//  SkiResort
//
//  Created by Billy Connolly on 2/2/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "StoreTableViewCell.h"


@implementation StoreTableViewCell
@synthesize previewIcon;
@synthesize nameLabel;
@synthesize costLabel;

- (id)initWithData:(NSString *)imageName name:(NSString *)name cost:(int)cost reuseIdentifier:(NSString *)reuseIdentifier{   
	self = [super initWithStyle:UITableViewStylePlain reuseIdentifier:reuseIdentifier];
    if(self){
		NSString *path = [[NSBundle mainBundle] pathForResource: imageName ofType:@"png"];
		NSData *texData = [[NSData alloc] initWithContentsOfFile: path];
		UIImage *img = [UIImage imageWithData: texData];
		previewIcon = [[UIImageView alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 44.0f, 44.0f)];
		[previewIcon setImage: img];
		[self.contentView addSubview:(UIView *)previewIcon];
		
		nameLabel = [[UILabel alloc] initWithFrame: CGRectMake(50.0f, 13.0f, 210.0f, 24.0f)];
		[nameLabel setFont: [UIFont boldSystemFontOfSize: 18.0f]];
		nameLabel.text = name;
		[self.contentView addSubview: nameLabel];
		
		costLabel = [[UILabel alloc] initWithFrame: CGRectMake(260.0f, 13.0f, 60.0f, 24.0f)];
		[costLabel setFont: [UIFont boldSystemFontOfSize: 10.0f]];
		[costLabel setTextColor: [UIColor grayColor]];
		costLabel.text = [NSString stringWithFormat: @"$%i", cost];
		[self.contentView addSubview: costLabel];
	}
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {    
    [super setSelected:selected animated:animated];
}


- (void)dealloc {
    [super dealloc];
}


@end
