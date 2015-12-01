.class public Lcom/lge/camera/setting/ShotModeMenuListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ShotModeMenuListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/camera/setting/ShotModeMenuListAdapter$ModeMenuViewHolder;
    }
.end annotation


# static fields
.field public static final CIRCULAR:Z = true

.field private static final HALF_MAX_VALUE:I = 0x3fffffff


# instance fields
.field private final MIDDLE_VALUE:I

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

.field private mDegree:I

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

.field private mSelectedAmount:I

.field private mSelectedItemPos:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "menus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;>;"
    const v2, 0x3fffffff    # 1.9999999f

    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 103
    iput v1, p0, Lcom/lge/camera/setting/ShotModeMenuListAdapter;->mDegree:I

    .line 113
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/camera/setting/ShotModeMenuListAdapter;->mSelectedItemPos:I

    .line 114
    iput v1, p0, Lcom/lge/camera/setting/ShotModeMenuListAdapter;->mSelectedAmount:I

    .line 43
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/lge/camera/setting/ShotModeMenuListAdapter;->mContext:Ljava/lang/ref/WeakReference;

    .line 44
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/lge/camera/setting/ShotModeMenuListAdapter;->mMenus:Ljava/lang/ref/WeakReference;

    .line 45
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    rem-int v0, v2, v0

    sub-int v0, v2, v0

    iput v0, p0, Lcom/lge/camera/setting/ShotModeMenuListAdapter;->MIDDLE_VALUE:I

    .line 46
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 149
    const v0, 0x7fffffff

    return v0
.end method

.method public getItem(I)Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 156
    iget-object v0, p0, Lcom/lge/camera/setting/ShotModeMenuListAdapter;->mMenus:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 157
    const/4 v0, 0x0

    .line 161
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lge/camera/setting/ShotModeMenuListAdapter;->mMenus:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lge/camera/setting/ShotModeMenuListAdapter;->mMenus:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    rem-int v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lcom/lge/camera/setting/ShotModeMenuListAdapter;->getItem(I)Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 168
    int-to-long v0, p1

    return-wide v0
.end method

.method public getListItemDegree()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/lge/camera/setting/ShotModeMenuListAdapter;->mDegree:I

    return v0
.end method

.method public getMiddleValue()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/lge/camera/setting/ShotModeMenuListAdapter;->MIDDLE_VALUE:I

    return v0
.end method

.method public getSelectedItem()I
    .locals 2

    .prologue
    .line 131
    iget v1, p0, Lcom/lge/camera/setting/ShotModeMenuListAdapter;->mSelectedAmount:I

    iget-object v0, p0, Lcom/lge/camera/setting/ShotModeMenuListAdapter;->mMenus:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/lge/camera/setting/ShotModeMenuListAdapter;->mSelectedItemPos:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v7, 0x0

    .line 53
    const/4 v1, 0x0

    .line 54
    .local v1, "holder":Lcom/lge/camera/setting/ShotModeMenuListAdapter$ModeMenuViewHolder;
    move-object v4, p2

    .line 55
    .local v4, "modeItemView":Landroid/view/View;
    if-nez v4, :cond_2

    .line 56
    iget-object v6, p0, Lcom/lge/camera/setting/ShotModeMenuListAdapter;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Context;

    const-string v8, "layout_inflater"

    invoke-virtual {v6, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 58
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const v6, 0x7f03004c

    invoke-virtual {v3, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 59
    if-nez v4, :cond_0

    .line 60
    const-string v6, "CameraApp"

    const-string v8, "SelectMenuGridAdapter error. view is null."

    invoke-static {v6, v8}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v7

    .line 100
    .end local v3    # "inflater":Landroid/view/LayoutInflater;
    :goto_0
    return-object v6

    .line 63
    .restart local v3    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    new-instance v1, Lcom/lge/camera/setting/ShotModeMenuListAdapter$ModeMenuViewHolder;

    .end local v1    # "holder":Lcom/lge/camera/setting/ShotModeMenuListAdapter$ModeMenuViewHolder;
    invoke-direct {v1, p0}, Lcom/lge/camera/setting/ShotModeMenuListAdapter$ModeMenuViewHolder;-><init>(Lcom/lge/camera/setting/ShotModeMenuListAdapter;)V

    .line 64
    .restart local v1    # "holder":Lcom/lge/camera/setting/ShotModeMenuListAdapter$ModeMenuViewHolder;
    const v6, 0x7f0d0225

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, v1, Lcom/lge/camera/setting/ShotModeMenuListAdapter$ModeMenuViewHolder;->mLayout:Landroid/widget/RelativeLayout;

    .line 66
    const v6, 0x7f0d0224

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/lge/camera/components/RotateLayout;

    iput-object v6, v1, Lcom/lge/camera/setting/ShotModeMenuListAdapter$ModeMenuViewHolder;->mRotate:Lcom/lge/camera/components/RotateLayout;

    .line 68
    const v6, 0x7f0d0222

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v1, Lcom/lge/camera/setting/ShotModeMenuListAdapter$ModeMenuViewHolder;->mImage:Landroid/widget/ImageView;

    .line 69
    const v6, 0x7f0d0223

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v1, Lcom/lge/camera/setting/ShotModeMenuListAdapter$ModeMenuViewHolder;->mNameBottom:Landroid/widget/TextView;

    .line 71
    invoke-virtual {v4, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 76
    .end local v3    # "inflater":Landroid/view/LayoutInflater;
    :goto_1
    iget-object v6, v1, Lcom/lge/camera/setting/ShotModeMenuListAdapter$ModeMenuViewHolder;->mRotate:Lcom/lge/camera/components/RotateLayout;

    invoke-virtual {p0}, Lcom/lge/camera/setting/ShotModeMenuListAdapter;->getListItemDegree()I

    move-result v8

    invoke-virtual {v6, v8}, Lcom/lge/camera/components/RotateLayout;->rotateLayout(I)V

    .line 77
    iget-object v6, v1, Lcom/lge/camera/setting/ShotModeMenuListAdapter$ModeMenuViewHolder;->mNameBottom:Landroid/widget/TextView;

    sget-object v8, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v6, v8, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 78
    invoke-virtual {p0, p1}, Lcom/lge/camera/setting/ShotModeMenuListAdapter;->getItem(I)Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;

    move-result-object v0

    .line 79
    .local v0, "ci":Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;
    if-eqz v0, :cond_3

    .line 80
    invoke-virtual {v0}, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    .line 81
    .local v5, "title":Ljava/lang/String;
    iget-object v6, v1, Lcom/lge/camera/setting/ShotModeMenuListAdapter$ModeMenuViewHolder;->mNameBottom:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    invoke-virtual {v4, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 83
    invoke-virtual {v0}, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;->getImageDrawable()Landroid/graphics/drawable/LevelListDrawable;

    move-result-object v2

    .line 84
    .local v2, "imageDrawable":Landroid/graphics/drawable/LevelListDrawable;
    invoke-virtual {v0}, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;->getImageResourceId()I

    move-result v6

    if-eqz v6, :cond_1

    if-eqz v2, :cond_1

    .line 85
    iget-object v6, v1, Lcom/lge/camera/setting/ShotModeMenuListAdapter$ModeMenuViewHolder;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;->getImageResourceId()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 86
    iget-object v6, v1, Lcom/lge/camera/setting/ShotModeMenuListAdapter$ModeMenuViewHolder;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 93
    .end local v2    # "imageDrawable":Landroid/graphics/drawable/LevelListDrawable;
    .end local v5    # "title":Ljava/lang/String;
    :cond_1
    :goto_2
    invoke-virtual {p0, p1}, Lcom/lge/camera/setting/ShotModeMenuListAdapter;->isSelectedItem(I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 94
    iget-object v6, v1, Lcom/lge/camera/setting/ShotModeMenuListAdapter$ModeMenuViewHolder;->mNameBottom:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setSelected(Z)V

    .line 95
    iget-object v6, v1, Lcom/lge/camera/setting/ShotModeMenuListAdapter$ModeMenuViewHolder;->mLayout:Landroid/widget/RelativeLayout;

    const v7, 0x7f02027a

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    :goto_3
    move-object v6, v4

    .line 100
    goto/16 :goto_0

    .line 73
    .end local v0    # "ci":Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;
    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "holder":Lcom/lge/camera/setting/ShotModeMenuListAdapter$ModeMenuViewHolder;
    check-cast v1, Lcom/lge/camera/setting/ShotModeMenuListAdapter$ModeMenuViewHolder;

    .restart local v1    # "holder":Lcom/lge/camera/setting/ShotModeMenuListAdapter$ModeMenuViewHolder;
    goto :goto_1

    .line 89
    .restart local v0    # "ci":Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;
    :cond_3
    iget-object v6, v1, Lcom/lge/camera/setting/ShotModeMenuListAdapter$ModeMenuViewHolder;->mNameBottom:Landroid/widget/TextView;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v6, v1, Lcom/lge/camera/setting/ShotModeMenuListAdapter$ModeMenuViewHolder;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 97
    :cond_4
    iget-object v6, v1, Lcom/lge/camera/setting/ShotModeMenuListAdapter$ModeMenuViewHolder;->mNameBottom:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setSelected(Z)V

    .line 98
    iget-object v6, v1, Lcom/lge/camera/setting/ShotModeMenuListAdapter$ModeMenuViewHolder;->mLayout:Landroid/widget/RelativeLayout;

    const v7, 0x7f020485

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_3
.end method

.method public isSelectedItem(I)Z
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x0

    .line 138
    iget-object v0, p0, Lcom/lge/camera/setting/ShotModeMenuListAdapter;->mMenus:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 141
    :goto_0
    return v1

    :cond_0
    iget-object v0, p0, Lcom/lge/camera/setting/ShotModeMenuListAdapter;->mMenus:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    rem-int v0, p1, v0

    iget v2, p0, Lcom/lge/camera/setting/ShotModeMenuListAdapter;->mSelectedItemPos:I

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public setListItemDegree(I)V
    .locals 0
    .param p1, "degree"    # I

    .prologue
    .line 110
    iput p1, p0, Lcom/lge/camera/setting/ShotModeMenuListAdapter;->mDegree:I

    .line 111
    return-void
.end method

.method public setSelectedItem(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 118
    iget-object v0, p0, Lcom/lge/camera/setting/ShotModeMenuListAdapter;->mMenus:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 119
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/camera/setting/ShotModeMenuListAdapter;->mSelectedItemPos:I

    .line 120
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/camera/setting/ShotModeMenuListAdapter;->mSelectedAmount:I

    .line 128
    :goto_0
    return-void

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/setting/ShotModeMenuListAdapter;->mMenus:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    div-int v0, p1, v0

    iput v0, p0, Lcom/lge/camera/setting/ShotModeMenuListAdapter;->mSelectedAmount:I

    .line 123
    iget-object v0, p0, Lcom/lge/camera/setting/ShotModeMenuListAdapter;->mMenus:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    rem-int v0, p1, v0

    iput v0, p0, Lcom/lge/camera/setting/ShotModeMenuListAdapter;->mSelectedItemPos:I

    goto :goto_0
.end method
