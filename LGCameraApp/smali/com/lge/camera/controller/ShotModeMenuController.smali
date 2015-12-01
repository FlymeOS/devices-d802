.class public abstract Lcom/lge/camera/controller/ShotModeMenuController;
.super Lcom/lge/camera/controller/Controller;
.source "ShotModeMenuController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;
    }
.end annotation


# static fields
.field protected static final ANI_DURATION:I = 0x12c

.field protected static final BACK_COVER_ANI_DURATION:I = 0x1f4

.field protected static final COMMAND_DELAY:I = 0x12c

.field protected static final MODE_MENU_VIEW_LIST:Ljava/lang/String; = "mode_menu_view_list"

.field protected static final VIEW_MODE_GRID:I = 0x1

.field protected static final VIEW_MODE_LIST:I


# instance fields
.field protected CENTER_POS:I

.field protected LAYOUT_HEIGHT:I

.field protected LAYOUT_WIDTH:I

.field protected NAVI_MARGIN:I

.field protected SELECTED_POS:I

.field protected mAutoButtonClickListener:Landroid/view/View$OnClickListener;

.field protected mAutoModeButton:Lcom/lge/camera/components/RotateImageButton;

.field protected mChangeButton:Lcom/lge/camera/components/RotateImageView;

.field protected mChangeButtonClickListener:Landroid/view/View$OnClickListener;

.field protected mContentView:Landroid/view/View;

.field protected mDescText:Landroid/widget/TextView;

.field protected mGridAdapter:Lcom/lge/camera/setting/ShotModeMenuGridAdapter;

.field protected mGridMenuView:Landroid/widget/GridView;

.field protected mGridViewTouchListener:Landroid/view/View$OnTouchListener;

.field protected mHide:Landroid/view/animation/Animation;

.field private mImageCacheThread:Ljava/lang/Thread;

.field protected mListAdapter:Lcom/lge/camera/setting/ShotModeMenuListAdapter;

.field protected mListView:Lcom/lge/camera/components/ModeMenuListView;

.field protected mModeItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;",
            ">;"
        }
    .end annotation
.end field

.field protected mModeMenuClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field protected mOnBackCoverTouchListener:Landroid/view/View$OnTouchListener;

.field protected mOnModeMenuListListener:Lcom/lge/camera/components/ModeMenuListView$OnModeMenuListListener;

.field protected mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field protected mScrollStarted:Ljava/lang/Runnable;

.field protected mScrollState:I

.field protected mScrollStateIdle:Ljava/lang/Runnable;

.field protected mScrollView:Lcom/lge/camera/components/CustomHelpScrollView;

.field protected mShotModeMenuView:Landroid/view/View;

.field protected mShow:Landroid/view/animation/Animation;

.field protected mShowAnimation:Z

.field protected mTitleText:Landroid/widget/TextView;

.field protected mViewMode:I


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 5
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 96
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/Controller;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 69
    iput-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mShotModeMenuView:Landroid/view/View;

    .line 70
    iput-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mListView:Lcom/lge/camera/components/ModeMenuListView;

    .line 71
    iput-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mListAdapter:Lcom/lge/camera/setting/ShotModeMenuListAdapter;

    .line 72
    iput-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGridAdapter:Lcom/lge/camera/setting/ShotModeMenuGridAdapter;

    .line 73
    iput-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGridMenuView:Landroid/widget/GridView;

    .line 74
    iput-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mContentView:Landroid/view/View;

    .line 75
    iput-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mTitleText:Landroid/widget/TextView;

    .line 76
    iput-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mDescText:Landroid/widget/TextView;

    .line 77
    iput-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mChangeButton:Lcom/lge/camera/components/RotateImageView;

    .line 78
    iput-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mAutoModeButton:Lcom/lge/camera/components/RotateImageButton;

    .line 79
    iput-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mScrollView:Lcom/lge/camera/components/CustomHelpScrollView;

    .line 81
    const/4 v0, 0x1

    iput v0, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mViewMode:I

    .line 83
    iput v2, p0, Lcom/lge/camera/controller/ShotModeMenuController;->LAYOUT_WIDTH:I

    .line 84
    iput v2, p0, Lcom/lge/camera/controller/ShotModeMenuController;->LAYOUT_HEIGHT:I

    .line 86
    iput v2, p0, Lcom/lge/camera/controller/ShotModeMenuController;->NAVI_MARGIN:I

    .line 87
    iput v2, p0, Lcom/lge/camera/controller/ShotModeMenuController;->CENTER_POS:I

    .line 88
    iput v2, p0, Lcom/lge/camera/controller/ShotModeMenuController;->SELECTED_POS:I

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mModeItemList:Ljava/util/ArrayList;

    .line 92
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mShow:Landroid/view/animation/Animation;

    .line 93
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v4, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mHide:Landroid/view/animation/Animation;

    .line 170
    iput-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mImageCacheThread:Ljava/lang/Thread;

    .line 764
    iput v2, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mScrollState:I

    .line 765
    new-instance v0, Lcom/lge/camera/controller/ShotModeMenuController$3;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/ShotModeMenuController$3;-><init>(Lcom/lge/camera/controller/ShotModeMenuController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 857
    new-instance v0, Lcom/lge/camera/controller/ShotModeMenuController$4;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/ShotModeMenuController$4;-><init>(Lcom/lge/camera/controller/ShotModeMenuController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mModeMenuClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 922
    iput-boolean v2, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mShowAnimation:Z

    .line 923
    new-instance v0, Lcom/lge/camera/controller/ShotModeMenuController$5;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/ShotModeMenuController$5;-><init>(Lcom/lge/camera/controller/ShotModeMenuController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mOnModeMenuListListener:Lcom/lge/camera/components/ModeMenuListView$OnModeMenuListListener;

    .line 964
    new-instance v0, Lcom/lge/camera/controller/ShotModeMenuController$6;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/ShotModeMenuController$6;-><init>(Lcom/lge/camera/controller/ShotModeMenuController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mChangeButtonClickListener:Landroid/view/View$OnClickListener;

    .line 1023
    new-instance v0, Lcom/lge/camera/controller/ShotModeMenuController$7;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/ShotModeMenuController$7;-><init>(Lcom/lge/camera/controller/ShotModeMenuController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mAutoButtonClickListener:Landroid/view/View$OnClickListener;

    .line 1030
    new-instance v0, Lcom/lge/camera/controller/ShotModeMenuController$8;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/ShotModeMenuController$8;-><init>(Lcom/lge/camera/controller/ShotModeMenuController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mOnBackCoverTouchListener:Landroid/view/View$OnTouchListener;

    .line 1061
    new-instance v0, Lcom/lge/camera/controller/ShotModeMenuController$9;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/ShotModeMenuController$9;-><init>(Lcom/lge/camera/controller/ShotModeMenuController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGridViewTouchListener:Landroid/view/View$OnTouchListener;

    .line 1093
    new-instance v0, Lcom/lge/camera/controller/ShotModeMenuController$10;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/ShotModeMenuController$10;-><init>(Lcom/lge/camera/controller/ShotModeMenuController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mScrollStarted:Ljava/lang/Runnable;

    .line 1103
    new-instance v0, Lcom/lge/camera/controller/ShotModeMenuController$11;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/ShotModeMenuController$11;-><init>(Lcom/lge/camera/controller/ShotModeMenuController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mScrollStateIdle:Ljava/lang/Runnable;

    .line 97
    return-void
.end method

.method static synthetic access$000(Lcom/lge/camera/controller/ShotModeMenuController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/controller/ShotModeMenuController;
    .param p1, "x1"    # I

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/ShotModeMenuController;->updateListViewItem(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/lge/camera/controller/ShotModeMenuController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/controller/ShotModeMenuController;
    .param p1, "x1"    # I

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/ShotModeMenuController;->updateGridViewItem(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/lge/camera/controller/ShotModeMenuController;)Ljava/lang/Thread;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/ShotModeMenuController;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mImageCacheThread:Ljava/lang/Thread;

    return-object v0
.end method

.method private addFooterView()V
    .locals 7

    .prologue
    .line 307
    iget-object v4, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mListView:Lcom/lge/camera/components/ModeMenuListView;

    if-eqz v4, :cond_0

    .line 308
    iget-object v4, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f090294

    invoke-static {v4, v5}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v3

    .line 310
    .local v3, "width":I
    iget-object v4, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f090295

    invoke-static {v4, v5}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v0

    .line 312
    .local v0, "height":I
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    div-int/lit8 v4, v3, 0x2

    div-int/lit8 v5, v0, 0x2

    invoke-direct {v1, v4, v5}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 313
    .local v1, "params":Landroid/widget/AbsListView$LayoutParams;
    new-instance v2, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 314
    .local v2, "view":Landroid/widget/ImageView;
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 315
    iget-object v4, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mListView:Lcom/lge/camera/components/ModeMenuListView;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v2, v5, v6}, Lcom/lge/camera/components/ModeMenuListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 317
    .end local v0    # "height":I
    .end local v1    # "params":Landroid/widget/AbsListView$LayoutParams;
    .end local v2    # "view":Landroid/widget/ImageView;
    .end local v3    # "width":I
    :cond_0
    return-void
.end method

.method private addHeaderView()V
    .locals 7

    .prologue
    .line 294
    iget-object v4, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mListView:Lcom/lge/camera/components/ModeMenuListView;

    if-eqz v4, :cond_0

    .line 295
    iget-object v4, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f090294

    invoke-static {v4, v5}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v3

    .line 297
    .local v3, "width":I
    iget-object v4, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f090295

    invoke-static {v4, v5}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v0

    .line 299
    .local v0, "height":I
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    div-int/lit8 v4, v3, 0x2

    div-int/lit8 v5, v0, 0x2

    invoke-direct {v1, v4, v5}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 300
    .local v1, "params":Landroid/widget/AbsListView$LayoutParams;
    new-instance v2, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 301
    .local v2, "view":Landroid/widget/ImageView;
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 302
    iget-object v4, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mListView:Lcom/lge/camera/components/ModeMenuListView;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v2, v5, v6}, Lcom/lge/camera/components/ModeMenuListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 304
    .end local v0    # "height":I
    .end local v1    # "params":Landroid/widget/AbsListView$LayoutParams;
    .end local v2    # "view":Landroid/widget/ImageView;
    .end local v3    # "width":I
    :cond_0
    return-void
.end method

.method private changeGridBackground(IZ)V
    .locals 5
    .param p1, "position"    # I
    .param p2, "selected"    # Z

    .prologue
    .line 812
    iget-object v3, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGridMenuView:Landroid/widget/GridView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGridAdapter:Lcom/lge/camera/setting/ShotModeMenuGridAdapter;

    if-nez v3, :cond_2

    .line 814
    :cond_0
    const-string v3, "CameraApp"

    const-string v4, "mGridMenuView is null = "

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    :cond_1
    :goto_0
    return-void

    .line 817
    :cond_2
    iget-object v3, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGridMenuView:Landroid/widget/GridView;

    invoke-virtual {v3, p1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 818
    .local v2, "v":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 821
    if-eqz p2, :cond_3

    const v1, 0x7f020278

    .line 824
    .local v1, "resId":I
    :goto_1
    const v3, 0x7f0d0222

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 825
    .local v0, "imgView":Landroid/widget/ImageView;
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 821
    .end local v0    # "imgView":Landroid/widget/ImageView;
    .end local v1    # "resId":I
    :cond_3
    const v1, 0x7f020484

    goto :goto_1
.end method

.method private changeListBackground(IZ)V
    .locals 5
    .param p1, "position"    # I
    .param p2, "selected"    # Z

    .prologue
    .line 840
    iget-object v4, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mListView:Lcom/lge/camera/components/ModeMenuListView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mListAdapter:Lcom/lge/camera/setting/ShotModeMenuListAdapter;

    if-nez v4, :cond_1

    .line 855
    :cond_0
    :goto_0
    return-void

    .line 844
    :cond_1
    iget-object v4, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mListView:Lcom/lge/camera/components/ModeMenuListView;

    invoke-virtual {v4, p1}, Lcom/lge/camera/components/ModeMenuListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 845
    .local v3, "v":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 848
    if-eqz p2, :cond_2

    const v2, 0x7f02027a

    .line 851
    .local v2, "resId":I
    :goto_1
    const v4, 0x7f0d0225

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 852
    .local v0, "itemView":Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 853
    const v4, 0x7f0d0223

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 854
    .local v1, "nameBottom":Landroid/widget/TextView;
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setPressed(Z)V

    goto :goto_0

    .line 848
    .end local v0    # "itemView":Landroid/view/View;
    .end local v1    # "nameBottom":Landroid/widget/TextView;
    .end local v2    # "resId":I
    :cond_2
    const v2, 0x7f020485

    goto :goto_1
.end method

.method private makeAllImageResources()V
    .locals 1

    .prologue
    .line 1188
    new-instance v0, Lcom/lge/camera/controller/ShotModeMenuController$12;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/ShotModeMenuController$12;-><init>(Lcom/lge/camera/controller/ShotModeMenuController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mImageCacheThread:Ljava/lang/Thread;

    .line 1203
    iget-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mImageCacheThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1204
    return-void
.end method

.method private releaseAllImageResources()V
    .locals 3

    .prologue
    .line 1207
    iget-object v2, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mModeItemList:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    .line 1208
    iget-object v2, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mModeItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;

    .line 1209
    .local v1, "item":Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;
    iget-object v2, v1, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;->mDrawable:Landroid/graphics/drawable/LevelListDrawable;

    if-eqz v2, :cond_0

    .line 1210
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;->mDrawable:Landroid/graphics/drawable/LevelListDrawable;

    goto :goto_0

    .line 1213
    .end local v1    # "item":Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mModeItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1215
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method private setDefaultAutoButton()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 320
    iget-object v6, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mShotModeMenuView:Landroid/view/View;

    const v7, 0x7f0d021f

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/lge/camera/components/RotateImageButton;

    iput-object v6, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mAutoModeButton:Lcom/lge/camera/components/RotateImageButton;

    .line 322
    iget-object v6, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mAutoModeButton:Lcom/lge/camera/components/RotateImageButton;

    iget-object v7, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mAutoButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Lcom/lge/camera/components/RotateImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 323
    iget-object v6, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mAutoModeButton:Lcom/lge/camera/components/RotateImageButton;

    iget-object v7, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v8, 0x7f0a0357

    invoke-interface {v7, v8}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/lge/camera/components/RotateImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 326
    iget-object v6, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mAutoModeButton:Lcom/lge/camera/components/RotateImageButton;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v6, v7}, Lcom/lge/camera/components/RotateImageButton;->setTextScaleX(F)V

    .line 327
    iget-object v6, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mAutoModeButton:Lcom/lge/camera/components/RotateImageButton;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/lge/camera/components/RotateImageButton;->setTextStyle(I)V

    .line 328
    iget-object v6, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mAutoModeButton:Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v6}, Lcom/lge/camera/components/RotateImageButton;->getTextPaint()Landroid/graphics/Paint;

    move-result-object v5

    .line 329
    .local v5, "tp":Landroid/graphics/Paint;
    iget-object v6, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mAutoModeButton:Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v6}, Lcom/lge/camera/components/RotateImageButton;->getTextSize()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 331
    iget-object v6, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020251

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 333
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v6, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const/high16 v7, 0x41000000    # 8.0f

    invoke-static {v6, v7}, Lcom/lge/camera/util/Util;->dpToPx(Landroid/content/Context;F)F

    move-result v2

    .line 334
    .local v2, "drawablePadding":F
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    int-to-float v6, v6

    sub-float v0, v6, v2

    .line 335
    .local v0, "buttonTargetWidth":F
    iget-object v6, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v7, 0x7f0a00d7

    invoke-interface {v6, v7}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    .line 337
    .local v3, "mearsureText":F
    const/4 v4, 0x0

    .line 339
    .local v4, "scaleFactor":F
    invoke-static {v3, v9}, Ljava/lang/Float;->compare(FF)I

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {v0, v9}, Ljava/lang/Float;->compare(FF)I

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {v3, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v6

    if-eqz v6, :cond_1

    .line 344
    invoke-static {v3, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v6

    if-ltz v6, :cond_0

    .line 345
    div-float v4, v0, v3

    .line 347
    :cond_0
    const-string v6, "CameraApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "scaleFactor = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    invoke-static {v4, v9}, Ljava/lang/Float;->compare(FF)I

    move-result v6

    if-eqz v6, :cond_1

    .line 349
    iget-object v6, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mAutoModeButton:Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v6, v4}, Lcom/lge/camera/components/RotateImageButton;->setTextScaleX(F)V

    .line 352
    :cond_1
    return-void
.end method

.method private showMenuForEffects()V
    .locals 3

    .prologue
    .line 904
    iget-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isDualCameraActive()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isDualRecordingActive()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isSmartZoomRecordingActive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 906
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.ShowPIPFrameSubMenu"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 912
    :cond_1
    :goto_0
    return-void

    .line 907
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isLiveEffectActive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 908
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 909
    .local v0, "isOpen":Landroid/os/Bundle;
    const-string v1, "menu_open"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 910
    iget-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.ShowLiveEffectSubMenuDrawer"

    invoke-interface {v1, v2, v0}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private showViewForShotMode()V
    .locals 3

    .prologue
    .line 915
    iget-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_camera_shot_mode"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 916
    .local v0, "shotMode":Ljava/lang/String;
    const-string v1, "shotmode_front_beauty"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "shotmode_main_beauty"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 918
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->showBeautyshotController(Z)V

    .line 920
    :cond_1
    return-void
.end method

.method private updateGridViewItem(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 800
    iget-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGridMenuView:Landroid/widget/GridView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGridAdapter:Lcom/lge/camera/setting/ShotModeMenuGridAdapter;

    if-nez v0, :cond_1

    .line 802
    :cond_0
    const-string v0, "CameraApp"

    const-string v1, "mGridMenuView is null = "

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    :goto_0
    return-void

    .line 805
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGridAdapter:Lcom/lge/camera/setting/ShotModeMenuGridAdapter;

    invoke-virtual {v0}, Lcom/lge/camera/setting/ShotModeMenuGridAdapter;->getSelectedItem()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/lge/camera/controller/ShotModeMenuController;->changeGridBackground(IZ)V

    .line 806
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/lge/camera/controller/ShotModeMenuController;->changeGridBackground(IZ)V

    .line 807
    iget-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGridAdapter:Lcom/lge/camera/setting/ShotModeMenuGridAdapter;

    invoke-virtual {v0, p1}, Lcom/lge/camera/setting/ShotModeMenuGridAdapter;->setSelectedItem(I)V

    .line 808
    iget-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGridAdapter:Lcom/lge/camera/setting/ShotModeMenuGridAdapter;

    invoke-virtual {v0}, Lcom/lge/camera/setting/ShotModeMenuGridAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method private updateListViewItem(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 829
    iget-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mListView:Lcom/lge/camera/components/ModeMenuListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mListAdapter:Lcom/lge/camera/setting/ShotModeMenuListAdapter;

    if-nez v0, :cond_1

    .line 837
    :cond_0
    :goto_0
    return-void

    .line 833
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mListAdapter:Lcom/lge/camera/setting/ShotModeMenuListAdapter;

    invoke-virtual {v0}, Lcom/lge/camera/setting/ShotModeMenuListAdapter;->getSelectedItem()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/lge/camera/controller/ShotModeMenuController;->changeListBackground(IZ)V

    .line 834
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/lge/camera/controller/ShotModeMenuController;->changeListBackground(IZ)V

    .line 835
    iget-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mListAdapter:Lcom/lge/camera/setting/ShotModeMenuListAdapter;

    invoke-virtual {v0, p1}, Lcom/lge/camera/setting/ShotModeMenuListAdapter;->setSelectedItem(I)V

    .line 836
    iget-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mListAdapter:Lcom/lge/camera/setting/ShotModeMenuListAdapter;

    invoke-virtual {v0}, Lcom/lge/camera/setting/ShotModeMenuListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method private waitImageCacheThread(Z)V
    .locals 3
    .param p1, "cancel"    # Z

    .prologue
    .line 1174
    iget-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mImageCacheThread:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mImageCacheThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1175
    if-eqz p1, :cond_0

    .line 1176
    iget-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mImageCacheThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 1179
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mImageCacheThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1183
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mImageCacheThread:Ljava/lang/Thread;

    .line 1185
    :cond_1
    return-void

    .line 1180
    :catch_0
    move-exception v0

    .line 1181
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "CameraApp"

    const-string v2, "Image cache thread join. "

    invoke-static {v1, v2, v0}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method protected checkComponents()Z
    .locals 1

    .prologue
    .line 1142
    iget-boolean v0, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mInit:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mShotModeMenuView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mListAdapter:Lcom/lge/camera/setting/ShotModeMenuListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mListView:Lcom/lge/camera/components/ModeMenuListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGridAdapter:Lcom/lge/camera/setting/ShotModeMenuGridAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGridMenuView:Landroid/widget/GridView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mTitleText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mDescText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mChangeButton:Lcom/lge/camera/components/RotateImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mAutoModeButton:Lcom/lge/camera/components/RotateImageButton;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected checkScrollContents()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1134
    iget-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mScrollView:Lcom/lge/camera/components/CustomHelpScrollView;

    if-eqz v0, :cond_0

    .line 1135
    iget-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mScrollView:Lcom/lge/camera/components/CustomHelpScrollView;

    invoke-virtual {v0}, Lcom/lge/camera/components/CustomHelpScrollView;->getScrollY()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1136
    iget-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mScrollView:Lcom/lge/camera/components/CustomHelpScrollView;

    invoke-virtual {v0, v1, v1}, Lcom/lge/camera/components/CustomHelpScrollView;->scrollTo(II)V

    .line 1139
    :cond_0
    return-void
.end method

.method protected displayShotModeMenuView()V
    .locals 14

    .prologue
    const/16 v13, 0x8

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 173
    const-string v8, "CameraApp"

    const-string v9, "displayShotModeMenuView - start"

    invoke-static {v8, v9}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iget-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v9, "com.lge.camera.command.ExitZoomBrightnessInteraction"

    invoke-interface {v8, v9}, Lcom/lge/camera/ControllerFunction;->removeScheduledCommand(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0}, Lcom/lge/camera/controller/ShotModeMenuController;->makeItemList()V

    .line 178
    iget-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mModeItemList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_0

    .line 179
    const-string v8, "CameraApp"

    const-string v9, "Item List is empty."

    invoke-static {v8, v9}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    :goto_0
    return-void

    .line 183
    :cond_0
    invoke-direct {p0}, Lcom/lge/camera/controller/ShotModeMenuController;->makeAllImageResources()V

    .line 185
    iget-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mShotModeMenuView:Landroid/view/View;

    if-nez v8, :cond_1

    .line 186
    iget-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v9, 0x7f03004a

    invoke-interface {v8, v9}, Lcom/lge/camera/ControllerFunction;->inflateView(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mShotModeMenuView:Landroid/view/View;

    .line 187
    iget-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v9, 0x7f0d00c5

    invoke-interface {v8, v9}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 188
    .local v7, "vg":Landroid/view/ViewGroup;
    iget-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mShotModeMenuView:Landroid/view/View;

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 193
    .end local v7    # "vg":Landroid/view/ViewGroup;
    :cond_1
    iget-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v9, 0x7f0d0217

    invoke-interface {v8, v9}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mContentView:Landroid/view/View;

    .line 194
    iget-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v9, 0x7f0d0218

    invoke-interface {v8, v9}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mTitleText:Landroid/widget/TextView;

    .line 195
    iget-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v9, 0x7f0d0219

    invoke-interface {v8, v9}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mDescText:Landroid/widget/TextView;

    .line 197
    iget-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mShotModeMenuView:Landroid/view/View;

    invoke-virtual {v8, v11}, Landroid/view/View;->setVisibility(I)V

    .line 199
    new-instance v8, Lcom/lge/camera/setting/ShotModeMenuListAdapter;

    iget-object v9, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v9}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mModeItemList:Ljava/util/ArrayList;

    invoke-direct {v8, v9, v10}, Lcom/lge/camera/setting/ShotModeMenuListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mListAdapter:Lcom/lge/camera/setting/ShotModeMenuListAdapter;

    .line 200
    iget-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mShotModeMenuView:Landroid/view/View;

    const v9, 0x7f0d021b

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/lge/camera/components/ModeMenuListView;

    iput-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mListView:Lcom/lge/camera/components/ModeMenuListView;

    .line 207
    iget-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mListView:Lcom/lge/camera/components/ModeMenuListView;

    iget-object v9, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mListAdapter:Lcom/lge/camera/setting/ShotModeMenuListAdapter;

    invoke-virtual {v8, v9}, Lcom/lge/camera/components/ModeMenuListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 208
    iget-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mListView:Lcom/lge/camera/components/ModeMenuListView;

    invoke-virtual {v8, v11}, Lcom/lge/camera/components/ModeMenuListView;->setFocusable(Z)V

    .line 209
    iget-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mListView:Lcom/lge/camera/components/ModeMenuListView;

    invoke-virtual {v8, v11}, Lcom/lge/camera/components/ModeMenuListView;->setSelected(Z)V

    .line 210
    iget-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mListView:Lcom/lge/camera/components/ModeMenuListView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/lge/camera/components/ModeMenuListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 211
    iget-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mListView:Lcom/lge/camera/components/ModeMenuListView;

    iget-object v9, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mModeMenuClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v8, v9}, Lcom/lge/camera/components/ModeMenuListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 212
    iget-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mListView:Lcom/lge/camera/components/ModeMenuListView;

    iget-object v9, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mOnModeMenuListListener:Lcom/lge/camera/components/ModeMenuListView$OnModeMenuListListener;

    invoke-virtual {v8, v9}, Lcom/lge/camera/components/ModeMenuListView;->setOnModeMenuListListener(Lcom/lge/camera/components/ModeMenuListView$OnModeMenuListListener;)V

    .line 213
    iget-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mListView:Lcom/lge/camera/components/ModeMenuListView;

    iget-object v9, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v8, v9}, Lcom/lge/camera/components/ModeMenuListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 215
    iget-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v8}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/lge/camera/controller/ShotModeMenuController;->isLandscape(I)Z

    move-result v8

    if-eqz v8, :cond_4

    const/4 v5, 0x4

    .line 218
    .local v5, "rowNum":I
    :goto_1
    new-instance v8, Lcom/lge/camera/setting/ShotModeMenuGridAdapter;

    iget-object v9, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v9}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mModeItemList:Ljava/util/ArrayList;

    invoke-direct {v8, v9, v10, v5}, Lcom/lge/camera/setting/ShotModeMenuGridAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;I)V

    iput-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGridAdapter:Lcom/lge/camera/setting/ShotModeMenuGridAdapter;

    .line 220
    iget-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mShotModeMenuView:Landroid/view/View;

    const v9, 0x7f0d021d

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/GridView;

    iput-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGridMenuView:Landroid/widget/GridView;

    .line 221
    iget-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGridMenuView:Landroid/widget/GridView;

    invoke-virtual {v8, v11}, Landroid/widget/GridView;->setFocusable(Z)V

    .line 222
    iget-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGridMenuView:Landroid/widget/GridView;

    iget-object v9, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGridAdapter:Lcom/lge/camera/setting/ShotModeMenuGridAdapter;

    invoke-virtual {v8, v9}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 223
    iget-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGridMenuView:Landroid/widget/GridView;

    invoke-virtual {v8, v11}, Landroid/widget/GridView;->setSelected(Z)V

    .line 224
    iget-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGridMenuView:Landroid/widget/GridView;

    const v9, 0x7f02005d

    invoke-virtual {v8, v9}, Landroid/widget/GridView;->setSelector(I)V

    .line 225
    iget-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGridMenuView:Landroid/widget/GridView;

    iget-object v9, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mModeMenuClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 226
    iget-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGridMenuView:Landroid/widget/GridView;

    iget-object v9, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGridViewTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v8, v9}, Landroid/widget/GridView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 228
    invoke-virtual {p0}, Lcom/lge/camera/controller/ShotModeMenuController;->getCurrentItem()I

    move-result v8

    iput v8, p0, Lcom/lge/camera/controller/ShotModeMenuController;->SELECTED_POS:I

    .line 229
    iget-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mListAdapter:Lcom/lge/camera/setting/ShotModeMenuListAdapter;

    invoke-virtual {v8}, Lcom/lge/camera/setting/ShotModeMenuListAdapter;->getMiddleValue()I

    move-result v8

    iget v9, p0, Lcom/lge/camera/controller/ShotModeMenuController;->SELECTED_POS:I

    add-int/2addr v8, v9

    iput v8, p0, Lcom/lge/camera/controller/ShotModeMenuController;->CENTER_POS:I

    .line 231
    iget-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mShotModeMenuView:Landroid/view/View;

    const v9, 0x7f0d0216

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/lge/camera/components/CustomHelpScrollView;

    iput-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mScrollView:Lcom/lge/camera/components/CustomHelpScrollView;

    .line 234
    iget-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mShotModeMenuView:Landroid/view/View;

    const v9, 0x7f0d0221

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/lge/camera/components/RotateImageView;

    iput-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mChangeButton:Lcom/lge/camera/components/RotateImageView;

    .line 236
    iget-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mChangeButton:Lcom/lge/camera/components/RotateImageView;

    iget-object v9, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mChangeButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Lcom/lge/camera/components/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    invoke-direct {p0}, Lcom/lge/camera/controller/ShotModeMenuController;->setDefaultAutoButton()V

    .line 240
    iget-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v8}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string v9, "Main_CameraAppConfig"

    invoke-virtual {v8, v9, v11}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 242
    .local v4, "pref":Landroid/content/SharedPreferences;
    if-eqz v4, :cond_2

    .line 243
    iget-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mShotModeMenuView:Landroid/view/View;

    const v9, 0x7f0d0213

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 245
    .local v0, "contentsLayout":Landroid/view/View;
    iget-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mShotModeMenuView:Landroid/view/View;

    const v9, 0x7f0d021a

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 246
    .local v2, "listLayout":Landroid/view/View;
    iget-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mShotModeMenuView:Landroid/view/View;

    const v9, 0x7f0d021c

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 247
    .local v1, "gridLayout":Landroid/view/View;
    const-string v8, "mode_menu_view_list"

    invoke-interface {v4, v8, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 248
    iput v11, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mViewMode:I

    .line 249
    invoke-virtual {v2, v11}, Landroid/view/View;->setVisibility(I)V

    .line 250
    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 251
    invoke-virtual {v1, v13}, Landroid/view/View;->setVisibility(I)V

    .line 252
    iget-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mChangeButton:Lcom/lge/camera/components/RotateImageView;

    invoke-virtual {v8, v11}, Lcom/lge/camera/components/RotateImageView;->setImageLevel(I)V

    .line 253
    iget-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mChangeButton:Lcom/lge/camera/components/RotateImageView;

    iget-object v9, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v10, 0x7f0a0356

    invoke-interface {v9, v10}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/lge/camera/components/RotateImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 266
    .end local v0    # "contentsLayout":Landroid/view/View;
    .end local v1    # "gridLayout":Landroid/view/View;
    .end local v2    # "listLayout":Landroid/view/View;
    :cond_2
    :goto_2
    iget-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mShotModeMenuView:Landroid/view/View;

    const v9, 0x7f0d006d

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iget-object v9, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mOnBackCoverTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 269
    iget-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mShotModeMenuView:Landroid/view/View;

    const v9, 0x7f0d0210

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 270
    .local v6, "shotModeMenuLayout":Landroid/view/View;
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isSoftKeyNavigationBarModel()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 271
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 272
    .local v3, "marginParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v3}, Lcom/lge/camera/util/Common;->resetLayoutParameter(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 274
    iget-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v8}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-static {v8}, Lcom/lge/camera/util/Util;->isConfigureLandscape(Landroid/content/res/Resources;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 275
    const/16 v8, 0x14

    invoke-virtual {v3, v8, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 276
    iget v8, p0, Lcom/lge/camera/controller/ShotModeMenuController;->NAVI_MARGIN:I

    iput v8, v3, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 281
    :goto_3
    invoke-virtual {v6, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 284
    .end local v3    # "marginParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_3
    iget-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v8}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v8

    invoke-virtual {p0, v6, v8, v11}, Lcom/lge/camera/controller/ShotModeMenuController;->setLayoutDegree(Landroid/view/View;IZ)V

    .line 286
    invoke-direct {p0, v11}, Lcom/lge/camera/controller/ShotModeMenuController;->waitImageCacheThread(Z)V

    .line 288
    invoke-virtual {p0}, Lcom/lge/camera/controller/ShotModeMenuController;->showBackcoverAnimation()V

    .line 289
    iget-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    const/16 v9, 0x1b

    invoke-interface {v8, v9}, Lcom/lge/camera/ControllerFunction;->setSubMenuMode(I)V

    .line 290
    const-string v8, "CameraApp"

    const-string v9, "displayShotModeMenuView - end"

    invoke-static {v8, v9}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 215
    .end local v4    # "pref":Landroid/content/SharedPreferences;
    .end local v5    # "rowNum":I
    .end local v6    # "shotModeMenuLayout":Landroid/view/View;
    :cond_4
    const/4 v5, 0x3

    goto/16 :goto_1

    .line 256
    .restart local v0    # "contentsLayout":Landroid/view/View;
    .restart local v1    # "gridLayout":Landroid/view/View;
    .restart local v2    # "listLayout":Landroid/view/View;
    .restart local v4    # "pref":Landroid/content/SharedPreferences;
    .restart local v5    # "rowNum":I
    :cond_5
    iput v12, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mViewMode:I

    .line 257
    invoke-virtual {v2, v13}, Landroid/view/View;->setVisibility(I)V

    .line 258
    invoke-virtual {v0, v13}, Landroid/view/View;->setVisibility(I)V

    .line 259
    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 260
    iget-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mChangeButton:Lcom/lge/camera/components/RotateImageView;

    invoke-virtual {v8, v12}, Lcom/lge/camera/components/RotateImageView;->setImageLevel(I)V

    .line 261
    iget-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mChangeButton:Lcom/lge/camera/components/RotateImageView;

    iget-object v9, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v10, 0x7f0a0355

    invoke-interface {v9, v10}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/lge/camera/components/RotateImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 278
    .end local v0    # "contentsLayout":Landroid/view/View;
    .end local v1    # "gridLayout":Landroid/view/View;
    .end local v2    # "listLayout":Landroid/view/View;
    .restart local v3    # "marginParams":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v6    # "shotModeMenuLayout":Landroid/view/View;
    :cond_6
    const/16 v8, 0xa

    invoke-virtual {v3, v8, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 279
    iget v8, p0, Lcom/lge/camera/controller/ShotModeMenuController;->NAVI_MARGIN:I

    iput v8, v3, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_3
.end method

.method protected abstract getCurrentItem()I
.end method

.method protected abstract getCurrentItemTitle()Ljava/lang/String;
.end method

.method public getCurrentSelectedTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1157
    iget-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mModeItemList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 1158
    monitor-enter p0

    .line 1159
    :try_start_0
    const-string v0, ""

    .line 1160
    .local v0, "title":Ljava/lang/String;
    iget-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mModeItemList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 1161
    invoke-virtual {p0}, Lcom/lge/camera/controller/ShotModeMenuController;->makeItemList()V

    .line 1162
    invoke-virtual {p0}, Lcom/lge/camera/controller/ShotModeMenuController;->getCurrentItemTitle()Ljava/lang/String;

    move-result-object v0

    .line 1163
    invoke-direct {p0}, Lcom/lge/camera/controller/ShotModeMenuController;->releaseAllImageResources()V

    .line 1167
    :goto_0
    monitor-exit p0

    .line 1170
    .end local v0    # "title":Ljava/lang/String;
    :goto_1
    return-object v0

    .line 1165
    .restart local v0    # "title":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/controller/ShotModeMenuController;->getCurrentItemTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1168
    .end local v0    # "title":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1170
    :cond_1
    const-string v0, ""

    goto :goto_1
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 601
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/ShotModeMenuController;->hide(Z)V

    .line 602
    return-void
.end method

.method public hide(Z)V
    .locals 5
    .param p1, "showAnimation"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 605
    iget-boolean v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mInit:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mShotModeMenuView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 652
    :cond_0
    :goto_0
    return-void

    .line 608
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mListView:Lcom/lge/camera/components/ModeMenuListView;

    if-eqz v1, :cond_2

    .line 609
    iget-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mListView:Lcom/lge/camera/components/ModeMenuListView;

    invoke-virtual {v1, v3}, Lcom/lge/camera/components/ModeMenuListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 611
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGridMenuView:Landroid/widget/GridView;

    if-eqz v1, :cond_3

    .line 612
    iget-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGridMenuView:Landroid/widget/GridView;

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 614
    :cond_3
    iget-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mShotModeMenuView:Landroid/view/View;

    const v2, 0x7f0d006d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 615
    .local v0, "backCover":Landroid/view/View;
    iget-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mAutoModeButton:Lcom/lge/camera/components/RotateImageButton;

    if-eqz v1, :cond_4

    .line 616
    iget-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mAutoModeButton:Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v1, v3}, Lcom/lge/camera/components/RotateImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 617
    iget-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mAutoModeButton:Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v1, v4}, Lcom/lge/camera/components/RotateImageButton;->setEnabled(Z)V

    .line 619
    :cond_4
    iget-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mChangeButton:Lcom/lge/camera/components/RotateImageView;

    if-eqz v1, :cond_5

    .line 620
    iget-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mChangeButton:Lcom/lge/camera/components/RotateImageView;

    invoke-virtual {v1, v3}, Lcom/lge/camera/components/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 621
    iget-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mChangeButton:Lcom/lge/camera/components/RotateImageView;

    invoke-virtual {v1, v4}, Lcom/lge/camera/components/RotateImageView;->setEnabled(Z)V

    .line 623
    :cond_5
    if-eqz v0, :cond_6

    .line 624
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 626
    :cond_6
    if-eqz p1, :cond_b

    .line 627
    iget-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mShotModeMenuView:Landroid/view/View;

    invoke-virtual {p0, v1, v4}, Lcom/lge/camera/controller/ShotModeMenuController;->shotModeMenuAnimation(Landroid/view/View;Z)V

    .line 631
    :goto_1
    iget-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v1

    if-nez v1, :cond_7

    .line 632
    iget-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.ReleaseTouchFocus"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 634
    :cond_7
    invoke-direct {p0}, Lcom/lge/camera/controller/ShotModeMenuController;->showMenuForEffects()V

    .line 635
    invoke-direct {p0}, Lcom/lge/camera/controller/ShotModeMenuController;->showViewForShotMode()V

    .line 637
    iget-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->needProgressBar()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 638
    iget-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->recordingControllerShow()V

    .line 641
    :cond_8
    iget-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v1

    const/16 v2, 0xf

    if-eq v1, v2, :cond_9

    .line 642
    iget-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v4}, Lcom/lge/camera/ControllerFunction;->setSubMenuMode(I)V

    .line 644
    :cond_9
    const-string v1, "face_tracking"

    iget-object v2, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_focus"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "manual"

    iget-object v2, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_focus"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 646
    iget-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->showFocus()Z

    .line 648
    :cond_a
    iget-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getCameraMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 650
    iget-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.ReleaseTouchFocus"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 629
    :cond_b
    invoke-virtual {p0}, Lcom/lge/camera/controller/ShotModeMenuController;->removeShotModeMenuView()V

    goto :goto_1
.end method

.method public initController()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x12c

    .line 100
    iget-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mShow:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 101
    iget-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mShow:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 102
    iget-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mHide:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 103
    iget-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mHide:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 105
    iget-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090289

    invoke-static {v0, v1}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/controller/ShotModeMenuController;->LAYOUT_WIDTH:I

    .line 107
    iget-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f09028a

    invoke-static {v0, v1}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/controller/ShotModeMenuController;->LAYOUT_HEIGHT:I

    .line 110
    iget-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f09001d

    invoke-static {v0, v1}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/controller/ShotModeMenuController;->NAVI_MARGIN:I

    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mInit:Z

    .line 115
    iget-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->updateModeMenuIndicator()V

    .line 116
    return-void
.end method

.method protected isCurrentCentered()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 677
    const-string v7, "CameraApp"

    const-string v8, "isCurrentCentered"

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    iget-object v7, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mListView:Lcom/lge/camera/components/ModeMenuListView;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mListAdapter:Lcom/lge/camera/setting/ShotModeMenuListAdapter;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mListView:Lcom/lge/camera/components/ModeMenuListView;

    invoke-virtual {v7}, Lcom/lge/camera/components/ModeMenuListView;->getChildCount()I

    move-result v7

    if-lez v7, :cond_2

    .line 681
    iget-object v7, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mListView:Lcom/lge/camera/components/ModeMenuListView;

    iget-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mListView:Lcom/lge/camera/components/ModeMenuListView;

    invoke-virtual {v8}, Lcom/lge/camera/components/ModeMenuListView;->getMeasuredWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    iget-object v9, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mListView:Lcom/lge/camera/components/ModeMenuListView;

    invoke-virtual {v9}, Lcom/lge/camera/components/ModeMenuListView;->getMeasuredHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    invoke-virtual {v7, v8, v9}, Lcom/lge/camera/components/ModeMenuListView;->pointToPosition(II)I

    move-result v0

    .line 683
    .local v0, "center_pos":I
    iget-object v7, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mListView:Lcom/lge/camera/components/ModeMenuListView;

    invoke-virtual {v7}, Lcom/lge/camera/components/ModeMenuListView;->getMeasuredHeight()I

    move-result v7

    iget-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mListView:Lcom/lge/camera/components/ModeMenuListView;

    invoke-virtual {v8, v10}, Lcom/lge/camera/components/ModeMenuListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    sub-int/2addr v7, v8

    div-int/lit8 v2, v7, 0x2

    .line 685
    .local v2, "destY":I
    iget-object v7, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mListView:Lcom/lge/camera/components/ModeMenuListView;

    invoke-virtual {v7}, Lcom/lge/camera/components/ModeMenuListView;->getFirstVisiblePosition()I

    move-result v3

    .line 686
    .local v3, "firstPos":I
    iget-object v7, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mListView:Lcom/lge/camera/components/ModeMenuListView;

    sub-int v8, v0, v3

    invoke-virtual {v7, v8}, Lcom/lge/camera/components/ModeMenuListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 687
    .local v6, "view":Landroid/view/View;
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Landroid/view/View;->getY()F

    move-result v7

    :goto_0
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 689
    .local v1, "childY":I
    sub-int v7, v1, v2

    if-eqz v7, :cond_0

    .line 690
    iget-object v7, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mListView:Lcom/lge/camera/components/ModeMenuListView;

    sub-int v8, v1, v2

    invoke-virtual {v7, v8, v10}, Lcom/lge/camera/components/ModeMenuListView;->smoothScrollBy(II)V

    .line 693
    :cond_0
    move v5, v0

    .line 694
    .local v5, "pos":I
    iput v5, p0, Lcom/lge/camera/controller/ShotModeMenuController;->CENTER_POS:I

    .line 695
    iget-object v7, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mListAdapter:Lcom/lge/camera/setting/ShotModeMenuListAdapter;

    invoke-virtual {v7, v5}, Lcom/lge/camera/setting/ShotModeMenuListAdapter;->getItem(I)Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;

    move-result-object v4

    .line 696
    .local v4, "item":Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;
    if-eqz v4, :cond_1

    iget-object v7, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mTitleText:Landroid/widget/TextView;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mDescText:Landroid/widget/TextView;

    if-eqz v7, :cond_1

    .line 699
    iget-object v7, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v4}, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 700
    iget-object v7, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mDescText:Landroid/widget/TextView;

    invoke-virtual {v4}, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;->getDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 702
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/controller/ShotModeMenuController;->checkScrollContents()V

    .line 704
    .end local v0    # "center_pos":I
    .end local v1    # "childY":I
    .end local v2    # "destY":I
    .end local v3    # "firstPos":I
    .end local v4    # "item":Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;
    .end local v5    # "pos":I
    .end local v6    # "view":Landroid/view/View;
    :cond_2
    return-void

    .line 687
    .restart local v0    # "center_pos":I
    .restart local v2    # "destY":I
    .restart local v3    # "firstPos":I
    .restart local v6    # "view":Landroid/view/View;
    :cond_3
    const/4 v7, 0x0

    goto :goto_0
.end method

.method protected isLandscape(I)Z
    .locals 3
    .param p1, "degree"    # I

    .prologue
    const/4 v0, 0x0

    .line 672
    iget-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1, v0}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/16 v2, 0xb4

    invoke-static {v1, p1, v2}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public isVisible()Z
    .locals 4

    .prologue
    const v3, 0x7f0d020f

    const/4 v1, 0x0

    .line 662
    iget-boolean v2, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mInit:Z

    if-eqz v2, :cond_0

    .line 663
    iget-object v2, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 664
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 665
    iget-object v2, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 668
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    return v1
.end method

.method protected abstract makeItemList()V
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 1128
    const-string v0, "CameraApp"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1129
    invoke-super {p0}, Lcom/lge/camera/controller/Controller;->onPause()V

    .line 1131
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 1116
    const-string v1, "CameraApp"

    const-string v2, "onPause-start"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1117
    invoke-virtual {p0}, Lcom/lge/camera/controller/ShotModeMenuController;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1118
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1119
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "immediately"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1120
    iget-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.HideModeMenu"

    invoke-interface {v1, v2, v0}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1122
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    invoke-super {p0}, Lcom/lge/camera/controller/Controller;->onPause()V

    .line 1123
    const-string v1, "CameraApp"

    const-string v2, "onPause-end"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1124
    return-void
.end method

.method protected removeShotModeMenuView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 355
    iget-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mListView:Lcom/lge/camera/components/ModeMenuListView;

    if-eqz v1, :cond_1

    .line 356
    iget-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mListView:Lcom/lge/camera/components/ModeMenuListView;

    invoke-virtual {v1, v3}, Lcom/lge/camera/components/ModeMenuListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 357
    iget-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mListView:Lcom/lge/camera/components/ModeMenuListView;

    invoke-virtual {v1, v3}, Lcom/lge/camera/components/ModeMenuListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 358
    iget-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mListView:Lcom/lge/camera/components/ModeMenuListView;

    invoke-virtual {v1, v3}, Lcom/lge/camera/components/ModeMenuListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 359
    iget-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mListView:Lcom/lge/camera/components/ModeMenuListView;

    invoke-virtual {v1, v3}, Lcom/lge/camera/components/ModeMenuListView;->setOnModeMenuListListener(Lcom/lge/camera/components/ModeMenuListView$OnModeMenuListListener;)V

    .line 361
    iget-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mListView:Lcom/lge/camera/components/ModeMenuListView;

    invoke-virtual {v1}, Lcom/lge/camera/components/ModeMenuListView;->removeAllViewsInLayout()V

    .line 362
    iget-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mListView:Lcom/lge/camera/components/ModeMenuListView;

    invoke-virtual {v1}, Lcom/lge/camera/components/ModeMenuListView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 363
    iget-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mListView:Lcom/lge/camera/components/ModeMenuListView;

    invoke-virtual {v1}, Lcom/lge/camera/components/ModeMenuListView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 364
    iget-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mListView:Lcom/lge/camera/components/ModeMenuListView;

    invoke-virtual {v1, v3}, Lcom/lge/camera/components/ModeMenuListView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 366
    :cond_0
    iput-object v3, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mListView:Lcom/lge/camera/components/ModeMenuListView;

    .line 369
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGridMenuView:Landroid/widget/GridView;

    if-eqz v1, :cond_3

    .line 370
    iget-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGridMenuView:Landroid/widget/GridView;

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 371
    iget-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGridMenuView:Landroid/widget/GridView;

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 372
    iget-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGridMenuView:Landroid/widget/GridView;

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 374
    iget-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGridMenuView:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->removeAllViewsInLayout()V

    .line 375
    iget-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGridMenuView:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 376
    iget-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGridMenuView:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 377
    iget-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGridMenuView:Landroid/widget/GridView;

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 379
    :cond_2
    iput-object v3, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGridMenuView:Landroid/widget/GridView;

    .line 382
    :cond_3
    iget-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mShotModeMenuView:Landroid/view/View;

    if-eqz v1, :cond_5

    .line 383
    iget-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mShotModeMenuView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 384
    iget-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0d00c5

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 385
    .local v0, "vg":Landroid/view/ViewGroup;
    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mShotModeMenuView:Landroid/view/View;

    if-eqz v1, :cond_4

    .line 386
    iget-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mShotModeMenuView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 388
    :cond_4
    iput-object v3, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mShotModeMenuView:Landroid/view/View;

    .line 390
    .end local v0    # "vg":Landroid/view/ViewGroup;
    :cond_5
    iput-object v3, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mListAdapter:Lcom/lge/camera/setting/ShotModeMenuListAdapter;

    .line 391
    iput-object v3, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGridAdapter:Lcom/lge/camera/setting/ShotModeMenuGridAdapter;

    .line 393
    iput-object v3, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mContentView:Landroid/view/View;

    .line 394
    iput-object v3, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mTitleText:Landroid/widget/TextView;

    .line 395
    iput-object v3, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mDescText:Landroid/widget/TextView;

    .line 396
    iput-object v3, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mScrollView:Lcom/lge/camera/components/CustomHelpScrollView;

    .line 399
    iget-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mChangeButton:Lcom/lge/camera/components/RotateImageView;

    if-eqz v1, :cond_6

    .line 400
    iget-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mChangeButton:Lcom/lge/camera/components/RotateImageView;

    invoke-virtual {v1, v3}, Lcom/lge/camera/components/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 401
    iput-object v3, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mChangeButton:Lcom/lge/camera/components/RotateImageView;

    .line 403
    :cond_6
    iget-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mAutoModeButton:Lcom/lge/camera/components/RotateImageButton;

    if-eqz v1, :cond_7

    .line 404
    iget-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mAutoModeButton:Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v1, v3}, Lcom/lge/camera/components/RotateImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 405
    iput-object v3, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mAutoModeButton:Lcom/lge/camera/components/RotateImageButton;

    .line 407
    :cond_7
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/lge/camera/controller/ShotModeMenuController;->waitImageCacheThread(Z)V

    .line 408
    invoke-direct {p0}, Lcom/lge/camera/controller/ShotModeMenuController;->releaseAllImageResources()V

    .line 410
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 411
    return-void
.end method

.method protected abstract setDefaultMode()V
.end method

.method protected setLayoutDegree(Landroid/view/View;IZ)V
    .locals 30
    .param p1, "shotModeMenuLayout"    # Landroid/view/View;
    .param p2, "degree"    # I
    .param p3, "animation"    # Z

    .prologue
    .line 425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/ShotModeMenuController;->mShotModeMenuView:Landroid/view/View;

    move-object/from16 v26, v0

    const v27, 0x7f0d0211

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/lge/camera/components/RotateLayout;

    .line 428
    .local v24, "rl":Lcom/lge/camera/components/RotateLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/ShotModeMenuController;->mShotModeMenuView:Landroid/view/View;

    move-object/from16 v26, v0

    const v27, 0x7f0d0212

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    .line 430
    .local v19, "innerLayout":Landroid/view/View;
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    check-cast v20, Landroid/widget/RelativeLayout$LayoutParams;

    .line 432
    .local v20, "innerParams":Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/ShotModeMenuController;->mShotModeMenuView:Landroid/view/View;

    move-object/from16 v26, v0

    const v27, 0x7f0d0214

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/lge/camera/components/RotateLayout;

    .line 435
    .local v12, "contentRl":Lcom/lge/camera/components/RotateLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/ShotModeMenuController;->mShotModeMenuView:Landroid/view/View;

    move-object/from16 v26, v0

    const v27, 0x7f0d021e

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 437
    .local v5, "autoModeButtonLayout":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/ShotModeMenuController;->mShotModeMenuView:Landroid/view/View;

    move-object/from16 v26, v0

    const v27, 0x7f0d0220

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 440
    .local v7, "changeButtonLayout":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 442
    .local v4, "autoButtonParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v4}, Lcom/lge/camera/util/Common;->resetLayoutParameter(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 443
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout$LayoutParams;

    .line 445
    .local v8, "changeButtonParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v8}, Lcom/lge/camera/util/Common;->resetLayoutParameter(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/ShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v26

    const v27, 0x7f090299

    invoke-static/range {v26 .. v27}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v10

    .line 449
    .local v10, "contentManginTop":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/ShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v26

    const v27, 0x7f090291

    invoke-static/range {v26 .. v27}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v16

    .line 451
    .local v16, "gridMargin":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/ShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v26

    const v27, 0x7f0902a2

    invoke-static/range {v26 .. v27}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v6

    .line 454
    .local v6, "buttonMargin":I
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v5, v0}, Landroid/view/View;->setLayoutDirection(I)V

    .line 455
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v7, v0}, Landroid/view/View;->setLayoutDirection(I)V

    .line 457
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/controller/ShotModeMenuController;->mViewMode:I

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_1

    .line 458
    move-object/from16 v0, v24

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateLayout;->rotateLayout(I)V

    .line 459
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v12, v0}, Lcom/lge/camera/components/RotateLayout;->rotateLayout(I)V

    .line 461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/ShotModeMenuController;->mShotModeMenuView:Landroid/view/View;

    move-object/from16 v26, v0

    const v27, 0x7f0d021c

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .line 462
    .local v15, "girdLayout":Landroid/view/View;
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Landroid/widget/RelativeLayout$LayoutParams;

    .line 465
    .local v17, "gridParams":Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/ShotModeMenuController;->isLandscape(I)Z

    move-result v26

    if-eqz v26, :cond_0

    .line 466
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/controller/ShotModeMenuController;->LAYOUT_WIDTH:I

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v20

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 467
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/controller/ShotModeMenuController;->LAYOUT_HEIGHT:I

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v20

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/ShotModeMenuController;->mGridMenuView:Landroid/widget/GridView;

    move-object/from16 v26, v0

    const/16 v27, 0x4

    invoke-virtual/range {v26 .. v27}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 470
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v17

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 471
    move/from16 v0, v16

    move-object/from16 v1, v17

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 473
    const/16 v26, 0x14

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v4, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 474
    const/16 v26, 0xa

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v4, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 475
    iput v6, v4, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 476
    iput v6, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 477
    const/16 v26, 0x0

    move/from16 v0, v26

    iput v0, v4, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 479
    const/16 v26, 0x14

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v8, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 480
    const/16 v26, 0xc

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v8, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 481
    iput v6, v8, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 482
    const/16 v26, 0x0

    move/from16 v0, v26

    iput v0, v8, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 483
    iput v6, v8, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 504
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/ShotModeMenuController;->mGridAdapter:Lcom/lge/camera/setting/ShotModeMenuGridAdapter;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/controller/ShotModeMenuController;->SELECTED_POS:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/lge/camera/setting/ShotModeMenuGridAdapter;->setSelectedItem(I)V

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/ShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v26, v0

    const v27, 0x7f0d0221

    const/16 v28, 0x0

    const/16 v29, 0x0

    invoke-interface/range {v26 .. v29}, Lcom/lge/camera/ControllerFunction;->setDegree(IIZ)V

    .line 507
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/ShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v26, v0

    const v27, 0x7f0d021f

    const/16 v28, 0x0

    const/16 v29, 0x0

    invoke-interface/range {v26 .. v29}, Lcom/lge/camera/ControllerFunction;->setDegree(IIZ)V

    .line 509
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 572
    .end local v15    # "girdLayout":Landroid/view/View;
    .end local v17    # "gridParams":Landroid/widget/RelativeLayout$LayoutParams;
    :goto_1
    invoke-virtual {v5, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 573
    invoke-virtual {v7, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 574
    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/ShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/lge/camera/ControllerFunction;->getHandler()Lcom/lge/camera/util/MainHandler;

    move-result-object v26

    new-instance v27, Lcom/lge/camera/controller/ShotModeMenuController$1;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/camera/controller/ShotModeMenuController$1;-><init>(Lcom/lge/camera/controller/ShotModeMenuController;Landroid/view/View;Z)V

    const-wide/16 v28, 0x0

    invoke-virtual/range {v26 .. v29}, Lcom/lge/camera/util/MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 598
    return-void

    .line 485
    .restart local v15    # "girdLayout":Landroid/view/View;
    .restart local v17    # "gridParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/controller/ShotModeMenuController;->LAYOUT_HEIGHT:I

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v20

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 486
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/controller/ShotModeMenuController;->LAYOUT_WIDTH:I

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v20

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/ShotModeMenuController;->mGridMenuView:Landroid/widget/GridView;

    move-object/from16 v26, v0

    const/16 v27, 0x3

    invoke-virtual/range {v26 .. v27}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 489
    move/from16 v0, v16

    move-object/from16 v1, v17

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 490
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v17

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 492
    const/16 v26, 0x15

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v4, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 493
    const/16 v26, 0xa

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v4, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 494
    const/16 v26, 0x0

    move/from16 v0, v26

    iput v0, v4, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 495
    iput v6, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 496
    iput v6, v4, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 498
    const/16 v26, 0x14

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v8, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 499
    const/16 v26, 0xa

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v8, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 500
    iput v6, v8, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 501
    iput v6, v8, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 502
    const/16 v26, 0x0

    move/from16 v0, v26

    iput v0, v8, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_0

    .line 513
    .end local v15    # "girdLayout":Landroid/view/View;
    .end local v17    # "gridParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    const/16 v26, 0x14

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v4, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 514
    const/16 v26, 0xa

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v4, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 515
    iput v6, v4, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 516
    iput v6, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 517
    const/16 v26, 0x0

    move/from16 v0, v26

    iput v0, v4, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 519
    const/16 v26, 0x14

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v8, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 520
    const/16 v26, 0xc

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v8, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 521
    iput v6, v8, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 522
    const/16 v26, 0x0

    move/from16 v0, v26

    iput v0, v8, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 523
    iput v6, v8, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 525
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/controller/ShotModeMenuController;->LAYOUT_WIDTH:I

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v20

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 526
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/controller/ShotModeMenuController;->LAYOUT_HEIGHT:I

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v20

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 528
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/ShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v26

    const v27, 0x7f09029c

    invoke-static/range {v26 .. v27}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v23

    .line 530
    .local v23, "paddingTop":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/ShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v26

    const v27, 0x7f09029d

    invoke-static/range {v26 .. v27}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v22

    .line 532
    .local v22, "paddingLeft":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/ShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v26

    const v27, 0x7f09029e

    invoke-static/range {v26 .. v27}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v21

    .line 534
    .local v21, "paddingExtra":I
    const/4 v11, 0x0

    .line 536
    .local v11, "contentMarginLeft":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/ShotModeMenuController;->mShotModeMenuView:Landroid/view/View;

    move-object/from16 v26, v0

    const v27, 0x7f0d0215

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .line 538
    .local v13, "contents":Landroid/view/View;
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/ShotModeMenuController;->isLandscape(I)Z

    move-result v26

    if-eqz v26, :cond_2

    .line 539
    add-int v26, v10, v23

    move/from16 v0, v22

    move/from16 v1, v26

    move/from16 v2, v22

    move/from16 v3, v21

    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 541
    move-object/from16 v0, v24

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateLayout;->rotateLayout(I)V

    .line 542
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v12, v0}, Lcom/lge/camera/components/RotateLayout;->rotateLayout(I)V

    .line 543
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/ShotModeMenuController;->mListAdapter:Lcom/lge/camera/setting/ShotModeMenuListAdapter;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Lcom/lge/camera/setting/ShotModeMenuListAdapter;->setListItemDegree(I)V

    .line 545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/ShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v26, v0

    const v27, 0x7f0d0221

    const/16 v28, 0x0

    const/16 v29, 0x0

    invoke-interface/range {v26 .. v29}, Lcom/lge/camera/ControllerFunction;->setDegree(IIZ)V

    .line 546
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/ShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v26, v0

    const v27, 0x7f0d021f

    const/16 v28, 0x0

    const/16 v29, 0x0

    invoke-interface/range {v26 .. v29}, Lcom/lge/camera/ControllerFunction;->setDegree(IIZ)V

    .line 561
    :goto_2
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 562
    .local v14, "contentsParams":Landroid/view/ViewGroup$MarginLayoutParams;
    iput v11, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 563
    invoke-virtual {v13, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 565
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/ShotModeMenuController;->mListView:Lcom/lge/camera/components/ModeMenuListView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/lge/camera/components/ModeMenuListView;->invalidateViews()V

    .line 567
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/ShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v26

    const v27, 0x7f090295

    invoke-static/range {v26 .. v27}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v18

    .line 569
    .local v18, "height":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/controller/ShotModeMenuController;->CENTER_POS:I

    move/from16 v25, v0

    .line 570
    .local v25, "select_pos":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/ShotModeMenuController;->mListView:Lcom/lge/camera/components/ModeMenuListView;

    move-object/from16 v26, v0

    div-int/lit8 v27, v18, 0x2

    move-object/from16 v0, v26

    move/from16 v1, v25

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/components/ModeMenuListView;->setSelectionFromTop(II)V

    goto/16 :goto_1

    .line 548
    .end local v14    # "contentsParams":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v18    # "height":I
    .end local v25    # "select_pos":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/ShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v26

    const v27, 0x7f09029f

    invoke-static/range {v26 .. v27}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v11

    .line 550
    add-int v26, v10, v23

    move/from16 v0, v22

    move/from16 v1, v26

    move/from16 v2, v22

    move/from16 v3, v21

    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 553
    if-nez p2, :cond_3

    const/16 v26, 0x10e

    :goto_3
    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateLayout;->rotateLayout(I)V

    .line 554
    const/16 v9, 0x5a

    .line 555
    .local v9, "contentDegree":I
    const/16 v26, 0x5a

    move/from16 v0, v26

    invoke-virtual {v12, v0}, Lcom/lge/camera/components/RotateLayout;->rotateLayout(I)V

    .line 556
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/ShotModeMenuController;->mListAdapter:Lcom/lge/camera/setting/ShotModeMenuListAdapter;

    move-object/from16 v26, v0

    const/16 v27, 0x5a

    invoke-virtual/range {v26 .. v27}, Lcom/lge/camera/setting/ShotModeMenuListAdapter;->setListItemDegree(I)V

    .line 558
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/ShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v26, v0

    const v27, 0x7f0d0221

    const/16 v28, 0x5a

    const/16 v29, 0x0

    invoke-interface/range {v26 .. v29}, Lcom/lge/camera/ControllerFunction;->setDegree(IIZ)V

    .line 559
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/ShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v26, v0

    const v27, 0x7f0d021f

    const/16 v28, 0x5a

    const/16 v29, 0x0

    invoke-interface/range {v26 .. v29}, Lcom/lge/camera/ControllerFunction;->setDegree(IIZ)V

    goto/16 :goto_2

    .line 553
    .end local v9    # "contentDegree":I
    :cond_3
    const/16 v26, 0x5a

    goto :goto_3
.end method

.method protected shotModeMenuAnimation(Landroid/view/View;Z)V
    .locals 6
    .param p1, "aniView"    # Landroid/view/View;
    .param p2, "show"    # Z

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 707
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shotModeMenuAnimation-start : show = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    if-eqz p1, :cond_0

    .line 709
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 710
    if-eqz p2, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 711
    if-eqz p2, :cond_2

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 713
    .local v0, "animation":Landroid/view/animation/Animation;
    :goto_1
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 714
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 715
    new-instance v1, Lcom/lge/camera/controller/ShotModeMenuController$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/lge/camera/controller/ShotModeMenuController$2;-><init>(Lcom/lge/camera/controller/ShotModeMenuController;Landroid/view/View;Z)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 737
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 739
    .end local v0    # "animation":Landroid/view/animation/Animation;
    :cond_0
    return-void

    .line 710
    :cond_1
    const/4 v1, 0x4

    goto :goto_0

    .line 711
    :cond_2
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v5, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    goto :goto_1
.end method

.method public show()V
    .locals 1

    .prologue
    .line 655
    iget-boolean v0, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mInit:Z

    if-nez v0, :cond_0

    .line 659
    :goto_0
    return-void

    .line 658
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/controller/ShotModeMenuController;->displayShotModeMenuView()V

    goto :goto_0
.end method

.method protected showBackcoverAnimation()V
    .locals 4

    .prologue
    .line 756
    iget-object v2, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mShotModeMenuView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 757
    iget-object v2, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mShotModeMenuView:Landroid/view/View;

    const v3, 0x7f0d006d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 758
    .local v1, "rl":Landroid/widget/RelativeLayout;
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 759
    .local v0, "anim":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 760
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 762
    .end local v0    # "anim":Landroid/view/animation/Animation;
    .end local v1    # "rl":Landroid/widget/RelativeLayout;
    :cond_0
    return-void
.end method

.method protected showingAnimation(Landroid/view/View;Z)V
    .locals 3
    .param p1, "aniView"    # Landroid/view/View;
    .param p2, "show"    # Z

    .prologue
    .line 742
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showingAnimation-start : show = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    if-eqz p1, :cond_0

    .line 744
    if-eqz p2, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 745
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mShow:Landroid/view/animation/Animation;

    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 747
    :cond_0
    return-void

    .line 744
    :cond_1
    const/4 v0, 0x4

    goto :goto_0

    .line 745
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mHide:Landroid/view/animation/Animation;

    goto :goto_1
.end method

.method protected startAlphaAnimation(Landroid/view/View;III)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "duration"    # I

    .prologue
    .line 750
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    int-to-float v1, p2

    int-to-float v2, p3

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 751
    .local v0, "anim":Landroid/view/animation/Animation;
    int-to-long v2, p4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 752
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 753
    return-void
.end method

.method public startRotation(IZ)V
    .locals 3
    .param p1, "degree"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 414
    invoke-virtual {p0}, Lcom/lge/camera/controller/ShotModeMenuController;->checkComponents()Z

    move-result v1

    if-nez v1, :cond_0

    .line 420
    :goto_0
    return-void

    .line 417
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mShotModeMenuView:Landroid/view/View;

    const v2, 0x7f0d0210

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 418
    .local v0, "shotModeMenuLayout":Landroid/view/View;
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 419
    invoke-virtual {p0, v0, p1, p2}, Lcom/lge/camera/controller/ShotModeMenuController;->setLayoutDegree(Landroid/view/View;IZ)V

    goto :goto_0
.end method
