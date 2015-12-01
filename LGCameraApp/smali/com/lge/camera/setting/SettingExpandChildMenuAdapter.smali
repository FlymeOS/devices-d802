.class public Lcom/lge/camera/setting/SettingExpandChildMenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "SettingExpandChildMenuAdapter.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/camera/setting/SettingExpandChildMenuAdapter$ChildViewHolder;
    }
.end annotation


# instance fields
.field private final ALPHA_DISABLE:F

.field private final ALPHA_ENABLE:F

.field private isShowSelectedCheck:Z

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

.field private mCurrentParentKey:Ljava/lang/String;

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


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lge/camera/setting/SettingMenu;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menus"    # Lcom/lge/camera/setting/SettingMenu;

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/setting/SettingExpandChildMenuAdapter;->isShowSelectedCheck:Z

    .line 39
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/lge/camera/setting/SettingExpandChildMenuAdapter;->ALPHA_ENABLE:F

    .line 40
    const v0, 0x3e99999a    # 0.3f

    iput v0, p0, Lcom/lge/camera/setting/SettingExpandChildMenuAdapter;->ALPHA_DISABLE:F

    .line 159
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/camera/setting/SettingExpandChildMenuAdapter;->mCurrentParentKey:Ljava/lang/String;

    .line 44
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/lge/camera/setting/SettingExpandChildMenuAdapter;->mContext:Ljava/lang/ref/WeakReference;

    .line 45
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/lge/camera/setting/SettingExpandChildMenuAdapter;->mMenus:Ljava/lang/ref/WeakReference;

    .line 46
    invoke-virtual {p2, p0}, Lcom/lge/camera/setting/SettingMenu;->addObserver(Ljava/util/Observer;)V

    .line 47
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 50
    iget-object v1, p0, Lcom/lge/camera/setting/SettingExpandChildMenuAdapter;->mMenus:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/setting/SettingMenu;

    .line 51
    .local v0, "settingMenu":Lcom/lge/camera/setting/SettingMenu;
    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {v0, p0}, Lcom/lge/camera/setting/SettingMenu;->deleteObserver(Ljava/util/Observer;)V

    .line 54
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 3

    .prologue
    .line 166
    iget-object v1, p0, Lcom/lge/camera/setting/SettingExpandChildMenuAdapter;->mMenus:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/setting/SettingMenu;

    .line 167
    .local v0, "settingMenu":Lcom/lge/camera/setting/SettingMenu;
    if-nez v0, :cond_0

    .line 168
    const-string v1, "CameraApp"

    const-string v2, "Cannot return menu counting because settingMenu is null"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const/4 v1, 0x0

    .line 171
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/lge/camera/setting/SettingMenu;->getCurrentMenu()Lcom/lge/camera/setting/SettingMenuItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/setting/SettingMenuItem;->getChildCount()I

    move-result v1

    goto :goto_0
.end method

.method public getItem(I)Lcom/lge/camera/setting/SettingMenuItem;
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x0

    .line 175
    iget-object v2, p0, Lcom/lge/camera/setting/SettingExpandChildMenuAdapter;->mMenus:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/setting/SettingMenu;

    .line 176
    .local v0, "settingMenu":Lcom/lge/camera/setting/SettingMenu;
    if-nez v0, :cond_0

    .line 177
    const-string v2, "CameraApp"

    const-string v3, "Cannot return menu item because settingMenu is null"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :goto_0
    return-object v1

    .line 180
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/setting/SettingExpandChildMenuAdapter;->getCount()I

    move-result v2

    if-lt p1, v2, :cond_1

    .line 181
    const-string v2, "CameraApp"

    const-string v3, "position is invalid"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 184
    :cond_1
    invoke-virtual {v0}, Lcom/lge/camera/setting/SettingMenu;->getCurrentMenu()Lcom/lge/camera/setting/SettingMenuItem;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/lge/camera/setting/SettingMenuItem;->getChild(I)Lcom/lge/camera/setting/SettingMenuItem;

    move-result-object v1

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/lge/camera/setting/SettingExpandChildMenuAdapter;->getItem(I)Lcom/lge/camera/setting/SettingMenuItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 188
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 14
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 61
    iget-object v9, p0, Lcom/lge/camera/setting/SettingExpandChildMenuAdapter;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 62
    .local v1, "context":Landroid/content/Context;
    iget-object v9, p0, Lcom/lge/camera/setting/SettingExpandChildMenuAdapter;->mMenus:Ljava/lang/ref/WeakReference;

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lge/camera/setting/SettingMenu;

    .line 63
    .local v7, "settingMenu":Lcom/lge/camera/setting/SettingMenu;
    const/4 v3, 0x0

    .line 64
    .local v3, "holder":Lcom/lge/camera/setting/SettingExpandChildMenuAdapter$ChildViewHolder;
    move-object/from16 v0, p2

    .line 66
    .local v0, "childView":Landroid/view/View;
    if-nez v0, :cond_6

    .line 67
    const-string v9, "layout_inflater"

    invoke-virtual {v1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    .line 69
    .local v8, "vi":Landroid/view/LayoutInflater;
    const v9, 0x7f030042

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 70
    if-nez v0, :cond_0

    .line 71
    const-string v9, "CameraApp"

    const-string v10, "SettingExpandChildMenuAdapter error. view is null."

    invoke-static {v9, v10}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const/4 v9, 0x0

    .line 156
    .end local v8    # "vi":Landroid/view/LayoutInflater;
    :goto_0
    return-object v9

    .line 74
    .restart local v8    # "vi":Landroid/view/LayoutInflater;
    :cond_0
    new-instance v3, Lcom/lge/camera/setting/SettingExpandChildMenuAdapter$ChildViewHolder;

    .end local v3    # "holder":Lcom/lge/camera/setting/SettingExpandChildMenuAdapter$ChildViewHolder;
    invoke-direct {v3, p0}, Lcom/lge/camera/setting/SettingExpandChildMenuAdapter$ChildViewHolder;-><init>(Lcom/lge/camera/setting/SettingExpandChildMenuAdapter;)V

    .line 75
    .restart local v3    # "holder":Lcom/lge/camera/setting/SettingExpandChildMenuAdapter$ChildViewHolder;
    const v9, 0x7f0d01e5

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, v3, Lcom/lge/camera/setting/SettingExpandChildMenuAdapter$ChildViewHolder;->mName:Landroid/widget/TextView;

    .line 78
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 79
    .local v2, "currentLanguage":Ljava/lang/String;
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v9

    const/16 v10, 0x9

    if-ne v9, v10, :cond_1

    const-string v9, "th"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 81
    iget-object v9, v3, Lcom/lge/camera/setting/SettingExpandChildMenuAdapter$ChildViewHolder;->mName:Landroid/widget/TextView;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, -0x1

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 82
    iget-object v9, v3, Lcom/lge/camera/setting/SettingExpandChildMenuAdapter$ChildViewHolder;->mName:Landroid/widget/TextView;

    sget-object v10, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 85
    :cond_1
    const v9, 0x7f0d01e4

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, v3, Lcom/lge/camera/setting/SettingExpandChildMenuAdapter$ChildViewHolder;->mImage:Landroid/widget/ImageView;

    .line 86
    const v9, 0x7f0d01e6

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, v3, Lcom/lge/camera/setting/SettingExpandChildMenuAdapter$ChildViewHolder;->mRadio:Landroid/widget/ImageView;

    .line 88
    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 93
    .end local v2    # "currentLanguage":Ljava/lang/String;
    .end local v8    # "vi":Landroid/view/LayoutInflater;
    :goto_1
    iget-object v9, v3, Lcom/lge/camera/setting/SettingExpandChildMenuAdapter$ChildViewHolder;->mName:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 95
    .local v4, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    sget v9, Lcom/lge/camera/properties/CameraConstants;->SETTING_EXPAND_MAX_COLUMN:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_7

    .line 97
    const v9, 0x7f090169

    invoke-static {v1, v9}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v9

    const/4 v10, 0x0

    const v11, 0x7f09016a

    invoke-static {v1, v11}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual {v4, v9, v10, v11, v12}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 102
    const v9, 0x7f090167

    invoke-static {v1, v9}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v9

    iput v9, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 112
    :goto_2
    iget-object v9, v3, Lcom/lge/camera/setting/SettingExpandChildMenuAdapter$ChildViewHolder;->mName:Landroid/widget/TextView;

    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    invoke-virtual {p0, p1}, Lcom/lge/camera/setting/SettingExpandChildMenuAdapter;->getItem(I)Lcom/lge/camera/setting/SettingMenuItem;

    move-result-object v5

    .line 116
    .local v5, "menuItem":Lcom/lge/camera/setting/SettingMenuItem;
    if-eqz v5, :cond_5

    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    .line 118
    iget-boolean v9, v5, Lcom/lge/camera/setting/SettingMenuItem;->enable:Z

    if-eqz v9, :cond_8

    .line 119
    iget-object v9, v3, Lcom/lge/camera/setting/SettingExpandChildMenuAdapter$ChildViewHolder;->mName:Landroid/widget/TextView;

    const/4 v10, 0x2

    invoke-static {v10}, Lcom/lge/camera/util/ColorUtil;->getItemColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 120
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v9

    const/16 v10, 0x9

    if-ne v9, v10, :cond_2

    const-string v9, "th"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 122
    iget-object v9, v3, Lcom/lge/camera/setting/SettingExpandChildMenuAdapter$ChildViewHolder;->mName:Landroid/widget/TextView;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, -0x1

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 124
    :cond_2
    iget-object v9, v3, Lcom/lge/camera/setting/SettingExpandChildMenuAdapter$ChildViewHolder;->mName:Landroid/widget/TextView;

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setAlpha(F)V

    .line 125
    iget-object v9, v3, Lcom/lge/camera/setting/SettingExpandChildMenuAdapter$ChildViewHolder;->mImage:Landroid/widget/ImageView;

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 126
    iget-object v9, v3, Lcom/lge/camera/setting/SettingExpandChildMenuAdapter$ChildViewHolder;->mRadio:Landroid/widget/ImageView;

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 134
    :goto_3
    const v9, 0x7f020490

    invoke-virtual {v0, v9}, Landroid/view/View;->setBackgroundResource(I)V

    .line 135
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v9

    const/16 v10, 0x9

    if-ne v9, v10, :cond_3

    const-string v9, "th"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 137
    iget-object v9, v3, Lcom/lge/camera/setting/SettingExpandChildMenuAdapter$ChildViewHolder;->mName:Landroid/widget/TextView;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, -0x1

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 139
    :cond_3
    iget-object v9, v3, Lcom/lge/camera/setting/SettingExpandChildMenuAdapter$ChildViewHolder;->mName:Landroid/widget/TextView;

    sget-object v10, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 140
    iget-object v9, v3, Lcom/lge/camera/setting/SettingExpandChildMenuAdapter$ChildViewHolder;->mName:Landroid/widget/TextView;

    iget-object v10, v5, Lcom/lge/camera/setting/SettingMenuItem;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v9, p0, Lcom/lge/camera/setting/SettingExpandChildMenuAdapter;->mCurrentParentKey:Ljava/lang/String;

    invoke-virtual {v7, v9}, Lcom/lge/camera/setting/SettingMenu;->getCurrentChildSettingIcons(Ljava/lang/String;)[I

    move-result-object v6

    .line 143
    .local v6, "settingIcons":[I
    if-eqz v6, :cond_4

    array-length v9, v6

    if-le v9, p1, :cond_4

    .line 144
    iget-object v9, v3, Lcom/lge/camera/setting/SettingExpandChildMenuAdapter$ChildViewHolder;->mImage:Landroid/widget/ImageView;

    aget v10, v6, p1

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 147
    :cond_4
    iget-boolean v9, p0, Lcom/lge/camera/setting/SettingExpandChildMenuAdapter;->isShowSelectedCheck:Z

    if-eqz v9, :cond_9

    iget-boolean v9, v5, Lcom/lge/camera/setting/SettingMenuItem;->enable:Z

    if-eqz v9, :cond_9

    if-eqz v7, :cond_9

    invoke-virtual {v7}, Lcom/lge/camera/setting/SettingMenu;->getCurrentMenu()Lcom/lge/camera/setting/SettingMenuItem;

    move-result-object v9

    iget v9, v9, Lcom/lge/camera/setting/SettingMenuItem;->selectedChildPosition:I

    if-ne p1, v9, :cond_9

    .line 151
    iget-object v9, v3, Lcom/lge/camera/setting/SettingExpandChildMenuAdapter$ChildViewHolder;->mRadio:Landroid/widget/ImageView;

    const v10, 0x7f02004d

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .end local v6    # "settingIcons":[I
    :cond_5
    :goto_4
    move-object v9, v0

    .line 156
    goto/16 :goto_0

    .line 90
    .end local v4    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v5    # "menuItem":Lcom/lge/camera/setting/SettingMenuItem;
    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "holder":Lcom/lge/camera/setting/SettingExpandChildMenuAdapter$ChildViewHolder;
    check-cast v3, Lcom/lge/camera/setting/SettingExpandChildMenuAdapter$ChildViewHolder;

    .restart local v3    # "holder":Lcom/lge/camera/setting/SettingExpandChildMenuAdapter$ChildViewHolder;
    goto/16 :goto_1

    .line 105
    .restart local v4    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_7
    const v9, 0x7f09016c

    invoke-static {v1, v9}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v9

    const/4 v10, 0x0

    const v11, 0x7f09016d

    invoke-static {v1, v11}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual {v4, v9, v10, v11, v12}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 110
    const/4 v9, -0x2

    iput v9, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    goto/16 :goto_2

    .line 128
    .restart local v5    # "menuItem":Lcom/lge/camera/setting/SettingMenuItem;
    :cond_8
    iget-object v9, v3, Lcom/lge/camera/setting/SettingExpandChildMenuAdapter$ChildViewHolder;->mName:Landroid/widget/TextView;

    const/4 v10, 0x3

    invoke-static {v10}, Lcom/lge/camera/util/ColorUtil;->getItemColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 130
    iget-object v9, v3, Lcom/lge/camera/setting/SettingExpandChildMenuAdapter$ChildViewHolder;->mName:Landroid/widget/TextView;

    const v10, 0x3e99999a    # 0.3f

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setAlpha(F)V

    .line 131
    iget-object v9, v3, Lcom/lge/camera/setting/SettingExpandChildMenuAdapter$ChildViewHolder;->mImage:Landroid/widget/ImageView;

    const v10, 0x3e99999a    # 0.3f

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 132
    iget-object v9, v3, Lcom/lge/camera/setting/SettingExpandChildMenuAdapter$ChildViewHolder;->mRadio:Landroid/widget/ImageView;

    const v10, 0x3e99999a    # 0.3f

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setAlpha(F)V

    goto/16 :goto_3

    .line 153
    .restart local v6    # "settingIcons":[I
    :cond_9
    iget-object v9, v3, Lcom/lge/camera/setting/SettingExpandChildMenuAdapter$ChildViewHolder;->mRadio:Landroid/widget/ImageView;

    const v10, 0x7f020471

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4
.end method

.method public isEnabled(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 193
    invoke-virtual {p0, p1}, Lcom/lge/camera/setting/SettingExpandChildMenuAdapter;->getItem(I)Lcom/lge/camera/setting/SettingMenuItem;

    move-result-object v0

    .line 194
    .local v0, "ci":Lcom/lge/camera/setting/SettingMenuItem;
    if-nez v0, :cond_0

    .line 195
    const/4 v1, 0x0

    .line 197
    :goto_0
    return v1

    :cond_0
    iget-boolean v1, v0, Lcom/lge/camera/setting/SettingMenuItem;->enable:Z

    goto :goto_0
.end method

.method public setCurrentParentKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/lge/camera/setting/SettingExpandChildMenuAdapter;->mCurrentParentKey:Ljava/lang/String;

    .line 163
    return-void
.end method

.method public setShowSelectedChild(Z)V
    .locals 0
    .param p1, "set"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/lge/camera/setting/SettingExpandChildMenuAdapter;->isShowSelectedCheck:Z

    .line 58
    return-void
.end method

.method public update()V
    .locals 3

    .prologue
    .line 206
    iget-object v1, p0, Lcom/lge/camera/setting/SettingExpandChildMenuAdapter;->mMenus:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/setting/SettingMenu;

    .line 207
    .local v0, "settingMenu":Lcom/lge/camera/setting/SettingMenu;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/lge/camera/setting/SettingMenu;->mGet:Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;

    if-nez v1, :cond_1

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 210
    :cond_1
    iget-object v1, v0, Lcom/lge/camera/setting/SettingMenu;->mGet:Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;

    new-instance v2, Lcom/lge/camera/setting/SettingExpandChildMenuAdapter$1;

    invoke-direct {v2, p0, v0}, Lcom/lge/camera/setting/SettingExpandChildMenuAdapter$1;-><init>(Lcom/lge/camera/setting/SettingExpandChildMenuAdapter;Lcom/lge/camera/setting/SettingMenu;)V

    invoke-interface {v1, v2}, Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 0
    .param p1, "observable"    # Ljava/util/Observable;
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/lge/camera/setting/SettingExpandChildMenuAdapter;->update()V

    .line 203
    return-void
.end method
