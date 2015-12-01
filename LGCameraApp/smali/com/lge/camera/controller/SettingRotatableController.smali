.class public Lcom/lge/camera/controller/SettingRotatableController;
.super Lcom/lge/camera/controller/SettingController;
.source "SettingRotatableController.java"


# static fields
.field private static final SETTING_ANIMATION_TIME:J = 0x12cL


# instance fields
.field protected BG_BORDER_HEIGHT:I

.field protected CHILD_BRIGHTNESS_LAND_HEIGHT:I

.field protected CHILD_BRIGHTNESS_MARGIN_LEFT:I

.field protected CHILD_BRIGHTNESS_PORT_HEIGHT:I

.field protected CHILD_BRIGHTNESS_WIDTH:I

.field protected CHILD_HEIGHT:I

.field protected CHILD_MARGIN_LEFT:I

.field protected CHILD_MARGIN_TOP:I

.field protected CHILD_WIDTH:I

.field protected CHILD_ZOOM_HEIGHT:I

.field protected CHILD_ZOOM_WIDTH:I

.field protected CONFIG_ITEM_HEIGHT:I

.field protected DIVIDER:I

.field protected LCD_HEIGHT:I

.field protected LCD_WIDTH:I

.field protected MARGIN_HEIGHT:I

.field protected PANEL_WIDTH:I

.field protected PARENT_HEIGHT:I

.field protected PARENT_MARGIN_LEFT:I

.field protected PARENT_MARGIN_TOP:I

.field protected PARENT_WIDTH:I

.field protected TITLE_HEIGHT:I

.field protected mChildAdapter:Lcom/lge/camera/setting/SettingMenuAdapter;

.field protected mChildSettingListView:Landroid/widget/ListView;

.field private mChildSettingListViewItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mChildSettingListViewTouchListener:Landroid/view/View$OnTouchListener;

.field private mDegree:I

.field private mInitSettingBar:Z

.field private mIsRtoL:Z

.field protected mParentAdapter:Lcom/lge/camera/setting/SettingMenuAdapter;

.field protected mParentSettingListView:Landroid/widget/ListView;

.field private mParentSettingListViewItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mParentSettingListViewTouchListener:Landroid/view/View$OnTouchListener;

.field protected mSettingView:Landroid/view/View;

.field private mSettingViewRemoving:Z


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 2
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    const/4 v1, 0x0

    .line 91
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/SettingController;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 80
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->getSettingMenuBoarderHeight()I

    move-result v0

    iput v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->BG_BORDER_HEIGHT:I

    .line 81
    const/4 v0, 0x2

    iput v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->DIVIDER:I

    .line 84
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->mDegree:I

    .line 85
    iput-boolean v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->mInitSettingBar:Z

    .line 88
    iput-boolean v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->mIsRtoL:Z

    .line 218
    iput-boolean v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->mSettingViewRemoving:Z

    .line 1165
    new-instance v0, Lcom/lge/camera/controller/SettingRotatableController$10;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/SettingRotatableController$10;-><init>(Lcom/lge/camera/controller/SettingRotatableController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->mParentSettingListViewTouchListener:Landroid/view/View$OnTouchListener;

    .line 1196
    new-instance v0, Lcom/lge/camera/controller/SettingRotatableController$11;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/SettingRotatableController$11;-><init>(Lcom/lge/camera/controller/SettingRotatableController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->mParentSettingListViewItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 1256
    new-instance v0, Lcom/lge/camera/controller/SettingRotatableController$12;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/SettingRotatableController$12;-><init>(Lcom/lge/camera/controller/SettingRotatableController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListViewTouchListener:Landroid/view/View$OnTouchListener;

    .line 1271
    new-instance v0, Lcom/lge/camera/controller/SettingRotatableController$13;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/SettingRotatableController$13;-><init>(Lcom/lge/camera/controller/SettingRotatableController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListViewItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 92
    return-void
.end method

.method static synthetic access$000(Lcom/lge/camera/controller/SettingRotatableController;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/SettingRotatableController;

    .prologue
    .line 47
    iget v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->mDegree:I

    return v0
.end method

.method static synthetic access$100(Lcom/lge/camera/controller/SettingRotatableController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/controller/SettingRotatableController;
    .param p1, "x1"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/SettingRotatableController;->setChildViewPattern(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/lge/camera/controller/SettingRotatableController;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/controller/SettingRotatableController;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/controller/SettingRotatableController;->doCommandSubMenuClicked(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private doCommandSubMenuClicked(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "command"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 1322
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doCommandSubMenuClicked key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1323
    const-string v1, "key_voiceshutter"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "key_time_machine"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "key_uplus_box"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1326
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1327
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "subMenuClicked"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1328
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, p2, v0}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1355
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_1
    :goto_0
    return-void

    .line 1330
    :cond_2
    const-string v1, "key_swap"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1331
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isLiveEffectSupported()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1332
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v1

    if-ne v1, v4, :cond_3

    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isEffectsCamcorderActive()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1334
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getCameraMode()I

    move-result v1

    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_swap"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getSettingIndex(Ljava/lang/String;)I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 1337
    const-string v1, "CameraApp"

    const-string v2, "SwapCameraPrepared-start, liveeffect active"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1338
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    const/16 v2, 0x66

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->effectRecorderStopPreviewByCallFrom(I)V

    .line 1341
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1342
    .restart local v0    # "bundle":Landroid/os/Bundle;
    const-string v1, "liveeffect_mode"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1343
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v2, 0x0

    invoke-interface {v1, p2, v2, v0}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 1347
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1348
    .restart local v0    # "bundle":Landroid/os/Bundle;
    const-string v1, "showAll"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1349
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.RemoveSettingMenu"

    invoke-interface {v1, v2, v0}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1350
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-wide/16 v2, 0x0

    invoke-interface {v1, p2, v2, v3}, Lcom/lge/camera/ControllerFunction;->doCommandDelayed(Ljava/lang/String;J)V

    goto :goto_0

    .line 1353
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_4
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, p2}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getCurrentParentSettingListHeight()I
    .locals 4

    .prologue
    .line 977
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    if-eqz v2, :cond_0

    .line 978
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f0d0200

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 979
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 980
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 981
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 984
    .end local v0    # "params":Landroid/view/ViewGroup$LayoutParams;
    .end local v1    # "view":Landroid/view/View;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getMenuListHeight(I)I
    .locals 2
    .param p1, "visibleCount"    # I

    .prologue
    .line 1082
    iget v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->CONFIG_ITEM_HEIGHT:I

    iget v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->DIVIDER:I

    add-int/2addr v0, v1

    mul-int/2addr v0, p1

    iget v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->DIVIDER:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->BG_BORDER_HEIGHT:I

    add-int/2addr v0, v1

    return v0
.end method

.method private getVisibleMenuCount()I
    .locals 2

    .prologue
    .line 1077
    iget v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->LCD_WIDTH:I

    iget v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->PANEL_WIDTH:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_MARGIN_LEFT:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->TITLE_HEIGHT:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->CONFIG_ITEM_HEIGHT:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method private hideChildSettingViewImmediately()V
    .locals 2

    .prologue
    .line 372
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListView:Landroid/widget/ListView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 375
    :cond_0
    return-void
.end method

.method private isChildCustomView(Ljava/lang/String;)Z
    .locals 1
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 1086
    if-eqz p1, :cond_0

    .line 1087
    const/4 v0, 0x1

    .line 1089
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private rotateChildCustom(I)V
    .locals 1
    .param p1, "degree"    # I

    .prologue
    .line 507
    invoke-virtual {p0, p1}, Lcom/lge/camera/controller/SettingRotatableController;->rotateSettingZoom(I)V

    .line 508
    invoke-virtual {p0, p1}, Lcom/lge/camera/controller/SettingRotatableController;->rotateSettingBrightness(I)V

    .line 509
    invoke-virtual {p0, p1}, Lcom/lge/camera/controller/SettingRotatableController;->rotateSettingBeautyShot(I)V

    .line 510
    invoke-virtual {p0, p1}, Lcom/lge/camera/controller/SettingRotatableController;->rotateSettingCamera3dDepth(I)V

    .line 511
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->mInitSettingBar:Z

    .line 512
    return-void
.end method

.method private setChildViewPattern(I)V
    .locals 6
    .param p1, "position"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1094
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v4}, Lcom/lge/camera/ControllerFunction;->hideChildCustomView(Z)V

    .line 1096
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, p1}, Lcom/lge/camera/ControllerFunction;->setCurrentSettingMenu(I)Z

    .line 1097
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getSettingMenuCommand()Ljava/lang/String;

    move-result-object v0

    .line 1099
    .local v0, "className":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/lge/camera/controller/SettingRotatableController;->isChildCustomView(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1100
    invoke-direct {p0}, Lcom/lge/camera/controller/SettingRotatableController;->hideChildSettingViewImmediately()V

    .line 1101
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v3, Lcom/lge/camera/controller/SettingRotatableController$7;

    invoke-direct {v3, p0}, Lcom/lge/camera/controller/SettingRotatableController$7;-><init>(Lcom/lge/camera/controller/SettingRotatableController;)V

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1109
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, p1}, Lcom/lge/camera/ControllerFunction;->getIndexMenuKey(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    .line 1111
    .local v1, "pref":Lcom/lge/camera/setting/ListPreference;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "key_restore"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1112
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController;->mParentAdapter:Lcom/lge/camera/setting/SettingMenuAdapter;

    invoke-virtual {v2, v4}, Lcom/lge/camera/setting/SettingMenuAdapter;->setShowChild(Z)V

    .line 1113
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v0}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 1114
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v3, 0x5

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->setSubMenuMode(I)V

    .line 1163
    :cond_0
    :goto_0
    return-void

    .line 1117
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "key_edit_shortcut"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1118
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v0}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    goto :goto_0

    .line 1120
    :cond_2
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController;->mParentAdapter:Lcom/lge/camera/setting/SettingMenuAdapter;

    invoke-virtual {v2, v5}, Lcom/lge/camera/setting/SettingMenuAdapter;->setShowChild(Z)V

    .line 1121
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v0}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 1122
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    const/16 v3, 0x10

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->setSubMenuMode(I)V

    goto :goto_0

    .line 1125
    .end local v1    # "pref":Lcom/lge/camera/setting/ListPreference;
    :cond_3
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v3, Lcom/lge/camera/controller/SettingRotatableController$8;

    invoke-direct {v3, p0}, Lcom/lge/camera/controller/SettingRotatableController$8;-><init>(Lcom/lge/camera/controller/SettingRotatableController;)V

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1134
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, p1}, Lcom/lge/camera/ControllerFunction;->getIndexMenuKey(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    .line 1135
    .restart local v1    # "pref":Lcom/lge/camera/setting/ListPreference;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "key_camera_shutter_sound"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1136
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListView:Landroid/widget/ListView;

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setSoundEffectsEnabled(Z)V

    .line 1141
    :goto_1
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController;->mParentAdapter:Lcom/lge/camera/setting/SettingMenuAdapter;

    invoke-virtual {v2, v5}, Lcom/lge/camera/setting/SettingMenuAdapter;->setShowChild(Z)V

    .line 1142
    iget v2, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_MARGIN_LEFT:I

    iget v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_MARGIN_TOP:I

    invoke-direct {p0, p1, v2, v3}, Lcom/lge/camera/controller/SettingRotatableController;->updateChildSettingListHeight(III)V

    .line 1143
    iget v2, p0, Lcom/lge/camera/controller/SettingRotatableController;->mDegree:I

    invoke-virtual {p0, v2, v4}, Lcom/lge/camera/controller/SettingRotatableController;->setChildMenuLocation(IZ)V

    .line 1144
    invoke-virtual {p0}, Lcom/lge/camera/controller/SettingRotatableController;->showChildSettingView()V

    .line 1146
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListView:Landroid/widget/ListView;

    if-eqz v2, :cond_0

    .line 1147
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController;->mChildAdapter:Lcom/lge/camera/setting/SettingMenuAdapter;

    invoke-virtual {v2, v5}, Lcom/lge/camera/setting/SettingMenuAdapter;->setShowSelectedChild(Z)V

    .line 1148
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "key_help_guide"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1149
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController;->mChildAdapter:Lcom/lge/camera/setting/SettingMenuAdapter;

    invoke-virtual {v2, v4}, Lcom/lge/camera/setting/SettingMenuAdapter;->setShowSelectedChild(Z)V

    .line 1150
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListView:Landroid/widget/ListView;

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setSelected(Z)V

    .line 1151
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v3, Lcom/lge/camera/controller/SettingRotatableController$9;

    invoke-direct {v3, p0}, Lcom/lge/camera/controller/SettingRotatableController$9;-><init>(Lcom/lge/camera/controller/SettingRotatableController;)V

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 1138
    :cond_4
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListView:Landroid/widget/ListView;

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setSoundEffectsEnabled(Z)V

    goto :goto_1
.end method

.method private updateChildSettingListHeight(III)V
    .locals 9
    .param p1, "parentSettingPosition"    # I
    .param p2, "leftMargin"    # I
    .param p3, "topMargin"    # I

    .prologue
    const/16 v8, 0xb4

    const/4 v7, 0x0

    .line 1037
    const/4 v2, 0x0

    .line 1039
    .local v2, "mNumOfChildItems":I
    iget-object v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4, p1}, Lcom/lge/camera/ControllerFunction;->getSelectedChildCount(I)I

    move-result v2

    .line 1041
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->getSettingListHeight()I

    move-result v4

    if-gt v2, v4, :cond_1

    .line 1042
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_WIDTH:I

    const/4 v5, -0x2

    invoke-direct {v1, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1044
    .local v1, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->mDegree:I

    invoke-static {v4, v5, v8}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1045
    iget v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_MARGIN_LEFT:I

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_MARGIN_TOP:I

    invoke-virtual {v1, v4, v5, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1049
    :goto_0
    iget-object v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListView:Landroid/widget/ListView;

    invoke-virtual {v4, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1074
    :goto_1
    return-void

    .line 1047
    :cond_0
    iget v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_MARGIN_LEFT:I

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_MARGIN_TOP:I

    invoke-virtual {v1, v4, v5, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 1051
    .end local v1    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    iget-object v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->mDegree:I

    const/16 v6, 0x5a

    invoke-static {v4, v5, v6}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->mDegree:I

    const/16 v6, 0x10e

    invoke-static {v4, v5, v6}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1053
    :cond_2
    const/4 v0, -0x2

    .line 1054
    .local v0, "childLayoutHeight":I
    invoke-direct {p0}, Lcom/lge/camera/controller/SettingRotatableController;->getVisibleMenuCount()I

    move-result v3

    .line 1055
    .local v3, "visibleCount":I
    if-le v2, v3, :cond_3

    .line 1056
    invoke-direct {p0, v3}, Lcom/lge/camera/controller/SettingRotatableController;->getMenuListHeight(I)I

    move-result v0

    .line 1058
    :cond_3
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_WIDTH:I

    invoke-direct {v1, v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1060
    .restart local v1    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v1, p2, p3, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1061
    iget-object v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListView:Landroid/widget/ListView;

    invoke-virtual {v4, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 1063
    .end local v0    # "childLayoutHeight":I
    .end local v1    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v3    # "visibleCount":I
    :cond_4
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_WIDTH:I

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_HEIGHT:I

    iget v6, p0, Lcom/lge/camera/controller/SettingRotatableController;->MARGIN_HEIGHT:I

    add-int/2addr v5, v6

    invoke-direct {v1, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1065
    .restart local v1    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->mDegree:I

    invoke-static {v4, v5, v8}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1066
    iget v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_MARGIN_LEFT:I

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->TITLE_HEIGHT:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_MARGIN_TOP:I

    invoke-virtual {v1, v4, v5, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1071
    :goto_2
    iget-object v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListView:Landroid/widget/ListView;

    invoke-virtual {v4, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 1069
    :cond_5
    iget v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_MARGIN_LEFT:I

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_MARGIN_TOP:I

    invoke-virtual {v1, v4, v5, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_2
.end method

.method private updateParentSettingListHeight(II)V
    .locals 13
    .param p1, "leftMargin"    # I
    .param p2, "topMargin"    # I

    .prologue
    const/16 v12, 0xb4

    const/4 v10, -0x2

    const/4 v11, 0x0

    .line 988
    iget-object v8, p0, Lcom/lge/camera/controller/SettingRotatableController;->mParentAdapter:Lcom/lge/camera/setting/SettingMenuAdapter;

    invoke-virtual {v8}, Lcom/lge/camera/setting/SettingMenuAdapter;->getCount()I

    move-result v2

    .line 989
    .local v2, "parentAdapterCount":I
    iget-object v8, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v9, 0x7f0d0200

    invoke-interface {v8, v9}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 991
    .local v3, "parentLayout":Landroid/view/View;
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->getSettingListHeight()I

    move-result v8

    if-gt v2, v8, :cond_1

    .line 992
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    iget v8, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_WIDTH:I

    invoke-direct {v6, v8, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 994
    .local v6, "parentLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v8, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_WIDTH:I

    invoke-direct {v1, v8, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 996
    .local v1, "listLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v8, p0, Lcom/lge/camera/controller/SettingRotatableController;->mParentSettingListView:Landroid/widget/ListView;

    invoke-virtual {v8, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 997
    iget-object v8, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v8}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget v9, p0, Lcom/lge/camera/controller/SettingRotatableController;->mDegree:I

    invoke-static {v8, v9, v12}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 998
    iget v8, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_MARGIN_LEFT:I

    iget v9, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_MARGIN_TOP:I

    invoke-virtual {v6, v8, v9, v11, v11}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1002
    :goto_0
    invoke-virtual {v3, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1033
    .end local v1    # "listLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v6    # "parentLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :goto_1
    return-void

    .line 1000
    .restart local v1    # "listLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v6    # "parentLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    iget v8, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_MARGIN_LEFT:I

    iget v9, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_MARGIN_TOP:I

    invoke-virtual {v6, v8, v9, v11, v11}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 1004
    .end local v1    # "listLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v6    # "parentLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    iget-object v8, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v8}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget v9, p0, Lcom/lge/camera/controller/SettingRotatableController;->mDegree:I

    const/16 v10, 0x5a

    invoke-static {v8, v9, v10}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v8

    if-nez v8, :cond_2

    iget-object v8, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v8}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget v9, p0, Lcom/lge/camera/controller/SettingRotatableController;->mDegree:I

    const/16 v10, 0x10e

    invoke-static {v8, v9, v10}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1006
    :cond_2
    invoke-direct {p0}, Lcom/lge/camera/controller/SettingRotatableController;->getVisibleMenuCount()I

    move-result v7

    .line 1007
    .local v7, "visibleCount":I
    const/4 v4, -0x2

    .line 1008
    .local v4, "parentLayoutHeight":I
    if-le v2, v7, :cond_3

    .line 1009
    const/16 v8, 0x8

    if-lt v2, v8, :cond_3

    .line 1010
    invoke-direct {p0, v7}, Lcom/lge/camera/controller/SettingRotatableController;->getMenuListHeight(I)I

    move-result v8

    iget v9, p0, Lcom/lge/camera/controller/SettingRotatableController;->TITLE_HEIGHT:I

    add-int/2addr v8, v9

    iget v9, p0, Lcom/lge/camera/controller/SettingRotatableController;->MARGIN_HEIGHT:I

    add-int v4, v8, v9

    .line 1014
    :cond_3
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v8, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_WIDTH:I

    invoke-direct {v1, v8, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1016
    .restart local v1    # "listLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v8, p0, Lcom/lge/camera/controller/SettingRotatableController;->mParentSettingListView:Landroid/widget/ListView;

    invoke-virtual {v8, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1018
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    iget v8, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_WIDTH:I

    invoke-direct {v5, v8, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1020
    .local v5, "parentLayoutParam":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v5, p1, p2, v11, v11}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1021
    invoke-virtual {v3, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 1023
    .end local v1    # "listLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v4    # "parentLayoutHeight":I
    .end local v5    # "parentLayoutParam":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v7    # "visibleCount":I
    :cond_4
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v8, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_WIDTH:I

    iget v9, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_HEIGHT:I

    iget v10, p0, Lcom/lge/camera/controller/SettingRotatableController;->MARGIN_HEIGHT:I

    add-int/2addr v9, v10

    invoke-direct {v0, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1025
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v8, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v8}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget v9, p0, Lcom/lge/camera/controller/SettingRotatableController;->mDegree:I

    invoke-static {v8, v9, v12}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1026
    iget v8, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_MARGIN_LEFT:I

    iget v9, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_MARGIN_TOP:I

    invoke-virtual {v0, v8, v9, v11, v11}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1030
    :goto_2
    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 1028
    :cond_5
    iget v8, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_MARGIN_LEFT:I

    iget v9, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_MARGIN_TOP:I

    invoke-virtual {v0, v8, v9, v11, v11}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_2
.end method


# virtual methods
.method public childCustomViewAnimation(Landroid/view/animation/Animation;)V
    .locals 6
    .param p1, "anim"    # Landroid/view/animation/Animation;

    .prologue
    const v5, 0x7f0d0205

    const v4, 0x7f0d01dc

    const v3, 0x7f0d01d1

    .line 492
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v5}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 493
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v5}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/components/RotateLayout;

    .line 494
    .local v1, "rlZ":Lcom/lge/camera/components/RotateLayout;
    invoke-virtual {v1, p1}, Lcom/lge/camera/components/RotateLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 496
    .end local v1    # "rlZ":Lcom/lge/camera/components/RotateLayout;
    :cond_0
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v4}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 497
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v4}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateLayout;

    .line 498
    .local v0, "rlB":Lcom/lge/camera/components/RotateLayout;
    invoke-virtual {v0, p1}, Lcom/lge/camera/components/RotateLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 500
    .end local v0    # "rlB":Lcom/lge/camera/components/RotateLayout;
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 501
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateLayout;

    .line 502
    .restart local v0    # "rlB":Lcom/lge/camera/components/RotateLayout;
    invoke-virtual {v0, p1}, Lcom/lge/camera/components/RotateLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 504
    .end local v0    # "rlB":Lcom/lge/camera/components/RotateLayout;
    :cond_2
    return-void
.end method

.method public displaySettingView()V
    .locals 9

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 136
    const-string v3, "CameraApp"

    const-string v4, "settingView : displaySettingView-start"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-boolean v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mSettingViewRemoving:Z

    if-eqz v3, :cond_0

    .line 139
    iget-object v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "com.lge.camera.command.DisplaySettingMenu"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->removeScheduledCommand(Ljava/lang/String;)V

    .line 140
    iget-object v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "com.lge.camera.command.ShowSettingMenu"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->removeScheduledCommand(Ljava/lang/String;)V

    .line 141
    iget-object v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "com.lge.camera.command.ShowSettingMenu"

    const-wide/16 v6, 0x12c

    invoke-interface {v3, v4, v6, v7}, Lcom/lge/camera/ControllerFunction;->doCommandDelayed(Ljava/lang/String;J)V

    .line 142
    const-string v3, "CameraApp"

    const-string v4, "settingView : displaySettingView - return, send command"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    :goto_0
    return-void

    .line 146
    :cond_0
    iget-object v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v3

    iput v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mDegree:I

    .line 147
    iget-object v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v7}, Lcom/lge/camera/ControllerFunction;->hideChildCustomView(Z)V

    .line 149
    iget-object v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v4, 0x5

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->setSubMenuMode(I)V

    .line 150
    invoke-virtual {p0}, Lcom/lge/camera/controller/SettingRotatableController;->removeSettingItem()V

    .line 152
    new-instance v3, Lcom/lge/camera/setting/SettingMenuAdapter;

    iget-object v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Lcom/lge/camera/controller/SettingRotatableController;->getCurrentSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {v3, v4, v5, v6}, Lcom/lge/camera/setting/SettingMenuAdapter;-><init>(Landroid/content/Context;Lcom/lge/camera/setting/SettingMenu;I)V

    iput-object v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mChildAdapter:Lcom/lge/camera/setting/SettingMenuAdapter;

    .line 154
    new-instance v3, Lcom/lge/camera/setting/SettingMenuAdapter;

    iget-object v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Lcom/lge/camera/controller/SettingRotatableController;->getCurrentSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v5

    invoke-direct {v3, v4, v5, v7}, Lcom/lge/camera/setting/SettingMenuAdapter;-><init>(Landroid/content/Context;Lcom/lge/camera/setting/SettingMenu;I)V

    iput-object v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mParentAdapter:Lcom/lge/camera/setting/SettingMenuAdapter;

    .line 157
    iget-object v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mSettingView:Landroid/view/View;

    if-nez v3, :cond_1

    .line 158
    const-string v3, "CameraApp"

    const-string v4, "inflate Setting Layout...!!"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-object v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v4, 0x7f030048

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->inflateView(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mSettingView:Landroid/view/View;

    .line 160
    iget-object v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v4, 0x7f0d00c5

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 161
    .local v2, "vg":Landroid/view/ViewGroup;
    iget-object v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mSettingView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 163
    .end local v2    # "vg":Landroid/view/ViewGroup;
    :cond_1
    iget-object v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mSettingView:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 165
    iget-object v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getBackupCurrentMenuIndex()I

    move-result v3

    if-eq v3, v8, :cond_2

    .line 166
    iget-object v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getBackupCurrentMenuIndex()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->setCurrentSettingMenu(I)Z

    .line 167
    iget-object v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v8}, Lcom/lge/camera/ControllerFunction;->setBackupCurrentMenuIndex(I)V

    .line 170
    :cond_2
    iget-object v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getCurrentSettingMenuIndex()I

    move-result v0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getSettingMenuCount()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 171
    iget-object v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v0}, Lcom/lge/camera/ControllerFunction;->getSettingMenuItem(I)Lcom/lge/camera/setting/SettingMenuItem;

    move-result-object v3

    iget-boolean v3, v3, Lcom/lge/camera/setting/SettingMenuItem;->enable:Z

    if-nez v3, :cond_3

    .line 170
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 174
    :cond_3
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_5

    .line 175
    iget-object v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v7}, Lcom/lge/camera/ControllerFunction;->setCurrentSettingMenu(I)Z

    .line 183
    :cond_4
    :goto_2
    iget-object v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v4, 0x7f0d01cf

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListView:Landroid/widget/ListView;

    .line 184
    iget-object v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListView:Landroid/widget/ListView;

    invoke-virtual {v3, v7}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 185
    iget-object v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->mChildAdapter:Lcom/lge/camera/setting/SettingMenuAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 186
    iget-object v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListView:Landroid/widget/ListView;

    invoke-virtual {v3, v7}, Landroid/widget/ListView;->setSelected(Z)V

    .line 189
    iget-object v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListViewTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 190
    iget-object v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListViewItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 191
    iget-object v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getSelectedChildIndex()I

    move-result v4

    invoke-virtual {v3, v4, v7}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 192
    iget-object v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListView:Landroid/widget/ListView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 194
    iget-object v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v4, 0x7f0d01ce

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mParentSettingListView:Landroid/widget/ListView;

    .line 195
    iget-object v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mParentSettingListView:Landroid/widget/ListView;

    invoke-virtual {v3, v7}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 196
    iget-object v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mParentSettingListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->mParentAdapter:Lcom/lge/camera/setting/SettingMenuAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 197
    iget-object v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mParentSettingListView:Landroid/widget/ListView;

    invoke-virtual {v3, v7}, Landroid/widget/ListView;->setSelected(Z)V

    .line 200
    iget-object v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mParentSettingListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->mParentSettingListViewTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 201
    iget-object v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mParentSettingListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->mParentSettingListViewItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 202
    iget-object v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mParentSettingListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getSelectedChildIndex()I

    move-result v4

    invoke-virtual {v3, v4, v7}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 204
    iget-object v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v4, 0x7f0d0201

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 205
    .local v1, "mParentSettingTitle":Landroid/widget/TextView;
    const/4 v3, 0x2

    invoke-static {v3}, Lcom/lge/camera/util/ColorUtil;->getItemColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 210
    iget v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mDegree:I

    invoke-virtual {p0, v3}, Lcom/lge/camera/controller/SettingRotatableController;->rotateParentList(I)V

    .line 211
    iget v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mDegree:I

    invoke-virtual {p0, v3}, Lcom/lge/camera/controller/SettingRotatableController;->rotateChildList(I)V

    .line 212
    iget v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mDegree:I

    invoke-direct {p0, v3}, Lcom/lge/camera/controller/SettingRotatableController;->rotateChildCustom(I)V

    .line 213
    invoke-virtual {p0}, Lcom/lge/camera/controller/SettingRotatableController;->showAnimation()V

    .line 215
    const-string v3, "CameraApp"

    const-string v4, "displaySettingView-end"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 177
    .end local v1    # "mParentSettingTitle":Landroid/widget/TextView;
    :cond_5
    iget-object v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v0}, Lcom/lge/camera/ControllerFunction;->setCurrentSettingMenu(I)Z

    goto/16 :goto_2
.end method

.method public hideAnimation()V
    .locals 6

    .prologue
    const v5, 0x7f0d0203

    const v4, 0x7f0d01ff

    .line 424
    iget-object v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v5}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_1

    .line 446
    :cond_0
    :goto_0
    return-void

    .line 428
    :cond_1
    iget-object v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lge/camera/components/RotateLayout;

    .line 429
    .local v2, "rlP":Lcom/lge/camera/components/RotateLayout;
    iget-object v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v5}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/components/RotateLayout;

    .line 431
    .local v1, "rlC":Lcom/lge/camera/components/RotateLayout;
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 432
    .local v0, "anim":Landroid/view/animation/Animation;
    new-instance v3, Lcom/lge/camera/controller/SettingRotatableController$5;

    invoke-direct {v3, p0}, Lcom/lge/camera/controller/SettingRotatableController$5;-><init>(Lcom/lge/camera/controller/SettingRotatableController;)V

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 442
    const-wide/16 v4, 0x12c

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 443
    invoke-virtual {v2, v0}, Lcom/lge/camera/components/RotateLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 444
    invoke-virtual {v1, v0}, Lcom/lge/camera/components/RotateLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 445
    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/SettingRotatableController;->childCustomViewAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public initController()V
    .locals 1

    .prologue
    .line 96
    const v0, 0x7f09014b

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/SettingRotatableController;->getPixelFromDimens(I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_WIDTH:I

    .line 97
    const v0, 0x7f09014c

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/SettingRotatableController;->getPixelFromDimens(I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_HEIGHT:I

    .line 98
    const v0, 0x7f090149

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/SettingRotatableController;->getPixelFromDimens(I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_MARGIN_LEFT:I

    .line 100
    const v0, 0x7f09014a

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/SettingRotatableController;->getPixelFromDimens(I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_MARGIN_TOP:I

    .line 101
    const v0, 0x7f09014f

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/SettingRotatableController;->getPixelFromDimens(I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_WIDTH:I

    .line 102
    const v0, 0x7f090150

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/SettingRotatableController;->getPixelFromDimens(I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_HEIGHT:I

    .line 103
    const v0, 0x7f09014d

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/SettingRotatableController;->getPixelFromDimens(I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_MARGIN_LEFT:I

    .line 104
    const v0, 0x7f09014e

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/SettingRotatableController;->getPixelFromDimens(I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_MARGIN_TOP:I

    .line 105
    const v0, 0x7f090151

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/SettingRotatableController;->getPixelFromDimens(I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->TITLE_HEIGHT:I

    .line 107
    const v0, 0x7f090008

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/SettingRotatableController;->getPixelFromDimens(I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->LCD_WIDTH:I

    .line 108
    const v0, 0x7f090009

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/SettingRotatableController;->getPixelFromDimens(I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->LCD_HEIGHT:I

    .line 109
    const v0, 0x7f09001a

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/SettingRotatableController;->getPixelFromDimens(I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->PANEL_WIDTH:I

    .line 110
    const v0, 0x7f090055

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/SettingRotatableController;->getPixelFromDimens(I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->CONFIG_ITEM_HEIGHT:I

    .line 111
    iget v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->CONFIG_ITEM_HEIGHT:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->MARGIN_HEIGHT:I

    .line 113
    const v0, 0x7f0900eb

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/SettingRotatableController;->getPixelFromDimens(I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_ZOOM_WIDTH:I

    .line 114
    const v0, 0x7f0900ec

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/SettingRotatableController;->getPixelFromDimens(I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_ZOOM_HEIGHT:I

    .line 115
    const v0, 0x7f0900f6

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/SettingRotatableController;->getPixelFromDimens(I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_BRIGHTNESS_WIDTH:I

    .line 116
    const v0, 0x7f0900f7

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/SettingRotatableController;->getPixelFromDimens(I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_BRIGHTNESS_LAND_HEIGHT:I

    .line 117
    const v0, 0x7f0900f8

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/SettingRotatableController;->getPixelFromDimens(I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_BRIGHTNESS_PORT_HEIGHT:I

    .line 118
    const v0, 0x7f0900f9

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/SettingRotatableController;->getPixelFromDimens(I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_BRIGHTNESS_MARGIN_LEFT:I

    .line 121
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v0

    iput v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->mDegree:I

    .line 132
    invoke-super {p0}, Lcom/lge/camera/controller/SettingController;->initController()V

    .line 133
    return-void
.end method

.method public isNullSettingView()Z
    .locals 1

    .prologue
    .line 969
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->mSettingView:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSettingViewRemoving()Z
    .locals 1

    .prologue
    .line 329
    iget-boolean v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->mSettingViewRemoving:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 973
    invoke-virtual {p0}, Lcom/lge/camera/controller/SettingRotatableController;->isNullSettingView()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->mSettingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1382
    const-string v0, "CameraApp"

    const-string v1, "onDestroy-start"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1384
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v0

    if-nez v0, :cond_4

    .line 1385
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->mCameraMainSettingMenu:Lcom/lge/camera/setting/CameraMainSettingMenu;

    invoke-virtual {v0}, Lcom/lge/camera/setting/CameraMainSettingMenu;->close()V

    .line 1386
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->mCameraFrontSettingMenu:Lcom/lge/camera/setting/CameraFrontSettingMenu;

    invoke-virtual {v0}, Lcom/lge/camera/setting/CameraFrontSettingMenu;->close()V

    .line 1387
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->mCameraMainSetting:Lcom/lge/camera/setting/CameraSetting;

    invoke-virtual {v0}, Lcom/lge/camera/setting/CameraSetting;->close()V

    .line 1388
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->mCameraFrontSetting:Lcom/lge/camera/setting/CameraSetting;

    invoke-virtual {v0}, Lcom/lge/camera/setting/CameraSetting;->close()V

    .line 1395
    :goto_0
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->mSetting:Lcom/lge/camera/setting/Setting;

    invoke-virtual {v0}, Lcom/lge/camera/setting/Setting;->close()V

    .line 1397
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->mParentSettingListView:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    .line 1398
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wow not null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController;->mParentAdapter:Lcom/lge/camera/setting/SettingMenuAdapter;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController;->mParentSettingListView:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1399
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->mParentSettingListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1400
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->mParentSettingListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1401
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->mParentSettingListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->removeAllViewsInLayout()V

    .line 1402
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->mParentSettingListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1403
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->mParentSettingListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1404
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->mParentSettingListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1406
    :cond_0
    iput-object v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mParentSettingListView:Landroid/widget/ListView;

    .line 1408
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListView:Landroid/widget/ListView;

    if-eqz v0, :cond_3

    .line 1409
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wow not null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController;->mChildAdapter:Lcom/lge/camera/setting/SettingMenuAdapter;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListView:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1410
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1411
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1412
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->removeAllViewsInLayout()V

    .line 1413
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1414
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1415
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1417
    :cond_2
    iput-object v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListView:Landroid/widget/ListView;

    .line 1424
    :cond_3
    invoke-super {p0}, Lcom/lge/camera/controller/SettingController;->onDestroy()V

    .line 1425
    const-string v0, "CameraApp"

    const-string v1, "onDestroy-end"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1426
    return-void

    .line 1390
    :cond_4
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->mVideoMainSettingMenu:Lcom/lge/camera/setting/VideoMainSettingMenu;

    invoke-virtual {v0}, Lcom/lge/camera/setting/VideoMainSettingMenu;->close()V

    .line 1391
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->mVideoFrontSettingMenu:Lcom/lge/camera/setting/VideoFrontSettingMenu;

    invoke-virtual {v0}, Lcom/lge/camera/setting/VideoFrontSettingMenu;->close()V

    .line 1392
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->mCamcorderMainSetting:Lcom/lge/camera/setting/VideoSetting;

    invoke-virtual {v0}, Lcom/lge/camera/setting/VideoSetting;->close()V

    .line 1393
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->mCamcorderFrontSetting:Lcom/lge/camera/setting/VideoSetting;

    invoke-virtual {v0}, Lcom/lge/camera/setting/VideoSetting;->close()V

    goto/16 :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 1359
    const-string v0, "CameraApp"

    const-string v1, "onPause-start"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1360
    iget-boolean v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->mSettingInit:Z

    if-eqz v0, :cond_0

    .line 1361
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v0

    if-nez v0, :cond_3

    .line 1362
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->mCameraMainSetting:Lcom/lge/camera/setting/CameraSetting;

    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/camera/setting/CameraSetting;->saveSetting(Landroid/content/Context;)V

    .line 1363
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->mCameraFrontSetting:Lcom/lge/camera/setting/CameraSetting;

    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/camera/setting/CameraSetting;->saveSetting(Landroid/content/Context;)V

    .line 1370
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_2

    .line 1372
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->setSubMenuMode(I)V

    .line 1373
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.RemoveSettingMenu"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 1376
    :cond_2
    invoke-super {p0}, Lcom/lge/camera/controller/SettingController;->onPause()V

    .line 1377
    const-string v0, "CameraApp"

    const-string v1, "onPause-end"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1378
    return-void

    .line 1365
    :cond_3
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->mCamcorderMainSetting:Lcom/lge/camera/setting/VideoSetting;

    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/camera/setting/VideoSetting;->saveSetting(Landroid/content/Context;)V

    .line 1366
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->mCamcorderFrontSetting:Lcom/lge/camera/setting/VideoSetting;

    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/camera/setting/VideoSetting;->saveSetting(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public removeChildSettingView(Z)V
    .locals 6
    .param p1, "isShowAnim"    # Z

    .prologue
    const v5, 0x7f0d0203

    const/4 v4, 0x0

    .line 333
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f0d01ff

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v5}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1

    .line 369
    :cond_0
    :goto_0
    return-void

    .line 337
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v2

    const/16 v3, 0x10

    if-ne v2, v3, :cond_0

    .line 338
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v5}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/components/RotateLayout;

    .line 340
    .local v1, "rlC":Lcom/lge/camera/components/RotateLayout;
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 341
    .local v0, "anim":Landroid/view/animation/Animation;
    new-instance v2, Lcom/lge/camera/controller/SettingRotatableController$2;

    invoke-direct {v2, p0}, Lcom/lge/camera/controller/SettingRotatableController$2;-><init>(Lcom/lge/camera/controller/SettingRotatableController;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 354
    if-eqz p1, :cond_2

    const-wide/16 v2, 0x12c

    :goto_1
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 355
    invoke-virtual {v1, v0}, Lcom/lge/camera/components/RotateLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 356
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v3, 0x5

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->setSubMenuMode(I)V

    .line 357
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController;->mParentAdapter:Lcom/lge/camera/setting/SettingMenuAdapter;

    invoke-virtual {v2, v4}, Lcom/lge/camera/setting/SettingMenuAdapter;->setShowChild(Z)V

    .line 358
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController;->mParentSettingListView:Landroid/widget/ListView;

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setSelected(Z)V

    .line 360
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v3, Lcom/lge/camera/controller/SettingRotatableController$3;

    invoke-direct {v3, p0}, Lcom/lge/camera/controller/SettingRotatableController$3;-><init>(Lcom/lge/camera/controller/SettingRotatableController;)V

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 354
    :cond_2
    const-wide/16 v2, 0x0

    goto :goto_1
.end method

.method public removeSettingView()V
    .locals 8

    .prologue
    const v7, 0x7f0d0203

    const v5, 0x7f0d01ff

    const/4 v6, 0x1

    .line 221
    const-string v3, "CameraApp"

    const-string v4, "settingView : removeSettingView - animation start"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    iget-object v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v5}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v7}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mSettingViewRemoving:Z

    if-eqz v3, :cond_1

    .line 225
    :cond_0
    const-string v3, "CameraApp"

    const-string v4, "settingView : removeSettingView - return"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    :goto_0
    return-void

    .line 229
    :cond_1
    iput-boolean v6, p0, Lcom/lge/camera/controller/SettingRotatableController;->mSettingViewRemoving:Z

    .line 230
    iget-object v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v5}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lge/camera/components/RotateLayout;

    .line 231
    .local v2, "rlP":Lcom/lge/camera/components/RotateLayout;
    iget-object v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v7}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/components/RotateLayout;

    .line 232
    .local v1, "rlC":Lcom/lge/camera/components/RotateLayout;
    invoke-virtual {v2}, Lcom/lge/camera/components/RotateLayout;->clearAnimation()V

    .line 233
    invoke-virtual {v1}, Lcom/lge/camera/components/RotateLayout;->clearAnimation()V

    .line 234
    iget-object v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 235
    invoke-virtual {p0}, Lcom/lge/camera/controller/SettingRotatableController;->removeSettingViewAll()V

    .line 269
    :goto_1
    iget-object v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v6}, Lcom/lge/camera/ControllerFunction;->hideChildCustomView(Z)V

    goto :goto_0

    .line 237
    :cond_2
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 238
    .local v0, "anim":Landroid/view/animation/Animation;
    new-instance v3, Lcom/lge/camera/controller/SettingRotatableController$1;

    invoke-direct {v3, p0}, Lcom/lge/camera/controller/SettingRotatableController$1;-><init>(Lcom/lge/camera/controller/SettingRotatableController;)V

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 265
    const-wide/16 v4, 0x12c

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 266
    invoke-virtual {v2, v0}, Lcom/lge/camera/components/RotateLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 267
    invoke-virtual {v1, v0}, Lcom/lge/camera/components/RotateLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1
.end method

.method public removeSettingViewAll()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 273
    const-string v1, "CameraApp"

    const-string v2, "settingView : removeSettingViewAll -start"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->mSettingView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->mSettingView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-ne v1, v5, :cond_2

    .line 277
    :cond_0
    const-string v1, "CameraApp"

    const-string v2, "settingView : removeSettingView -return, mSettingView is null"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    iput-boolean v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->mSettingViewRemoving:Z

    .line 326
    :cond_1
    :goto_0
    return-void

    .line 282
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.Rotate"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 283
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->mSettingView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 285
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->mParentSettingListView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 286
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->mParentSettingListView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 287
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->mParentSettingListView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 288
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->mParentSettingListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->removeAllViewsInLayout()V

    .line 289
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->mParentSettingListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 290
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->mParentSettingListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 291
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->mParentSettingListView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 293
    :cond_3
    iput-object v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mParentSettingListView:Landroid/widget/ListView;

    .line 294
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->mParentAdapter:Lcom/lge/camera/setting/SettingMenuAdapter;

    invoke-virtual {v1, v4}, Lcom/lge/camera/setting/SettingMenuAdapter;->setShowChild(Z)V

    .line 295
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->mParentAdapter:Lcom/lge/camera/setting/SettingMenuAdapter;

    invoke-virtual {v1}, Lcom/lge/camera/setting/SettingMenuAdapter;->close()V

    .line 296
    iput-object v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mParentAdapter:Lcom/lge/camera/setting/SettingMenuAdapter;

    .line 298
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 299
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 300
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 301
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->removeAllViewsInLayout()V

    .line 302
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 303
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 304
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 306
    :cond_4
    iput-object v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListView:Landroid/widget/ListView;

    .line 307
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->mChildAdapter:Lcom/lge/camera/setting/SettingMenuAdapter;

    invoke-virtual {v1}, Lcom/lge/camera/setting/SettingMenuAdapter;->close()V

    .line 308
    iput-object v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mChildAdapter:Lcom/lge/camera/setting/SettingMenuAdapter;

    .line 310
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0d00c5

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 311
    .local v0, "vg":Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->mSettingView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 312
    iput-object v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mSettingView:Landroid/view/View;

    .line 314
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v4}, Lcom/lge/camera/ControllerFunction;->hideChildCustomView(Z)V

    .line 315
    invoke-virtual {p0}, Lcom/lge/camera/controller/SettingRotatableController;->initSettingMenu()V

    .line 316
    const/4 v1, -0x1

    iput v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->mDegree:I

    .line 317
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 318
    iput-boolean v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->mSettingViewRemoving:Z

    .line 321
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v1

    const/16 v2, 0x19

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v1

    const/16 v2, 0x12

    if-eq v1, v2, :cond_1

    .line 324
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v4}, Lcom/lge/camera/ControllerFunction;->setSubMenuMode(I)V

    goto/16 :goto_0
.end method

.method public rotateChildList(I)V
    .locals 7
    .param p1, "degree"    # I

    .prologue
    const v5, 0x7f0d0203

    .line 568
    iget-object v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_0

    .line 610
    :goto_0
    return-void

    .line 571
    :cond_0
    iget-object v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateLayout;

    .line 572
    .local v0, "cl":Lcom/lge/camera/components/RotateLayout;
    invoke-virtual {v0, p1}, Lcom/lge/camera/components/RotateLayout;->rotateLayout(I)V

    .line 575
    invoke-virtual {v0}, Lcom/lge/camera/components/RotateLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 576
    .local v2, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    const/4 v1, 0x0

    .line 577
    .local v1, "leftMargin":I
    const/4 v3, 0x0

    .line 578
    .local v3, "topMargin":I
    iget-object v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 579
    :goto_1
    sparse-switch p1, :sswitch_data_0

    .line 600
    :goto_2
    iget-object v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 601
    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 602
    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 607
    :goto_3
    invoke-virtual {v0, v2}, Lcom/lge/camera/components/RotateLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 608
    iget-object v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getCurrentSettingMenuIndex()I

    move-result v4

    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-direct {p0, v4, v5, v6}, Lcom/lge/camera/controller/SettingRotatableController;->updateChildSettingListHeight(III)V

    goto :goto_0

    .line 578
    :cond_1
    add-int/lit8 v4, p1, 0x5a

    rem-int/lit16 p1, v4, 0x168

    goto :goto_1

    .line 581
    :sswitch_0
    iget-boolean v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->mIsRtoL:Z

    if-eqz v4, :cond_2

    iget v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_MARGIN_LEFT:I

    .line 582
    :goto_4
    iget v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_MARGIN_TOP:I

    .line 583
    goto :goto_2

    .line 581
    :cond_2
    iget v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_MARGIN_LEFT:I

    goto :goto_4

    .line 585
    :sswitch_1
    iget v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_MARGIN_TOP:I

    .line 586
    iget-boolean v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->mIsRtoL:Z

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->LCD_HEIGHT:I

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_WIDTH:I

    sub-int v3, v4, v5

    .line 587
    :goto_5
    goto :goto_2

    .line 586
    :cond_3
    const/4 v3, 0x0

    goto :goto_5

    .line 589
    :sswitch_2
    iget v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_MARGIN_LEFT:I

    .line 590
    iget v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_MARGIN_TOP:I

    .line 591
    goto :goto_2

    .line 593
    :sswitch_3
    iget v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_MARGIN_TOP:I

    .line 594
    const/4 v3, 0x0

    .line 595
    goto :goto_2

    .line 604
    :cond_4
    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 605
    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_3

    .line 579
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method public rotateParentList(I)V
    .locals 8
    .param p1, "degree"    # I

    .prologue
    const v7, 0x7f0d01ff

    .line 515
    iget-object v6, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6, v7}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_0

    .line 565
    :goto_0
    return-void

    .line 518
    :cond_0
    iget-object v6, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6, v7}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/lge/camera/components/RotateLayout;

    .line 519
    .local v4, "pl":Lcom/lge/camera/components/RotateLayout;
    invoke-virtual {v4, p1}, Lcom/lge/camera/components/RotateLayout;->rotateLayout(I)V

    .line 522
    invoke-virtual {v4}, Lcom/lge/camera/components/RotateLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 523
    .local v2, "params_pl":Landroid/view/ViewGroup$MarginLayoutParams;
    const/4 v1, 0x0

    .line 524
    .local v1, "leftMargin":I
    const/4 v5, 0x0

    .line 525
    .local v5, "topMargin":I
    iget-object v6, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 526
    :goto_1
    sparse-switch p1, :sswitch_data_0

    .line 556
    :goto_2
    iget-object v6, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 557
    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 558
    iput v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 563
    :goto_3
    invoke-virtual {v4, v2}, Lcom/lge/camera/components/RotateLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 564
    iget v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v7, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-direct {p0, v6, v7}, Lcom/lge/camera/controller/SettingRotatableController;->updateParentSettingListHeight(II)V

    goto :goto_0

    .line 525
    :cond_1
    add-int/lit8 v6, p1, 0x5a

    rem-int/lit16 p1, v6, 0x168

    goto :goto_1

    .line 528
    :sswitch_0
    iget-boolean v6, p0, Lcom/lge/camera/controller/SettingRotatableController;->mIsRtoL:Z

    if-eqz v6, :cond_2

    iget v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_MARGIN_LEFT:I

    .line 529
    :goto_4
    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_MARGIN_TOP:I

    .line 530
    goto :goto_2

    .line 528
    :cond_2
    iget v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_MARGIN_LEFT:I

    goto :goto_4

    .line 532
    :sswitch_1
    iget v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_MARGIN_LEFT:I

    .line 533
    iget-boolean v6, p0, Lcom/lge/camera/controller/SettingRotatableController;->mIsRtoL:Z

    if-eqz v6, :cond_3

    const/4 v5, 0x0

    .line 534
    :goto_5
    goto :goto_2

    .line 533
    :cond_3
    iget v6, p0, Lcom/lge/camera/controller/SettingRotatableController;->LCD_HEIGHT:I

    iget v7, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_WIDTH:I

    sub-int v5, v6, v7

    goto :goto_5

    .line 536
    :sswitch_2
    iget v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_MARGIN_LEFT:I

    .line 538
    iget-object v6, p0, Lcom/lge/camera/controller/SettingRotatableController;->mParentAdapter:Lcom/lge/camera/setting/SettingMenuAdapter;

    invoke-virtual {v6}, Lcom/lge/camera/setting/SettingMenuAdapter;->getCount()I

    move-result v3

    .line 539
    .local v3, "parentAdapterCount":I
    iget v6, p0, Lcom/lge/camera/controller/SettingRotatableController;->CONFIG_ITEM_HEIGHT:I

    iget v7, p0, Lcom/lge/camera/controller/SettingRotatableController;->DIVIDER:I

    add-int/2addr v6, v7

    mul-int/2addr v6, v3

    iget v7, p0, Lcom/lge/camera/controller/SettingRotatableController;->DIVIDER:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/lge/camera/controller/SettingRotatableController;->TITLE_HEIGHT:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/lge/camera/controller/SettingRotatableController;->BG_BORDER_HEIGHT:I

    add-int v0, v6, v7

    .line 542
    .local v0, "layout_height":I
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->getSettingListHeight()I

    move-result v6

    if-gt v3, v6, :cond_4

    .line 543
    iget v6, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_MARGIN_TOP:I

    iget v7, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_HEIGHT:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/lge/camera/controller/SettingRotatableController;->MARGIN_HEIGHT:I

    add-int/2addr v6, v7

    sub-int v5, v6, v0

    goto :goto_2

    .line 545
    :cond_4
    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_MARGIN_TOP:I

    .line 547
    goto :goto_2

    .line 549
    .end local v0    # "layout_height":I
    .end local v3    # "parentAdapterCount":I
    :sswitch_3
    iget v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_MARGIN_LEFT:I

    .line 550
    iget v6, p0, Lcom/lge/camera/controller/SettingRotatableController;->LCD_HEIGHT:I

    iget v7, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_WIDTH:I

    sub-int v5, v6, v7

    .line 551
    goto :goto_2

    .line 560
    :cond_5
    iput v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 561
    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_3

    .line 526
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method public rotateSettingBeautyShot(I)V
    .locals 6
    .param p1, "degree"    # I

    .prologue
    const v5, 0x7f0d01d1

    .line 737
    iget-object v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_0

    .line 795
    :goto_0
    return-void

    .line 745
    :cond_0
    iget-object v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateLayout;

    .line 746
    .local v0, "cl":Lcom/lge/camera/components/RotateLayout;
    invoke-virtual {v0, p1}, Lcom/lge/camera/components/RotateLayout;->rotateLayout(I)V

    .line 748
    invoke-virtual {v0}, Lcom/lge/camera/components/RotateLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 749
    .local v2, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    const/4 v1, 0x0

    .line 750
    .local v1, "leftMargin":I
    const/4 v3, 0x0

    .line 751
    .local v3, "topMargin":I
    iget-object v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 752
    :goto_1
    sparse-switch p1, :sswitch_data_0

    .line 785
    :goto_2
    iget-object v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 786
    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 787
    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 793
    :goto_3
    iget-object v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->refreshBeautyshotSettingBars()V

    .line 794
    invoke-virtual {v0, v2}, Lcom/lge/camera/components/RotateLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 751
    :cond_1
    add-int/lit8 v4, p1, 0x5a

    rem-int/lit16 p1, v4, 0x168

    goto :goto_1

    .line 754
    :sswitch_0
    iget v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_MARGIN_LEFT:I

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_BRIGHTNESS_MARGIN_LEFT:I

    add-int v1, v4, v5

    .line 755
    iget v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_MARGIN_TOP:I

    .line 758
    goto :goto_2

    .line 760
    :sswitch_1
    iget v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_MARGIN_LEFT:I

    .line 761
    iget v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->LCD_HEIGHT:I

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_WIDTH:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_BRIGHTNESS_WIDTH:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_BRIGHTNESS_MARGIN_LEFT:I

    sub-int v3, v4, v5

    .line 765
    goto :goto_2

    .line 767
    :sswitch_2
    iget v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_MARGIN_LEFT:I

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_WIDTH:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_BRIGHTNESS_MARGIN_LEFT:I

    add-int v1, v4, v5

    .line 768
    invoke-direct {p0}, Lcom/lge/camera/controller/SettingRotatableController;->getCurrentParentSettingListHeight()I

    move-result v4

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_MARGIN_TOP:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_BRIGHTNESS_LAND_HEIGHT:I

    sub-int v3, v4, v5

    .line 772
    goto :goto_2

    .line 775
    :sswitch_3
    iget v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_MARGIN_LEFT:I

    .line 776
    iget v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->LCD_HEIGHT:I

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_WIDTH:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_BRIGHTNESS_WIDTH:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_BRIGHTNESS_MARGIN_LEFT:I

    sub-int v3, v4, v5

    .line 780
    goto :goto_2

    .line 789
    :cond_2
    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 790
    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_3

    .line 752
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method public rotateSettingBrightness(I)V
    .locals 6
    .param p1, "degree"    # I

    .prologue
    const v5, 0x7f0d01dc

    .line 672
    iget-object v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_0

    .line 734
    :goto_0
    return-void

    .line 680
    :cond_0
    iget-object v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateLayout;

    .line 681
    .local v0, "cl":Lcom/lge/camera/components/RotateLayout;
    invoke-virtual {v0, p1}, Lcom/lge/camera/components/RotateLayout;->rotateLayout(I)V

    .line 683
    invoke-virtual {v0}, Lcom/lge/camera/components/RotateLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 684
    .local v2, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    const/4 v1, 0x0

    .line 685
    .local v1, "leftMargin":I
    const/4 v3, 0x0

    .line 686
    .local v3, "topMargin":I
    iget-object v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 687
    :goto_1
    sparse-switch p1, :sswitch_data_0

    .line 724
    :goto_2
    iget-object v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 725
    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 726
    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 732
    :goto_3
    iget-object v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->refreshBrightnessSettingBars()V

    .line 733
    invoke-virtual {v0, v2}, Lcom/lge/camera/components/RotateLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 686
    :cond_1
    add-int/lit8 v4, p1, 0x5a

    rem-int/lit16 p1, v4, 0x168

    goto :goto_1

    .line 689
    :sswitch_0
    iget v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_MARGIN_LEFT:I

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_BRIGHTNESS_MARGIN_LEFT:I

    add-int v1, v4, v5

    .line 690
    iget v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_MARGIN_TOP:I

    .line 694
    goto :goto_2

    .line 696
    :sswitch_1
    iget v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_MARGIN_LEFT:I

    .line 697
    iget v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->LCD_HEIGHT:I

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_WIDTH:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_BRIGHTNESS_WIDTH:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_BRIGHTNESS_MARGIN_LEFT:I

    sub-int v3, v4, v5

    .line 702
    goto :goto_2

    .line 704
    :sswitch_2
    iget v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_MARGIN_LEFT:I

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_WIDTH:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_BRIGHTNESS_MARGIN_LEFT:I

    add-int v1, v4, v5

    .line 705
    invoke-direct {p0}, Lcom/lge/camera/controller/SettingRotatableController;->getCurrentParentSettingListHeight()I

    move-result v4

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_MARGIN_TOP:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_BRIGHTNESS_LAND_HEIGHT:I

    sub-int v3, v4, v5

    .line 710
    goto :goto_2

    .line 713
    :sswitch_3
    iget v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_MARGIN_LEFT:I

    .line 714
    iget v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->LCD_HEIGHT:I

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_WIDTH:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_BRIGHTNESS_WIDTH:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_BRIGHTNESS_MARGIN_LEFT:I

    sub-int v3, v4, v5

    .line 719
    goto :goto_2

    .line 728
    :cond_2
    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 729
    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_3

    .line 687
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method public rotateSettingCamera3dDepth(I)V
    .locals 6
    .param p1, "degree"    # I

    .prologue
    const v5, 0x7f0d01df

    .line 798
    iget-object v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_0

    .line 859
    :goto_0
    return-void

    .line 807
    :cond_0
    iget-object v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateLayout;

    .line 808
    .local v0, "cl":Lcom/lge/camera/components/RotateLayout;
    invoke-virtual {v0, p1}, Lcom/lge/camera/components/RotateLayout;->rotateLayout(I)V

    .line 810
    invoke-virtual {v0}, Lcom/lge/camera/components/RotateLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 811
    .local v2, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    const/4 v1, 0x0

    .line 812
    .local v1, "leftMargin":I
    const/4 v3, 0x0

    .line 813
    .local v3, "topMargin":I
    iget-object v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 814
    :goto_1
    sparse-switch p1, :sswitch_data_0

    .line 846
    :goto_2
    iget-object v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 847
    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 848
    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 854
    :goto_3
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->is3dSupportedModel()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 855
    iget-object v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->refresh3dDepthSettingBars()V

    .line 858
    :cond_1
    invoke-virtual {v0, v2}, Lcom/lge/camera/components/RotateLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 813
    :cond_2
    add-int/lit8 v4, p1, 0x5a

    rem-int/lit16 p1, v4, 0x168

    goto :goto_1

    .line 816
    :sswitch_0
    iget v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_MARGIN_LEFT:I

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_BRIGHTNESS_MARGIN_LEFT:I

    add-int v1, v4, v5

    .line 817
    iget v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_MARGIN_TOP:I

    .line 820
    goto :goto_2

    .line 822
    :sswitch_1
    iget v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_MARGIN_LEFT:I

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->TITLE_HEIGHT:I

    add-int v1, v4, v5

    .line 823
    iget v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->LCD_HEIGHT:I

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_WIDTH:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_BRIGHTNESS_WIDTH:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_BRIGHTNESS_MARGIN_LEFT:I

    sub-int v3, v4, v5

    .line 827
    goto :goto_2

    .line 829
    :sswitch_2
    iget v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_MARGIN_LEFT:I

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_WIDTH:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_BRIGHTNESS_MARGIN_LEFT:I

    add-int v1, v4, v5

    .line 830
    invoke-direct {p0}, Lcom/lge/camera/controller/SettingRotatableController;->getCurrentParentSettingListHeight()I

    move-result v4

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_MARGIN_TOP:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_BRIGHTNESS_LAND_HEIGHT:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->TITLE_HEIGHT:I

    sub-int v3, v4, v5

    .line 834
    goto :goto_2

    .line 836
    :sswitch_3
    iget v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_MARGIN_LEFT:I

    .line 837
    iget v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->LCD_HEIGHT:I

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_WIDTH:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_BRIGHTNESS_WIDTH:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_BRIGHTNESS_MARGIN_LEFT:I

    sub-int v3, v4, v5

    .line 841
    goto :goto_2

    .line 850
    :cond_3
    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 851
    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_3

    .line 814
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method public rotateSettingZoom(I)V
    .locals 6
    .param p1, "degree"    # I

    .prologue
    const v5, 0x7f0d0205

    .line 613
    iget-object v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_0

    .line 669
    :goto_0
    return-void

    .line 619
    :cond_0
    iget-object v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateLayout;

    .line 620
    .local v0, "cl":Lcom/lge/camera/components/RotateLayout;
    invoke-virtual {v0, p1}, Lcom/lge/camera/components/RotateLayout;->rotateLayout(I)V

    .line 622
    invoke-virtual {v0}, Lcom/lge/camera/components/RotateLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 623
    .local v2, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    const/4 v1, 0x0

    .line 624
    .local v1, "leftMargin":I
    const/4 v3, 0x0

    .line 625
    .local v3, "topMargin":I
    iget-object v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 626
    :goto_1
    sparse-switch p1, :sswitch_data_0

    .line 659
    :goto_2
    iget-object v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 660
    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 661
    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 667
    :goto_3
    iget-object v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->refreshZoomSettingBars()V

    .line 668
    invoke-virtual {v0, v2}, Lcom/lge/camera/components/RotateLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 625
    :cond_1
    add-int/lit8 v4, p1, 0x5a

    rem-int/lit16 p1, v4, 0x168

    goto :goto_1

    .line 628
    :sswitch_0
    iget v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_MARGIN_LEFT:I

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_BRIGHTNESS_MARGIN_LEFT:I

    add-int v1, v4, v5

    .line 629
    iget v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_MARGIN_TOP:I

    .line 632
    goto :goto_2

    .line 634
    :sswitch_1
    iget v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_MARGIN_LEFT:I

    .line 635
    iget v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->LCD_HEIGHT:I

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_WIDTH:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_BRIGHTNESS_WIDTH:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_BRIGHTNESS_MARGIN_LEFT:I

    sub-int v3, v4, v5

    .line 639
    goto :goto_2

    .line 641
    :sswitch_2
    iget v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_MARGIN_LEFT:I

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_WIDTH:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_BRIGHTNESS_MARGIN_LEFT:I

    add-int v1, v4, v5

    .line 642
    invoke-direct {p0}, Lcom/lge/camera/controller/SettingRotatableController;->getCurrentParentSettingListHeight()I

    move-result v4

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_MARGIN_TOP:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_BRIGHTNESS_LAND_HEIGHT:I

    sub-int v3, v4, v5

    .line 646
    goto :goto_2

    .line 649
    :sswitch_3
    iget v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_MARGIN_LEFT:I

    .line 650
    iget v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->LCD_HEIGHT:I

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_WIDTH:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_BRIGHTNESS_WIDTH:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_BRIGHTNESS_MARGIN_LEFT:I

    sub-int v3, v4, v5

    .line 654
    goto :goto_2

    .line 663
    :cond_2
    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 664
    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_3

    .line 626
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method public setChildMenuLocation(IZ)V
    .locals 20
    .param p1, "degree"    # I
    .param p2, "rotation"    # Z

    .prologue
    .line 862
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v17, v0

    const v18, 0x7f0d0203

    invoke-interface/range {v17 .. v18}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v17

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/SettingRotatableController;->mParentSettingListView:Landroid/widget/ListView;

    move-object/from16 v17, v0

    if-nez v17, :cond_1

    .line 966
    :cond_0
    :goto_0
    return-void

    .line 867
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v17, v0

    const v18, 0x7f0d0203

    invoke-interface/range {v17 .. v18}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/lge/camera/components/RotateLayout;

    .line 868
    .local v4, "cl":Lcom/lge/camera/components/RotateLayout;
    invoke-virtual {v4}, Lcom/lge/camera/components/RotateLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 871
    .local v12, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    const/4 v9, 0x0

    .line 872
    .local v9, "leftMargin":I
    const/4 v15, 0x0

    .line 874
    .local v15, "topMargin":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, p1

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 875
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/camera/controller/SettingRotatableController;->mIsRtoL:Z

    move/from16 v17, v0

    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    iget v9, v0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_MARGIN_LEFT:I

    .line 876
    :goto_1
    move-object/from16 v0, p0

    iget v15, v0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_MARGIN_TOP:I

    .line 958
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v17

    if-eqz v17, :cond_10

    .line 959
    iput v9, v12, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 960
    iput v15, v12, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 965
    :goto_3
    invoke-virtual {v4, v12}, Lcom/lge/camera/components/RotateLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 875
    :cond_3
    move-object/from16 v0, p0

    iget v9, v0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_MARGIN_LEFT:I

    goto :goto_1

    .line 877
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const/16 v18, 0xb4

    move-object/from16 v0, v17

    move/from16 v1, p1

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 878
    move-object/from16 v0, p0

    iget v9, v0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_MARGIN_LEFT:I

    .line 879
    move-object/from16 v0, p0

    iget v15, v0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_MARGIN_TOP:I

    .line 880
    const/4 v10, 0x0

    .line 881
    .local v10, "mNumOfChildItems":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/lge/camera/ControllerFunction;->getCurrentSettingMenuIndex()I

    move-result v5

    .line 882
    .local v5, "currentSelectIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v5}, Lcom/lge/camera/ControllerFunction;->getSelectedChildCount(I)I

    move-result v10

    .line 884
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->getSettingListHeight()I

    move-result v17

    move/from16 v0, v17

    if-gt v10, v0, :cond_5

    .line 885
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/controller/SettingRotatableController;->CONFIG_ITEM_HEIGHT:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/controller/SettingRotatableController;->DIVIDER:I

    move/from16 v18, v0

    add-int v17, v17, v18

    mul-int v17, v17, v10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/controller/SettingRotatableController;->DIVIDER:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/controller/SettingRotatableController;->BG_BORDER_HEIGHT:I

    move/from16 v18, v0

    add-int v8, v17, v18

    .line 887
    .local v8, "layout_height":I
    move-object/from16 v0, p0

    iget v9, v0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_MARGIN_LEFT:I

    .line 888
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_MARGIN_TOP:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_HEIGHT:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/controller/SettingRotatableController;->MARGIN_HEIGHT:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/controller/SettingRotatableController;->TITLE_HEIGHT:I

    move/from16 v18, v0

    add-int v18, v18, v8

    sub-int v15, v17, v18

    .line 890
    goto/16 :goto_2

    .end local v8    # "layout_height":I
    :cond_5
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->getSettingListHeight()I

    move-result v17

    move/from16 v0, v17

    if-le v10, v0, :cond_2

    .line 891
    move-object/from16 v0, p0

    iget v9, v0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_MARGIN_LEFT:I

    .line 892
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_MARGIN_TOP:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/controller/SettingRotatableController;->TITLE_HEIGHT:I

    move/from16 v18, v0

    sub-int v15, v17, v18

    goto/16 :goto_2

    .line 895
    .end local v5    # "currentSelectIndex":I
    .end local v10    # "mNumOfChildItems":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/lge/camera/ControllerFunction;->getCurrentSettingMenuIndex()I

    move-result v5

    .line 896
    .restart local v5    # "currentSelectIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/SettingRotatableController;->mParentSettingListView:Landroid/widget/ListView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v6

    .line 897
    .local v6, "firstPosId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/SettingRotatableController;->mParentSettingListView:Landroid/widget/ListView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v7

    .line 898
    .local v7, "lastPosId":I
    invoke-direct/range {p0 .. p0}, Lcom/lge/camera/controller/SettingRotatableController;->getVisibleMenuCount()I

    move-result v16

    .line 899
    .local v16, "visibleCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/SettingRotatableController;->mParentAdapter:Lcom/lge/camera/setting/SettingMenuAdapter;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/lge/camera/setting/SettingMenuAdapter;->getCount()I

    move-result v11

    .line 901
    .local v11, "menuCount":I
    move/from16 v0, v16

    if-gt v11, v0, :cond_7

    .line 902
    move/from16 v16, v11

    .line 905
    :cond_7
    if-eqz p2, :cond_8

    .line 906
    const-string v17, "CameraApp"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "setChildMenuLocation : visibleCount = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", firstPosId = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", lastPosId = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 908
    const-string v17, "CameraApp"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "setChildMenuLocation : currentSelectIndex = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", mParentAdapter.getCount() = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 910
    sub-int v17, v11, v16

    move/from16 v0, v17

    if-gt v5, v0, :cond_d

    .line 911
    move v6, v5

    .line 912
    add-int v17, v5, v16

    add-int/lit8 v7, v17, -0x1

    .line 918
    :cond_8
    :goto_4
    const-string v17, "CameraApp"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "setChildMenuLocation : firstPosId = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", lastPosId = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 920
    move/from16 v0, v16

    if-ge v0, v11, :cond_9

    add-int/lit8 v17, v11, -0x1

    move/from16 v0, v17

    if-ne v7, v0, :cond_9

    .line 921
    sub-int v17, v11, v16

    move/from16 v0, v17

    if-gt v5, v0, :cond_e

    .line 922
    move v6, v5

    .line 927
    :cond_9
    :goto_5
    sub-int v17, v5, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/controller/SettingRotatableController;->CONFIG_ITEM_HEIGHT:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/controller/SettingRotatableController;->DIVIDER:I

    move/from16 v19, v0

    add-int v18, v18, v19

    mul-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/controller/SettingRotatableController;->TITLE_HEIGHT:I

    move/from16 v18, v0

    add-int v14, v17, v18

    .line 929
    .local v14, "parentPos":I
    const/16 v17, 0x8

    move/from16 v0, v17

    if-lt v11, v0, :cond_a

    add-int/lit8 v17, v11, -0x1

    move/from16 v0, v17

    if-ne v7, v0, :cond_a

    .line 930
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/controller/SettingRotatableController;->MARGIN_HEIGHT:I

    move/from16 v17, v0

    add-int v14, v14, v17

    .line 932
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v5}, Lcom/lge/camera/ControllerFunction;->getSelectedChildCount(I)I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/lge/camera/controller/SettingRotatableController;->getMenuListHeight(I)I

    move-result v3

    .line 934
    .local v3, "childHeight":I
    add-int v17, v14, v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/controller/SettingRotatableController;->LCD_WIDTH:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/controller/SettingRotatableController;->PANEL_WIDTH:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_MARGIN_LEFT:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_b

    .line 935
    add-int v17, v14, v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/controller/SettingRotatableController;->LCD_WIDTH:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/controller/SettingRotatableController;->PANEL_WIDTH:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_MARGIN_LEFT:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    sub-int v17, v17, v18

    sub-int v14, v14, v17

    .line 937
    if-gez v14, :cond_b

    .line 938
    const/4 v14, 0x0

    .line 942
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const/16 v18, 0x10e

    move-object/from16 v0, v17

    move/from16 v1, p1

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v17

    if-eqz v17, :cond_f

    .line 943
    move-object/from16 v0, p0

    iget v13, v0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_HEIGHT:I

    .line 944
    .local v13, "parentHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/SettingRotatableController;->mParentAdapter:Lcom/lge/camera/setting/SettingMenuAdapter;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/lge/camera/setting/SettingMenuAdapter;->getCount()I

    move-result v17

    move/from16 v0, v17

    move/from16 v1, v16

    if-lt v0, v1, :cond_c

    .line 945
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/lge/camera/controller/SettingRotatableController;->getMenuListHeight(I)I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/controller/SettingRotatableController;->TITLE_HEIGHT:I

    move/from16 v18, v0

    add-int v13, v17, v18

    .line 946
    const/16 v17, 0x8

    move/from16 v0, v17

    if-lt v11, v0, :cond_c

    .line 947
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/controller/SettingRotatableController;->MARGIN_HEIGHT:I

    move/from16 v17, v0

    add-int v13, v13, v17

    .line 950
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_MARGIN_LEFT:I

    move/from16 v17, v0

    add-int v17, v17, v13

    add-int v18, v14, v3

    sub-int v9, v17, v18

    .line 951
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_MARGIN_LEFT:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v9, v0, :cond_2

    .line 952
    move-object/from16 v0, p0

    iget v9, v0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_MARGIN_LEFT:I

    goto/16 :goto_2

    .line 914
    .end local v3    # "childHeight":I
    .end local v13    # "parentHeight":I
    .end local v14    # "parentPos":I
    :cond_d
    sub-int v6, v11, v16

    .line 915
    add-int/lit8 v7, v11, -0x1

    goto/16 :goto_4

    .line 924
    :cond_e
    sub-int v6, v11, v16

    goto/16 :goto_5

    .line 955
    .restart local v3    # "childHeight":I
    .restart local v14    # "parentPos":I
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_MARGIN_LEFT:I

    move/from16 v17, v0

    add-int v9, v14, v17

    goto/16 :goto_2

    .line 962
    .end local v3    # "childHeight":I
    .end local v5    # "currentSelectIndex":I
    .end local v6    # "firstPosId":I
    .end local v7    # "lastPosId":I
    .end local v11    # "menuCount":I
    .end local v14    # "parentPos":I
    .end local v16    # "visibleCount":I
    :cond_10
    iput v15, v12, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 963
    iput v9, v12, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto/16 :goto_3
.end method

.method public showAnimation()V
    .locals 6

    .prologue
    .line 449
    iget-object v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v4, 0x7f0d01ff

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lge/camera/components/RotateLayout;

    .line 450
    .local v2, "rlP":Lcom/lge/camera/components/RotateLayout;
    iget-object v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v4, 0x7f0d0203

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/components/RotateLayout;

    .line 451
    .local v1, "rlC":Lcom/lge/camera/components/RotateLayout;
    invoke-virtual {v2}, Lcom/lge/camera/components/RotateLayout;->clearAnimation()V

    .line 452
    invoke-virtual {v1}, Lcom/lge/camera/components/RotateLayout;->clearAnimation()V

    .line 453
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 454
    .local v0, "anim":Landroid/view/animation/Animation;
    new-instance v3, Lcom/lge/camera/controller/SettingRotatableController$6;

    invoke-direct {v3, p0}, Lcom/lge/camera/controller/SettingRotatableController$6;-><init>(Lcom/lge/camera/controller/SettingRotatableController;)V

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 475
    const-wide/16 v4, 0x12c

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 476
    invoke-virtual {v2, v0}, Lcom/lge/camera/components/RotateLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 477
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportAudiozoom()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getCameraMode()I

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->mDegree:I

    const/16 v5, 0x5a

    invoke-static {v3, v4, v5}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->mDegree:I

    const/16 v5, 0x10e

    invoke-static {v3, v4, v5}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const-string v3, "key_audiozoom"

    invoke-virtual {p0}, Lcom/lge/camera/controller/SettingRotatableController;->getCurrentSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/camera/setting/SettingMenu;->getCurrentMenu()Lcom/lge/camera/setting/SettingMenuItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/camera/setting/SettingMenuItem;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 484
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/lge/camera/controller/SettingRotatableController;->removeChildSettingView(Z)V

    .line 488
    :goto_0
    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/SettingRotatableController;->childCustomViewAnimation(Landroid/view/animation/Animation;)V

    .line 489
    return-void

    .line 486
    :cond_1
    invoke-virtual {v1, v0}, Lcom/lge/camera/components/RotateLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public showChildSettingView()V
    .locals 5

    .prologue
    const v4, 0x7f0d0203

    .line 378
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f0d01ff

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v4}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1

    .line 400
    :cond_0
    :goto_0
    return-void

    .line 382
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v4}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/components/RotateLayout;

    .line 383
    .local v1, "rlC":Lcom/lge/camera/components/RotateLayout;
    invoke-virtual {v1}, Lcom/lge/camera/components/RotateLayout;->clearAnimation()V

    .line 384
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 385
    .local v0, "anim":Landroid/view/animation/Animation;
    new-instance v2, Lcom/lge/camera/controller/SettingRotatableController$4;

    invoke-direct {v2, p0}, Lcom/lge/camera/controller/SettingRotatableController$4;-><init>(Lcom/lge/camera/controller/SettingRotatableController;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 397
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 398
    invoke-virtual {v1, v0}, Lcom/lge/camera/components/RotateLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 399
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    const/16 v3, 0x10

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->setSubMenuMode(I)V

    goto :goto_0
.end method

.method public startRotation(I)V
    .locals 3
    .param p1, "degree"    # I

    .prologue
    .line 403
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDegree = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/controller/SettingRotatableController;->mDegree:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", degree = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    invoke-virtual {p0}, Lcom/lge/camera/controller/SettingRotatableController;->checkMediator()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/controller/SettingRotatableController;->isNullSettingView()Z

    move-result v0

    if-nez v0, :cond_1

    .line 410
    iget v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->mDegree:I

    if-ne v0, p1, :cond_2

    iget-boolean v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->mIsRtoL:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->mInitSettingBar:Z

    if-eqz v0, :cond_2

    .line 421
    :cond_1
    :goto_0
    return-void

    .line 414
    :cond_2
    iput p1, p0, Lcom/lge/camera/controller/SettingRotatableController;->mDegree:I

    .line 415
    invoke-virtual {p0}, Lcom/lge/camera/controller/SettingRotatableController;->hideAnimation()V

    .line 416
    invoke-virtual {p0, p1}, Lcom/lge/camera/controller/SettingRotatableController;->rotateParentList(I)V

    .line 417
    invoke-virtual {p0, p1}, Lcom/lge/camera/controller/SettingRotatableController;->rotateChildList(I)V

    .line 418
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/SettingRotatableController;->rotateChildCustom(I)V

    .line 419
    invoke-virtual {p0}, Lcom/lge/camera/controller/SettingRotatableController;->showAnimation()V

    goto :goto_0
.end method
