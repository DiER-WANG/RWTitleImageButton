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
        CGSize titleSize = [title sizeWithAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:_fontSize]}];
        titleSize = CGSizeMake(ceilf(titleSize.width), ceilf(titleSize.height));
        if (titleSize.width + 2 + _imageSize.width > width) {
            titleSize.width = width - 2 - _imageSize.width;// 2 为图片与文字的间距 13为图片的宽度
        }
        CGFloat totalWidth = titleSize.width + _imageSize.width + 2;
        CGFloat left = width * 0.5 - totalWidth * 0.5;
        if (left < 0) {
            left = 0;
        }
        return CGRectMake(width - _imageSize.width - left, contentRect.size.height * 0.5 - _imageSize.height * 0.5, _imageSize.height, _imageSize.width);
    } else {
        return [super imageRectForContentRect:contentRect];
    }
}

-(CGRect)titleRectForContentRect:(CGRect)contentRect {
    if (self.currentTitle && self.currentImage) {
        CGFloat width = contentRect.size.width;
        NSString *title = self.currentTitle;
        CGSize titleSize = [title sizeWithAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:_fontSize]}];
        titleSize = CGSizeMake(ceilf(titleSize.width), ceilf(titleSize.height));
        if (titleSize.width + 2 + _imageSize.width > width) {
            titleSize.width = _imageSize.width - 2 - _imageSize.width;// 2 为图片与文字的间距 13为图片的宽度
        }
        CGFloat totalWidth = titleSize.width + _imageSize.width + 2;
        CGFloat left = width * 0.5 - totalWidth * 0.5;
        if (left < 0) {
            left = 0;
        }
        return CGRectMake(left,
                          contentRect.size.height * 0.5 - titleSize.height * 0.5,
                          titleSize.width,
                          titleSize.height);
    } else {
        return [super titleRectForContentRect:contentRect];
    }
}

@end
