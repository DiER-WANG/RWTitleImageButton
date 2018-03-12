//
//  RWTitleImageButton.m
//  RWTitleImageButton
//
//  Created by 王昌阳 on 2018/3/12.
//  Copyright © 2018年 wangchangyang. All rights reserved.
//

#import "RWTitleImageButton.h"

@implementation RWTitleImageButton

-(CGRect)imageRectForContentRect:(CGRect)contentRect {
    if (self.currentTitle && self.currentImage) {
        CGFloat width = contentRect.size.width;
        NSString *title = self.currentTitle;
        CGSize titleSize = [title boundingRectWithSize:CGSizeMake((width - _imageSize.width - 2), contentRect.size.height)
                                               options:NSStringDrawingUsesLineFragmentOrigin
                                            attributes:@{NSFontAttributeName: [UIFont systemFontOfSize:_fontSize]}
                                               context:nil].size;
        CGFloat totalWidth = titleSize.width + _imageSize.width + 2;
        CGFloat left = contentRect.size.width * 0.5 - totalWidth * 0.5;
        if (left < 0) {
            left = 0;
        }
        return CGRectMake(contentRect.size.width - _imageSize.width - left, contentRect.size.height * 0.5 - _imageSize.height * 0.5, _imageSize.height, _imageSize.width);
    } else {
        return [super imageRectForContentRect:contentRect];
    }
}

-(CGRect)titleRectForContentRect:(CGRect)contentRect {
    if (self.currentTitle && self.currentImage) {
        CGFloat width = contentRect.size.width;
        NSString *title = self.currentTitle;
        CGSize titleSize = [title boundingRectWithSize:CGSizeMake((width - _imageSize.width - 2), contentRect.size.height)
                                               options:NSStringDrawingUsesLineFragmentOrigin
                                            attributes:@{NSFontAttributeName: [UIFont systemFontOfSize:_fontSize]}
                                               context:nil].size;
        CGFloat totalWidth = titleSize.width + _imageSize.width + 2;
        CGFloat left = contentRect.size.width * 0.5 - totalWidth * 0.5;
        if (left < 0) {
            left = 0;
        }
        return CGRectMake(left, 0, titleSize.width, contentRect.size.height);
    } else {
        return [super titleRectForContentRect:contentRect];
    }
}

@end
