.class public Lcom/lge/camera/components/RotateTextView;
.super Lcom/lge/camera/components/RotateView;
.source "RotateTextView.java"


# instance fields
.field private mPortrait:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lge/camera/components/RotateTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/lge/camera/components/RotateTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/camera/components/RotateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/components/RotateTextView;->mPortrait:Z

    .line 35
    const v0, 0x3e4ccccd    # 0.2f

    iput v0, p0, Lcom/lge/camera/components/RotateTextView;->BASE_TEXT_PADDING_RATE:F

    .line 36
    return-void
.end method

.method private getDesiredHeight()I
    .locals 4

    .prologue
    .line 152
    iget-object v2, p0, Lcom/lge/camera/components/RotateTextView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontSpacing()F

    move-result v0

    .line 153
    .local v0, "textHeight":F
    const/4 v1, 0x0

    .line 154
    .local v1, "totalTextLineHeight":F
    iget-object v2, p0, Lcom/lge/camera/components/RotateTextView;->mTextLines:[Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 155
    iget-object v2, p0, Lcom/lge/camera/components/RotateTextView;->mTextLines:[Ljava/lang/String;

    array-length v2, v2

    int-to-float v2, v2

    mul-float v1, v0, v2

    .line 156
    iget v2, p0, Lcom/lge/camera/components/RotateTextView;->mTextPaddingTop:I

    int-to-float v2, v2

    iget v3, p0, Lcom/lge/camera/components/RotateTextView;->mTextBasePadding:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/lge/camera/components/RotateTextView;->mTextPaddingBottom:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, p0, Lcom/lge/camera/components/RotateTextView;->mTextBasePadding:F

    add-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 160
    :cond_0
    float-to-int v2, v1

    return v2
.end method

.method private getDesiredWidth()I
    .locals 5

    .prologue
    .line 136
    const/4 v2, 0x0

    .line 137
    .local v2, "width":F
    iget-object v3, p0, Lcom/lge/camera/components/RotateTextView;->mTextLines:[Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 138
    const/4 v1, 0x0

    .line 139
    .local v1, "textWidth":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/lge/camera/components/RotateTextView;->mTextLines:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 140
    iget-object v3, p0, Lcom/lge/camera/components/RotateTextView;->mTextPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/lge/camera/components/RotateTextView;->mTextLines:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 141
    const v3, 0x3db851ec    # 0.09f

    mul-float/2addr v3, v1

    add-float/2addr v1, v3

    .line 142
    iget v3, p0, Lcom/lge/camera/components/RotateTextView;->mTextPaddingLeft:I

    int-to-float v3, v3

    iget v4, p0, Lcom/lge/camera/components/RotateTextView;->mTextBasePadding:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/lge/camera/components/RotateTextView;->mTextPaddingRight:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget v4, p0, Lcom/lge/camera/components/RotateTextView;->mTextBasePadding:F

    add-float/2addr v3, v4

    add-float/2addr v1, v3

    .line 144
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 139
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 148
    .end local v0    # "i":I
    .end local v1    # "textWidth":F
    :cond_0
    float-to-int v3, v2

    return v3
.end method

.method private mergeStrings([Ljava/lang/String;)Ljava/lang/StringBuffer;
    .locals 3
    .param p1, "strings"    # [Ljava/lang/String;

    .prologue
    .line 177
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 178
    .local v1, "mergedText":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/lge/camera/components/RotateTextView;->mTextLines:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 179
    if-eqz v0, :cond_0

    .line 180
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 182
    :cond_0
    iget-object v2, p0, Lcom/lge/camera/components/RotateTextView;->mTextLines:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 178
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 185
    :cond_1
    return-object v1
.end method

.method private setTextLines([Ljava/lang/String;)V
    .locals 3
    .param p1, "textLines"    # [Ljava/lang/String;

    .prologue
    .line 164
    if-eqz p1, :cond_1

    .line 165
    iput-object p1, p0, Lcom/lge/camera/components/RotateTextView;->mTextLines:[Ljava/lang/String;

    .line 166
    iget-object v1, p0, Lcom/lge/camera/components/RotateTextView;->mTextLines:[Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 167
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/lge/camera/components/RotateTextView;->mTextLines:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 168
    iget-object v1, p0, Lcom/lge/camera/components/RotateTextView;->mPath:[Landroid/graphics/Path;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    .line 169
    iget-object v1, p0, Lcom/lge/camera/components/RotateTextView;->mPath:[Landroid/graphics/Path;

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    aput-object v2, v1, v0

    .line 167
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 174
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private wordWrap(I)[Ljava/lang/String;
    .locals 14
    .param p1, "maxWidth"    # I

    .prologue
    const/16 v13, 0x20

    const/4 v12, 0x5

    const/4 v11, 0x0

    .line 190
    iget-object v8, p0, Lcom/lge/camera/components/RotateTextView;->mTextLines:[Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/lge/camera/components/RotateTextView;->mergeStrings([Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 191
    .local v4, "mergedText":Ljava/lang/StringBuffer;
    int-to-float v8, p1

    iget v9, p0, Lcom/lge/camera/components/RotateTextView;->mTextPaddingLeft:I

    int-to-float v9, v9

    iget v10, p0, Lcom/lge/camera/components/RotateTextView;->mTextBasePadding:F

    add-float/2addr v9, v10

    iget v10, p0, Lcom/lge/camera/components/RotateTextView;->mTextPaddingRight:I

    int-to-float v10, v10

    add-float/2addr v9, v10

    iget v10, p0, Lcom/lge/camera/components/RotateTextView;->mTextBasePadding:F

    add-float/2addr v9, v10

    sub-float/2addr v8, v9

    float-to-int p1, v8

    .line 192
    int-to-float v8, p1

    int-to-float v9, p1

    const v10, 0x3db851ec    # 0.09f

    mul-float/2addr v9, v10

    sub-float/2addr v8, v9

    float-to-int p1, v8

    .line 193
    const/4 v2, 0x0

    .line 194
    .local v2, "lineLength":I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 195
    .local v7, "textLines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    if-lez v8, :cond_2

    if-ge v1, v12, :cond_2

    .line 196
    :goto_1
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    if-lez v8, :cond_0

    invoke-virtual {v4, v11}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v8

    if-ne v8, v13, :cond_0

    .line 197
    invoke-virtual {v4, v11}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 199
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 201
    .local v5, "remainText":Ljava/lang/String;
    new-array v3, v12, [F

    .line 203
    .local v3, "measuredWidth":[F
    add-int/lit8 p1, p1, 0x14

    .line 204
    iget-object v8, p0, Lcom/lge/camera/components/RotateTextView;->mTextPaint:Landroid/graphics/Paint;

    const/4 v9, 0x1

    int-to-float v10, p1

    invoke-virtual {v8, v5, v9, v10, v3}, Landroid/graphics/Paint;->breakText(Ljava/lang/String;ZF[F)I

    move-result v2

    .line 206
    invoke-virtual {v4, v11, v2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, "currentLine":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v2, v8, :cond_1

    .line 208
    invoke-virtual {v0, v13}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 209
    if-gez v2, :cond_1

    .line 210
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 213
    :cond_1
    invoke-virtual {v4, v11, v2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    invoke-virtual {v4, v11, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 195
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 217
    .end local v0    # "currentLine":Ljava/lang/String;
    .end local v3    # "measuredWidth":[F
    .end local v5    # "remainText":Ljava/lang/String;
    :cond_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v6, v8, [Ljava/lang/String;

    .line 218
    .local v6, "result":[Ljava/lang/String;
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 219
    return-object v6
.end method


# virtual methods
.method protected canvasRotate(Landroid/graphics/Canvas;II)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "viewWidth"    # I
    .param p3, "viewHeight"    # I

    .prologue
    const v4, 0x7fffffff

    const/high16 v3, 0x40000000    # 2.0f

    .line 84
    iget v2, p0, Lcom/lge/camera/components/RotateTextView;->mRotatePivotLeft:I

    int-to-float v0, v2

    .line 85
    .local v0, "pivotX":F
    iget v2, p0, Lcom/lge/camera/components/RotateTextView;->mRotatePivotTop:I

    int-to-float v1, v2

    .line 87
    .local v1, "pivotY":F
    iget v2, p0, Lcom/lge/camera/components/RotateTextView;->mRotatePivotLeft:I

    if-ne v2, v4, :cond_0

    .line 88
    int-to-float v2, p2

    div-float v0, v2, v3

    .line 90
    :cond_0
    iget v2, p0, Lcom/lge/camera/components/RotateTextView;->mRotatePivotTop:I

    if-ne v2, v4, :cond_1

    .line 91
    int-to-float v2, p3

    div-float v1, v2, v3

    .line 101
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/components/RotateTextView;->mRotationInfo:Lcom/lge/camera/components/RotationInfo;

    invoke-virtual {v2}, Lcom/lge/camera/components/RotationInfo;->getCurrentDegree()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p1, v2, v0, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 102
    return-void
.end method

.method protected checkBackground(Landroid/graphics/Canvas;)Z
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 106
    const/4 v0, 0x1

    return v0
.end method

.method public getTextPaintWidth()I
    .locals 2

    .prologue
    .line 111
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 112
    .local v0, "p":Landroid/graphics/Paint;
    iget v1, p0, Lcom/lge/camera/components/RotateTextView;->mTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 113
    iget-object v1, p0, Lcom/lge/camera/components/RotateTextView;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    return v1
.end method

.method protected onMeasure(II)V
    .locals 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    const/high16 v7, -0x80000000

    .line 40
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 41
    .local v4, "widthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 42
    .local v1, "heightMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 43
    .local v5, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 47
    .local v2, "heightSize":I
    invoke-virtual {p0}, Lcom/lge/camera/components/RotateTextView;->setTextPaint()V

    .line 49
    if-ne v4, v8, :cond_2

    .line 51
    move v3, v5

    .line 64
    .local v3, "width":I
    :cond_0
    :goto_0
    if-ne v1, v8, :cond_5

    .line 66
    move v0, v2

    .line 79
    .local v0, "height":I
    :cond_1
    :goto_1
    invoke-virtual {p0, v3, v0}, Lcom/lge/camera/components/RotateTextView;->setMeasuredDimension(II)V

    .line 80
    return-void

    .line 53
    .end local v0    # "height":I
    .end local v3    # "width":I
    :cond_2
    iget-boolean v6, p0, Lcom/lge/camera/components/RotateTextView;->mPortrait:Z

    if-eqz v6, :cond_4

    invoke-direct {p0}, Lcom/lge/camera/components/RotateTextView;->getDesiredHeight()I

    move-result v3

    .line 54
    .restart local v3    # "width":I
    :goto_2
    if-ne v4, v7, :cond_0

    .line 55
    iget-boolean v6, p0, Lcom/lge/camera/components/RotateTextView;->mPortrait:Z

    if-nez v6, :cond_3

    if-le v3, v5, :cond_3

    .line 56
    invoke-direct {p0, v5}, Lcom/lge/camera/components/RotateTextView;->wordWrap(I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/lge/camera/components/RotateTextView;->mLandscapeTextLines:[Ljava/lang/String;

    .line 57
    iget-object v6, p0, Lcom/lge/camera/components/RotateTextView;->mLandscapeTextLines:[Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/lge/camera/components/RotateTextView;->setTextLines([Ljava/lang/String;)V

    .line 58
    invoke-direct {p0}, Lcom/lge/camera/components/RotateTextView;->getDesiredWidth()I

    move-result v3

    .line 60
    :cond_3
    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_0

    .line 53
    .end local v3    # "width":I
    :cond_4
    invoke-direct {p0}, Lcom/lge/camera/components/RotateTextView;->getDesiredWidth()I

    move-result v3

    goto :goto_2

    .line 68
    .restart local v3    # "width":I
    :cond_5
    iget-boolean v6, p0, Lcom/lge/camera/components/RotateTextView;->mPortrait:Z

    if-eqz v6, :cond_7

    invoke-direct {p0}, Lcom/lge/camera/components/RotateTextView;->getDesiredWidth()I

    move-result v0

    .line 69
    .restart local v0    # "height":I
    :goto_3
    if-ne v1, v7, :cond_1

    .line 70
    iget-boolean v6, p0, Lcom/lge/camera/components/RotateTextView;->mPortrait:Z

    if-eqz v6, :cond_6

    if-le v0, v2, :cond_6

    .line 71
    invoke-direct {p0, v2}, Lcom/lge/camera/components/RotateTextView;->wordWrap(I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/lge/camera/components/RotateTextView;->mPortraitTextLines:[Ljava/lang/String;

    .line 72
    iget-object v6, p0, Lcom/lge/camera/components/RotateTextView;->mPortraitTextLines:[Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/lge/camera/components/RotateTextView;->setTextLines([Ljava/lang/String;)V

    .line 73
    invoke-direct {p0}, Lcom/lge/camera/components/RotateTextView;->getDesiredWidth()I

    move-result v0

    .line 75
    :cond_6
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1

    .line 68
    .end local v0    # "height":I
    :cond_7
    invoke-direct {p0}, Lcom/lge/camera/components/RotateTextView;->getDesiredHeight()I

    move-result v0

    goto :goto_3
.end method

.method public setRotated(I)V
    .locals 2
    .param p1, "degree"    # I

    .prologue
    .line 120
    const/4 v0, 0x0

    .line 121
    .local v0, "portrait":Z
    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    .line 122
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/components/RotateTextView;->mPortraitTextLines:[Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/lge/camera/components/RotateTextView;->setTextLines([Ljava/lang/String;)V

    .line 123
    const/4 v0, 0x1

    .line 129
    :goto_0
    iget-boolean v1, p0, Lcom/lge/camera/components/RotateTextView;->mPortrait:Z

    if-eq v1, v0, :cond_1

    .line 130
    iput-boolean v0, p0, Lcom/lge/camera/components/RotateTextView;->mPortrait:Z

    .line 131
    invoke-virtual {p0}, Lcom/lge/camera/components/RotateTextView;->invalidate()V

    .line 133
    :cond_1
    return-void

    .line 125
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/components/RotateTextView;->mLandscapeTextLines:[Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/lge/camera/components/RotateTextView;->setTextLines([Ljava/lang/String;)V

    .line 126
    const/4 v0, 0x0

    goto :goto_0
.end method
