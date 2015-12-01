.class public Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SettingExpandParentMenuAdapter.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<[",
        "Lcom/lge/camera/setting/SettingMenuItem;",
        ">;",
        "Ljava/util/Observer;"
    }
.end annotation


# instance fields
.field private calcTime:J

.field private mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mGet:Lcom/lge/camera/ControllerFunction;

.field private mLocalViewMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mMenus:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/lge/camera/setting/SettingMenu;",
            ">;"
        }
    .end annotation
.end field

.field private mParentOnClickListener:Landroid/view/View$OnClickListener;

.field private mParentOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mPressedCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/lge/camera/setting/SettingMenu;Lcom/lge/camera/ControllerFunction;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I
    .param p3, "menus"    # Lcom/lge/camera/setting/SettingMenu;
    .param p4, "mGet"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 47
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;->mLocalViewMap:Landroid/util/SparseArray;

    .line 229
    new-instance v0, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter$1;

    invoke-direct {v0, p0}, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter$1;-><init>(Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;)V

    iput-object v0, p0, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;->mParentOnClickListener:Landroid/view/View$OnClickListener;

    .line 286
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;->mPressedCount:I

    .line 287
    new-instance v0, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter$2;

    invoke-direct {v0, p0}, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter$2;-><init>(Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;)V

    iput-object v0, p0, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;->mParentOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 52
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;->mContext:Ljava/lang/ref/WeakReference;

    .line 53
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;->mMenus:Ljava/lang/ref/WeakReference;

    .line 54
    iput-object p4, p0, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;->mGet:Lcom/lge/camera/ControllerFunction;

    .line 56
    invoke-virtual {p3, p0}, Lcom/lge/camera/setting/SettingMenu;->addObserver(Ljava/util/Observer;)V

    .line 57
    iget-object v0, p0, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;->mLocalViewMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;J)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;
    .param p1, "x1"    # J

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;->isClickedLately(J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;J)J
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;
    .param p1, "x1"    # J

    .prologue
    .line 42
    iput-wide p1, p0, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;->calcTime:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;

    .prologue
    .line 42
    iget v0, p0, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;->mPressedCount:I

    return v0
.end method

.method static synthetic access$202(Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 42
    iput p1, p0, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;->mPressedCount:I

    return p1
.end method

.method static synthetic access$212(Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;I)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 42
    iget v0, p0, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;->mPressedCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;->mPressedCount:I

    return v0
.end method

.method static synthetic access$220(Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;I)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 42
    iget v0, p0, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;->mPressedCount:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;->mPressedCount:I

    return v0
.end method

.method static synthetic access$300(Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method private getViewMenuItemDisable(Landroid/widget/LinearLayout;Lcom/lge/camera/components/SettingExpandParentImage;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 3
    .param p1, "parentItemLayout"    # Landroid/widget/LinearLayout;
    .param p2, "parentImage"    # Lcom/lge/camera/components/SettingExpandParentImage;
    .param p3, "menuText"    # Landroid/widget/TextView;
    .param p4, "currentText"    # Landroid/widget/TextView;

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x0

    .line 325
    const-string v0, "key_none"

    iput-object v0, p2, Lcom/lge/camera/components/SettingExpandParentImage;->key:Ljava/lang/String;

    .line 326
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setSoundEffectsEnabled(Z)V

    .line 327
    const v0, 0x7f020463

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 328
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 330
    invoke-static {}, Lcom/lge/camera/util/ColorUtil;->getDimColorExpand()Landroid/graphics/ColorMatrixColorFilter;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/lge/camera/components/SettingExpandParentImage;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 331
    invoke-static {v2}, Lcom/lge/camera/util/ColorUtil;->getItemColor(I)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 332
    invoke-static {v2}, Lcom/lge/camera/util/ColorUtil;->getItemColor(I)I

    move-result v0

    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 333
    return-void
.end method

.method private getViewMenuItemEnable(Landroid/widget/LinearLayout;Lcom/lge/camera/components/SettingExpandParentImage;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 5
    .param p1, "parentItemLayout"    # Landroid/widget/LinearLayout;
    .param p2, "parentImage"    # Lcom/lge/camera/components/SettingExpandParentImage;
    .param p3, "menuText"    # Landroid/widget/TextView;
    .param p4, "currentText"    # Landroid/widget/TextView;

    .prologue
    const/4 v1, 0x1

    .line 309
    const v2, 0x7f020463

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 310
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setSoundEffectsEnabled(Z)V

    .line 311
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 313
    const-string v2, "#ff5d5f61"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 314
    .local v0, "menuTextColor":I
    iget-boolean v2, p2, Lcom/lge/camera/components/SettingExpandParentImage;->selected:Z

    if-eqz v2, :cond_0

    .line 315
    const-string v2, "#ff119291"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 317
    :cond_0
    invoke-static {}, Lcom/lge/camera/util/ColorUtil;->getDefaultColor()Landroid/graphics/ColorMatrixColorFilter;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/lge/camera/components/SettingExpandParentImage;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 318
    iget-boolean v2, p2, Lcom/lge/camera/components/SettingExpandParentImage;->selected:Z

    if-eqz v2, :cond_1

    :goto_0
    invoke-virtual {p2, v1}, Lcom/lge/camera/components/SettingExpandParentImage;->setImageLevel(I)V

    .line 319
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 320
    const/16 v1, 0xff

    const/16 v2, 0x11

    const/16 v3, 0x92

    const/16 v4, 0x91

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {p4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 321
    return-void

    .line 318
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isClickedLately(J)Z
    .locals 5
    .param p1, "millisToWait"    # J

    .prologue
    .line 223
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;->calcTime:J

    sub-long/2addr v0, v2

    cmp-long v0, v0, p1

    if-gez v0, :cond_0

    .line 224
    const/4 v0, 0x1

    .line 226
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;->mLocalViewMap:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;->mLocalViewMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 377
    :cond_0
    invoke-super {p0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 378
    return-void
.end method

.method public close()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 61
    iget-object v1, p0, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;->mMenus:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/setting/SettingMenu;

    .line 62
    .local v0, "settingMenu":Lcom/lge/camera/setting/SettingMenu;
    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {v0, p0}, Lcom/lge/camera/setting/SettingMenu;->deleteObserver(Ljava/util/Observer;)V

    .line 65
    :cond_0
    iput-object v2, p0, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;->mGet:Lcom/lge/camera/ControllerFunction;

    .line 66
    iput-object v2, p0, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;->mContext:Ljava/lang/ref/WeakReference;

    .line 67
    iget-object v1, p0, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;->mLocalViewMap:Landroid/util/SparseArray;

    if-eqz v1, :cond_1

    .line 68
    iget-object v1, p0, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;->mLocalViewMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 70
    :cond_1
    return-void
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 336
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 24
    .param p1, "position"    # I
    .param p2, "convertViews"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 73
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;->mContext:Ljava/lang/ref/WeakReference;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    .line 74
    .local v5, "context":Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;->mMenus:Ljava/lang/ref/WeakReference;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/lge/camera/setting/SettingMenu;

    .line 76
    .local v19, "settingMenu":Lcom/lge/camera/setting/SettingMenu;
    if-nez v5, :cond_0

    .line 217
    .end local p2    # "convertViews":Landroid/view/View;
    :goto_0
    return-object p2

    .line 79
    .restart local p2    # "convertViews":Landroid/view/View;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;->mLocalViewMap:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 80
    .local v9, "localViewMap":Landroid/view/View;
    if-nez v9, :cond_1

    .line 81
    const-string v20, "CameraApp"

    const-string v21, "localViewMap = null"

    invoke-static/range {v20 .. v21}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    if-eqz p2, :cond_4

    .line 83
    move-object/from16 v9, p2

    .line 84
    const-string v20, "CameraApp"

    const-string v21, "set convertViews to localViewMap"

    invoke-static/range {v20 .. v21}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;->mLocalViewMap:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 94
    :cond_1
    const v20, 0x7f0d01e8

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/LinearLayout;

    .line 96
    .local v16, "parentLayout":Landroid/widget/LinearLayout;
    sget v20, Lcom/lge/camera/properties/CameraConstants;->SETTING_EXPAND_MAX_COLUMN:I

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    .line 98
    sget v20, Lcom/lge/camera/properties/CameraConstants;->SETTING_EXPAND_MAX_COLUMN:I

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_5

    .line 99
    sget-object v20, Lcom/lge/camera/properties/CameraConstants;->PARENT_ITEM_ID:[I

    const/16 v21, 0x3

    aget v20, v20, v21

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 105
    :goto_2
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_3
    sget v20, Lcom/lge/camera/properties/CameraConstants;->SETTING_EXPAND_MAX_COLUMN:I

    move/from16 v0, v20

    if-ge v7, v0, :cond_11

    .line 106
    sget-object v20, Lcom/lge/camera/properties/CameraConstants;->PARENT_ITEM_ID:[I

    aget v20, v20, v7

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout;

    .line 108
    .local v15, "parentItemLayout":Landroid/widget/LinearLayout;
    const v20, 0x7f0d01ef

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/lge/camera/components/SettingExpandParentImage;

    .line 110
    .local v13, "parentImage":Lcom/lge/camera/components/SettingExpandParentImage;
    const v20, 0x7f0d01f0

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 114
    .local v17, "parentMenuText":Landroid/widget/TextView;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    .line 115
    .local v6, "currentLanguage":Ljava/lang/String;
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v20

    const/16 v21, 0x9

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    const-string v20, "th"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 117
    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 118
    sget-object v20, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 120
    :cond_2
    const v20, 0x7f0d01f1

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 122
    .local v11, "parentCurrentText":Landroid/widget/TextView;
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v20

    const/16 v21, 0x9

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    const-string v20, "th"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 124
    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 125
    sget-object v20, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 129
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;->mParentOnClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;->mParentOnTouchListener:Landroid/view/View$OnTouchListener;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 132
    invoke-virtual/range {p0 .. p1}, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [Lcom/lge/camera/setting/SettingMenuItem;

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v20

    if-ge v0, v7, :cond_9

    .line 133
    invoke-virtual/range {p0 .. p1}, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [Lcom/lge/camera/setting/SettingMenuItem;

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    sget v21, Lcom/lge/camera/properties/CameraConstants;->SETTING_EXPAND_MAX_COLUMN:I

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_6

    .line 134
    const v20, 0x7f02037c

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 149
    :goto_4
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 150
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 151
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setSoundEffectsEnabled(Z)V

    .line 153
    const v20, 0x7f02037b

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/lge/camera/components/SettingExpandParentImage;->setImageResource(I)V

    .line 154
    const-string v20, "key_none"

    move-object/from16 v0, v20

    iput-object v0, v13, Lcom/lge/camera/components/SettingExpandParentImage;->key:Ljava/lang/String;

    .line 155
    const-string v20, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    const-string v20, ""

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3

    .line 86
    .end local v6    # "currentLanguage":Ljava/lang/String;
    .end local v7    # "i":I
    .end local v11    # "parentCurrentText":Landroid/widget/TextView;
    .end local v13    # "parentImage":Lcom/lge/camera/components/SettingExpandParentImage;
    .end local v15    # "parentItemLayout":Landroid/widget/LinearLayout;
    .end local v16    # "parentLayout":Landroid/widget/LinearLayout;
    .end local v17    # "parentMenuText":Landroid/widget/TextView;
    :cond_4
    const-string v20, "layout_inflater"

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    .line 88
    .local v8, "layoutInflater":Landroid/view/LayoutInflater;
    const v20, 0x7f030043

    const/16 v21, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 89
    const-string v20, "CameraApp"

    const-string v21, "Inflate view."

    invoke-static/range {v20 .. v21}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 101
    .end local v8    # "layoutInflater":Landroid/view/LayoutInflater;
    .restart local v16    # "parentLayout":Landroid/widget/LinearLayout;
    :cond_5
    sget-object v20, Lcom/lge/camera/properties/CameraConstants;->PARENT_ITEM_ID:[I

    const/16 v21, 0x3

    aget v20, v20, v21

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 137
    .restart local v6    # "currentLanguage":Ljava/lang/String;
    .restart local v7    # "i":I
    .restart local v11    # "parentCurrentText":Landroid/widget/TextView;
    .restart local v13    # "parentImage":Lcom/lge/camera/components/SettingExpandParentImage;
    .restart local v15    # "parentItemLayout":Landroid/widget/LinearLayout;
    .restart local v17    # "parentMenuText":Landroid/widget/TextView;
    :cond_6
    invoke-virtual/range {p0 .. p1}, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [Lcom/lge/camera/setting/SettingMenuItem;

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-ne v7, v0, :cond_7

    .line 138
    const v20, 0x7f02037f

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto/16 :goto_4

    .line 140
    :cond_7
    sget v20, Lcom/lge/camera/properties/CameraConstants;->SETTING_EXPAND_MAX_COLUMN:I

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v20

    if-ne v7, v0, :cond_8

    .line 141
    const v20, 0x7f020380

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto/16 :goto_4

    .line 144
    :cond_8
    const v20, 0x7f02037e

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto/16 :goto_4

    .line 160
    :cond_9
    invoke-virtual/range {p0 .. p1}, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [Lcom/lge/camera/setting/SettingMenuItem;

    aget-object v10, v20, v7

    .line 162
    .local v10, "menuItem":Lcom/lge/camera/setting/SettingMenuItem;
    if-eqz v10, :cond_10

    if-eqz v9, :cond_10

    .line 163
    iget-object v0, v10, Lcom/lge/camera/setting/SettingMenuItem;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    invoke-virtual {v10}, Lcom/lge/camera/setting/SettingMenuItem;->getKey()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/lge/camera/setting/SettingMenu;->getCurrentChildSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 167
    .local v12, "parentCurrentTextString":Ljava/lang/String;
    if-eqz v12, :cond_a

    const-string v20, ""

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_d

    .line 170
    :cond_a
    const-string v20, " "

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    :goto_6
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v20

    const/16 v21, 0x9

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_b

    const-string v20, "th"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_b

    .line 178
    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 181
    :cond_b
    invoke-virtual {v10}, Lcom/lge/camera/setting/SettingMenuItem;->getKey()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v13, Lcom/lge/camera/components/SettingExpandParentImage;->key:Ljava/lang/String;

    .line 182
    iput v7, v13, Lcom/lge/camera/components/SettingExpandParentImage;->column:I

    .line 183
    move/from16 v0, p1

    iput v0, v13, Lcom/lge/camera/components/SettingExpandParentImage;->row:I

    .line 184
    invoke-virtual {v10}, Lcom/lge/camera/setting/SettingMenuItem;->getKey()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/lge/camera/setting/SettingMenu;->getCurrentChildSettingIcon(Ljava/lang/String;)I

    move-result v18

    .line 185
    .local v18, "parentResourceId":I
    const/16 v20, -0x1

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_e

    .line 186
    iget v0, v10, Lcom/lge/camera/setting/SettingMenuItem;->iconResourceId:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/lge/camera/components/SettingExpandParentImage;->setImageResource(I)V

    .line 191
    :goto_7
    iget-boolean v0, v10, Lcom/lge/camera/setting/SettingMenuItem;->enable:Z

    move/from16 v20, v0

    if-eqz v20, :cond_f

    .line 192
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v15, v13, v1, v11}, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;->getViewMenuItemEnable(Landroid/widget/LinearLayout;Lcom/lge/camera/components/SettingExpandParentImage;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 198
    :goto_8
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 199
    iget-object v14, v10, Lcom/lge/camera/setting/SettingMenuItem;->name:Ljava/lang/String;

    .line 200
    .local v14, "parentItemDescription":Ljava/lang/String;
    if-eqz v12, :cond_c

    const-string v20, ""

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_c

    .line 202
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 204
    :cond_c
    invoke-virtual {v15, v14}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 172
    .end local v14    # "parentItemDescription":Ljava/lang/String;
    .end local v18    # "parentResourceId":I
    :cond_d
    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 188
    .restart local v18    # "parentResourceId":I
    :cond_e
    move/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/lge/camera/components/SettingExpandParentImage;->setImageResource(I)V

    goto :goto_7

    .line 195
    :cond_f
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v15, v13, v1, v11}, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;->getViewMenuItemDisable(Landroid/widget/LinearLayout;Lcom/lge/camera/components/SettingExpandParentImage;Landroid/widget/TextView;Landroid/widget/TextView;)V

    goto :goto_8

    .line 206
    .end local v12    # "parentCurrentTextString":Ljava/lang/String;
    .end local v18    # "parentResourceId":I
    :cond_10
    const v20, 0x7f02037c

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 207
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 208
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 209
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setSoundEffectsEnabled(Z)V

    .line 211
    const v20, 0x7f02037b

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/lge/camera/components/SettingExpandParentImage;->setImageResource(I)V

    .line 212
    const-string v20, "key_none"

    move-object/from16 v0, v20

    iput-object v0, v13, Lcom/lge/camera/components/SettingExpandParentImage;->key:Ljava/lang/String;

    .line 213
    const-string v20, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    const-string v20, ""

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .end local v6    # "currentLanguage":Ljava/lang/String;
    .end local v10    # "menuItem":Lcom/lge/camera/setting/SettingMenuItem;
    .end local v11    # "parentCurrentText":Landroid/widget/TextView;
    .end local v13    # "parentImage":Lcom/lge/camera/components/SettingExpandParentImage;
    .end local v15    # "parentItemLayout":Landroid/widget/LinearLayout;
    .end local v17    # "parentMenuText":Landroid/widget/TextView;
    :cond_11
    move-object/from16 p2, v9

    .line 217
    goto/16 :goto_0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 341
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled(II)Z
    .locals 2
    .param p1, "position"    # I
    .param p2, "column"    # I

    .prologue
    .line 345
    invoke-virtual {p0, p1}, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/lge/camera/setting/SettingMenuItem;

    aget-object v0, v1, p2

    .line 347
    .local v0, "ci":Lcom/lge/camera/setting/SettingMenuItem;
    if-nez v0, :cond_0

    .line 348
    const/4 v1, 0x0

    .line 351
    :goto_0
    return v1

    :cond_0
    iget-boolean v1, v0, Lcom/lge/camera/setting/SettingMenuItem;->enable:Z

    goto :goto_0
.end method

.method public releasePressedCount()V
    .locals 1

    .prologue
    .line 283
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;->mPressedCount:I

    .line 284
    return-void
.end method

.method public update()V
    .locals 3

    .prologue
    .line 360
    iget-object v1, p0, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;->mMenus:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/setting/SettingMenu;

    .line 361
    .local v0, "settingMenu":Lcom/lge/camera/setting/SettingMenu;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/lge/camera/setting/SettingMenu;->mGet:Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;

    if-nez v1, :cond_1

    .line 370
    :cond_0
    :goto_0
    return-void

    .line 364
    :cond_1
    iget-object v1, v0, Lcom/lge/camera/setting/SettingMenu;->mGet:Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;

    new-instance v2, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter$3;

    invoke-direct {v2, p0, v0}, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter$3;-><init>(Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;Lcom/lge/camera/setting/SettingMenu;)V

    invoke-interface {v1, v2}, Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 0
    .param p1, "observable"    # Ljava/util/Observable;
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 356
    invoke-virtual {p0}, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;->update()V

    .line 357
    return-void
.end method
