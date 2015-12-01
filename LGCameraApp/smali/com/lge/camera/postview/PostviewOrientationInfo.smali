.class public Lcom/lge/camera/postview/PostviewOrientationInfo;
.super Ljava/lang/Object;
.source "PostviewOrientationInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/camera/postview/PostviewOrientationInfo$PostviewOrientationInfoFunction;
    }
.end annotation


# instance fields
.field private mDisplayOrientationSetting:I

.field private mGet:Lcom/lge/camera/postview/PostviewOrientationInfo$PostviewOrientationInfoFunction;

.field private mOrientation:I

.field private mOrientationChangeEnabled:Z

.field private mOrientationListener:Landroid/view/OrientationEventListener;

.field private mSetOrientationReload:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/lge/camera/postview/PostviewOrientationInfo$PostviewOrientationInfoFunction;)V
    .locals 2
    .param p1, "function"    # Lcom/lge/camera/postview/PostviewOrientationInfo$PostviewOrientationInfoFunction;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object v1, p0, Lcom/lge/camera/postview/PostviewOrientationInfo;->mGet:Lcom/lge/camera/postview/PostviewOrientationInfo$PostviewOrientationInfoFunction;

    .line 44
    iput v0, p0, Lcom/lge/camera/postview/PostviewOrientationInfo;->mOrientation:I

    .line 45
    iput-object v1, p0, Lcom/lge/camera/postview/PostviewOrientationInfo;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 46
    iput-boolean v0, p0, Lcom/lge/camera/postview/PostviewOrientationInfo;->mOrientationChangeEnabled:Z

    .line 47
    iput v0, p0, Lcom/lge/camera/postview/PostviewOrientationInfo;->mDisplayOrientationSetting:I

    .line 236
    new-instance v0, Lcom/lge/camera/postview/PostviewOrientationInfo$2;

    invoke-direct {v0, p0}, Lcom/lge/camera/postview/PostviewOrientationInfo$2;-><init>(Lcom/lge/camera/postview/PostviewOrientationInfo;)V

    iput-object v0, p0, Lcom/lge/camera/postview/PostviewOrientationInfo;->mSetOrientationReload:Ljava/lang/Runnable;

    .line 41
    iput-object p1, p0, Lcom/lge/camera/postview/PostviewOrientationInfo;->mGet:Lcom/lge/camera/postview/PostviewOrientationInfo$PostviewOrientationInfoFunction;

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/lge/camera/postview/PostviewOrientationInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/postview/PostviewOrientationInfo;

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/lge/camera/postview/PostviewOrientationInfo;->mOrientationChangeEnabled:Z

    return v0
.end method

.method static synthetic access$100(Lcom/lge/camera/postview/PostviewOrientationInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/postview/PostviewOrientationInfo;

    .prologue
    .line 28
    iget v0, p0, Lcom/lge/camera/postview/PostviewOrientationInfo;->mOrientation:I

    return v0
.end method

.method static synthetic access$102(Lcom/lge/camera/postview/PostviewOrientationInfo;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/postview/PostviewOrientationInfo;
    .param p1, "x1"    # I

    .prologue
    .line 28
    iput p1, p0, Lcom/lge/camera/postview/PostviewOrientationInfo;->mOrientation:I

    return p1
.end method

.method static synthetic access$200(Lcom/lge/camera/postview/PostviewOrientationInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/postview/PostviewOrientationInfo;

    .prologue
    .line 28
    iget v0, p0, Lcom/lge/camera/postview/PostviewOrientationInfo;->mDisplayOrientationSetting:I

    return v0
.end method

.method static synthetic access$300(Lcom/lge/camera/postview/PostviewOrientationInfo;)Lcom/lge/camera/postview/PostviewOrientationInfo$PostviewOrientationInfoFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/postview/PostviewOrientationInfo;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/lge/camera/postview/PostviewOrientationInfo;->mGet:Lcom/lge/camera/postview/PostviewOrientationInfo$PostviewOrientationInfoFunction;

    return-object v0
.end method


# virtual methods
.method public enableOrientationListener(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 58
    iget-object v0, p0, Lcom/lge/camera/postview/PostviewOrientationInfo;->mGet:Lcom/lge/camera/postview/PostviewOrientationInfo$PostviewOrientationInfoFunction;

    invoke-interface {v0}, Lcom/lge/camera/postview/PostviewOrientationInfo$PostviewOrientationInfoFunction;->isPausing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    const-string v0, "CameraApp"

    const-string v1, "Activity is finishing. so listener must be disabled"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const/4 p1, 0x0

    .line 63
    :cond_0
    iput-boolean p1, p0, Lcom/lge/camera/postview/PostviewOrientationInfo;->mOrientationChangeEnabled:Z

    .line 64
    iget-object v0, p0, Lcom/lge/camera/postview/PostviewOrientationInfo;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_1

    .line 65
    if-eqz p1, :cond_2

    .line 66
    iget-object v0, p0, Lcom/lge/camera/postview/PostviewOrientationInfo;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 71
    :cond_1
    :goto_0
    return-void

    .line 68
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/postview/PostviewOrientationInfo;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    goto :goto_0
.end method

.method public getActivityOrientation()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 212
    iget v1, p0, Lcom/lge/camera/postview/PostviewOrientationInfo;->mOrientation:I

    packed-switch v1, :pswitch_data_0

    .line 222
    :goto_0
    :pswitch_0
    return v0

    .line 216
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 218
    :pswitch_2
    const/16 v0, 0x9

    goto :goto_0

    .line 220
    :pswitch_3
    const/16 v0, 0x8

    goto :goto_0

    .line 212
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/lge/camera/postview/PostviewOrientationInfo;->mOrientation:I

    return v0
.end method

.method public getOrientationListenerEnable()Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/lge/camera/postview/PostviewOrientationInfo;->mOrientationChangeEnabled:Z

    return v0
.end method

.method public getWindowOrientation()I
    .locals 7

    .prologue
    .line 180
    iget-object v4, p0, Lcom/lge/camera/postview/PostviewOrientationInfo;->mGet:Lcom/lge/camera/postview/PostviewOrientationInfo$PostviewOrientationInfoFunction;

    invoke-interface {v4}, Lcom/lge/camera/postview/PostviewOrientationInfo$PostviewOrientationInfoFunction;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "window"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 182
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v3

    .line 183
    .local v3, "rotation":I
    iget v2, p0, Lcom/lge/camera/postview/PostviewOrientationInfo;->mOrientation:I

    .line 184
    .local v2, "oldOrientation":I
    const/4 v1, 0x0

    .line 186
    .local v1, "newOrientation":I
    packed-switch v3, :pswitch_data_0

    .line 204
    :goto_0
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getWindowOrientation:Old orientation = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", New orientation = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " isHardKeyboradShowing() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/lge/camera/postview/PostviewOrientationInfo;->isHardKeyboradShowing()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    return v1

    .line 188
    :pswitch_0
    const/4 v1, 0x1

    .line 189
    goto :goto_0

    .line 191
    :pswitch_1
    const/4 v1, 0x0

    .line 192
    goto :goto_0

    .line 194
    :pswitch_2
    const/4 v1, 0x3

    .line 195
    goto :goto_0

    .line 197
    :pswitch_3
    invoke-virtual {p0}, Lcom/lge/camera/postview/PostviewOrientationInfo;->isHardKeyboradShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 198
    const/4 v1, 0x0

    goto :goto_0

    .line 200
    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    .line 186
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public isHardKeyboradShowing()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 226
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportHardKeyborad()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 227
    iget-object v2, p0, Lcom/lge/camera/postview/PostviewOrientationInfo;->mGet:Lcom/lge/camera/postview/PostviewOrientationInfo$PostviewOrientationInfoFunction;

    invoke-interface {v2}, Lcom/lge/camera/postview/PostviewOrientationInfo$PostviewOrientationInfoFunction;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v2, v0, :cond_0

    .line 233
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 227
    goto :goto_0

    :cond_1
    move v0, v1

    .line 233
    goto :goto_0
.end method

.method public releaseOrientationListener()V
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/postview/PostviewOrientationInfo;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 75
    return-void
.end method

.method public setActivityOrientationRun(I)V
    .locals 2
    .param p1, "delay"    # I

    .prologue
    .line 159
    iget-object v0, p0, Lcom/lge/camera/postview/PostviewOrientationInfo;->mGet:Lcom/lge/camera/postview/PostviewOrientationInfo$PostviewOrientationInfoFunction;

    invoke-interface {v0}, Lcom/lge/camera/postview/PostviewOrientationInfo$PostviewOrientationInfoFunction;->getPostViewParameters()Lcom/lge/camera/postview/PostViewParameters;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/lge/camera/postview/PostviewOrientationInfo;->mGet:Lcom/lge/camera/postview/PostviewOrientationInfo$PostviewOrientationInfoFunction;

    invoke-interface {v0}, Lcom/lge/camera/postview/PostviewOrientationInfo$PostviewOrientationInfoFunction;->getPostViewParameters()Lcom/lge/camera/postview/PostViewParameters;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/lge/camera/postview/PostViewParameters;->setPreviewOrientation(I)V

    .line 161
    iget-object v0, p0, Lcom/lge/camera/postview/PostviewOrientationInfo;->mSetOrientationReload:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 163
    :cond_0
    return-void
.end method

.method public setDisplayOrientationSettingValue(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 245
    iput p1, p0, Lcom/lge/camera/postview/PostviewOrientationInfo;->mDisplayOrientationSetting:I

    .line 246
    return-void
.end method

.method public setOrientationByPreview(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 166
    if-gez p1, :cond_1

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    iget v0, p0, Lcom/lge/camera/postview/PostviewOrientationInfo;->mOrientation:I

    if-eq v0, p1, :cond_0

    .line 170
    iput p1, p0, Lcom/lge/camera/postview/PostviewOrientationInfo;->mOrientation:I

    .line 171
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/camera/postview/PostviewOrientationInfo;->setActivityOrientationRun(I)V

    goto :goto_0
.end method

.method public setOrientationByWindowOrientation()V
    .locals 1

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/lge/camera/postview/PostviewOrientationInfo;->getWindowOrientation()I

    move-result v0

    iput v0, p0, Lcom/lge/camera/postview/PostviewOrientationInfo;->mOrientation:I

    .line 177
    return-void
.end method

.method public setOrientationListener()V
    .locals 3

    .prologue
    .line 78
    const-string v0, "CameraApp"

    const-string v1, "setOrientationListener"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-boolean v0, p0, Lcom/lge/camera/postview/PostviewOrientationInfo;->mOrientationChangeEnabled:Z

    if-eqz v0, :cond_0

    .line 156
    :goto_0
    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/postview/PostviewOrientationInfo;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/lge/camera/postview/PostviewOrientationInfo;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/postview/PostviewOrientationInfo;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 88
    :cond_1
    new-instance v0, Lcom/lge/camera/postview/PostviewOrientationInfo$1;

    iget-object v1, p0, Lcom/lge/camera/postview/PostviewOrientationInfo;->mGet:Lcom/lge/camera/postview/PostviewOrientationInfo$PostviewOrientationInfoFunction;

    invoke-interface {v1}, Lcom/lge/camera/postview/PostviewOrientationInfo$PostviewOrientationInfoFunction;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, p0, v1, v2}, Lcom/lge/camera/postview/PostviewOrientationInfo$1;-><init>(Lcom/lge/camera/postview/PostviewOrientationInfo;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/lge/camera/postview/PostviewOrientationInfo;->mOrientationListener:Landroid/view/OrientationEventListener;

    goto :goto_0
.end method
