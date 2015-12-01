.class public Lcom/lge/camera/components/SwitcherLever;
.super Landroid/widget/ImageView;
.source "SwitcherLever.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/camera/components/SwitcherLever$OnSwitchLeverListener;
    }
.end annotation


# static fields
.field protected static final MINIMUM_ANIMATION_DELTA_TIME:I = 0xa

.field protected static final NO_ANIMATION:J = -0x1L


# instance fields
.field protected mAnimationParkingStartTime:J

.field protected mBgAlpha:I

.field protected mListener:Lcom/lge/camera/components/SwitcherLever$OnSwitchLeverListener;

.field protected mPosition:I

.field protected mRotationInfo:Lcom/lge/camera/components/RotationInfo;

.field protected mSwitch:Z

.field protected mSwitchEnable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 64
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 54
    iput-boolean v2, p0, Lcom/lge/camera/components/SwitcherLever;->mSwitch:Z

    .line 55
    iput v2, p0, Lcom/lge/camera/components/SwitcherLever;->mPosition:I

    .line 57
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lge/camera/components/SwitcherLever;->mAnimationParkingStartTime:J

    .line 59
    const/16 v0, 0xff

    iput v0, p0, Lcom/lge/camera/components/SwitcherLever;->mBgAlpha:I

    .line 60
    iput-boolean v2, p0, Lcom/lge/camera/components/SwitcherLever;->mSwitchEnable:Z

    .line 61
    new-instance v0, Lcom/lge/camera/components/RotationInfo;

    invoke-direct {v0}, Lcom/lge/camera/components/RotationInfo;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/components/SwitcherLever;->mRotationInfo:Lcom/lge/camera/components/RotationInfo;

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 68
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    iput-boolean v2, p0, Lcom/lge/camera/components/SwitcherLever;->mSwitch:Z

    .line 55
    iput v2, p0, Lcom/lge/camera/components/SwitcherLever;->mPosition:I

    .line 57
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lge/camera/components/SwitcherLever;->mAnimationParkingStartTime:J

    .line 59
    const/16 v0, 0xff

    iput v0, p0, Lcom/lge/camera/components/SwitcherLever;->mBgAlpha:I

    .line 60
    iput-boolean v2, p0, Lcom/lge/camera/components/SwitcherLever;->mSwitchEnable:Z

    .line 61
    new-instance v0, Lcom/lge/camera/components/RotationInfo;

    invoke-direct {v0}, Lcom/lge/camera/components/RotationInfo;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/components/SwitcherLever;->mRotationInfo:Lcom/lge/camera/components/RotationInfo;

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    .line 72
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    iput-boolean v2, p0, Lcom/lge/camera/components/SwitcherLever;->mSwitch:Z

    .line 55
    iput v2, p0, Lcom/lge/camera/components/SwitcherLever;->mPosition:I

    .line 57
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lge/camera/components/SwitcherLever;->mAnimationParkingStartTime:J

    .line 59
    const/16 v0, 0xff

    iput v0, p0, Lcom/lge/camera/components/SwitcherLever;->mBgAlpha:I

    .line 60
    iput-boolean v2, p0, Lcom/lge/camera/components/SwitcherLever;->mSwitchEnable:Z

    .line 61
    new-instance v0, Lcom/lge/camera/components/RotationInfo;

    invoke-direct {v0}, Lcom/lge/camera/components/RotationInfo;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/components/SwitcherLever;->mRotationInfo:Lcom/lge/camera/components/RotationInfo;

    .line 73
    return-void
.end method


# virtual methods
.method public addTouchView(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 276
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 277
    return-void
.end method

.method protected getAniPositionAvailable(I)I
    .locals 2
    .param p1, "drawablePosition"    # I

    .prologue
    .line 247
    invoke-virtual {p0}, Lcom/lge/camera/components/SwitcherLever;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/lge/camera/components/SwitcherLever;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/lge/camera/components/SwitcherLever;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    sub-int/2addr v0, p1

    return v0
.end method

.method protected getTouchPositionAvailable()I
    .locals 2

    .prologue
    .line 313
    invoke-virtual {p0}, Lcom/lge/camera/components/SwitcherLever;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/lge/camera/components/SwitcherLever;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/lge/camera/components/SwitcherLever;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/lge/camera/components/SwitcherLever;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 111
    invoke-super {p0}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/components/SwitcherLever;->isPressed()Z

    move-result v0

    goto :goto_0
.end method

.method public isSwitcherPressed()Z
    .locals 1

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/lge/camera/components/SwitcherLever;->isPressed()Z

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v7, 0x0

    .line 216
    const/4 v6, -0x2

    invoke-virtual {p0, v6, v7, v7, v7}, Lcom/lge/camera/components/SwitcherLever;->setPaddingRelative(IIII)V

    .line 217
    invoke-virtual {p0}, Lcom/lge/camera/components/SwitcherLever;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 218
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 219
    .local v1, "drawableHeight":I
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 221
    .local v2, "drawableWidth":I
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    iget-object v6, p0, Lcom/lge/camera/components/SwitcherLever;->mRotationInfo:Lcom/lge/camera/components/RotationInfo;

    if-nez v6, :cond_1

    .line 244
    :cond_0
    :goto_0
    return-void

    .line 225
    :cond_1
    iget-wide v6, p0, Lcom/lge/camera/components/SwitcherLever;->mAnimationParkingStartTime:J

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-eqz v6, :cond_2

    .line 226
    invoke-virtual {p0, v1}, Lcom/lge/camera/components/SwitcherLever;->setAnimationStartTime(I)V

    .line 229
    :cond_2
    invoke-virtual {p0}, Lcom/lge/camera/components/SwitcherLever;->getPaddingTop()I

    move-result v6

    iget v7, p0, Lcom/lge/camera/components/SwitcherLever;->mPosition:I

    add-int v4, v6, v7

    .line 230
    .local v4, "offsetTop":I
    invoke-virtual {p0}, Lcom/lge/camera/components/SwitcherLever;->getWidth()I

    move-result v6

    sub-int/2addr v6, v2

    invoke-virtual {p0}, Lcom/lge/camera/components/SwitcherLever;->getPaddingStart()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/lge/camera/components/SwitcherLever;->getPaddingEnd()I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v3, v6, 0x2

    .line 232
    .local v3, "offsetLeft":I
    iget-object v6, p0, Lcom/lge/camera/components/SwitcherLever;->mRotationInfo:Lcom/lge/camera/components/RotationInfo;

    invoke-virtual {v6}, Lcom/lge/camera/components/RotationInfo;->getCurrentDegree()I

    move-result v6

    iget-object v7, p0, Lcom/lge/camera/components/SwitcherLever;->mRotationInfo:Lcom/lge/camera/components/RotationInfo;

    invoke-virtual {v7}, Lcom/lge/camera/components/RotationInfo;->getTargetDegree()I

    move-result v7

    if-eq v6, v7, :cond_3

    iget-object v6, p0, Lcom/lge/camera/components/SwitcherLever;->mRotationInfo:Lcom/lge/camera/components/RotationInfo;

    invoke-virtual {v6}, Lcom/lge/camera/components/RotationInfo;->calcCurrentDegree()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 234
    invoke-virtual {p0}, Lcom/lge/camera/components/SwitcherLever;->invalidate()V

    .line 237
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v5

    .line 238
    .local v5, "saveCount":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 239
    div-int/lit8 v6, v2, 0x2

    add-int/2addr v6, v3

    int-to-float v6, v6

    div-int/lit8 v7, v1, 0x2

    add-int/2addr v7, v4

    int-to-float v7, v7

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 240
    iget-object v6, p0, Lcom/lge/camera/components/SwitcherLever;->mRotationInfo:Lcom/lge/camera/components/RotationInfo;

    invoke-virtual {v6}, Lcom/lge/camera/components/RotationInfo;->getCurrentDegree()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->rotate(F)V

    .line 241
    neg-int v6, v2

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    neg-int v7, v1

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 242
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 243
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 283
    invoke-virtual {p0, p2}, Lcom/lge/camera/components/SwitcherLever;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 284
    const/4 v0, 0x1

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 116
    const/4 v0, 0x2

    .line 117
    .local v0, "divider":I
    const/4 v1, 0x2

    .line 119
    .local v1, "extraMargin":I
    const-string v2, "CameraApp"

    const-string v5, "##MH TOUCH"

    invoke-static {v2, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Lcom/lge/camera/components/SwitcherLever;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/lge/camera/components/SwitcherLever;->mSwitchEnable:Z

    if-nez v2, :cond_2

    .line 121
    :cond_0
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "##MH TOUCH RETURN"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/lge/camera/components/SwitcherLever;->isEnabled()Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "M"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v5, p0, Lcom/lge/camera/components/SwitcherLever;->mSwitchEnable:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v4

    .line 163
    :cond_1
    :goto_0
    return v3

    .line 125
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 127
    :pswitch_0
    const-string v2, "CameraApp"

    const-string v4, "##MH Down"

    invoke-static {v2, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/lge/camera/components/SwitcherLever;->mAnimationParkingStartTime:J

    .line 129
    invoke-virtual {p0, v3}, Lcom/lge/camera/components/SwitcherLever;->setPressed(Z)V

    .line 130
    invoke-virtual {p0, p1}, Lcom/lge/camera/components/SwitcherLever;->trackTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 134
    :pswitch_1
    const-string v2, "CameraApp"

    const-string v4, "##MH Move"

    invoke-static {v2, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Lcom/lge/camera/components/SwitcherLever;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 138
    invoke-virtual {p0, p1}, Lcom/lge/camera/components/SwitcherLever;->trackTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 142
    :pswitch_2
    invoke-virtual {p0}, Lcom/lge/camera/components/SwitcherLever;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 145
    invoke-virtual {p0, p1}, Lcom/lge/camera/components/SwitcherLever;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 147
    iget-boolean v2, p0, Lcom/lge/camera/components/SwitcherLever;->mSwitch:Z

    if-nez v2, :cond_4

    .line 148
    iget v2, p0, Lcom/lge/camera/components/SwitcherLever;->mPosition:I

    invoke-virtual {p0}, Lcom/lge/camera/components/SwitcherLever;->getTouchPositionAvailable()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    if-lt v2, v5, :cond_3

    move v2, v3

    :goto_1
    invoke-virtual {p0, v2}, Lcom/lge/camera/components/SwitcherLever;->tryToSetSwitch(Z)V

    .line 152
    :goto_2
    invoke-virtual {p0, v4}, Lcom/lge/camera/components/SwitcherLever;->setPressed(Z)V

    goto :goto_0

    :cond_3
    move v2, v4

    .line 148
    goto :goto_1

    .line 150
    :cond_4
    iget v2, p0, Lcom/lge/camera/components/SwitcherLever;->mPosition:I

    invoke-virtual {p0}, Lcom/lge/camera/components/SwitcherLever;->getTouchPositionAvailable()I

    move-result v5

    add-int/lit8 v5, v5, 0x2

    div-int/lit8 v5, v5, 0x2

    if-le v2, v5, :cond_5

    move v2, v3

    :goto_3
    invoke-virtual {p0, v2}, Lcom/lge/camera/components/SwitcherLever;->tryToSetSwitch(Z)V

    goto :goto_2

    :cond_5
    move v2, v4

    goto :goto_3

    .line 156
    :pswitch_3
    invoke-virtual {p0}, Lcom/lge/camera/components/SwitcherLever;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 159
    iget-boolean v2, p0, Lcom/lge/camera/components/SwitcherLever;->mSwitch:Z

    invoke-virtual {p0, v2}, Lcom/lge/camera/components/SwitcherLever;->tryToSetSwitch(Z)V

    .line 160
    invoke-virtual {p0, v4}, Lcom/lge/camera/components/SwitcherLever;->setPressed(Z)V

    goto :goto_0

    .line 125
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public resetSwitcherLever(Z)V
    .locals 5
    .param p1, "onOff"    # Z

    .prologue
    const/4 v4, 0x0

    .line 167
    iput-boolean p1, p0, Lcom/lge/camera/components/SwitcherLever;->mSwitch:Z

    .line 168
    invoke-virtual {p0, v4}, Lcom/lge/camera/components/SwitcherLever;->setPressed(Z)V

    .line 170
    invoke-virtual {p0}, Lcom/lge/camera/components/SwitcherLever;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 171
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/lge/camera/components/SwitcherLever;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/lge/camera/components/SwitcherLever;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/lge/camera/components/SwitcherLever;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sub-int v0, v2, v3

    .line 174
    .local v0, "available":I
    iget-boolean v2, p0, Lcom/lge/camera/components/SwitcherLever;->mSwitch:Z

    if-eqz v2, :cond_0

    .line 175
    iput v0, p0, Lcom/lge/camera/components/SwitcherLever;->mPosition:I

    .line 179
    :goto_0
    invoke-virtual {p0}, Lcom/lge/camera/components/SwitcherLever;->invalidate()V

    .line 180
    return-void

    .line 177
    :cond_0
    iput v4, p0, Lcom/lge/camera/components/SwitcherLever;->mPosition:I

    goto :goto_0
.end method

.method protected setAnimationStartTime(I)V
    .locals 12
    .param p1, "drawableHeight"    # I

    .prologue
    .line 251
    invoke-virtual {p0, p1}, Lcom/lge/camera/components/SwitcherLever;->getAniPositionAvailable(I)I

    move-result v0

    .line 252
    .local v0, "available":I
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    .line 253
    .local v4, "time":J
    iget-wide v6, p0, Lcom/lge/camera/components/SwitcherLever;->mAnimationParkingStartTime:J

    sub-long v2, v4, v6

    .line 255
    .local v2, "deltaTime":J
    const-wide/16 v6, 0xa

    cmp-long v1, v2, v6

    if-gez v1, :cond_0

    .line 256
    const-wide/16 v2, 0xa

    .line 259
    :cond_0
    iget v1, p0, Lcom/lge/camera/components/SwitcherLever;->mPosition:I

    int-to-long v6, v1

    const-wide/16 v8, 0xf0

    iget-boolean v1, p0, Lcom/lge/camera/components/SwitcherLever;->mSwitch:Z

    if-eqz v1, :cond_3

    .end local v2    # "deltaTime":J
    :goto_0
    mul-long/2addr v8, v2

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    add-long/2addr v6, v8

    long-to-int v1, v6

    iput v1, p0, Lcom/lge/camera/components/SwitcherLever;->mPosition:I

    .line 260
    iput-wide v4, p0, Lcom/lge/camera/components/SwitcherLever;->mAnimationParkingStartTime:J

    .line 262
    iget v1, p0, Lcom/lge/camera/components/SwitcherLever;->mPosition:I

    if-gez v1, :cond_1

    .line 263
    const/4 v1, 0x0

    iput v1, p0, Lcom/lge/camera/components/SwitcherLever;->mPosition:I

    .line 265
    :cond_1
    iget v1, p0, Lcom/lge/camera/components/SwitcherLever;->mPosition:I

    if-le v1, v0, :cond_2

    .line 266
    iput v0, p0, Lcom/lge/camera/components/SwitcherLever;->mPosition:I

    .line 268
    :cond_2
    iget v1, p0, Lcom/lge/camera/components/SwitcherLever;->mPosition:I

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/lge/camera/components/SwitcherLever;->mPosition:I

    if-eq v1, v0, :cond_4

    .line 269
    invoke-virtual {p0}, Lcom/lge/camera/components/SwitcherLever;->postInvalidate()V

    .line 273
    :goto_1
    return-void

    .line 259
    .restart local v2    # "deltaTime":J
    :cond_3
    neg-long v2, v2

    goto :goto_0

    .line 271
    .end local v2    # "deltaTime":J
    :cond_4
    const-wide/16 v6, -0x1

    iput-wide v6, p0, Lcom/lge/camera/components/SwitcherLever;->mAnimationParkingStartTime:J

    goto :goto_1
.end method

.method public setDegree(I)V
    .locals 1
    .param p1, "degree"    # I

    .prologue
    .line 204
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/lge/camera/components/SwitcherLever;->setDegree(IZ)V

    .line 205
    return-void
.end method

.method public setDegree(IZ)V
    .locals 1
    .param p1, "degree"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 208
    iget-object v0, p0, Lcom/lge/camera/components/SwitcherLever;->mRotationInfo:Lcom/lge/camera/components/RotationInfo;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/lge/camera/components/SwitcherLever;->mRotationInfo:Lcom/lge/camera/components/RotationInfo;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/components/RotationInfo;->setDegree(IZ)V

    .line 211
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/components/SwitcherLever;->invalidate()V

    .line 212
    return-void
.end method

.method public setOnSwitchLeverListener(Lcom/lge/camera/components/SwitcherLever$OnSwitchLeverListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lge/camera/components/SwitcherLever$OnSwitchLeverListener;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/lge/camera/components/SwitcherLever;->mListener:Lcom/lge/camera/components/SwitcherLever$OnSwitchLeverListener;

    .line 107
    return-void
.end method

.method public setSwitch(Z)V
    .locals 1
    .param p1, "onOff"    # Z

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/lge/camera/components/SwitcherLever;->mSwitch:Z

    if-ne v0, p1, :cond_0

    .line 81
    :goto_0
    return-void

    .line 79
    :cond_0
    iput-boolean p1, p0, Lcom/lge/camera/components/SwitcherLever;->mSwitch:Z

    .line 80
    invoke-virtual {p0}, Lcom/lge/camera/components/SwitcherLever;->invalidate()V

    goto :goto_0
.end method

.method public setSwitchEnable(Z)V
    .locals 3
    .param p1, "mEnable"    # Z

    .prologue
    .line 84
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSwitchEnable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iput-boolean p1, p0, Lcom/lge/camera/components/SwitcherLever;->mSwitchEnable:Z

    .line 86
    return-void
.end method

.method public setSwitcherImage(II)V
    .locals 0
    .param p1, "orientation"    # I
    .param p2, "mode"    # I

    .prologue
    .line 310
    return-void
.end method

.method protected startParkingAnimation()V
    .locals 2

    .prologue
    .line 183
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lge/camera/components/SwitcherLever;->mAnimationParkingStartTime:J

    .line 184
    return-void
.end method

.method public startRotation(I)V
    .locals 2
    .param p1, "degree"    # I

    .prologue
    .line 288
    const/16 v0, 0x5a

    if-ne p1, v0, :cond_0

    .line 289
    invoke-virtual {p0}, Lcom/lge/camera/components/SwitcherLever;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/lge/camera/components/SwitcherLever;->mBgAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 293
    :goto_0
    return-void

    .line 291
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/components/SwitcherLever;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/lge/camera/components/SwitcherLever;->mBgAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0
.end method

.method protected trackTouchEvent(Landroid/view/MotionEvent;)V
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/lge/camera/components/SwitcherLever;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 188
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 189
    .local v2, "drawableHeight":I
    invoke-virtual {p0}, Lcom/lge/camera/components/SwitcherLever;->getHeight()I

    move-result v3

    .line 190
    .local v3, "height":I
    invoke-virtual {p0}, Lcom/lge/camera/components/SwitcherLever;->getPaddingTop()I

    move-result v5

    sub-int v5, v3, v5

    invoke-virtual {p0}, Lcom/lge/camera/components/SwitcherLever;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    sub-int v0, v5, v2

    .line 191
    .local v0, "available":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v4, v5

    .line 192
    .local v4, "y":I
    invoke-virtual {p0}, Lcom/lge/camera/components/SwitcherLever;->getPaddingTop()I

    move-result v5

    sub-int v5, v4, v5

    invoke-virtual {p0}, Lcom/lge/camera/components/SwitcherLever;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v6, v2, 0x2

    sub-int/2addr v5, v6

    iput v5, p0, Lcom/lge/camera/components/SwitcherLever;->mPosition:I

    .line 194
    iget v5, p0, Lcom/lge/camera/components/SwitcherLever;->mPosition:I

    if-gez v5, :cond_0

    .line 195
    const/4 v5, 0x0

    iput v5, p0, Lcom/lge/camera/components/SwitcherLever;->mPosition:I

    .line 197
    :cond_0
    iget v5, p0, Lcom/lge/camera/components/SwitcherLever;->mPosition:I

    if-le v5, v0, :cond_1

    .line 198
    iput v0, p0, Lcom/lge/camera/components/SwitcherLever;->mPosition:I

    .line 200
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/components/SwitcherLever;->invalidate()V

    .line 201
    return-void
.end method

.method protected tryToSetSwitch(Z)V
    .locals 1
    .param p1, "onOff"    # Z

    .prologue
    .line 95
    :try_start_0
    iget-boolean v0, p0, Lcom/lge/camera/components/SwitcherLever;->mSwitch:Z

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/lge/camera/components/SwitcherLever;->mListener:Lcom/lge/camera/components/SwitcherLever$OnSwitchLeverListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/components/SwitcherLever;->mListener:Lcom/lge/camera/components/SwitcherLever$OnSwitchLeverListener;

    invoke-interface {v0, p0, p1}, Lcom/lge/camera/components/SwitcherLever$OnSwitchLeverListener;->onSwitchChanged(Lcom/lge/camera/components/SwitcherLever;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 101
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/components/SwitcherLever;->startParkingAnimation()V

    .line 103
    :goto_0
    return-void

    .line 99
    :cond_1
    :try_start_1
    iput-boolean p1, p0, Lcom/lge/camera/components/SwitcherLever;->mSwitch:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    invoke-virtual {p0}, Lcom/lge/camera/components/SwitcherLever;->startParkingAnimation()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/lge/camera/components/SwitcherLever;->startParkingAnimation()V

    throw v0
.end method

.method public unbind()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 296
    iput-object v1, p0, Lcom/lge/camera/components/SwitcherLever;->mListener:Lcom/lge/camera/components/SwitcherLever$OnSwitchLeverListener;

    .line 297
    invoke-virtual {p0}, Lcom/lge/camera/components/SwitcherLever;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 298
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 299
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 300
    invoke-virtual {p0, v1}, Lcom/lge/camera/components/SwitcherLever;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 302
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/components/SwitcherLever;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 303
    if-eqz v0, :cond_1

    .line 304
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 305
    invoke-virtual {p0, v1}, Lcom/lge/camera/components/SwitcherLever;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 307
    :cond_1
    return-void
.end method
