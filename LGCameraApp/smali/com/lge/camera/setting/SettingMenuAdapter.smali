.class public Lcom/lge/camera/setting/SettingMenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "SettingMenuAdapter.java"

# interfaces
.implements Ljava/util/Observer;


# static fields
.field public static final CHILD_MENU:I = 0x1

.field public static final COLOR_BACKNORMAL:I = 0x2

.field public static final COLOR_BACKSELECT:I = 0x1

.field public static final PARENT_MENU:I


# instance fields
.field private PARENT_ITEM_TEXT_WIDTH:F

.field private context:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private isShowChild:Z

.field private isShowSelectedCheck:Z

.field private menus:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/lge/camera/setting/SettingMenu;",
            ">;"
        }
    .end annotation
.end field

.field private type:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lge/camera/setting/SettingMenu;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menus"    # Lcom/lge/camera/setting/SettingMenu;

    .prologue
    .line 47
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/lge/camera/setting/SettingMenuAdapter;-><init>(Landroid/content/Context;Lcom/lge/camera/setting/SettingMenu;I)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/lge/camera/setting/SettingMenu;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menus"    # Lcom/lge/camera/setting/SettingMenu;
    .param p3, "type"    # I

    .prologue
    const/4 v1, 0x1

    .line 51
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 41
    iput v1, p0, Lcom/lge/camera/setting/SettingMenuAdapter;->type:I

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/setting/SettingMenuAdapter;->isShowChild:Z

    .line 43
    iput-boolean v1, p0, Lcom/lge/camera/setting/SettingMenuAdapter;->isShowSelectedCheck:Z

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/camera/setting/SettingMenuAdapter;->PARENT_ITEM_TEXT_WIDTH:F

    .line 52
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/lge/camera/setting/SettingMenuAdapter;->context:Ljava/lang/ref/WeakReference;

    .line 53
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/lge/camera/setting/SettingMenuAdapter;->menus:Ljava/lang/ref/WeakReference;

    .line 54
    invoke-virtual {p2, p0}, Lcom/lge/camera/setting/SettingMenu;->addObserver(Ljava/util/Observer;)V

    .line 55
    iput p3, p0, Lcom/lge/camera/setting/SettingMenuAdapter;->type:I

    .line 56
    const v0, 0x7f090059

    invoke-static {p1, v0}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/lge/camera/setting/SettingMenuAdapter;->PARENT_ITEM_TEXT_WIDTH:F

    .line 58
    return-void
.end method

.method private getItemResource(I)I
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 280
    packed-switch p1, :pswitch_data_0

    .line 285
    const v0, 0x7f020490

    :goto_0
    return v0

    .line 282
    :pswitch_0
    const v0, 0x7f020492

    goto :goto_0

    .line 280
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private getViewMenuItemDisable(Landroid/view/View;Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 2
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "tempContext"    # Landroid/content/Context;
    .param p3, "tv"    # Landroid/widget/TextView;

    .prologue
    const/4 v1, 0x2

    .line 187
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/lge/camera/util/ColorUtil;->getItemColor(I)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 189
    iget v0, p0, Lcom/lge/camera/setting/SettingMenuAdapter;->type:I

    if-nez v0, :cond_0

    .line 190
    invoke-direct {p0, v1}, Lcom/lge/camera/setting/SettingMenuAdapter;->getItemResource(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 194
    :goto_0
    return-void

    .line 192
    :cond_0
    invoke-direct {p0, v1}, Lcom/lge/camera/setting/SettingMenuAdapter;->getItemResource(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private getViewMenuItemEnable(ILandroid/view/View;Landroid/content/Context;Lcom/lge/camera/setting/SettingMenu;Landroid/widget/TextView;)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "tempContext"    # Landroid/content/Context;
    .param p4, "settingMenu"    # Lcom/lge/camera/setting/SettingMenu;
    .param p5, "tv"    # Landroid/widget/TextView;

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 198
    iget v0, p0, Lcom/lge/camera/setting/SettingMenuAdapter;->type:I

    if-nez v0, :cond_1

    .line 199
    iget-boolean v0, p0, Lcom/lge/camera/setting/SettingMenuAdapter;->isShowChild:Z

    if-eqz v0, :cond_0

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Lcom/lge/camera/setting/SettingMenu;->getCurrentMenuIndex()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 201
    invoke-static {v1}, Lcom/lge/camera/util/ColorUtil;->getItemColor(I)I

    move-result v0

    invoke-virtual {p5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 202
    invoke-direct {p0, v1}, Lcom/lge/camera/setting/SettingMenuAdapter;->getItemResource(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 218
    :goto_0
    return-void

    .line 205
    :cond_0
    invoke-static {v2}, Lcom/lge/camera/util/ColorUtil;->getItemColor(I)I

    move-result v0

    invoke-virtual {p5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 206
    invoke-direct {p0, v2}, Lcom/lge/camera/setting/SettingMenuAdapter;->getItemResource(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 209
    :cond_1
    if-eqz p4, :cond_2

    invoke-virtual {p4}, Lcom/lge/camera/setting/SettingMenu;->getCurrentMenu()Lcom/lge/camera/setting/SettingMenuItem;

    move-result-object v0

    iget v0, v0, Lcom/lge/camera/setting/SettingMenuItem;->selectedChildPosition:I

    if-ne v0, p1, :cond_2

    .line 211
    invoke-static {v1}, Lcom/lge/camera/util/ColorUtil;->getItemColor(I)I

    move-result v0

    invoke-virtual {p5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 212
    invoke-direct {p0, v1}, Lcom/lge/camera/setting/SettingMenuAdapter;->getItemResource(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 214
    :cond_2
    invoke-static {v2}, Lcom/lge/camera/util/ColorUtil;->getItemColor(I)I

    move-result v0

    invoke-virtual {p5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 215
    invoke-direct {p0, v2}, Lcom/lge/camera/setting/SettingMenuAdapter;->getItemResource(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private setCheckImage(ILandroid/view/View;Lcom/lge/camera/setting/SettingMenu;Lcom/lge/camera/setting/SettingMenuItem;)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "settingMenu"    # Lcom/lge/camera/setting/SettingMenu;
    .param p4, "menuItem"    # Lcom/lge/camera/setting/SettingMenuItem;

    .prologue
    const/4 v3, 0x4

    .line 172
    iget v1, p0, Lcom/lge/camera/setting/SettingMenuAdapter;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 173
    const v1, 0x7f0d01fd

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 174
    .local v0, "checkImage":Landroid/widget/ImageView;
    iget-boolean v1, p0, Lcom/lge/camera/setting/SettingMenuAdapter;->isShowSelectedCheck:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p4, Lcom/lge/camera/setting/SettingMenuItem;->enable:Z

    if-eqz v1, :cond_1

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/lge/camera/setting/SettingMenu;->getCurrentMenu()Lcom/lge/camera/setting/SettingMenuItem;

    move-result-object v1

    iget v1, v1, Lcom/lge/camera/setting/SettingMenuItem;->selectedChildPosition:I

    if-ne p1, v1, :cond_1

    .line 177
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 178
    invoke-static {v3}, Lcom/lge/camera/util/ColorUtil;->getItemColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 183
    .end local v0    # "checkImage":Landroid/widget/ImageView;
    :cond_0
    :goto_0
    return-void

    .line 180
    .restart local v0    # "checkImage":Landroid/widget/ImageView;
    :cond_1
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setSettingImages(ILandroid/view/View;Landroid/content/Context;Lcom/lge/camera/setting/SettingMenu;Lcom/lge/camera/setting/SettingMenuItem;Landroid/widget/TextView;)V
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "tempContext"    # Landroid/content/Context;
    .param p4, "settingMenu"    # Lcom/lge/camera/setting/SettingMenu;
    .param p5, "menuItem"    # Lcom/lge/camera/setting/SettingMenuItem;
    .param p6, "menuText"    # Landroid/widget/TextView;

    .prologue
    const v4, 0x7f0d01fb

    const/4 v3, 0x5

    const/4 v2, 0x4

    .line 146
    iget v1, p5, Lcom/lge/camera/setting/SettingMenuItem;->iconResourceId:I

    if-eqz v1, :cond_3

    .line 147
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 148
    .local v0, "icon":Landroid/widget/ImageView;
    iget v1, p5, Lcom/lge/camera/setting/SettingMenuItem;->iconResourceId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 149
    iget v1, p0, Lcom/lge/camera/setting/SettingMenuAdapter;->type:I

    if-nez v1, :cond_2

    .line 150
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 151
    iget-boolean v1, p0, Lcom/lge/camera/setting/SettingMenuAdapter;->isShowChild:Z

    if-eqz v1, :cond_0

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Lcom/lge/camera/setting/SettingMenu;->getCurrentMenuIndex()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 153
    invoke-static {v3}, Lcom/lge/camera/util/ColorUtil;->getItemColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 168
    :goto_0
    return-void

    .line 155
    :cond_0
    iget-boolean v1, p5, Lcom/lge/camera/setting/SettingMenuItem;->enable:Z

    if-eqz v1, :cond_1

    .line 156
    invoke-static {v3}, Lcom/lge/camera/util/ColorUtil;->getItemColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_0

    .line 158
    :cond_1
    const/4 v1, 0x3

    invoke-static {v1}, Lcom/lge/camera/util/ColorUtil;->getItemColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_0

    .line 162
    :cond_2
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 165
    .end local v0    # "icon":Landroid/widget/ImageView;
    :cond_3
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 166
    .restart local v0    # "icon":Landroid/widget/ImageView;
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 61
    iget-object v1, p0, Lcom/lge/camera/setting/SettingMenuAdapter;->menus:Ljava/lang/ref/WeakReference;

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
    return-void
.end method

.method public getCount()I
    .locals 3

    .prologue
    .line 221
    iget-object v1, p0, Lcom/lge/camera/setting/SettingMenuAdapter;->menus:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/setting/SettingMenu;

    .line 222
    .local v0, "settingMenu":Lcom/lge/camera/setting/SettingMenu;
    if-nez v0, :cond_0

    .line 223
    const-string v1, "CameraApp"

    const-string v2, "Cannot return menu counting because settingMenu is null"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const/4 v1, 0x0

    .line 231
    :goto_0
    return v1

    .line 227
    :cond_0
    iget v1, p0, Lcom/lge/camera/setting/SettingMenuAdapter;->type:I

    if-nez v1, :cond_1

    .line 228
    invoke-virtual {v0}, Lcom/lge/camera/setting/SettingMenu;->getMenuCount()I

    move-result v1

    goto :goto_0

    .line 231
    :cond_1
    invoke-virtual {v0}, Lcom/lge/camera/setting/SettingMenu;->getCurrentMenu()Lcom/lge/camera/setting/SettingMenuItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/setting/SettingMenuItem;->getChildCount()I

    move-result v1

    goto :goto_0
.end method

.method public getItem(I)Lcom/lge/camera/setting/SettingMenuItem;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 236
    iget-object v1, p0, Lcom/lge/camera/setting/SettingMenuAdapter;->menus:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/setting/SettingMenu;

    .line 237
    .local v0, "settingMenu":Lcom/lge/camera/setting/SettingMenu;
    if-nez v0, :cond_0

    .line 238
    const-string v1, "CameraApp"

    const-string v2, "Cannot return menu item because settingMenu is null"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const/4 v1, 0x0

    .line 246
    :goto_0
    return-object v1

    .line 242
    :cond_0
    iget v1, p0, Lcom/lge/camera/setting/SettingMenuAdapter;->type:I

    if-nez v1, :cond_1

    .line 243
    invoke-virtual {v0, p1}, Lcom/lge/camera/setting/SettingMenu;->getMenu(I)Lcom/lge/camera/setting/SettingMenuItem;

    move-result-object v1

    goto :goto_0

    .line 246
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
    invoke-virtual {p0, p1}, Lcom/lge/camera/setting/SettingMenuAdapter;->getItem(I)Lcom/lge/camera/setting/SettingMenuItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 251
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 23
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 76
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/camera/setting/SettingMenuAdapter;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Context;

    .line 77
    .local v6, "tempContext":Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/camera/setting/SettingMenuAdapter;->menus:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lge/camera/setting/SettingMenu;

    .line 79
    .local v7, "settingMenu":Lcom/lge/camera/setting/SettingMenu;
    if-nez p2, :cond_0

    if-eqz v6, :cond_0

    .line 80
    const-string v3, "layout_inflater"

    invoke-virtual {v6, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/view/LayoutInflater;

    .line 82
    .local v22, "vi":Landroid/view/LayoutInflater;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/lge/camera/setting/SettingMenuAdapter;->type:I

    if-nez v3, :cond_5

    .line 83
    const v3, 0x7f030047

    const/4 v4, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 88
    .end local v22    # "vi":Landroid/view/LayoutInflater;
    :cond_0
    :goto_0
    invoke-virtual/range {p0 .. p1}, Lcom/lge/camera/setting/SettingMenuAdapter;->getItem(I)Lcom/lge/camera/setting/SettingMenuItem;

    move-result-object v14

    .line 89
    .local v14, "menuItem":Lcom/lge/camera/setting/SettingMenuItem;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v16

    .line 90
    .local v16, "currentLanguage":Ljava/lang/String;
    if-eqz v14, :cond_4

    if-eqz p2, :cond_4

    if-eqz v6, :cond_4

    .line 91
    const v3, 0x7f0d01fc

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 93
    .local v8, "menuText":Landroid/widget/TextView;
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v3

    const/16 v4, 0x9

    if-ne v3, v4, :cond_1

    const-string v3, "th"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 95
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v9, -0x1

    invoke-virtual {v8, v3, v4, v5, v9}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 98
    :cond_1
    iget-boolean v3, v14, Lcom/lge/camera/setting/SettingMenuItem;->enable:Z

    if-eqz v3, :cond_6

    move-object/from16 v3, p0

    move/from16 v4, p1

    move-object/from16 v5, p2

    .line 99
    invoke-direct/range {v3 .. v8}, Lcom/lge/camera/setting/SettingMenuAdapter;->getViewMenuItemEnable(ILandroid/view/View;Landroid/content/Context;Lcom/lge/camera/setting/SettingMenu;Landroid/widget/TextView;)V

    .line 103
    :goto_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/lge/camera/setting/SettingMenuAdapter;->type:I

    if-nez v3, :cond_9

    .line 104
    const v3, 0x7f0d01fe

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 106
    .local v17, "currentSettingText":Landroid/widget/TextView;
    iget-boolean v3, v14, Lcom/lge/camera/setting/SettingMenuItem;->enable:Z

    if-eqz v3, :cond_8

    .line 107
    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 108
    move/from16 v0, p1

    invoke-virtual {v7, v0}, Lcom/lge/camera/setting/SettingMenu;->getCurrentChildSettingValue(I)Ljava/lang/String;

    move-result-object v21

    .line 109
    .local v21, "value":Ljava/lang/String;
    if-eqz v21, :cond_2

    const-string v3, ""

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 110
    :cond_2
    const/16 v3, 0x8

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 118
    .end local v21    # "value":Ljava/lang/String;
    :goto_2
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 119
    const/4 v3, 0x6

    invoke-static {v3}, Lcom/lge/camera/util/ColorUtil;->getItemColor(I)I

    move-result v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 121
    invoke-virtual {v8}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v20

    .line 122
    .local v20, "tp":Landroid/text/TextPaint;
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setTextScaleX(F)V

    .line 123
    iget-object v3, v14, Lcom/lge/camera/setting/SettingMenuItem;->name:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v18

    .line 124
    .local v18, "mearsureTextWidth":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/setting/SettingMenuAdapter;->PARENT_ITEM_TEXT_WIDTH:F

    move/from16 v19, v0

    .line 126
    .local v19, "textViewWidth":F
    const/4 v3, 0x0

    move/from16 v0, v18

    invoke-static {v0, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    move/from16 v0, v19

    invoke-static {v0, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_3

    invoke-static/range {v18 .. v19}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-ltz v3, :cond_3

    .line 129
    div-float v3, v19, v18

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setTextScaleX(F)V

    .line 132
    :cond_3
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v4, 0x1

    invoke-virtual {v8, v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 136
    .end local v17    # "currentSettingText":Landroid/widget/TextView;
    .end local v18    # "mearsureTextWidth":F
    .end local v19    # "textViewWidth":F
    .end local v20    # "tp":Landroid/text/TextPaint;
    :goto_3
    iget-object v3, v14, Lcom/lge/camera/setting/SettingMenuItem;->name:Ljava/lang/String;

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v7, v14}, Lcom/lge/camera/setting/SettingMenuAdapter;->setCheckImage(ILandroid/view/View;Lcom/lge/camera/setting/SettingMenu;Lcom/lge/camera/setting/SettingMenuItem;)V

    move-object/from16 v9, p0

    move/from16 v10, p1

    move-object/from16 v11, p2

    move-object v12, v6

    move-object v13, v7

    move-object v15, v8

    .line 138
    invoke-direct/range {v9 .. v15}, Lcom/lge/camera/setting/SettingMenuAdapter;->setSettingImages(ILandroid/view/View;Landroid/content/Context;Lcom/lge/camera/setting/SettingMenu;Lcom/lge/camera/setting/SettingMenuItem;Landroid/widget/TextView;)V

    .line 140
    .end local v8    # "menuText":Landroid/widget/TextView;
    :cond_4
    return-object p2

    .line 85
    .end local v14    # "menuItem":Lcom/lge/camera/setting/SettingMenuItem;
    .end local v16    # "currentLanguage":Ljava/lang/String;
    .restart local v22    # "vi":Landroid/view/LayoutInflater;
    :cond_5
    const v3, 0x7f030046

    const/4 v4, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_0

    .line 101
    .end local v22    # "vi":Landroid/view/LayoutInflater;
    .restart local v8    # "menuText":Landroid/widget/TextView;
    .restart local v14    # "menuItem":Lcom/lge/camera/setting/SettingMenuItem;
    .restart local v16    # "currentLanguage":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v6, v8}, Lcom/lge/camera/setting/SettingMenuAdapter;->getViewMenuItemDisable(Landroid/view/View;Landroid/content/Context;Landroid/widget/TextView;)V

    goto/16 :goto_1

    .line 112
    .restart local v17    # "currentSettingText":Landroid/widget/TextView;
    .restart local v21    # "value":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 115
    .end local v21    # "value":Ljava/lang/String;
    :cond_8
    const/16 v3, 0x8

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 116
    const-string v3, "Disable"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 134
    .end local v17    # "currentSettingText":Landroid/widget/TextView;
    :cond_9
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v4, 0x1

    invoke-virtual {v8, v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_3
.end method

.method public isEnabled(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 256
    invoke-virtual {p0, p1}, Lcom/lge/camera/setting/SettingMenuAdapter;->getItem(I)Lcom/lge/camera/setting/SettingMenuItem;

    move-result-object v0

    .line 258
    .local v0, "ci":Lcom/lge/camera/setting/SettingMenuItem;
    if-nez v0, :cond_0

    .line 259
    const/4 v1, 0x0

    .line 262
    :goto_0
    return v1

    :cond_0
    iget-boolean v1, v0, Lcom/lge/camera/setting/SettingMenuItem;->enable:Z

    goto :goto_0
.end method

.method public setShowChild(Z)V
    .locals 0
    .param p1, "set"    # Z

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/lge/camera/setting/SettingMenuAdapter;->isShowChild:Z

    .line 69
    return-void
.end method

.method public setShowSelectedChild(Z)V
    .locals 0
    .param p1, "set"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/lge/camera/setting/SettingMenuAdapter;->isShowSelectedCheck:Z

    .line 73
    return-void
.end method

.method public update()V
    .locals 3

    .prologue
    .line 295
    iget-object v1, p0, Lcom/lge/camera/setting/SettingMenuAdapter;->menus:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/setting/SettingMenu;

    .line 296
    .local v0, "settingMenu":Lcom/lge/camera/setting/SettingMenu;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/lge/camera/setting/SettingMenu;->mGet:Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;

    if-nez v1, :cond_1

    .line 305
    :cond_0
    :goto_0
    return-void

    .line 299
    :cond_1
    iget-object v1, v0, Lcom/lge/camera/setting/SettingMenu;->mGet:Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;

    new-instance v2, Lcom/lge/camera/setting/SettingMenuAdapter$1;

    invoke-direct {v2, p0, v0}, Lcom/lge/camera/setting/SettingMenuAdapter$1;-><init>(Lcom/lge/camera/setting/SettingMenuAdapter;Lcom/lge/camera/setting/SettingMenu;)V

    invoke-interface {v1, v2}, Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 0
    .param p1, "observable"    # Ljava/util/Observable;
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 291
    invoke-virtual {p0}, Lcom/lge/camera/setting/SettingMenuAdapter;->update()V

    .line 292
    return-void
.end method
