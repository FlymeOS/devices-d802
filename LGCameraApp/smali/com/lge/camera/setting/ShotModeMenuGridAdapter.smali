.class public Lcom/lge/camera/setting/ShotModeMenuGridAdapter;
.super Landroid/widget/BaseAdapter;
.source "ShotModeMenuGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/camera/setting/ShotModeMenuGridAdapter$ModeMenuViewHolder;
    }
.end annotation


# static fields
.field public static final ROW_COUNT_LAND:I = 0x4

.field public static final ROW_COUNT_PORT:I = 0x3


# instance fields
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

.field private mMenus:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSelectedItemPos:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "rowNum"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p2, "menus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 89
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/camera/setting/ShotModeMenuGridAdapter;->mSelectedItemPos:I

    .line 38
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/lge/camera/setting/ShotModeMenuGridAdapter;->mContext:Ljava/lang/ref/WeakReference;

    .line 39
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/lge/camera/setting/ShotModeMenuGridAdapter;->mMenus:Ljava/lang/ref/WeakReference;

    .line 40
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/lge/camera/setting/ShotModeMenuGridAdapter;->mMenus:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 108
    iget-object v0, p0, Lcom/lge/camera/setting/ShotModeMenuGridAdapter;->mMenus:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/lge/camera/setting/ShotModeMenuGridAdapter;->mMenus:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;

    .line 111
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/lge/camera/setting/ShotModeMenuGridAdapter;->getItem(I)Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 115
    int-to-long v0, p1

    return-wide v0
.end method

.method public getSelectedItem()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/lge/camera/setting/ShotModeMenuGridAdapter;->mSelectedItemPos:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v9, 0x1

    const/4 v7, 0x0

    .line 43
    move-object v3, p2

    .line 44
    .local v3, "modeItemView":Landroid/view/View;
    const/4 v1, 0x0

    .line 45
    .local v1, "holder":Lcom/lge/camera/setting/ShotModeMenuGridAdapter$ModeMenuViewHolder;
    if-nez v3, :cond_3

    .line 46
    iget-object v6, p0, Lcom/lge/camera/setting/ShotModeMenuGridAdapter;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Context;

    const-string v8, "layout_inflater"

    invoke-virtual {v6, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 48
    .local v5, "vi":Landroid/view/LayoutInflater;
    const v6, 0x7f03004b

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 49
    if-nez v3, :cond_0

    .line 50
    const-string v6, "CameraApp"

    const-string v8, "SelectMenuGridAdapter error. view is null."

    invoke-static {v6, v8}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v7

    .line 86
    .end local v5    # "vi":Landroid/view/LayoutInflater;
    :goto_0
    return-object v6

    .line 53
    .restart local v5    # "vi":Landroid/view/LayoutInflater;
    :cond_0
    new-instance v1, Lcom/lge/camera/setting/ShotModeMenuGridAdapter$ModeMenuViewHolder;

    .end local v1    # "holder":Lcom/lge/camera/setting/ShotModeMenuGridAdapter$ModeMenuViewHolder;
    invoke-direct {v1, p0}, Lcom/lge/camera/setting/ShotModeMenuGridAdapter$ModeMenuViewHolder;-><init>(Lcom/lge/camera/setting/ShotModeMenuGridAdapter;)V

    .line 54
    .restart local v1    # "holder":Lcom/lge/camera/setting/ShotModeMenuGridAdapter$ModeMenuViewHolder;
    const v6, 0x7f0d0222

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v1, Lcom/lge/camera/setting/ShotModeMenuGridAdapter$ModeMenuViewHolder;->mImage:Landroid/widget/ImageView;

    .line 55
    const v6, 0x7f0d0223

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v1, Lcom/lge/camera/setting/ShotModeMenuGridAdapter$ModeMenuViewHolder;->mName:Landroid/widget/TextView;

    .line 57
    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 62
    .end local v5    # "vi":Landroid/view/LayoutInflater;
    :goto_1
    iget-object v6, v1, Lcom/lge/camera/setting/ShotModeMenuGridAdapter$ModeMenuViewHolder;->mName:Landroid/widget/TextView;

    if-eqz v6, :cond_2

    iget-object v6, v1, Lcom/lge/camera/setting/ShotModeMenuGridAdapter$ModeMenuViewHolder;->mImage:Landroid/widget/ImageView;

    if-eqz v6, :cond_2

    .line 63
    iget-object v6, v1, Lcom/lge/camera/setting/ShotModeMenuGridAdapter$ModeMenuViewHolder;->mName:Landroid/widget/TextView;

    sget-object v8, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v6, v8, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 64
    invoke-virtual {p0, p1}, Lcom/lge/camera/setting/ShotModeMenuGridAdapter;->getItem(I)Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;

    move-result-object v0

    .line 65
    .local v0, "ci":Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;
    if-eqz v0, :cond_5

    .line 66
    invoke-virtual {v0}, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    .line 67
    .local v4, "title":Ljava/lang/String;
    iget-object v6, v1, Lcom/lge/camera/setting/ShotModeMenuGridAdapter$ModeMenuViewHolder;->mName:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    invoke-virtual {v3, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 69
    invoke-virtual {v0}, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;->getImageDrawable()Landroid/graphics/drawable/LevelListDrawable;

    move-result-object v2

    .line 70
    .local v2, "imageDrawable":Landroid/graphics/drawable/LevelListDrawable;
    invoke-virtual {v0}, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;->getImageResourceId()I

    move-result v6

    if-eqz v6, :cond_1

    if-eqz v2, :cond_1

    .line 71
    iget-object v6, v1, Lcom/lge/camera/setting/ShotModeMenuGridAdapter$ModeMenuViewHolder;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;->getImageResourceId()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 72
    iget-object v6, v1, Lcom/lge/camera/setting/ShotModeMenuGridAdapter$ModeMenuViewHolder;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 74
    :cond_1
    invoke-virtual {p0, p1}, Lcom/lge/camera/setting/ShotModeMenuGridAdapter;->isSelectedItem(I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 75
    iget-object v6, v1, Lcom/lge/camera/setting/ShotModeMenuGridAdapter$ModeMenuViewHolder;->mImage:Landroid/widget/ImageView;

    const v7, 0x7f020278

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .end local v0    # "ci":Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;
    .end local v2    # "imageDrawable":Landroid/graphics/drawable/LevelListDrawable;
    .end local v4    # "title":Ljava/lang/String;
    :cond_2
    :goto_2
    move-object v6, v3

    .line 86
    goto :goto_0

    .line 59
    :cond_3
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "holder":Lcom/lge/camera/setting/ShotModeMenuGridAdapter$ModeMenuViewHolder;
    check-cast v1, Lcom/lge/camera/setting/ShotModeMenuGridAdapter$ModeMenuViewHolder;

    .restart local v1    # "holder":Lcom/lge/camera/setting/ShotModeMenuGridAdapter$ModeMenuViewHolder;
    goto :goto_1

    .line 78
    .restart local v0    # "ci":Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;
    .restart local v2    # "imageDrawable":Landroid/graphics/drawable/LevelListDrawable;
    .restart local v4    # "title":Ljava/lang/String;
    :cond_4
    iget-object v6, v1, Lcom/lge/camera/setting/ShotModeMenuGridAdapter$ModeMenuViewHolder;->mImage:Landroid/widget/ImageView;

    const v7, 0x7f020484

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_2

    .line 81
    .end local v2    # "imageDrawable":Landroid/graphics/drawable/LevelListDrawable;
    .end local v4    # "title":Ljava/lang/String;
    :cond_5
    iget-object v6, v1, Lcom/lge/camera/setting/ShotModeMenuGridAdapter$ModeMenuViewHolder;->mName:Landroid/widget/TextView;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v6, v1, Lcom/lge/camera/setting/ShotModeMenuGridAdapter$ModeMenuViewHolder;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 83
    iget-object v6, v1, Lcom/lge/camera/setting/ShotModeMenuGridAdapter$ModeMenuViewHolder;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method

.method public isSelectedItem(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 100
    iget v0, p0, Lcom/lge/camera/setting/ShotModeMenuGridAdapter;->mSelectedItemPos:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSelectedItem(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 92
    iput p1, p0, Lcom/lge/camera/setting/ShotModeMenuGridAdapter;->mSelectedItemPos:I

    .line 93
    return-void
.end method
