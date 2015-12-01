.class public abstract Lcom/lge/camera/components/RotateView;
.super Landroid/widget/ImageButton;
.source "RotateView.java"


# static fields
.field public static final BASE_TEXT_SCALE_X_RATE:F = 0.1f

.field protected static final DEBUG_ON:Z = false

.field public static final DEFAULT_TEXT_SCALE_X:F = 1.0f

.field public static final DEFAULT_TEXT_SHADOWRADIUS:F = 2.0f

.field public static final DEFAULT_TEXT_SIZE:I = 0x14

.field public static final ELLIPSIS_STRING:Ljava/lang/String; = "..."

.field public static final GRAVITY_BOTTOM:I = 0x4

.field public static final GRAVITY_CENTER:I = 0x11

.field public static final GRAVITY_CENTER_HORIZONTAL:I = 0x10

.field public static final GRAVITY_CENTER_VERTICAL:I = 0x1

.field public static final GRAVITY_LEFT:I = 0x20

.field public static final GRAVITY_RIGHT:I = 0x40

.field public static final GRAVITY_TOP:I = 0x2

.field public static final MAX_TEXT_LINES:I = 0x5

.field public static final PIVOT_CENTER:I = 0x7fffffff

.field public static final PORTRAIT_TEXT_WIDTH_CORRECTION_RATE:F = 0.09f


# instance fields
.field protected BASE_TEXT_PADDING_RATE:F

.field protected mDebugPaint:Landroid/graphics/Paint;

.field protected mEllipsisEnabled:Z

.field protected mExpand4Rotate:I

.field protected mLandscapeTextLines:[Ljava/lang/String;

.field protected mPath:[Landroid/graphics/Path;

.field protected mPortraitTextLines:[Ljava/lang/String;

.field protected mRotateIconOnly:Z

.field protected mRotateInsideView:Z

.field protected mRotatePivotLeft:I

.field protected mRotatePivotTop:I

.field protected mRotationInfo:Lcom/lge/camera/components/RotationInfo;

.field protected mText:Ljava/lang/String;

.field protected mTextBasePadding:F

.field protected mTextBuffer:Ljava/lang/StringBuffer;

.field protected mTextColor:I

.field protected mTextDisabledShadowColor:I

.field protected mTextGravity:I

.field protected mTextLines:[Ljava/lang/String;

.field protected mTextPaddingBottom:I

.field protected mTextPaddingLeft:I

.field protected mTextPaddingRight:I

.field protected mTextPaddingTop:I

.field protected mTextPaint:Landroid/graphics/Paint;

.field protected mTextScaleX:F

.field protected mTextShadowColor:I

.field protected mTextShadowRadius:F

.field protected mTextSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lge/camera/components/RotateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/lge/camera/components/RotateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const v4, 0x7fffffff

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 89
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    iput v2, p0, Lcom/lge/camera/components/RotateView;->mExpand4Rotate:I

    .line 53
    const v1, 0x3dcccccd    # 0.1f

    iput v1, p0, Lcom/lge/camera/components/RotateView;->BASE_TEXT_PADDING_RATE:F

    .line 54
    const/16 v1, 0x14

    iput v1, p0, Lcom/lge/camera/components/RotateView;->mTextSize:I

    .line 55
    const v1, -0x333334

    iput v1, p0, Lcom/lge/camera/components/RotateView;->mTextColor:I

    .line 56
    iput v2, p0, Lcom/lge/camera/components/RotateView;->mTextPaddingTop:I

    .line 57
    iput v2, p0, Lcom/lge/camera/components/RotateView;->mTextPaddingBottom:I

    .line 58
    iput v2, p0, Lcom/lge/camera/components/RotateView;->mTextPaddingLeft:I

    .line 59
    iput v2, p0, Lcom/lge/camera/components/RotateView;->mTextPaddingRight:I

    .line 60
    const/16 v1, 0x11

    iput v1, p0, Lcom/lge/camera/components/RotateView;->mTextGravity:I

    .line 61
    const/high16 v1, -0x1000000

    iput v1, p0, Lcom/lge/camera/components/RotateView;->mTextShadowColor:I

    .line 62
    const v1, -0xbbbbbc

    iput v1, p0, Lcom/lge/camera/components/RotateView;->mTextDisabledShadowColor:I

    .line 63
    const/high16 v1, 0x40000000    # 2.0f

    iput v1, p0, Lcom/lge/camera/components/RotateView;->mTextShadowRadius:F

    .line 64
    iput-object v3, p0, Lcom/lge/camera/components/RotateView;->mText:Ljava/lang/String;

    .line 65
    iput-object v3, p0, Lcom/lge/camera/components/RotateView;->mTextLines:[Ljava/lang/String;

    .line 66
    iput-object v3, p0, Lcom/lge/camera/components/RotateView;->mLandscapeTextLines:[Ljava/lang/String;

    .line 67
    iput-object v3, p0, Lcom/lge/camera/components/RotateView;->mPortraitTextLines:[Ljava/lang/String;

    .line 68
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v1, p0, Lcom/lge/camera/components/RotateView;->mTextBuffer:Ljava/lang/StringBuffer;

    .line 69
    const/4 v1, 0x5

    new-array v1, v1, [Landroid/graphics/Path;

    iput-object v1, p0, Lcom/lge/camera/components/RotateView;->mPath:[Landroid/graphics/Path;

    .line 70
    iput v4, p0, Lcom/lge/camera/components/RotateView;->mRotatePivotLeft:I

    .line 71
    iput v4, p0, Lcom/lge/camera/components/RotateView;->mRotatePivotTop:I

    .line 72
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/lge/camera/components/RotateView;->mTextPaint:Landroid/graphics/Paint;

    .line 74
    iput-boolean v2, p0, Lcom/lge/camera/components/RotateView;->mEllipsisEnabled:Z

    .line 75
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/lge/camera/components/RotateView;->mTextScaleX:F

    .line 76
    iput-boolean v2, p0, Lcom/lge/camera/components/RotateView;->mRotateInsideView:Z

    .line 77
    iput-boolean v2, p0, Lcom/lge/camera/components/RotateView;->mRotateIconOnly:Z

    .line 78
    new-instance v1, Lcom/lge/camera/components/RotationInfo;

    invoke-direct {v1}, Lcom/lge/camera/components/RotationInfo;-><init>()V

    iput-object v1, p0, Lcom/lge/camera/components/RotateView;->mRotationInfo:Lcom/lge/camera/components/RotationInfo;

    .line 316
    iput-object v3, p0, Lcom/lge/camera/components/RotateView;->mDebugPaint:Landroid/graphics/Paint;

    .line 92
    invoke-virtual {p0, v2}, Lcom/lge/camera/components/RotateView;->setFocusable(Z)V

    .line 93
    invoke-virtual {p0}, Lcom/lge/camera/components/RotateView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/lge/camera/R$styleable;->Rotatable:[I

    invoke-virtual {v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 95
    .local v0, "ta":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0}, Lcom/lge/camera/components/RotateView;->RotateViewInit(Landroid/content/res/TypedArray;)V

    .line 96
    return-void
.end method

.method private RotateViewInit(Landroid/content/res/TypedArray;)V
    .locals 8
    .param p1, "ta"    # Landroid/content/res/TypedArray;

    .prologue
    const v7, 0x7fffffff

    const/4 v6, 0x0

    .line 99
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    .line 100
    .local v0, "N":I
    const/4 v1, 0x0

    .line 101
    .local v1, "attr":I
    const/4 v3, 0x0

    .line 102
    .local v3, "temp":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 103
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .line 104
    packed-switch v1, :pswitch_data_0

    .line 157
    const-string v4, "CameraApp"

    const-string v5, "No matched attr"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 106
    :pswitch_0
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/lge/camera/components/RotateView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 109
    :pswitch_1
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 110
    if-eqz v3, :cond_0

    .line 111
    invoke-virtual {p0, v3}, Lcom/lge/camera/components/RotateView;->setText(Ljava/lang/String;)V

    goto :goto_1

    .line 115
    :pswitch_2
    const/16 v4, 0x14

    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/lge/camera/components/RotateView;->mTextSize:I

    goto :goto_1

    .line 118
    :pswitch_3
    const v4, -0x333334

    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/lge/camera/components/RotateView;->mTextColor:I

    goto :goto_1

    .line 121
    :pswitch_4
    invoke-virtual {p1, v1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Lcom/lge/camera/components/RotateView;->mTextPaddingTop:I

    goto :goto_1

    .line 124
    :pswitch_5
    invoke-virtual {p1, v1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Lcom/lge/camera/components/RotateView;->mTextPaddingBottom:I

    goto :goto_1

    .line 127
    :pswitch_6
    invoke-virtual {p1, v1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Lcom/lge/camera/components/RotateView;->mTextPaddingLeft:I

    goto :goto_1

    .line 130
    :pswitch_7
    invoke-virtual {p1, v1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Lcom/lge/camera/components/RotateView;->mTextPaddingRight:I

    goto :goto_1

    .line 133
    :pswitch_8
    const/16 v4, 0x11

    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/lge/camera/components/RotateView;->mTextGravity:I

    goto :goto_1

    .line 136
    :pswitch_9
    const/high16 v4, -0x1000000

    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/lge/camera/components/RotateView;->mTextShadowColor:I

    goto :goto_1

    .line 139
    :pswitch_a
    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Lcom/lge/camera/components/RotateView;->mTextShadowRadius:F

    goto :goto_1

    .line 142
    :pswitch_b
    invoke-virtual {p1, v1, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Lcom/lge/camera/components/RotateView;->mRotatePivotLeft:I

    goto :goto_1

    .line 145
    :pswitch_c
    invoke-virtual {p1, v1, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Lcom/lge/camera/components/RotateView;->mRotatePivotTop:I

    goto :goto_1

    .line 148
    :pswitch_d
    invoke-virtual {p1, v1, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/lge/camera/components/RotateView;->mEllipsisEnabled:Z

    goto :goto_1

    .line 151
    :pswitch_e
    invoke-virtual {p1, v1, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/lge/camera/components/RotateView;->mRotateInsideView:Z

    goto :goto_1

    .line 154
    :pswitch_f
    invoke-virtual {p1, v1, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/lge/camera/components/RotateView;->mRotateIconOnly:Z

    goto/16 :goto_1

    .line 161
    :cond_1
    iget v4, p0, Lcom/lge/camera/components/RotateView;->mTextSize:I

    int-to-float v4, v4

    iget v5, p0, Lcom/lge/camera/components/RotateView;->BASE_TEXT_PADDING_RATE:F

    mul-float/2addr v4, v5

    iput v4, p0, Lcom/lge/camera/components/RotateView;->mTextBasePadding:F

    .line 162
    return-void

    .line 104
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_e
        :pswitch_f
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method private drawText(Landroid/graphics/Canvas;II)V
    .locals 26
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "viewWidth"    # I
    .param p3, "viewHeight"    # I

    .prologue
    .line 347
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/components/RotateView;->setTextPaint()V

    .line 349
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/RotateView;->mTextPaddingTop:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/RotateView;->mTextBasePadding:F

    move/from16 v23, v0

    add-float v13, v22, v23

    .line 350
    .local v13, "paddingTop":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/RotateView;->mTextPaddingLeft:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/RotateView;->mTextBasePadding:F

    move/from16 v23, v0

    add-float v11, v22, v23

    .line 351
    .local v11, "paddingLeft":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/RotateView;->mTextPaddingBottom:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/RotateView;->mTextBasePadding:F

    move/from16 v23, v0

    add-float v10, v22, v23

    .line 352
    .local v10, "paddingBottom":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/RotateView;->mTextPaddingRight:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/RotateView;->mTextBasePadding:F

    move/from16 v23, v0

    add-float v12, v22, v23

    .line 354
    .local v12, "paddingRight":F
    const/4 v9, 0x0

    .line 355
    .local v9, "maxWidth":F
    const/16 v20, 0x0

    .line 356
    .local v20, "textWidth":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/RotateView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Paint;->getFontSpacing()F

    move-result v17

    .line 358
    .local v17, "textHeight":F
    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v22, v0

    sub-float v22, v22, v13

    sub-float v15, v22, v10

    .line 359
    .local v15, "textAreaHeight":F
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v22, v0

    sub-float v22, v22, v11

    sub-float v16, v22, v12

    .line 360
    .local v16, "textAreaWidth":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/RotateView;->mTextLines:[Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    mul-float v21, v17, v22

    .line 362
    .local v21, "totalTextLineHeight":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/RotateView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Paint;->ascent()F

    move-result v22

    move/from16 v0, v22

    neg-float v5, v0

    .line 363
    .local v5, "aboveBaseLine":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/RotateView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Paint;->descent()F

    move-result v6

    .line 364
    .local v6, "belowBaseLine":F
    const/4 v8, 0x0

    .line 365
    .local v8, "length":I
    const/16 v18, 0x0

    .line 366
    .local v18, "textOffsetX":F
    const/16 v19, 0x0

    .line 367
    .local v19, "textOffsetY":F
    const/4 v14, 0x0

    .line 369
    .local v14, "preventClippingMargin":F
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/RotateView;->mTextLines:[Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v7, v0, :cond_6

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/RotateView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/RotateView;->mTextLines:[Ljava/lang/String;

    move-object/from16 v23, v0

    aget-object v23, v23, v7

    invoke-virtual/range {v22 .. v23}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v20

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/RotateView;->mTextBuffer:Ljava/lang/StringBuffer;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 372
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/camera/components/RotateView;->mEllipsisEnabled:Z

    move/from16 v22, v0

    if-eqz v22, :cond_1

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v22, v0

    add-float v23, v20, v11

    add-float v23, v23, v12

    cmpg-float v22, v22, v23

    if-gez v22, :cond_1

    .line 373
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v22, v0

    sub-float v22, v22, v11

    sub-float v9, v22, v12

    .line 374
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/RotateView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/RotateView;->mTextLines:[Ljava/lang/String;

    move-object/from16 v23, v0

    aget-object v23, v23, v7

    const/16 v24, 0x1

    const/16 v25, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v2, v24

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v9, v3}, Landroid/graphics/Paint;->breakText(Ljava/lang/String;ZF[F)I

    move-result v8

    .line 375
    const/16 v22, 0x2

    move/from16 v0, v22

    if-le v8, v0, :cond_0

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/RotateView;->mTextBuffer:Ljava/lang/StringBuffer;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/RotateView;->mTextLines:[Ljava/lang/String;

    move-object/from16 v23, v0

    aget-object v23, v23, v7

    const/16 v24, 0x0

    add-int/lit8 v25, v8, -0x2

    invoke-virtual/range {v23 .. v25}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/RotateView;->mTextBuffer:Ljava/lang/StringBuffer;

    move-object/from16 v22, v0

    const-string v23, "..."

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/RotateView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/RotateView;->mTextBuffer:Ljava/lang/StringBuffer;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v20

    .line 384
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/RotateView;->mTextGravity:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, 0x2

    if-eqz v22, :cond_2

    .line 385
    add-float v19, v13, v5

    .line 386
    int-to-float v0, v7

    move/from16 v22, v0

    mul-float v22, v22, v17

    add-float v19, v19, v22

    .line 411
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/RotateView;->mTextGravity:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, 0x20

    if-eqz v22, :cond_4

    .line 412
    move/from16 v18, v11

    .line 422
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/RotateView;->BASE_TEXT_PADDING_RATE:F

    move/from16 v22, v0

    mul-float v14, v20, v22

    .line 424
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/RotateView;->mPath:[Landroid/graphics/Path;

    move-object/from16 v22, v0

    aget-object v22, v22, v7

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Path;->reset()V

    .line 425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/RotateView;->mPath:[Landroid/graphics/Path;

    move-object/from16 v22, v0

    aget-object v22, v22, v7

    move-object/from16 v0, v22

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 426
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/RotateView;->mPath:[Landroid/graphics/Path;

    move-object/from16 v22, v0

    aget-object v22, v22, v7

    add-float v23, v18, v20

    add-float v23, v23, v14

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/RotateView;->mTextBuffer:Ljava/lang/StringBuffer;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/RotateView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move/from16 v2, v18

    move/from16 v3, v19

    move-object/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 369
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 381
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/RotateView;->mTextBuffer:Ljava/lang/StringBuffer;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/RotateView;->mTextLines:[Ljava/lang/String;

    move-object/from16 v23, v0

    aget-object v23, v23, v7

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 388
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/RotateView;->mTextGravity:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, 0x4

    if-eqz v22, :cond_3

    .line 389
    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v22, v0

    sub-float v22, v22, v10

    sub-float v19, v22, v6

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/RotateView;->mTextLines:[Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    add-int/lit8 v22, v22, -0x1

    sub-int v22, v22, v7

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    mul-float v22, v22, v17

    sub-float v19, v19, v22

    goto/16 :goto_2

    .line 394
    :cond_3
    sub-float v22, v15, v21

    const/high16 v23, 0x40000000    # 2.0f

    div-float v22, v22, v23

    add-float v22, v22, v13

    add-float v19, v22, v5

    .line 396
    int-to-float v0, v7

    move/from16 v22, v0

    mul-float v22, v22, v17

    add-float v19, v19, v22

    goto/16 :goto_2

    .line 414
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/RotateView;->mTextGravity:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, 0x40

    if-eqz v22, :cond_5

    .line 415
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v22, v0

    sub-float v22, v22, v20

    sub-float v18, v22, v12

    goto/16 :goto_3

    .line 419
    :cond_5
    sub-float v22, v16, v20

    const/high16 v23, 0x40000000    # 2.0f

    div-float v22, v22, v23

    add-float v18, v22, v11

    goto/16 :goto_3

    .line 461
    :cond_6
    return-void
.end method


# virtual methods
.method public AdjustFontSize(I)I
    .locals 20
    .param p1, "size"    # I

    .prologue
    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/RotateView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    if-eqz v17, :cond_6

    .line 200
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    .line 201
    .local v14, "targetBound":Landroid/graphics/Rect;
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    .line 202
    .local v12, "sourceBound":Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/components/RotateView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 204
    .local v4, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/RotateView;->mTextPaddingTop:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/RotateView;->mTextBasePadding:F

    move/from16 v18, v0

    add-float v11, v17, v18

    .line 205
    .local v11, "paddingTop":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/RotateView;->mTextPaddingLeft:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/RotateView;->mTextBasePadding:F

    move/from16 v18, v0

    add-float v9, v17, v18

    .line 206
    .local v9, "paddingLeft":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/RotateView;->mTextPaddingBottom:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/RotateView;->mTextBasePadding:F

    move/from16 v18, v0

    add-float v8, v17, v18

    .line 207
    .local v8, "paddingBottom":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/RotateView;->mTextPaddingRight:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/RotateView;->mTextBasePadding:F

    move/from16 v18, v0

    add-float v10, v17, v18

    .line 209
    .local v10, "paddingRight":F
    const/16 v17, 0x0

    move/from16 v0, v17

    iput v0, v14, Landroid/graphics/Rect;->left:I

    .line 210
    const/16 v17, 0x0

    move/from16 v0, v17

    iput v0, v14, Landroid/graphics/Rect;->top:I

    .line 211
    iget v0, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    add-float v18, v9, v10

    sub-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v14, Landroid/graphics/Rect;->right:I

    .line 212
    iget v0, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    add-float v18, v11, v8

    sub-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v14, Landroid/graphics/Rect;->bottom:I

    .line 213
    const/4 v4, 0x0

    .line 215
    const/4 v6, 0x0

    .line 216
    .local v6, "maxLength":I
    const/4 v7, 0x0

    .line 218
    .local v7, "maxString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/components/RotateView;->mTextLines:[Ljava/lang/String;

    .local v2, "arr$":[Ljava/lang/String;
    array-length v5, v2

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v13, v2, v3

    .line 219
    .local v13, "strLine":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v0, v17

    if-le v0, v6, :cond_0

    .line 220
    move-object v7, v13

    .line 221
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v6

    .line 218
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 225
    .end local v13    # "strLine":Ljava/lang/String;
    :cond_1
    if-eqz v7, :cond_5

    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v17

    if-lez v17, :cond_5

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v17

    if-lez v17, :cond_5

    .line 226
    move/from16 v16, p1

    .line 227
    .local v16, "tmpSize":I
    const/16 v15, 0xa

    .line 229
    .local v15, "tmpScaleX":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/RotateView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Paint;->getTextScaleX()F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/camera/components/RotateView;->mTextScaleX:F

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/RotateView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/RotateView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/RotateView;->mTextScaleX:F

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/RotateView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v7, v1, v6, v12}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 234
    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 235
    iget v0, v12, Landroid/graphics/Rect;->right:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/RotateView;->BASE_TEXT_PADDING_RATE:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v12, Landroid/graphics/Rect;->right:I

    .line 237
    :goto_1
    invoke-virtual {v14, v12}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v17

    if-nez v17, :cond_2

    .line 238
    const/16 v17, 0x7

    move/from16 v0, v17

    if-ge v15, v0, :cond_3

    .line 248
    :cond_2
    :goto_2
    invoke-virtual {v14, v12}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v17

    if-nez v17, :cond_4

    .line 249
    add-int/lit8 v16, v16, -0x1

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/RotateView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/RotateView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v7, v1, v6, v12}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 252
    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_2

    .line 241
    :cond_3
    add-int/lit8 v15, v15, -0x1

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/RotateView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    int-to-float v0, v15

    move/from16 v18, v0

    const v19, 0x3dcccccd    # 0.1f

    mul-float v18, v18, v19

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/RotateView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v7, v1, v6, v12}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 244
    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 245
    int-to-float v0, v15

    move/from16 v17, v0

    const v18, 0x3dcccccd    # 0.1f

    mul-float v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/camera/components/RotateView;->mTextScaleX:F

    goto :goto_1

    .line 255
    :cond_4
    if-lez v16, :cond_5

    .line 256
    move/from16 p1, v16

    .line 261
    .end local v15    # "tmpScaleX":I
    .end local v16    # "tmpSize":I
    :cond_5
    const/4 v14, 0x0

    .line 264
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v5    # "len$":I
    .end local v6    # "maxLength":I
    .end local v7    # "maxString":Ljava/lang/String;
    .end local v8    # "paddingBottom":F
    .end local v9    # "paddingLeft":F
    .end local v10    # "paddingRight":F
    .end local v11    # "paddingTop":F
    .end local v12    # "sourceBound":Landroid/graphics/Rect;
    .end local v14    # "targetBound":Landroid/graphics/Rect;
    :cond_6
    return p1
.end method

.method public AdjustFontSize()V
    .locals 3

    .prologue
    .line 190
    iget v1, p0, Lcom/lge/camera/components/RotateView;->mTextSize:I

    invoke-virtual {p0, v1}, Lcom/lge/camera/components/RotateView;->AdjustFontSize(I)I

    move-result v0

    .line 191
    .local v0, "textSize":I
    iget v1, p0, Lcom/lge/camera/components/RotateView;->mTextSize:I

    if-eq v0, v1, :cond_0

    .line 192
    iput v0, p0, Lcom/lge/camera/components/RotateView;->mTextSize:I

    .line 193
    iget v1, p0, Lcom/lge/camera/components/RotateView;->mTextSize:I

    int-to-float v1, v1

    iget v2, p0, Lcom/lge/camera/components/RotateView;->BASE_TEXT_PADDING_RATE:F

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/lge/camera/components/RotateView;->mTextBasePadding:F

    .line 194
    invoke-virtual {p0}, Lcom/lge/camera/components/RotateView;->invalidate()V

    .line 196
    :cond_0
    return-void
.end method

.method protected abstract canvasRotate(Landroid/graphics/Canvas;II)V
.end method

.method protected abstract checkBackground(Landroid/graphics/Canvas;)Z
.end method

.method public getDegree()I
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/lge/camera/components/RotateView;->mRotationInfo:Lcom/lge/camera/components/RotationInfo;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/lge/camera/components/RotateView;->mRotationInfo:Lcom/lge/camera/components/RotationInfo;

    invoke-virtual {v0}, Lcom/lge/camera/components/RotationInfo;->getTargetDegree()I

    move-result v0

    .line 313
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/lge/camera/components/RotateView;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public getTextPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 511
    iget-object v0, p0, Lcom/lge/camera/components/RotateView;->mTextPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getTextPaintHeight()I
    .locals 6

    .prologue
    .line 498
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 499
    .local v0, "p":Landroid/graphics/Paint;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 500
    .local v1, "textBounds":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/lge/camera/components/RotateView;->mText:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/lge/camera/components/RotateView;->mText:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v0, v3, v4, v5, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 501
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 503
    .local v2, "textHeight":I
    return v2
.end method

.method public abstract getTextPaintWidth()I
.end method

.method public getTextSize()I
    .locals 1

    .prologue
    .line 507
    iget v0, p0, Lcom/lge/camera/components/RotateView;->mTextSize:I

    return v0
.end method

.method public invalidate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 477
    invoke-virtual {p0}, Lcom/lge/camera/components/RotateView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/lge/camera/components/RotateView;->getHeight()I

    move-result v1

    invoke-virtual {p0, v2, v2, v0, v1}, Lcom/lge/camera/components/RotateView;->invalidate(IIII)V

    .line 478
    return-void
.end method

.method public invalidate(IIII)V
    .locals 4
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    .line 491
    iget v0, p0, Lcom/lge/camera/components/RotateView;->mExpand4Rotate:I

    sub-int v0, p1, v0

    iget v1, p0, Lcom/lge/camera/components/RotateView;->mExpand4Rotate:I

    sub-int v1, p2, v1

    iget v2, p0, Lcom/lge/camera/components/RotateView;->mExpand4Rotate:I

    add-int/2addr v2, p3

    iget v3, p0, Lcom/lge/camera/components/RotateView;->mExpand4Rotate:I

    add-int/2addr v3, p4

    invoke-super {p0, v0, v1, v2, v3}, Landroid/widget/ImageButton;->invalidate(IIII)V

    .line 495
    return-void
.end method

.method public invalidate(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "dirty"    # Landroid/graphics/Rect;

    .prologue
    .line 482
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/lge/camera/components/RotateView;->mExpand4Rotate:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 483
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/lge/camera/components/RotateView;->mExpand4Rotate:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 484
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/lge/camera/components/RotateView;->mExpand4Rotate:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 485
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/lge/camera/components/RotateView;->mExpand4Rotate:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 486
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->invalidate(Landroid/graphics/Rect;)V

    .line 487
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 321
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/lge/camera/components/RotateView;->checkBackground(Landroid/graphics/Canvas;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 343
    :cond_0
    :goto_0
    return-void

    .line 324
    :cond_1
    iget-object v3, p0, Lcom/lge/camera/components/RotateView;->mRotationInfo:Lcom/lge/camera/components/RotationInfo;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/lge/camera/components/RotateView;->mRotationInfo:Lcom/lge/camera/components/RotationInfo;

    invoke-virtual {v3}, Lcom/lge/camera/components/RotationInfo;->getCurrentDegree()I

    move-result v3

    iget-object v4, p0, Lcom/lge/camera/components/RotateView;->mRotationInfo:Lcom/lge/camera/components/RotationInfo;

    invoke-virtual {v4}, Lcom/lge/camera/components/RotationInfo;->getTargetDegree()I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 326
    iget-object v3, p0, Lcom/lge/camera/components/RotateView;->mRotationInfo:Lcom/lge/camera/components/RotationInfo;

    invoke-virtual {v3}, Lcom/lge/camera/components/RotationInfo;->calcCurrentDegree()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 327
    invoke-virtual {p0}, Lcom/lge/camera/components/RotateView;->invalidate()V

    .line 330
    :cond_2
    invoke-virtual {p0}, Lcom/lge/camera/components/RotateView;->getWidth()I

    move-result v2

    .line 331
    .local v2, "viewWidth":I
    invoke-virtual {p0}, Lcom/lge/camera/components/RotateView;->getHeight()I

    move-result v1

    .line 333
    .local v1, "viewHeight":I
    invoke-virtual {p0, p1, v2, v1}, Lcom/lge/camera/components/RotateView;->canvasRotate(Landroid/graphics/Canvas;II)V

    .line 334
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 336
    iget-object v3, p0, Lcom/lge/camera/components/RotateView;->mText:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 337
    invoke-direct {p0, p1, v2, v1}, Lcom/lge/camera/components/RotateView;->drawText(Landroid/graphics/Canvas;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 339
    .end local v1    # "viewHeight":I
    .end local v2    # "viewWidth":I
    :catch_0
    move-exception v0

    .line 340
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "CameraApp"

    const-string v4, "RotateImageButton onDraw exception: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setDegree(I)V
    .locals 1
    .param p1, "degree"    # I

    .prologue
    .line 299
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/lge/camera/components/RotateView;->setDegree(IZ)V

    .line 300
    return-void
.end method

.method public setDegree(IZ)V
    .locals 1
    .param p1, "degree"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 303
    iget-object v0, p0, Lcom/lge/camera/components/RotateView;->mRotationInfo:Lcom/lge/camera/components/RotationInfo;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/lge/camera/components/RotateView;->mRotationInfo:Lcom/lge/camera/components/RotationInfo;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/components/RotationInfo;->setDegree(IZ)V

    .line 306
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/components/RotateView;->invalidate()V

    .line 307
    return-void
.end method

.method public setRotateInsideView(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 294
    iput-boolean p1, p0, Lcom/lge/camera/components/RotateView;->mRotateInsideView:Z

    .line 295
    invoke-virtual {p0}, Lcom/lge/camera/components/RotateView;->invalidate()V

    .line 296
    return-void
.end method

.method public abstract setRotated(I)V
.end method

.method public setText(Ljava/lang/String;)V
    .locals 3
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 169
    if-nez p1, :cond_1

    .line 170
    const-string v1, ""

    iput-object v1, p0, Lcom/lge/camera/components/RotateView;->mText:Ljava/lang/String;

    .line 175
    :goto_0
    iget-object v1, p0, Lcom/lge/camera/components/RotateView;->mText:Ljava/lang/String;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/camera/components/RotateView;->mTextLines:[Ljava/lang/String;

    .line 177
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/lge/camera/components/RotateView;->mTextLines:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 178
    iget-object v1, p0, Lcom/lge/camera/components/RotateView;->mPath:[Landroid/graphics/Path;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    .line 179
    iget-object v1, p0, Lcom/lge/camera/components/RotateView;->mPath:[Landroid/graphics/Path;

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    aput-object v2, v1, v0

    .line 177
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 173
    .end local v0    # "i":I
    :cond_1
    iput-object p1, p0, Lcom/lge/camera/components/RotateView;->mText:Ljava/lang/String;

    goto :goto_0

    .line 182
    .restart local v0    # "i":I
    :cond_2
    invoke-virtual {p0}, Lcom/lge/camera/components/RotateView;->setTextPaint()V

    .line 183
    iget-object v1, p0, Lcom/lge/camera/components/RotateView;->mTextLines:[Ljava/lang/String;

    iput-object v1, p0, Lcom/lge/camera/components/RotateView;->mLandscapeTextLines:[Ljava/lang/String;

    .line 185
    invoke-virtual {p0}, Lcom/lge/camera/components/RotateView;->requestLayout()V

    .line 186
    invoke-virtual {p0}, Lcom/lge/camera/components/RotateView;->invalidate()V

    .line 187
    return-void
.end method

.method public setTextColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 274
    iput p1, p0, Lcom/lge/camera/components/RotateView;->mTextColor:I

    .line 275
    invoke-virtual {p0}, Lcom/lge/camera/components/RotateView;->invalidate()V

    .line 276
    return-void
.end method

.method public setTextGravity(I)V
    .locals 0
    .param p1, "gravity"    # I

    .prologue
    .line 279
    iput p1, p0, Lcom/lge/camera/components/RotateView;->mTextGravity:I

    .line 280
    invoke-virtual {p0}, Lcom/lge/camera/components/RotateView;->invalidate()V

    .line 281
    return-void
.end method

.method protected setTextPaint()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 464
    iget-object v0, p0, Lcom/lge/camera/components/RotateView;->mTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/lge/camera/components/RotateView;->mTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 465
    iget-object v0, p0, Lcom/lge/camera/components/RotateView;->mTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/lge/camera/components/RotateView;->mTextScaleX:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 466
    iget-object v0, p0, Lcom/lge/camera/components/RotateView;->mTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/lge/camera/components/RotateView;->mTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 467
    iget-object v0, p0, Lcom/lge/camera/components/RotateView;->mTextPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 468
    iget-object v0, p0, Lcom/lge/camera/components/RotateView;->mTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/lge/camera/components/RotateView;->mTextShadowRadius:F

    iget v2, p0, Lcom/lge/camera/components/RotateView;->mTextShadowColor:I

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 469
    invoke-virtual {p0}, Lcom/lge/camera/components/RotateView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/lge/camera/components/RotateView;->mTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/lge/camera/components/RotateView;->mTextShadowRadius:F

    iget v2, p0, Lcom/lge/camera/components/RotateView;->mTextDisabledShadowColor:I

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 473
    :cond_0
    return-void
.end method

.method public setTextScaleX(F)V
    .locals 0
    .param p1, "scaleX"    # F

    .prologue
    .line 515
    iput p1, p0, Lcom/lge/camera/components/RotateView;->mTextScaleX:F

    .line 516
    invoke-virtual {p0}, Lcom/lge/camera/components/RotateView;->invalidate()V

    .line 517
    return-void
.end method

.method public setTextShadowColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 284
    iput p1, p0, Lcom/lge/camera/components/RotateView;->mTextShadowColor:I

    .line 285
    invoke-virtual {p0}, Lcom/lge/camera/components/RotateView;->invalidate()V

    .line 286
    return-void
.end method

.method public setTextShadowRadius(F)V
    .locals 0
    .param p1, "radius"    # F

    .prologue
    .line 289
    iput p1, p0, Lcom/lge/camera/components/RotateView;->mTextShadowRadius:F

    .line 290
    invoke-virtual {p0}, Lcom/lge/camera/components/RotateView;->invalidate()V

    .line 291
    return-void
.end method

.method public setTextSize(I)V
    .locals 2
    .param p1, "size"    # I

    .prologue
    .line 268
    invoke-virtual {p0, p1}, Lcom/lge/camera/components/RotateView;->AdjustFontSize(I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/components/RotateView;->mTextSize:I

    .line 269
    iget v0, p0, Lcom/lge/camera/components/RotateView;->mTextSize:I

    int-to-float v0, v0

    iget v1, p0, Lcom/lge/camera/components/RotateView;->BASE_TEXT_PADDING_RATE:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/lge/camera/components/RotateView;->mTextBasePadding:F

    .line 270
    invoke-virtual {p0}, Lcom/lge/camera/components/RotateView;->invalidate()V

    .line 271
    return-void
.end method

.method public setTextStyle(I)V
    .locals 7
    .param p1, "style"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 520
    const/4 v1, 0x0

    .line 521
    .local v1, "tf":Landroid/graphics/Typeface;
    if-lez p1, :cond_3

    .line 522
    invoke-static {p1}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v1

    .line 524
    iget-object v5, p0, Lcom/lge/camera/components/RotateView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 526
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Typeface;->getStyle()I

    move-result v2

    .line 527
    .local v2, "typefaceStyle":I
    :goto_0
    xor-int/lit8 v5, v2, -0x1

    and-int v0, p1, v5

    .line 528
    .local v0, "need":I
    iget-object v5, p0, Lcom/lge/camera/components/RotateView;->mTextPaint:Landroid/graphics/Paint;

    and-int/lit8 v6, v0, 0x1

    if-eqz v6, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 529
    iget-object v5, p0, Lcom/lge/camera/components/RotateView;->mTextPaint:Landroid/graphics/Paint;

    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_2

    const/high16 v3, -0x41800000    # -0.25f

    :goto_1
    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setTextSkewX(F)V

    .line 535
    .end local v0    # "need":I
    .end local v2    # "typefaceStyle":I
    :goto_2
    invoke-virtual {p0}, Lcom/lge/camera/components/RotateView;->invalidate()V

    .line 537
    return-void

    :cond_1
    move v2, v3

    .line 526
    goto :goto_0

    .restart local v0    # "need":I
    .restart local v2    # "typefaceStyle":I
    :cond_2
    move v3, v4

    .line 529
    goto :goto_1

    .line 531
    .end local v0    # "need":I
    .end local v2    # "typefaceStyle":I
    :cond_3
    iget-object v5, p0, Lcom/lge/camera/components/RotateView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 532
    iget-object v3, p0, Lcom/lge/camera/components/RotateView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSkewX(F)V

    .line 533
    iget-object v3, p0, Lcom/lge/camera/components/RotateView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_2
.end method
