.class public abstract Lcom/lge/camera/controller/Controller;
.super Ljava/lang/Object;
.source "Controller.java"


# instance fields
.field protected mGet:Lcom/lge/camera/ControllerFunction;

.field protected mInit:Z


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 1
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    .line 28
    iput-object p1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    .line 29
    return-void
.end method


# virtual methods
.method protected checkMediator()Z
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected checkPreference(I)Z
    .locals 2
    .param p1, "menuPosition"    # I

    .prologue
    .line 58
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getCurrentSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v0

    .line 59
    .local v0, "currentSetting":Lcom/lge/camera/setting/SettingMenu;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/lge/camera/setting/SettingMenu;->getSetting()Lcom/lge/camera/setting/Setting;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/lge/camera/setting/SettingMenu;->getSetting()Lcom/lge/camera/setting/Setting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/setting/Setting;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getSettingMenuCount()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 63
    :cond_0
    const/4 v1, 0x0

    .line 65
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected clearAnimation(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 50
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, p1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 51
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 52
    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/animation/Animation;->cancel()V

    .line 53
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 55
    :cond_0
    return-void
.end method

.method protected getMenuIconStringResource(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 80
    const/4 v1, 0x0

    .line 81
    .local v1, "mMenuIconString":Ljava/lang/String;
    if-nez p1, :cond_1

    .line 100
    :cond_0
    :goto_0
    return-object v3

    .line 84
    :cond_1
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4, p1}, Lcom/lge/camera/ControllerFunction;->findPreferenceIndex(Ljava/lang/String;)I

    move-result v0

    .line 85
    .local v0, "keyIndex":I
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4, v0}, Lcom/lge/camera/ControllerFunction;->getListPreference(I)Lcom/lge/camera/setting/ListPreference;

    move-result-object v2

    .line 86
    .local v2, "pref":Lcom/lge/camera/setting/ListPreference;
    if-eqz v2, :cond_0

    .line 89
    const-string v3, "key_voiceshutter"

    invoke-virtual {v2}, Lcom/lge/camera/setting/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->useCheeseShutterTitle()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 91
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v4, 0x7f0a013a

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    move-object v3, v1

    .line 100
    goto :goto_0

    .line 92
    :cond_2
    const-string v3, "key_time_machine"

    invoke-virtual {v2}, Lcom/lge/camera/setting/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->useTimeCatchShotTitle()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 94
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v4, 0x7f0a02f1

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 96
    :cond_3
    invoke-virtual {v2}, Lcom/lge/camera/setting/ListPreference;->getTitle()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method protected getPixelFromDimens(I)I
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public initController()V
    .locals 0

    .prologue
    .line 104
    return-void
.end method

.method protected isInView(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "me"    # Landroid/view/MotionEvent;

    .prologue
    .line 69
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 73
    const/4 v0, 0x1

    .line 75
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    return v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 107
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 119
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 116
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 113
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 110
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 122
    return-void
.end method

.method public reInitialize()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    .line 43
    return-void
.end method
