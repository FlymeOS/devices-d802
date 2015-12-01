.class public Lcom/lge/camera/controller/QuickFunctionSettingController;
.super Lcom/lge/camera/controller/Controller;
.source "QuickFunctionSettingController.java"


# instance fields
.field protected CONFIG_ITEM_HEIGHT:I

.field protected DIVIDER_HEIGHT:I

.field protected LCD_HEIGHT:I

.field protected LCD_WIDTH:I

.field protected MARGIN_HEIGHT:I

.field protected PANEL_WIDTH:I

.field protected QFL_SETTING_HEIGHT:I

.field protected QFL_SETTING_MARGIN_LEFT:I

.field protected QFL_SETTING_MARGIN_TOP:I

.field protected QFL_SETTING_WIDTH:I

.field private mDegree:I

.field protected mQuickFunctionSettingListView:Landroid/widget/ListView;

.field protected mQuickFunctionSettingView:Landroid/view/View;

.field private mQuickFunctionSettingViewRemoving:Z

.field protected mSettingAdapter:Lcom/lge/camera/setting/SettingMenuAdapter;

.field private mSettingListViewItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mSettingListViewItemTouchListener:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 1
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/Controller;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 53
    const/4 v0, 0x2

    iput v0, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->DIVIDER_HEIGHT:I

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mDegree:I

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mQuickFunctionSettingViewRemoving:Z

    .line 281
    new-instance v0, Lcom/lge/camera/controller/QuickFunctionSettingController$1;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/QuickFunctionSettingController$1;-><init>(Lcom/lge/camera/controller/QuickFunctionSettingController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mSettingListViewItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 335
    new-instance v0, Lcom/lge/camera/controller/QuickFunctionSettingController$2;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/QuickFunctionSettingController$2;-><init>(Lcom/lge/camera/controller/QuickFunctionSettingController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mSettingListViewItemTouchListener:Landroid/view/View$OnTouchListener;

    .line 61
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v0

    iput v0, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mDegree:I

    .line 62
    return-void
.end method

.method private updateSettingListHeight(III)V
    .locals 9
    .param p1, "parentSettingPosition"    # I
    .param p2, "leftMargin"    # I
    .param p3, "topMargin"    # I

    .prologue
    const/16 v8, 0xb4

    const/4 v7, 0x0

    .line 240
    const/4 v3, 0x0

    .line 242
    .local v3, "mNumOfChildItems":I
    iget-object v4, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4, p1}, Lcom/lge/camera/ControllerFunction;->getSettingMenuItem(I)Lcom/lge/camera/setting/SettingMenuItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/camera/setting/SettingMenuItem;->getChildCount()I

    move-result v3

    .line 244
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->getSettingListHeight()I

    move-result v4

    if-gt v3, v4, :cond_2

    .line 245
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v4, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->QFL_SETTING_WIDTH:I

    const/4 v5, -0x2

    invoke-direct {v1, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 247
    .local v1, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v4, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mDegree:I

    invoke-static {v4, v5, v8}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 248
    iget v4, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->QFL_SETTING_MARGIN_LEFT:I

    iget v5, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->QFL_SETTING_MARGIN_TOP:I

    invoke-virtual {v1, v4, v5, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 252
    :goto_0
    iget-object v4, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mQuickFunctionSettingListView:Landroid/widget/ListView;

    invoke-virtual {v4, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 279
    .end local v1    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    :goto_1
    return-void

    .line 250
    .restart local v1    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    iget v4, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->QFL_SETTING_MARGIN_LEFT:I

    iget v5, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->QFL_SETTING_MARGIN_TOP:I

    invoke-virtual {v1, v4, v5, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 253
    .end local v1    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->getSettingListHeight()I

    move-result v4

    if-le v3, v4, :cond_0

    .line 254
    iget-object v4, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mDegree:I

    const/16 v6, 0x5a

    invoke-static {v4, v5, v6}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mDegree:I

    const/16 v6, 0x10e

    invoke-static {v4, v5, v6}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 256
    :cond_3
    const/4 v2, -0x2

    .line 257
    .local v2, "layout_height":I
    iget v4, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->LCD_WIDTH:I

    iget v5, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->PANEL_WIDTH:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->QFL_SETTING_MARGIN_LEFT:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->CONFIG_ITEM_HEIGHT:I

    div-int/2addr v4, v5

    add-int/lit8 v0, v4, -0x2

    .line 260
    .local v0, "itemCount":I
    if-le v3, v0, :cond_4

    .line 261
    iget v4, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->CONFIG_ITEM_HEIGHT:I

    iget v5, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->DIVIDER_HEIGHT:I

    add-int/2addr v4, v5

    mul-int/2addr v4, v0

    iget v5, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->DIVIDER_HEIGHT:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->MARGIN_HEIGHT:I

    add-int v2, v4, v5

    .line 264
    :cond_4
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v4, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->QFL_SETTING_WIDTH:I

    invoke-direct {v1, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 266
    .restart local v1    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v1, p2, p3, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 267
    iget-object v4, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mQuickFunctionSettingListView:Landroid/widget/ListView;

    invoke-virtual {v4, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 269
    .end local v0    # "itemCount":I
    .end local v1    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v2    # "layout_height":I
    :cond_5
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v4, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->QFL_SETTING_WIDTH:I

    iget v5, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->QFL_SETTING_HEIGHT:I

    iget v6, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->MARGIN_HEIGHT:I

    add-int/2addr v5, v6

    invoke-direct {v1, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 271
    .restart local v1    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v4, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mDegree:I

    invoke-static {v4, v5, v8}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 272
    iget v4, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->QFL_SETTING_MARGIN_LEFT:I

    iget v5, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->QFL_SETTING_MARGIN_TOP:I

    invoke-virtual {v1, v4, v5, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 276
    :goto_2
    iget-object v4, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mQuickFunctionSettingListView:Landroid/widget/ListView;

    invoke-virtual {v4, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 274
    :cond_6
    iget v4, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->QFL_SETTING_MARGIN_LEFT:I

    iget v5, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->QFL_SETTING_MARGIN_TOP:I

    invoke-virtual {v1, v4, v5, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_2
.end method


# virtual methods
.method public displaySettingView(Ljava/lang/String;)V
    .locals 7
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 65
    const-string v2, "CameraApp"

    const-string v3, "QuickFunctionSettingController settingView : displaySettingView-start"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const v2, 0x7f09017b

    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/QuickFunctionSettingController;->getPixelFromDimens(I)I

    move-result v2

    iput v2, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->QFL_SETTING_WIDTH:I

    .line 68
    const v2, 0x7f09017c

    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/QuickFunctionSettingController;->getPixelFromDimens(I)I

    move-result v2

    iput v2, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->QFL_SETTING_HEIGHT:I

    .line 69
    const v2, 0x7f090179

    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/QuickFunctionSettingController;->getPixelFromDimens(I)I

    move-result v2

    iput v2, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->QFL_SETTING_MARGIN_LEFT:I

    .line 70
    const v2, 0x7f09017a

    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/QuickFunctionSettingController;->getPixelFromDimens(I)I

    move-result v2

    iput v2, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->QFL_SETTING_MARGIN_TOP:I

    .line 72
    const v2, 0x7f090008

    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/QuickFunctionSettingController;->getPixelFromDimens(I)I

    move-result v2

    iput v2, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->LCD_WIDTH:I

    .line 73
    const v2, 0x7f090009

    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/QuickFunctionSettingController;->getPixelFromDimens(I)I

    move-result v2

    iput v2, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->LCD_HEIGHT:I

    .line 74
    const v2, 0x7f09001a

    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/QuickFunctionSettingController;->getPixelFromDimens(I)I

    move-result v2

    iput v2, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->PANEL_WIDTH:I

    .line 75
    const v2, 0x7f090055

    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/QuickFunctionSettingController;->getPixelFromDimens(I)I

    move-result v2

    iput v2, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->CONFIG_ITEM_HEIGHT:I

    .line 76
    iget v2, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->CONFIG_ITEM_HEIGHT:I

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->MARGIN_HEIGHT:I

    .line 78
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getBackupCurrentMenuIndex()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 79
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getCurrentSettingMenuIndex()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->setBackupCurrentMenuIndex(I)V

    .line 82
    :cond_0
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v2

    iput v2, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mDegree:I

    .line 84
    const/4 v0, 0x0

    .line 85
    .local v0, "index":I
    if-nez p1, :cond_3

    .line 86
    const/4 v0, 0x0

    .line 90
    :goto_0
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v0}, Lcom/lge/camera/ControllerFunction;->setCurrentSettingMenu(I)Z

    .line 92
    new-instance v2, Lcom/lge/camera/setting/SettingMenuAdapter;

    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getCurrentSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v4

    invoke-direct {v2, v3, v4, v6}, Lcom/lge/camera/setting/SettingMenuAdapter;-><init>(Landroid/content/Context;Lcom/lge/camera/setting/SettingMenu;I)V

    iput-object v2, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mSettingAdapter:Lcom/lge/camera/setting/SettingMenuAdapter;

    .line 95
    if-eqz p1, :cond_1

    const-string v2, "key_help_guide"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 96
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mSettingAdapter:Lcom/lge/camera/setting/SettingMenuAdapter;

    invoke-virtual {v2, v5}, Lcom/lge/camera/setting/SettingMenuAdapter;->setShowSelectedChild(Z)V

    .line 99
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mQuickFunctionSettingView:Landroid/view/View;

    if-nez v2, :cond_2

    .line 100
    const-string v2, "CameraApp"

    const-string v3, "inflate Setting Layout...!!"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f030033

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->inflateView(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mQuickFunctionSettingView:Landroid/view/View;

    .line 102
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f0d00c5

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 103
    .local v1, "vg":Landroid/view/ViewGroup;
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mQuickFunctionSettingView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 105
    .end local v1    # "vg":Landroid/view/ViewGroup;
    :cond_2
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mQuickFunctionSettingView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 107
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f0d01ae

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mQuickFunctionSettingListView:Landroid/widget/ListView;

    .line 109
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mQuickFunctionSettingListView:Landroid/widget/ListView;

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 110
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mQuickFunctionSettingListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mSettingAdapter:Lcom/lge/camera/setting/SettingMenuAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 111
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mQuickFunctionSettingListView:Landroid/widget/ListView;

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setSelected(Z)V

    .line 113
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mQuickFunctionSettingListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mSettingListViewItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 114
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mQuickFunctionSettingListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mSettingListViewItemTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 115
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mQuickFunctionSettingListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getSelectedChildIndex()I

    move-result v3

    invoke-virtual {v2, v3, v5}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 116
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    const/16 v3, 0x15

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->setSubMenuMode(I)V

    .line 121
    iget v2, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mDegree:I

    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/QuickFunctionSettingController;->rotateSettingList(I)V

    .line 122
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mQuickFunctionSettingListView:Landroid/widget/ListView;

    invoke-virtual {p0, v2, v6}, Lcom/lge/camera/controller/QuickFunctionSettingController;->qflSettingAnimation(Landroid/view/View;Z)V

    .line 124
    const-string v2, "CameraApp"

    const-string v3, "displaySettingView-end"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    return-void

    .line 88
    :cond_3
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, p1}, Lcom/lge/camera/ControllerFunction;->getCurrentSettingMenuIndex(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0
.end method

.method public isNullSettingView()Z
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mQuickFunctionSettingView:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isQuickFunctionSettingViewRemoving()Z
    .locals 1

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mQuickFunctionSettingViewRemoving:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/lge/camera/controller/QuickFunctionSettingController;->isNullSettingView()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mQuickFunctionSettingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 410
    const-string v0, "CameraApp"

    const-string v1, "onDestroy-start"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mQuickFunctionSettingListView:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    .line 413
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wow not null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mSettingAdapter:Lcom/lge/camera/setting/SettingMenuAdapter;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mQuickFunctionSettingListView:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mQuickFunctionSettingListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 415
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mQuickFunctionSettingListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 416
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mQuickFunctionSettingListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->removeAllViewsInLayout()V

    .line 417
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mQuickFunctionSettingListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mQuickFunctionSettingListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 419
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mQuickFunctionSettingListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 421
    :cond_0
    iput-object v3, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mQuickFunctionSettingListView:Landroid/widget/ListView;

    .line 424
    :cond_1
    invoke-super {p0}, Lcom/lge/camera/controller/Controller;->onDestroy()V

    .line 425
    const-string v0, "CameraApp"

    const-string v1, "onDestroy-end"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 404
    invoke-virtual {p0}, Lcom/lge/camera/controller/QuickFunctionSettingController;->removeSettingView()V

    .line 405
    invoke-super {p0}, Lcom/lge/camera/controller/Controller;->onPause()V

    .line 406
    return-void
.end method

.method public qflSettingAnimation(Landroid/view/View;Z)V
    .locals 8
    .param p1, "aniView"    # Landroid/view/View;
    .param p2, "show"    # Z

    .prologue
    .line 355
    const-string v6, "CameraApp"

    const-string v7, "qflSettingAnimation-start"

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    if-eqz p1, :cond_0

    .line 358
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 359
    const/4 v6, 0x4

    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 361
    iget-object v6, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v6

    if-eqz v6, :cond_1

    const v5, 0x7f040012

    .line 363
    .local v5, "showResId":I
    :goto_0
    iget-object v6, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v6

    if-eqz v6, :cond_2

    const v3, 0x7f040010

    .line 365
    .local v3, "hideResId":I
    :goto_1
    iget-object v6, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    .line 367
    .local v4, "showAni":Landroid/view/animation/Animation;
    iget-object v6, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    .line 370
    .local v2, "hideAni":Landroid/view/animation/Animation;
    if-eqz p2, :cond_3

    move-object v0, v4

    .line 371
    .local v0, "animation":Landroid/view/animation/Animation;
    :goto_2
    new-instance v6, Lcom/lge/camera/controller/QuickFunctionSettingController$3;

    invoke-direct {v6, p0, p1, p2}, Lcom/lge/camera/controller/QuickFunctionSettingController$3;-><init>(Lcom/lge/camera/controller/QuickFunctionSettingController;Landroid/view/View;Z)V

    invoke-virtual {v0, v6}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 394
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 400
    .end local v0    # "animation":Landroid/view/animation/Animation;
    .end local v2    # "hideAni":Landroid/view/animation/Animation;
    .end local v3    # "hideResId":I
    .end local v4    # "showAni":Landroid/view/animation/Animation;
    .end local v5    # "showResId":I
    :cond_0
    :goto_3
    return-void

    .line 361
    :cond_1
    const v5, 0x7f040013

    goto :goto_0

    .line 363
    .restart local v5    # "showResId":I
    :cond_2
    const v3, 0x7f040011

    goto :goto_1

    .restart local v2    # "hideAni":Landroid/view/animation/Animation;
    .restart local v3    # "hideResId":I
    .restart local v4    # "showAni":Landroid/view/animation/Animation;
    :cond_3
    move-object v0, v2

    .line 370
    goto :goto_2

    .line 396
    .end local v2    # "hideAni":Landroid/view/animation/Animation;
    .end local v3    # "hideResId":I
    .end local v4    # "showAni":Landroid/view/animation/Animation;
    .end local v5    # "showResId":I
    :catch_0
    move-exception v1

    .line 397
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v6, "CameraApp"

    const-string v7, "NullPointerException : "

    invoke-static {v6, v7, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method public removeSettingView()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 132
    const-string v1, "CameraApp"

    const-string v2, "settingView : removeSettingView"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0d01ad

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    .line 135
    const-string v1, "CameraApp"

    const-string v2, "settingView : removeSettingView - return"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    :goto_0
    return-void

    .line 139
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mQuickFunctionSettingView:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mQuickFunctionSettingView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-ne v1, v5, :cond_2

    .line 141
    :cond_1
    const-string v1, "CameraApp"

    const-string v2, "settingView : removeSettingView -return, mSettingView is null"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 144
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mQuickFunctionSettingViewRemoving:Z

    .line 145
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.Rotate"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 147
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mQuickFunctionSettingView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 149
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mQuickFunctionSettingListView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 150
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mQuickFunctionSettingListView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 151
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mQuickFunctionSettingListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->removeAllViewsInLayout()V

    .line 152
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mQuickFunctionSettingListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 153
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mQuickFunctionSettingListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 154
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mQuickFunctionSettingListView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 156
    :cond_3
    iput-object v3, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mQuickFunctionSettingListView:Landroid/widget/ListView;

    .line 158
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mSettingAdapter:Lcom/lge/camera/setting/SettingMenuAdapter;

    invoke-virtual {v1}, Lcom/lge/camera/setting/SettingMenuAdapter;->close()V

    .line 159
    iput-object v3, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mSettingAdapter:Lcom/lge/camera/setting/SettingMenuAdapter;

    .line 161
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0d00c5

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 162
    .local v0, "vg":Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mQuickFunctionSettingView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 163
    iput-object v3, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mQuickFunctionSettingView:Landroid/view/View;

    .line 164
    const/4 v1, -0x1

    iput v1, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mDegree:I

    .line 165
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 166
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v1

    const/16 v2, 0x12

    if-eq v1, v2, :cond_4

    .line 167
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v4}, Lcom/lge/camera/ControllerFunction;->setSubMenuMode(I)V

    .line 169
    :cond_4
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v4}, Lcom/lge/camera/ControllerFunction;->quickFunctionAllMenuSelected(Z)V

    .line 170
    iput-boolean v4, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mQuickFunctionSettingViewRemoving:Z

    goto :goto_0
.end method

.method public rotateSettingList(I)V
    .locals 7
    .param p1, "degree"    # I

    .prologue
    const v5, 0x7f0d01ad

    .line 186
    iget-object v4, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_0

    .line 229
    :goto_0
    return-void

    .line 190
    :cond_0
    iget-object v4, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateLayout;

    .line 191
    .local v0, "cl":Lcom/lge/camera/components/RotateLayout;
    invoke-virtual {v0, p1}, Lcom/lge/camera/components/RotateLayout;->setAngle(I)V

    .line 193
    invoke-virtual {v0}, Lcom/lge/camera/components/RotateLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 194
    .local v2, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    const/4 v1, 0x0

    .line 195
    .local v1, "leftMargin":I
    const/4 v3, 0x0

    .line 196
    .local v3, "topMargin":I
    iget-object v4, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 197
    :goto_1
    sparse-switch p1, :sswitch_data_0

    .line 218
    :goto_2
    iget-object v4, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 219
    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 220
    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 226
    :goto_3
    invoke-virtual {v0, v2}, Lcom/lge/camera/components/RotateLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 227
    iget-object v4, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getCurrentSettingMenuIndex()I

    move-result v4

    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-direct {p0, v4, v5, v6}, Lcom/lge/camera/controller/QuickFunctionSettingController;->updateSettingListHeight(III)V

    goto :goto_0

    .line 196
    :cond_1
    add-int/lit8 v4, p1, 0x5a

    rem-int/lit16 p1, v4, 0x168

    goto :goto_1

    .line 199
    :sswitch_0
    iget v1, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->QFL_SETTING_MARGIN_LEFT:I

    .line 200
    iget v3, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->QFL_SETTING_MARGIN_TOP:I

    .line 201
    goto :goto_2

    .line 203
    :sswitch_1
    iget v1, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->QFL_SETTING_MARGIN_LEFT:I

    .line 204
    iget v4, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->LCD_HEIGHT:I

    iget v5, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->QFL_SETTING_WIDTH:I

    sub-int/2addr v4, v5

    div-int/lit8 v3, v4, 0x2

    .line 205
    goto :goto_2

    .line 207
    :sswitch_2
    iget v1, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->QFL_SETTING_MARGIN_LEFT:I

    .line 208
    iget v3, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->QFL_SETTING_MARGIN_TOP:I

    .line 209
    goto :goto_2

    .line 211
    :sswitch_3
    iget v1, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->QFL_SETTING_MARGIN_LEFT:I

    .line 212
    iget v4, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->LCD_HEIGHT:I

    iget v5, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->QFL_SETTING_WIDTH:I

    sub-int/2addr v4, v5

    div-int/lit8 v3, v4, 0x2

    .line 213
    goto :goto_2

    .line 222
    :cond_2
    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 223
    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_3

    .line 197
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method public startRotation(I)V
    .locals 3
    .param p1, "degree"    # I

    .prologue
    .line 174
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startRotation mDegree = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mDegree:I

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

    .line 176
    invoke-virtual {p0}, Lcom/lge/camera/controller/QuickFunctionSettingController;->checkMediator()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/controller/QuickFunctionSettingController;->isNullSettingView()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mDegree:I

    if-eq v0, p1, :cond_0

    .line 180
    iput p1, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mDegree:I

    .line 181
    invoke-virtual {p0, p1}, Lcom/lge/camera/controller/QuickFunctionSettingController;->rotateSettingList(I)V

    .line 183
    :cond_0
    return-void
.end method
