//
//  CNNLocalization.h
//  cheniu
//
//  Created by 葛亮 on 15/5/26.
//  Copyright (c) 2015年 葛亮. All rights reserved.
//

#ifndef LOCAL
#define LOCAL

#define LOC(__key, __comment) NSLocalizedString((__key), (__comment))
#define LOC_F(__key, __comment, ...) [NSString stringWithFormat:LOC(__key, __comment),__VA_ARGS__]

#define LOC_DEF(__key, __tbl, __defvalue, __comment) NSLocalizedStringWithDefaultValue((__key), (__tbl), [NSBundle mainBundle], (__defvalue), (__comment))
#define LOC_DEF_F(__key, __tbl, __defvalue, __comment, ...) [NSString stringWithFormat:LOC_DEF(__key, __tbl, __defvalue,__comment), __VA_ARGS__]

#define LOC_SIM(__key, __tbl) NSLocalizedStringWithDefaultValue((__key), (__tbl), [NSBundle mainBundle], nil, nil)
#define LOC_SIM_F(__key, __tbl, ...) [NSString stringWithFormat:LOC_SIM(__key, __tbl), __VA_ARGS__]
#endif
