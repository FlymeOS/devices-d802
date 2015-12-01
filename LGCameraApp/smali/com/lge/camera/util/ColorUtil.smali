.class public Lcom/lge/camera/util/ColorUtil;
.super Ljava/lang/Object;
.source "ColorUtil.java"


# static fields
.field private static DELTA_INDEX:[D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const/16 v0, 0x65

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    sput-object v0, Lcom/lge/camera/util/ColorUtil;->DELTA_INDEX:[D

    return-void

    :array_0
    .array-data 8
        0x0
        0x3f847ae147ae147bL    # 0.01
        0x3f947ae147ae147bL    # 0.02
        0x3fa47ae147ae147bL    # 0.04
        0x3fa999999999999aL    # 0.05
        0x3faeb851eb851eb8L    # 0.06
        0x3fb1eb851eb851ecL    # 0.07
        0x3fb47ae147ae147bL    # 0.08
        0x3fb999999999999aL    # 0.1
        0x3fbc28f5c28f5c29L    # 0.11
        0x3fbeb851eb851eb8L    # 0.12
        0x3fc1eb851eb851ecL    # 0.14
        0x3fc3333333333333L    # 0.15
        0x3fc47ae147ae147bL    # 0.16
        0x3fc5c28f5c28f5c3L    # 0.17
        0x3fc70a3d70a3d70aL    # 0.18
        0x3fc999999999999aL    # 0.2
        0x3fcae147ae147ae1L    # 0.21
        0x3fcc28f5c28f5c29L    # 0.22
        0x3fceb851eb851eb8L    # 0.24
        0x3fd0000000000000L    # 0.25
        0x3fd147ae147ae148L    # 0.27
        0x3fd1eb851eb851ecL    # 0.28
        0x3fd3333333333333L    # 0.3
        0x3fd47ae147ae147bL    # 0.32
        0x3fd5c28f5c28f5c3L    # 0.34
        0x3fd70a3d70a3d70aL    # 0.36
        0x3fd851eb851eb852L    # 0.38
        0x3fd999999999999aL    # 0.4
        0x3fdae147ae147ae1L    # 0.42
        0x3fdc28f5c28f5c29L    # 0.44
        0x3fdd70a3d70a3d71L    # 0.46
        0x3fdeb851eb851eb8L    # 0.48
        0x3fe0000000000000L    # 0.5
        0x3fe0f5c28f5c28f6L    # 0.53
        0x3fe1eb851eb851ecL    # 0.56
        0x3fe2e147ae147ae1L    # 0.59
        0x3fe3d70a3d70a3d7L    # 0.62
        0x3fe4cccccccccccdL    # 0.65
        0x3fe5c28f5c28f5c3L    # 0.68
        0x3fe6b851eb851eb8L    # 0.71
        0x3fe7ae147ae147aeL    # 0.74
        0x3fe8a3d70a3d70a4L    # 0.77
        0x3fe999999999999aL    # 0.8
        0x3fea8f5c28f5c28fL    # 0.83
        0x3feb851eb851eb85L    # 0.86
        0x3fec7ae147ae147bL    # 0.89
        0x3fed70a3d70a3d71L    # 0.92
        0x3fee666666666666L    # 0.95
        0x3fef5c28f5c28f5cL    # 0.98
        0x3ff0000000000000L    # 1.0
        0x3ff0f5c28f5c28f6L    # 1.06
        0x3ff1eb851eb851ecL    # 1.12
        0x3ff2e147ae147ae1L    # 1.18
        0x3ff3d70a3d70a3d7L    # 1.24
        0x3ff4cccccccccccdL    # 1.3
        0x3ff5c28f5c28f5c3L    # 1.36
        0x3ff6b851eb851eb8L    # 1.42
        0x3ff7ae147ae147aeL    # 1.48
        0x3ff8a3d70a3d70a4L    # 1.54
        0x3ff999999999999aL    # 1.6
        0x3ffa8f5c28f5c28fL    # 1.66
        0x3ffb851eb851eb85L    # 1.72
        0x3ffc7ae147ae147bL    # 1.78
        0x3ffd70a3d70a3d71L    # 1.84
        0x3ffe666666666666L    # 1.9
        0x3fff5c28f5c28f5cL    # 1.96
        0x4000000000000000L    # 2.0
        0x4000f5c28f5c28f6L    # 2.12
        0x4002000000000000L    # 2.25
        0x4002f5c28f5c28f6L    # 2.37
        0x4004000000000000L    # 2.5
        0x4004f5c28f5c28f6L    # 2.62
        0x4006000000000000L    # 2.75
        0x4006f5c28f5c28f6L    # 2.87
        0x4008000000000000L    # 3.0
        0x400999999999999aL    # 3.2
        0x400b333333333333L    # 3.4
        0x400ccccccccccccdL    # 3.6
        0x400e666666666666L    # 3.8
        0x4010000000000000L    # 4.0
        0x4011333333333333L    # 4.3
        0x4012cccccccccccdL    # 4.7
        0x401399999999999aL    # 4.9
        0x4014000000000000L    # 5.0
        0x4016000000000000L    # 5.5
        0x4018000000000000L    # 6.0
        0x401a000000000000L    # 6.5
        0x401b333333333333L    # 6.8
        0x401c000000000000L    # 7.0
        0x401d333333333333L    # 7.3
        0x401e000000000000L    # 7.5
        0x401f333333333333L    # 7.8
        0x4020000000000000L    # 8.0
        0x4020cccccccccccdL    # 8.4
        0x4021666666666666L    # 8.7
        0x4022000000000000L    # 9.0
        0x4022cccccccccccdL    # 9.4
        0x4023333333333333L    # 9.6
        0x402399999999999aL    # 9.8
        0x4024000000000000L    # 10.0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustBrightness(Landroid/graphics/ColorMatrix;F)V
    .locals 4
    .param p0, "cm"    # Landroid/graphics/ColorMatrix;
    .param p1, "value"    # F

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 101
    const/high16 v1, 0x42c80000    # 100.0f

    invoke-static {p1, v1}, Lcom/lge/camera/util/ColorUtil;->cleanValue(FF)F

    move-result p1

    .line 102
    cmpl-float v1, p1, v2

    if-gtz v1, :cond_0

    cmpg-float v1, p1, v2

    if-gez v1, :cond_1

    .line 103
    :cond_0
    const/16 v1, 0x19

    new-array v0, v1, [F

    const/4 v1, 0x0

    aput v3, v0, v1

    const/4 v1, 0x1

    aput v2, v0, v1

    const/4 v1, 0x2

    aput v2, v0, v1

    const/4 v1, 0x3

    aput v2, v0, v1

    const/4 v1, 0x4

    aput p1, v0, v1

    const/4 v1, 0x5

    aput v2, v0, v1

    const/4 v1, 0x6

    aput v3, v0, v1

    const/4 v1, 0x7

    aput v2, v0, v1

    const/16 v1, 0x8

    aput v2, v0, v1

    const/16 v1, 0x9

    aput p1, v0, v1

    const/16 v1, 0xa

    aput v2, v0, v1

    const/16 v1, 0xb

    aput v2, v0, v1

    const/16 v1, 0xc

    aput v3, v0, v1

    const/16 v1, 0xd

    aput v2, v0, v1

    const/16 v1, 0xe

    aput p1, v0, v1

    const/16 v1, 0xf

    aput v2, v0, v1

    const/16 v1, 0x10

    aput v2, v0, v1

    const/16 v1, 0x11

    aput v2, v0, v1

    const/16 v1, 0x12

    aput v3, v0, v1

    const/16 v1, 0x13

    aput v2, v0, v1

    const/16 v1, 0x14

    aput v2, v0, v1

    const/16 v1, 0x15

    aput v2, v0, v1

    const/16 v1, 0x16

    aput v2, v0, v1

    const/16 v1, 0x17

    aput v2, v0, v1

    const/16 v1, 0x18

    aput v3, v0, v1

    .line 111
    .local v0, "mat":[F
    new-instance v1, Landroid/graphics/ColorMatrix;

    invoke-direct {v1, v0}, Landroid/graphics/ColorMatrix;-><init>([F)V

    invoke-virtual {p0, v1}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    .line 113
    .end local v0    # "mat":[F
    :cond_1
    return-void
.end method

.method public static adjustColor(IIII)Landroid/graphics/ColorFilter;
    .locals 2
    .param p0, "brightness"    # I
    .param p1, "contrast"    # I
    .param p2, "saturation"    # I
    .param p3, "hue"    # I

    .prologue
    .line 171
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 172
    .local v0, "cm":Landroid/graphics/ColorMatrix;
    int-to-float v1, p3

    invoke-static {v0, v1}, Lcom/lge/camera/util/ColorUtil;->adjustHue(Landroid/graphics/ColorMatrix;F)V

    .line 173
    invoke-static {v0, p1}, Lcom/lge/camera/util/ColorUtil;->adjustContrast(Landroid/graphics/ColorMatrix;I)V

    .line 174
    int-to-float v1, p0

    invoke-static {v0, v1}, Lcom/lge/camera/util/ColorUtil;->adjustBrightness(Landroid/graphics/ColorMatrix;F)V

    .line 175
    int-to-float v1, p2

    invoke-static {v0, v1}, Lcom/lge/camera/util/ColorUtil;->adjustSaturation(Landroid/graphics/ColorMatrix;F)V

    .line 177
    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v1, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    return-object v1
.end method

.method public static adjustContrast(Landroid/graphics/ColorMatrix;I)V
    .locals 10
    .param p0, "cm"    # Landroid/graphics/ColorMatrix;
    .param p1, "value"    # I

    .prologue
    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f000000    # 0.5f

    const/high16 v7, 0x42fe0000    # 127.0f

    const/4 v6, 0x0

    .line 116
    int-to-float v2, p1

    const/high16 v3, 0x42c80000    # 100.0f

    invoke-static {v2, v3}, Lcom/lge/camera/util/ColorUtil;->cleanValue(FF)F

    move-result v2

    float-to-int p1, v2

    .line 117
    int-to-float v2, p1

    cmpl-float v2, v2, v6

    if-gtz v2, :cond_0

    int-to-float v2, p1

    cmpg-float v2, v2, v6

    if-gez v2, :cond_1

    .line 119
    :cond_0
    if-gez p1, :cond_2

    .line 120
    div-int/lit8 v2, p1, 0x64

    mul-int/lit8 v2, v2, 0x7f

    add-int/lit8 v2, v2, 0x7f

    int-to-float v1, v2

    .line 134
    .local v1, "x":F
    :goto_0
    const/16 v2, 0x19

    new-array v0, v2, [F

    const/4 v2, 0x0

    div-float v3, v1, v7

    aput v3, v0, v2

    const/4 v2, 0x1

    aput v6, v0, v2

    const/4 v2, 0x2

    aput v6, v0, v2

    const/4 v2, 0x3

    aput v6, v0, v2

    const/4 v2, 0x4

    sub-float v3, v7, v1

    mul-float/2addr v3, v8

    aput v3, v0, v2

    const/4 v2, 0x5

    aput v6, v0, v2

    const/4 v2, 0x6

    div-float v3, v1, v7

    aput v3, v0, v2

    const/4 v2, 0x7

    aput v6, v0, v2

    const/16 v2, 0x8

    aput v6, v0, v2

    const/16 v2, 0x9

    sub-float v3, v7, v1

    mul-float/2addr v3, v8

    aput v3, v0, v2

    const/16 v2, 0xa

    aput v6, v0, v2

    const/16 v2, 0xb

    aput v6, v0, v2

    const/16 v2, 0xc

    div-float v3, v1, v7

    aput v3, v0, v2

    const/16 v2, 0xd

    aput v6, v0, v2

    const/16 v2, 0xe

    sub-float v3, v7, v1

    mul-float/2addr v3, v8

    aput v3, v0, v2

    const/16 v2, 0xf

    aput v6, v0, v2

    const/16 v2, 0x10

    aput v6, v0, v2

    const/16 v2, 0x11

    aput v6, v0, v2

    const/16 v2, 0x12

    aput v9, v0, v2

    const/16 v2, 0x13

    aput v6, v0, v2

    const/16 v2, 0x14

    aput v6, v0, v2

    const/16 v2, 0x15

    aput v6, v0, v2

    const/16 v2, 0x16

    aput v6, v0, v2

    const/16 v2, 0x17

    aput v6, v0, v2

    const/16 v2, 0x18

    aput v9, v0, v2

    .line 142
    .local v0, "mat":[F
    new-instance v2, Landroid/graphics/ColorMatrix;

    invoke-direct {v2, v0}, Landroid/graphics/ColorMatrix;-><init>([F)V

    invoke-virtual {p0, v2}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    .line 144
    .end local v0    # "mat":[F
    .end local v1    # "x":F
    :cond_1
    return-void

    .line 122
    :cond_2
    rem-int/lit8 v2, p1, 0x1

    int-to-float v1, v2

    .line 123
    .restart local v1    # "x":F
    cmpg-float v2, v1, v6

    if-ltz v2, :cond_3

    cmpl-float v2, v1, v6

    if-lez v2, :cond_4

    .line 126
    :cond_3
    sget-object v2, Lcom/lge/camera/util/ColorUtil;->DELTA_INDEX:[D

    shl-int/lit8 v3, p1, 0x0

    aget-wide v2, v2, v3

    double-to-float v2, v2

    sub-float v3, v9, v1

    mul-float/2addr v2, v3

    sget-object v3, Lcom/lge/camera/util/ColorUtil;->DELTA_INDEX:[D

    shl-int/lit8 v4, p1, 0x0

    add-int/lit8 v4, v4, 0x1

    aget-wide v4, v3, v4

    double-to-float v3, v4

    mul-float/2addr v3, v1

    add-float v1, v2, v3

    .line 131
    :goto_1
    mul-float v2, v1, v7

    add-float v1, v2, v7

    goto/16 :goto_0

    .line 129
    :cond_4
    sget-object v2, Lcom/lge/camera/util/ColorUtil;->DELTA_INDEX:[D

    aget-wide v2, v2, p1

    double-to-float v1, v2

    goto :goto_1
.end method

.method public static adjustHue(Landroid/graphics/ColorMatrix;F)V
    .locals 11
    .param p0, "cm"    # Landroid/graphics/ColorMatrix;
    .param p1, "value"    # F

    .prologue
    const/high16 v7, 0x43340000    # 180.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    .line 72
    invoke-static {p1, v7}, Lcom/lge/camera/util/ColorUtil;->cleanValue(FF)F

    move-result v6

    div-float/2addr v6, v7

    const v7, 0x40490fdb    # (float)Math.PI

    mul-float p1, v6, v7

    .line 74
    cmpl-float v6, p1, v9

    if-gtz v6, :cond_0

    cmpg-float v6, p1, v9

    if-gez v6, :cond_1

    .line 75
    :cond_0
    float-to-double v6, p1

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v0, v6

    .line 76
    .local v0, "cosVal":F
    float-to-double v6, p1

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v5, v6

    .line 77
    .local v5, "sinVal":F
    const v3, 0x3e5a1cac    # 0.213f

    .line 78
    .local v3, "lumR":F
    const v2, 0x3f370a3d    # 0.715f

    .line 79
    .local v2, "lumG":F
    const v1, 0x3d9374bc    # 0.072f

    .line 80
    .local v1, "lumB":F
    const/16 v6, 0x19

    new-array v4, v6, [F

    const/4 v6, 0x0

    sub-float v7, v10, v3

    mul-float/2addr v7, v0

    add-float/2addr v7, v3

    neg-float v8, v3

    mul-float/2addr v8, v5

    add-float/2addr v7, v8

    aput v7, v4, v6

    const/4 v6, 0x1

    neg-float v7, v2

    mul-float/2addr v7, v0

    add-float/2addr v7, v2

    neg-float v8, v2

    mul-float/2addr v8, v5

    add-float/2addr v7, v8

    aput v7, v4, v6

    const/4 v6, 0x2

    neg-float v7, v1

    mul-float/2addr v7, v0

    add-float/2addr v7, v1

    sub-float v8, v10, v1

    mul-float/2addr v8, v5

    add-float/2addr v7, v8

    aput v7, v4, v6

    const/4 v6, 0x3

    aput v9, v4, v6

    const/4 v6, 0x4

    aput v9, v4, v6

    const/4 v6, 0x5

    neg-float v7, v3

    mul-float/2addr v7, v0

    add-float/2addr v7, v3

    const v8, 0x3e126e98    # 0.143f

    mul-float/2addr v8, v5

    add-float/2addr v7, v8

    aput v7, v4, v6

    const/4 v6, 0x6

    sub-float v7, v10, v2

    mul-float/2addr v7, v0

    add-float/2addr v7, v2

    const v8, 0x3e0f5c29    # 0.14f

    mul-float/2addr v8, v5

    add-float/2addr v7, v8

    aput v7, v4, v6

    const/4 v6, 0x7

    neg-float v7, v1

    mul-float/2addr v7, v0

    add-float/2addr v7, v1

    const v8, -0x416f1aa0    # -0.283f

    mul-float/2addr v8, v5

    add-float/2addr v7, v8

    aput v7, v4, v6

    const/16 v6, 0x8

    aput v9, v4, v6

    const/16 v6, 0x9

    aput v9, v4, v6

    const/16 v6, 0xa

    neg-float v7, v3

    mul-float/2addr v7, v0

    add-float/2addr v7, v3

    sub-float v8, v10, v3

    neg-float v8, v8

    mul-float/2addr v8, v5

    add-float/2addr v7, v8

    aput v7, v4, v6

    const/16 v6, 0xb

    neg-float v7, v2

    mul-float/2addr v7, v0

    add-float/2addr v7, v2

    mul-float v8, v5, v2

    add-float/2addr v7, v8

    aput v7, v4, v6

    const/16 v6, 0xc

    sub-float v7, v10, v1

    mul-float/2addr v7, v0

    add-float/2addr v7, v1

    mul-float v8, v5, v1

    add-float/2addr v7, v8

    aput v7, v4, v6

    const/16 v6, 0xd

    aput v9, v4, v6

    const/16 v6, 0xe

    aput v9, v4, v6

    const/16 v6, 0xf

    aput v9, v4, v6

    const/16 v6, 0x10

    aput v9, v4, v6

    const/16 v6, 0x11

    aput v9, v4, v6

    const/16 v6, 0x12

    aput v10, v4, v6

    const/16 v6, 0x13

    aput v9, v4, v6

    const/16 v6, 0x14

    aput v9, v4, v6

    const/16 v6, 0x15

    aput v9, v4, v6

    const/16 v6, 0x16

    aput v9, v4, v6

    const/16 v6, 0x17

    aput v9, v4, v6

    const/16 v6, 0x18

    aput v10, v4, v6

    .line 96
    .local v4, "mat":[F
    new-instance v6, Landroid/graphics/ColorMatrix;

    invoke-direct {v6, v4}, Landroid/graphics/ColorMatrix;-><init>([F)V

    invoke-virtual {p0, v6}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    .line 98
    .end local v0    # "cosVal":F
    .end local v1    # "lumB":F
    .end local v2    # "lumG":F
    .end local v3    # "lumR":F
    .end local v4    # "mat":[F
    .end local v5    # "sinVal":F
    :cond_1
    return-void
.end method

.method public static adjustSaturation(Landroid/graphics/ColorMatrix;F)V
    .locals 9
    .param p0, "cm"    # Landroid/graphics/ColorMatrix;
    .param p1, "value"    # F

    .prologue
    const/high16 v6, 0x42c80000    # 100.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    .line 147
    invoke-static {p1, v6}, Lcom/lge/camera/util/ColorUtil;->cleanValue(FF)F

    move-result p1

    .line 148
    cmpl-float v5, p1, v7

    if-gtz v5, :cond_0

    cmpg-float v5, p1, v7

    if-gez v5, :cond_1

    .line 149
    :cond_0
    cmpl-float v5, p1, v7

    if-lez v5, :cond_2

    const/high16 v5, 0x40400000    # 3.0f

    mul-float/2addr v5, p1

    div-float/2addr v5, v6

    :goto_0
    add-float v4, v8, v5

    .line 150
    .local v4, "x":F
    const v2, 0x3e9e00d2    # 0.3086f

    .line 151
    .local v2, "lumR":F
    const v1, 0x3f1c01a3    # 0.6094f

    .line 152
    .local v1, "lumG":F
    const v0, 0x3da7ef9e    # 0.082f

    .line 154
    .local v0, "lumB":F
    const/16 v5, 0x19

    new-array v3, v5, [F

    const/4 v5, 0x0

    sub-float v6, v8, v4

    mul-float/2addr v6, v2

    add-float/2addr v6, v4

    aput v6, v3, v5

    const/4 v5, 0x1

    sub-float v6, v8, v4

    mul-float/2addr v6, v1

    aput v6, v3, v5

    const/4 v5, 0x2

    sub-float v6, v8, v4

    mul-float/2addr v6, v0

    aput v6, v3, v5

    const/4 v5, 0x3

    aput v7, v3, v5

    const/4 v5, 0x4

    aput v7, v3, v5

    const/4 v5, 0x5

    sub-float v6, v8, v4

    mul-float/2addr v6, v2

    aput v6, v3, v5

    const/4 v5, 0x6

    sub-float v6, v8, v4

    mul-float/2addr v6, v1

    add-float/2addr v6, v4

    aput v6, v3, v5

    const/4 v5, 0x7

    sub-float v6, v8, v4

    mul-float/2addr v6, v0

    aput v6, v3, v5

    const/16 v5, 0x8

    aput v7, v3, v5

    const/16 v5, 0x9

    aput v7, v3, v5

    const/16 v5, 0xa

    sub-float v6, v8, v4

    mul-float/2addr v6, v2

    aput v6, v3, v5

    const/16 v5, 0xb

    sub-float v6, v8, v4

    mul-float/2addr v6, v1

    aput v6, v3, v5

    const/16 v5, 0xc

    sub-float v6, v8, v4

    mul-float/2addr v6, v0

    add-float/2addr v6, v4

    aput v6, v3, v5

    const/16 v5, 0xd

    aput v7, v3, v5

    const/16 v5, 0xe

    aput v7, v3, v5

    const/16 v5, 0xf

    aput v7, v3, v5

    const/16 v5, 0x10

    aput v7, v3, v5

    const/16 v5, 0x11

    aput v7, v3, v5

    const/16 v5, 0x12

    aput v8, v3, v5

    const/16 v5, 0x13

    aput v7, v3, v5

    const/16 v5, 0x14

    aput v7, v3, v5

    const/16 v5, 0x15

    aput v7, v3, v5

    const/16 v5, 0x16

    aput v7, v3, v5

    const/16 v5, 0x17

    aput v7, v3, v5

    const/16 v5, 0x18

    aput v8, v3, v5

    .line 162
    .local v3, "mat":[F
    new-instance v5, Landroid/graphics/ColorMatrix;

    invoke-direct {v5, v3}, Landroid/graphics/ColorMatrix;-><init>([F)V

    invoke-virtual {p0, v5}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    .line 164
    .end local v0    # "lumB":F
    .end local v1    # "lumG":F
    .end local v2    # "lumR":F
    .end local v3    # "mat":[F
    .end local v4    # "x":F
    :cond_1
    return-void

    .line 149
    :cond_2
    div-float v5, p1, v6

    goto/16 :goto_0
.end method

.method protected static cleanValue(FF)F
    .locals 1
    .param p0, "p_val"    # F
    .param p1, "p_limit"    # F

    .prologue
    .line 167
    neg-float v0, p1

    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public static getBrightnessAndContrast(FF)Landroid/graphics/ColorMatrixColorFilter;
    .locals 4
    .param p0, "brightness"    # F
    .param p1, "contrast"    # F

    .prologue
    const/4 v3, 0x0

    .line 21
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 22
    .local v0, "cm":Landroid/graphics/ColorMatrix;
    const/16 v1, 0x14

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput v3, v1, v2

    const/4 v2, 0x2

    aput v3, v1, v2

    const/4 v2, 0x3

    aput v3, v1, v2

    const/4 v2, 0x4

    aput p0, v1, v2

    const/4 v2, 0x5

    aput v3, v1, v2

    const/4 v2, 0x6

    aput p1, v1, v2

    const/4 v2, 0x7

    aput v3, v1, v2

    const/16 v2, 0x8

    aput v3, v1, v2

    const/16 v2, 0x9

    aput p0, v1, v2

    const/16 v2, 0xa

    aput v3, v1, v2

    const/16 v2, 0xb

    aput v3, v1, v2

    const/16 v2, 0xc

    aput p1, v1, v2

    const/16 v2, 0xd

    aput v3, v1, v2

    const/16 v2, 0xe

    aput p0, v1, v2

    const/16 v2, 0xf

    aput v3, v1, v2

    const/16 v2, 0x10

    aput v3, v1, v2

    const/16 v2, 0x11

    aput v3, v1, v2

    const/16 v2, 0x12

    aput p1, v1, v2

    const/16 v2, 0x13

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrix;->set([F)V

    .line 28
    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v1, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    return-object v1
.end method

.method public static getDefaultColor()Landroid/graphics/ColorMatrixColorFilter;
    .locals 2

    .prologue
    .line 48
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lcom/lge/camera/util/ColorUtil;->getBrightnessAndContrast(FF)Landroid/graphics/ColorMatrixColorFilter;

    move-result-object v0

    return-object v0
.end method

.method public static getDimColor()Landroid/graphics/ColorMatrixColorFilter;
    .locals 2

    .prologue
    .line 32
    const/high16 v0, 0x42480000    # 50.0f

    const v1, 0x3f19999a    # 0.6f

    invoke-static {v0, v1}, Lcom/lge/camera/util/ColorUtil;->getBrightnessAndContrast(FF)Landroid/graphics/ColorMatrixColorFilter;

    move-result-object v0

    return-object v0
.end method

.method public static getDimColorExpand()Landroid/graphics/ColorMatrixColorFilter;
    .locals 2

    .prologue
    .line 40
    const/high16 v0, 0x428c0000    # 70.0f

    const v1, 0x3e4ccccd    # 0.2f

    invoke-static {v0, v1}, Lcom/lge/camera/util/ColorUtil;->getBrightnessAndContrast(FF)Landroid/graphics/ColorMatrixColorFilter;

    move-result-object v0

    return-object v0
.end method

.method public static getEnteringQFLColor()Landroid/graphics/ColorMatrixColorFilter;
    .locals 2

    .prologue
    .line 44
    const/high16 v0, 0x43160000    # 150.0f

    const v1, 0x3f19999a    # 0.6f

    invoke-static {v0, v1}, Lcom/lge/camera/util/ColorUtil;->getBrightnessAndContrast(FF)Landroid/graphics/ColorMatrixColorFilter;

    move-result-object v0

    return-object v0
.end method

.method public static getItemColor(I)I
    .locals 4
    .param p0, "type"    # I

    .prologue
    const/16 v3, 0xff

    const/16 v1, 0xbe

    const/4 v0, -0x1

    .line 185
    packed-switch p0, :pswitch_data_0

    .line 205
    const/high16 v0, -0x1000000

    :goto_0
    :pswitch_0
    return v0

    .line 193
    :pswitch_1
    invoke-static {v3, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    goto :goto_0

    .line 199
    :pswitch_2
    const/16 v0, 0x33

    const/16 v1, 0x38

    const/16 v2, 0x3b

    invoke-static {v3, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    goto :goto_0

    .line 202
    :pswitch_3
    const/4 v0, 0x0

    const/16 v1, 0x4e

    const/16 v2, 0x60

    invoke-static {v3, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    goto :goto_0

    .line 185
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getQuickButtonDimColor()Landroid/graphics/ColorMatrixColorFilter;
    .locals 2

    .prologue
    .line 36
    const/high16 v0, -0x3de00000    # -40.0f

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-static {v0, v1}, Lcom/lge/camera/util/ColorUtil;->getBrightnessAndContrast(FF)Landroid/graphics/ColorMatrixColorFilter;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getSettingMenuDimColor()I
    .locals 4

    .prologue
    .line 181
    const/16 v0, 0xff

    const/16 v1, 0x33

    const/16 v2, 0x38

    const/16 v3, 0x3b

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method
