.class public Lcom/lge/camera/controller/BarController;
.super Lcom/lge/camera/controller/Controller;
.source "BarController.java"

# interfaces
.implements Lcom/lge/camera/components/BarAction;


# static fields
.field private static final SETTING_ANIMATION_TIME:J = 0x12cL


# instance fields
.field private mNormalBarView:Lcom/lge/camera/components/BarView;

.field private mSettingBarView:Lcom/lge/camera/components/BarView;


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 0
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/Controller;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 31
    return-void
.end method

.method static synthetic access$000(Lcom/lge/camera/controller/BarController;)Lcom/lge/camera/components/BarView;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/BarController;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/lge/camera/controller/BarController;->mSettingBarView:Lcom/lge/camera/components/BarView;

    return-object v0
.end method


# virtual methods
.method public doCommand(Ljava/lang/String;)V
    .locals 1
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 232
    iget-object v0, p0, Lcom/lge/camera/controller/BarController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;)V

    .line 233
    return-void
.end method

.method public doCommand(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 237
    iget-object v0, p0, Lcom/lge/camera/controller/BarController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p1, p2, p3}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 238
    return-void
.end method

.method public doCommandDelayed(Ljava/lang/String;I)V
    .locals 4
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "delay"    # I

    .prologue
    .line 252
    iget-object v0, p0, Lcom/lge/camera/controller/BarController;->mGet:Lcom/lge/camera/ControllerFunction;

    int-to-long v2, p2

    invoke-interface {v0, p1, v2, v3}, Lcom/lge/camera/ControllerFunction;->doCommandDelayed(Ljava/lang/String;J)V

    .line 253
    return-void
.end method

.method public doCommandNoneParameter(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 242
    iget-object v0, p0, Lcom/lge/camera/controller/BarController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p1}, Lcom/lge/camera/ControllerFunction;->doCommandNoneParameter(Ljava/lang/String;)V

    .line 243
    return-void
.end method

.method public doCommandNoneParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 247
    iget-object v0, p0, Lcom/lge/camera/controller/BarController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p1, p2}, Lcom/lge/camera/ControllerFunction;->doCommandNoneParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 248
    return-void
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 292
    iget-object v0, p0, Lcom/lge/camera/controller/BarController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/lge/camera/controller/BarController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationMode()I
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/lge/camera/controller/BarController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v0

    return v0
.end method

.method public getBarPreferenceSettingValue(Ljava/lang/String;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 302
    iget-object v0, p0, Lcom/lge/camera/controller/BarController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p1}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 303
    invoke-virtual {p0, p1}, Lcom/lge/camera/controller/BarController;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 305
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCameraId()I
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/lge/camera/controller/BarController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v0

    return v0
.end method

.method public getDegreeInBarAction()I
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/lge/camera/controller/BarController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v0

    return v0
.end method

.method public getMaxZoom()I
    .locals 1

    .prologue
    .line 325
    const/4 v0, 0x0

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/lge/camera/controller/BarController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getOrientation()I

    move-result v0

    return v0
.end method

.method public getPixelFromDimens(I)I
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 287
    invoke-super {p0, p1}, Lcom/lge/camera/controller/Controller;->getPixelFromDimens(I)I

    move-result v0

    return v0
.end method

.method public getSettingValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 297
    iget-object v0, p0, Lcom/lge/camera/controller/BarController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p1}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getZoomCursorMaxStep()I
    .locals 1

    .prologue
    .line 320
    const/4 v0, 0x0

    return v0
.end method

.method public getZoomMaxValue()F
    .locals 1

    .prologue
    .line 315
    const/4 v0, 0x0

    return v0
.end method

.method public getZoomRatio()F
    .locals 1

    .prologue
    .line 330
    const/4 v0, 0x0

    return v0
.end method

.method public hideSettingBarControl(IZ)V
    .locals 4
    .param p1, "ResId"    # I
    .param p2, "useAnim"    # Z

    .prologue
    .line 100
    iget-boolean v2, p0, Lcom/lge/camera/controller/BarController;->mInit:Z

    if-nez v2, :cond_1

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    if-eqz p2, :cond_2

    .line 104
    invoke-virtual {p0, p1}, Lcom/lge/camera/controller/BarController;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/components/RotateLayout;

    .line 105
    .local v1, "rlC":Lcom/lge/camera/components/RotateLayout;
    if-eqz v1, :cond_0

    .line 108
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 109
    .local v0, "anim":Landroid/view/animation/Animation;
    new-instance v2, Lcom/lge/camera/controller/BarController$2;

    invoke-direct {v2, p0}, Lcom/lge/camera/controller/BarController$2;-><init>(Lcom/lge/camera/controller/BarController;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 122
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 123
    invoke-virtual {v1, v0}, Lcom/lge/camera/components/RotateLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 125
    .end local v0    # "anim":Landroid/view/animation/Animation;
    .end local v1    # "rlC":Lcom/lge/camera/components/RotateLayout;
    :cond_2
    iget-object v2, p0, Lcom/lge/camera/controller/BarController;->mSettingBarView:Lcom/lge/camera/components/BarView;

    if-eqz v2, :cond_0

    .line 126
    iget-object v2, p0, Lcom/lge/camera/controller/BarController;->mSettingBarView:Lcom/lge/camera/components/BarView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/lge/camera/components/BarView;->showControl(Z)V

    goto :goto_0
.end method

.method public isBarVisible()Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/lge/camera/controller/BarController;->mInit:Z

    if-nez v0, :cond_0

    .line 60
    const/4 v0, 0x0

    .line 62
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/BarController;->mNormalBarView:Lcom/lge/camera/components/BarView;

    invoke-virtual {v0}, Lcom/lge/camera/components/BarView;->isBarVisible()Z

    move-result v0

    goto :goto_0
.end method

.method public isConfigureLandscape()Z
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/lge/camera/controller/BarController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v0

    return v0
.end method

.method public isPausing()Z
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/lge/camera/controller/BarController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v0

    return v0
.end method

.method public isPreviewing()Z
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/lge/camera/controller/BarController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isPreviewing()Z

    move-result v0

    return v0
.end method

.method public isSettingViewRemoving()Z
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/lge/camera/controller/BarController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isSettingViewRemoving()Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 179
    invoke-super {p0}, Lcom/lge/camera/controller/Controller;->onDestroy()V

    .line 180
    iget-object v0, p0, Lcom/lge/camera/controller/BarController;->mNormalBarView:Lcom/lge/camera/components/BarView;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/lge/camera/controller/BarController;->mNormalBarView:Lcom/lge/camera/components/BarView;

    invoke-virtual {v0}, Lcom/lge/camera/components/BarView;->unbind()V

    .line 182
    iput-object v1, p0, Lcom/lge/camera/controller/BarController;->mNormalBarView:Lcom/lge/camera/components/BarView;

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/BarController;->mSettingBarView:Lcom/lge/camera/components/BarView;

    if-eqz v0, :cond_1

    .line 185
    iget-object v0, p0, Lcom/lge/camera/controller/BarController;->mSettingBarView:Lcom/lge/camera/components/BarView;

    invoke-virtual {v0}, Lcom/lge/camera/components/BarView;->unbind()V

    .line 186
    iput-object v1, p0, Lcom/lge/camera/controller/BarController;->mSettingBarView:Lcom/lge/camera/components/BarView;

    .line 188
    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/lge/camera/controller/BarController;->mInit:Z

    if-nez v0, :cond_0

    .line 175
    :goto_0
    return-void

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/BarController;->mNormalBarView:Lcom/lge/camera/components/BarView;

    if-eqz v0, :cond_1

    .line 169
    iget-object v0, p0, Lcom/lge/camera/controller/BarController;->mNormalBarView:Lcom/lge/camera/components/BarView;

    invoke-virtual {v0}, Lcom/lge/camera/components/BarView;->stopTimerTask()V

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/BarController;->mSettingBarView:Lcom/lge/camera/components/BarView;

    if-eqz v0, :cond_2

    .line 172
    iget-object v0, p0, Lcom/lge/camera/controller/BarController;->mSettingBarView:Lcom/lge/camera/components/BarView;

    invoke-virtual {v0}, Lcom/lge/camera/components/BarView;->stopTimerTask()V

    .line 174
    :cond_2
    invoke-super {p0}, Lcom/lge/camera/controller/Controller;->onPause()V

    goto :goto_0
.end method

.method public postOnUiThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 217
    iget-object v0, p0, Lcom/lge/camera/controller/BarController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p1}, Lcom/lge/camera/ControllerFunction;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 218
    return-void
.end method

.method public refreshController()V
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/lge/camera/controller/BarController;->mInit:Z

    if-nez v0, :cond_1

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/BarController;->mNormalBarView:Lcom/lge/camera/components/BarView;

    invoke-virtual {v0, p0}, Lcom/lge/camera/components/BarView;->initBar(Lcom/lge/camera/components/BarAction;)V

    .line 46
    iget-object v0, p0, Lcom/lge/camera/controller/BarController;->mSettingBarView:Lcom/lge/camera/components/BarView;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/lge/camera/controller/BarController;->mSettingBarView:Lcom/lge/camera/components/BarView;

    invoke-virtual {v0, p0}, Lcom/lge/camera/components/BarView;->initBar(Lcom/lge/camera/components/BarAction;)V

    goto :goto_0
.end method

.method public refreshSettingBars()V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/lge/camera/controller/BarController;->mSettingBarView:Lcom/lge/camera/components/BarView;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/lge/camera/controller/BarController;->mSettingBarView:Lcom/lge/camera/components/BarView;

    invoke-virtual {v0}, Lcom/lge/camera/components/BarView;->refreshBar()V

    .line 161
    :cond_0
    return-void
.end method

.method public removePostRunnable(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 222
    iget-object v0, p0, Lcom/lge/camera/controller/BarController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p1}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 223
    return-void
.end method

.method public removeScheduledCommand(Ljava/lang/String;)V
    .locals 1
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 227
    iget-object v0, p0, Lcom/lge/camera/controller/BarController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p1}, Lcom/lge/camera/ControllerFunction;->removeScheduledCommand(Ljava/lang/String;)V

    .line 228
    return-void
.end method

.method public resetDisplayTimeout()V
    .locals 1

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/lge/camera/controller/BarController;->mInit:Z

    if-nez v0, :cond_1

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/BarController;->mNormalBarView:Lcom/lge/camera/components/BarView;

    invoke-virtual {v0}, Lcom/lge/camera/components/BarView;->resetDisplayTimeout()V

    .line 143
    iget-object v0, p0, Lcom/lge/camera/controller/BarController;->mSettingBarView:Lcom/lge/camera/components/BarView;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/lge/camera/controller/BarController;->mSettingBarView:Lcom/lge/camera/components/BarView;

    invoke-virtual {v0}, Lcom/lge/camera/components/BarView;->resetDisplayTimeout()V

    goto :goto_0
.end method

.method public rotateSettingBar(II)V
    .locals 1
    .param p1, "mBarType"    # I
    .param p2, "value"    # I

    .prologue
    .line 262
    iget-object v0, p0, Lcom/lge/camera/controller/BarController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p1, p2}, Lcom/lge/camera/ControllerFunction;->rotateSettingBar(II)V

    .line 263
    return-void
.end method

.method public runOnUiThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 212
    iget-object v0, p0, Lcom/lge/camera/controller/BarController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p1}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 213
    return-void
.end method

.method public setDegreeInBarAction(IIZ)V
    .locals 1
    .param p1, "resId"    # I
    .param p2, "degree"    # I
    .param p3, "animation"    # Z

    .prologue
    .line 197
    iget-object v0, p0, Lcom/lge/camera/controller/BarController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p1, p2, p3}, Lcom/lge/camera/ControllerFunction;->setDegree(IIZ)V

    .line 198
    return-void
.end method

.method public setNormalBarView(Lcom/lge/camera/components/BarView;)V
    .locals 0
    .param p1, "normalBarView"    # Lcom/lge/camera/components/BarView;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/lge/camera/controller/BarController;->mNormalBarView:Lcom/lge/camera/components/BarView;

    .line 35
    return-void
.end method

.method public setSetting(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 310
    iget-object v0, p0, Lcom/lge/camera/controller/BarController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p1, p2}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setSettingBarView(Lcom/lge/camera/components/BarView;)V
    .locals 0
    .param p1, "settingBarView"    # Lcom/lge/camera/components/BarView;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/lge/camera/controller/BarController;->mSettingBarView:Lcom/lge/camera/components/BarView;

    .line 39
    return-void
.end method

.method public showControl(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/lge/camera/controller/BarController;->mInit:Z

    if-nez v0, :cond_0

    .line 56
    :goto_0
    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/BarController;->mNormalBarView:Lcom/lge/camera/components/BarView;

    invoke-virtual {v0, p1}, Lcom/lge/camera/components/BarView;->showControl(Z)V

    goto :goto_0
.end method

.method public showSettingBarControl(IZ)V
    .locals 4
    .param p1, "ResId"    # I
    .param p2, "useAnim"    # Z

    .prologue
    .line 66
    iget-boolean v2, p0, Lcom/lge/camera/controller/BarController;->mInit:Z

    if-nez v2, :cond_1

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    if-eqz p2, :cond_2

    .line 70
    invoke-virtual {p0, p1}, Lcom/lge/camera/controller/BarController;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/components/RotateLayout;

    .line 71
    .local v1, "rlC":Lcom/lge/camera/components/RotateLayout;
    if-eqz v1, :cond_0

    .line 74
    invoke-virtual {v1}, Lcom/lge/camera/components/RotateLayout;->clearAnimation()V

    .line 76
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 77
    .local v0, "anim":Landroid/view/animation/Animation;
    new-instance v2, Lcom/lge/camera/controller/BarController$1;

    invoke-direct {v2, p0}, Lcom/lge/camera/controller/BarController$1;-><init>(Lcom/lge/camera/controller/BarController;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 90
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 91
    invoke-virtual {v1, v0}, Lcom/lge/camera/components/RotateLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 93
    .end local v0    # "anim":Landroid/view/animation/Animation;
    .end local v1    # "rlC":Lcom/lge/camera/components/RotateLayout;
    :cond_2
    iget-object v2, p0, Lcom/lge/camera/controller/BarController;->mSettingBarView:Lcom/lge/camera/components/BarView;

    if-eqz v2, :cond_0

    .line 94
    iget-object v2, p0, Lcom/lge/camera/controller/BarController;->mSettingBarView:Lcom/lge/camera/components/BarView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/lge/camera/components/BarView;->showControl(Z)V

    goto :goto_0
.end method

.method public startRotation(IZ)V
    .locals 1
    .param p1, "degree"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/lge/camera/controller/BarController;->mInit:Z

    if-nez v0, :cond_0

    .line 136
    :goto_0
    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/BarController;->mNormalBarView:Lcom/lge/camera/components/BarView;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/components/BarView;->startRotation(IZ)V

    goto :goto_0
.end method

.method public updateAllBars(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 149
    iget-object v0, p0, Lcom/lge/camera/controller/BarController;->mNormalBarView:Lcom/lge/camera/components/BarView;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/lge/camera/controller/BarController;->mNormalBarView:Lcom/lge/camera/components/BarView;

    invoke-virtual {v0, p1}, Lcom/lge/camera/components/BarView;->setBarValue(I)V

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/BarController;->mSettingBarView:Lcom/lge/camera/components/BarView;

    if-eqz v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/lge/camera/controller/BarController;->mSettingBarView:Lcom/lge/camera/components/BarView;

    invoke-virtual {v0, p1}, Lcom/lge/camera/components/BarView;->setBarValue(I)V

    .line 155
    :cond_1
    return-void
.end method

.method public updateAllBars(II)V
    .locals 1
    .param p1, "mBarType"    # I
    .param p2, "value"    # I

    .prologue
    .line 257
    iget-object v0, p0, Lcom/lge/camera/controller/BarController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p1, p2}, Lcom/lge/camera/ControllerFunction;->updateAllBars(II)V

    .line 258
    return-void
.end method
