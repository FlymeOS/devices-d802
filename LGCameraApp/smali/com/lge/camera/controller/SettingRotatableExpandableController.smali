.class public Lcom/lge/camera/controller/SettingRotatableExpandableController;
.super Lcom/lge/camera/controller/SettingController;
.source "SettingRotatableExpandableController.java"


# static fields
.field private static final CHILD_CLOSE_DELAY_TIME:I = 0xc8

.field private static final CHILD_OPENCLOSE_ANI_TIME:I = 0xc8

.field private static final CHILD_POSITION_NONE:I = -0x1

.field private static final PARENT_SCROLL_TIME:I = 0x64

.field private static final RATE_SAME:D = 1.0

.field private static final SCROLLBAR_ANIMATION_TIME:I = 0x12c

.field private static final SCROLLBAR_HIDE_TIME:I = 0xbb8

.field private static final SETTING_ANIMATION_TIME:I = 0x12c

.field private static SETTING_EXPAND_NUM_OF_CHILD_ROW:I = 0x0

.field private static final STATE_CHILD_CLOSE:I = 0x64

.field private static final STATE_CHILD_CLOSE_ANIMATION_START:I = 0x65

.field private static final STATE_CHILD_DISPLAY_START:I = 0xa

.field private static final STATE_CHILD_NONE:I = 0x0

.field private static final STATE_CHILD_OPEN:I = 0xc

.field private static final STATE_CHILD_OPEN_ADD:I = 0xb

.field private static final STATE_CHILD_OPEN_ANIMATION_START:I = 0xd


# instance fields
.field protected CONFIG_ITEM_HEIGHT:I

.field protected DIVIDER:I

.field private mCheckCloseAnimation:Ljava/lang/Runnable;

.field private mCheckOpenAnimation:Ljava/lang/Runnable;

.field protected mChildAdapter:Lcom/lge/camera/setting/SettingExpandChildMenuAdapter;

.field private mChildCloseAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field protected mChildListView:Lcom/lge/camera/components/InnerListView;

.field private mChildOpenAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mChildSettingListItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mDegree:I

.field protected mOnBackCoverTouchListener:Landroid/view/View$OnTouchListener;

.field private mOpenChildLayout:Landroid/view/ViewGroup;

.field private mOpenChildPosition:Landroid/graphics/Point;

.field private mOrderBackCamcorder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOrderBackCamera:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mOrderCurrentSetting:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOrderFrontCamcorder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOrderFrontCamera:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mParentAdapter:Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;

.field protected mParentListView:Landroid/widget/ListView;

.field private mParentListViewTouchListener:Landroid/view/View$OnTouchListener;

.field private mParentScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field protected mParentScrollbarThumb:Landroid/widget/ImageView;

.field private mParentTouchActionState:I

.field protected mSettingView:Landroid/view/View;

.field private mSettingViewRemoving:Z

.field private mStateDisplayChild:I

.field private mTempChildLayout:Landroid/view/ViewGroup;

.field private mTempColumn:I

.field private mTempKey:Ljava/lang/String;

.field private mTempNeedOpenChild:Z

.field private mTempParentLayout:Landroid/view/ViewGroup;

.field private mTempRow:I

.field private mTouchReleaseRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 962
    const/4 v0, 0x4

    sput v0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->SETTING_EXPAND_NUM_OF_CHILD_ROW:I

    return-void
.end method

.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 3
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 81
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/SettingController;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 77
    const/4 v0, 0x2

    iput v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->DIVIDER:I

    .line 78
    iput v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mDegree:I

    .line 173
    const/4 v0, 0x3

    iput v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentTouchActionState:I

    .line 174
    new-instance v0, Lcom/lge/camera/controller/SettingRotatableExpandableController$1;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/SettingRotatableExpandableController$1;-><init>(Lcom/lge/camera/controller/SettingRotatableExpandableController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentListViewTouchListener:Landroid/view/View$OnTouchListener;

    .line 284
    new-instance v0, Lcom/lge/camera/controller/SettingRotatableExpandableController$2;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/SettingRotatableExpandableController$2;-><init>(Lcom/lge/camera/controller/SettingRotatableExpandableController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 389
    new-instance v0, Lcom/lge/camera/controller/SettingRotatableExpandableController$4;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/SettingRotatableExpandableController$4;-><init>(Lcom/lge/camera/controller/SettingRotatableExpandableController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mTouchReleaseRunnable:Ljava/lang/Runnable;

    .line 411
    iput-boolean v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mSettingViewRemoving:Z

    .line 533
    iput v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mTempColumn:I

    .line 534
    iput v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mTempRow:I

    .line 536
    iput-boolean v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mTempNeedOpenChild:Z

    .line 538
    iput v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mStateDisplayChild:I

    .line 738
    new-instance v0, Lcom/lge/camera/controller/SettingRotatableExpandableController$8;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/SettingRotatableExpandableController$8;-><init>(Lcom/lge/camera/controller/SettingRotatableExpandableController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mCheckOpenAnimation:Ljava/lang/Runnable;

    .line 744
    new-instance v0, Lcom/lge/camera/controller/SettingRotatableExpandableController$9;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/SettingRotatableExpandableController$9;-><init>(Lcom/lge/camera/controller/SettingRotatableExpandableController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mChildOpenAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 901
    new-instance v0, Lcom/lge/camera/controller/SettingRotatableExpandableController$10;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/SettingRotatableExpandableController$10;-><init>(Lcom/lge/camera/controller/SettingRotatableExpandableController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mCheckCloseAnimation:Ljava/lang/Runnable;

    .line 907
    new-instance v0, Lcom/lge/camera/controller/SettingRotatableExpandableController$11;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/SettingRotatableExpandableController$11;-><init>(Lcom/lge/camera/controller/SettingRotatableExpandableController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mChildCloseAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 1129
    new-instance v0, Lcom/lge/camera/controller/SettingRotatableExpandableController$15;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/SettingRotatableExpandableController$15;-><init>(Lcom/lge/camera/controller/SettingRotatableExpandableController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mChildSettingListItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 1306
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderBackCamera:Ljava/util/ArrayList;

    .line 1307
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderFrontCamera:Ljava/util/ArrayList;

    .line 1308
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderBackCamcorder:Ljava/util/ArrayList;

    .line 1309
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderFrontCamcorder:Ljava/util/ArrayList;

    .line 1395
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderCurrentSetting:Ljava/util/ArrayList;

    .line 1430
    new-instance v0, Lcom/lge/camera/controller/SettingRotatableExpandableController$16;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/SettingRotatableExpandableController$16;-><init>(Lcom/lge/camera/controller/SettingRotatableExpandableController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOnBackCoverTouchListener:Landroid/view/View$OnTouchListener;

    .line 82
    return-void
.end method

.method static synthetic access$000(Lcom/lge/camera/controller/SettingRotatableExpandableController;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/SettingRotatableExpandableController;

    .prologue
    .line 60
    iget v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentTouchActionState:I

    return v0
.end method

.method static synthetic access$002(Lcom/lge/camera/controller/SettingRotatableExpandableController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/controller/SettingRotatableExpandableController;
    .param p1, "x1"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentTouchActionState:I

    return p1
.end method

.method static synthetic access$100(Lcom/lge/camera/controller/SettingRotatableExpandableController;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/controller/SettingRotatableExpandableController;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->updateParentScrollbar()V

    return-void
.end method

.method static synthetic access$1000(Lcom/lge/camera/controller/SettingRotatableExpandableController;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/SettingRotatableExpandableController;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mCheckCloseAnimation:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/lge/camera/controller/SettingRotatableExpandableController;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/SettingRotatableExpandableController;

    .prologue
    .line 60
    iget v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mTempColumn:I

    return v0
.end method

.method static synthetic access$1200(Lcom/lge/camera/controller/SettingRotatableExpandableController;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/SettingRotatableExpandableController;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mTempKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/lge/camera/controller/SettingRotatableExpandableController;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/SettingRotatableExpandableController;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOpenChildLayout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/lge/camera/controller/SettingRotatableExpandableController;Landroid/view/ViewGroup;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/controller/SettingRotatableExpandableController;
    .param p1, "x1"    # Landroid/view/ViewGroup;
    .param p2, "x2"    # Z

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->closeChildView(Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/lge/camera/controller/SettingRotatableExpandableController;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/SettingRotatableExpandableController;

    .prologue
    .line 60
    iget v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mDegree:I

    return v0
.end method

.method static synthetic access$1600(Lcom/lge/camera/controller/SettingRotatableExpandableController;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/controller/SettingRotatableExpandableController;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->doCommandSubMenuClicked(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/lge/camera/controller/SettingRotatableExpandableController;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/SettingRotatableExpandableController;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mTouchReleaseRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lge/camera/controller/SettingRotatableExpandableController;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/SettingRotatableExpandableController;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mTempChildLayout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lge/camera/controller/SettingRotatableExpandableController;Landroid/view/ViewGroup;IILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/controller/SettingRotatableExpandableController;
    .param p1, "x1"    # Landroid/view/ViewGroup;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->openChildView(Landroid/view/ViewGroup;IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/lge/camera/controller/SettingRotatableExpandableController;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/controller/SettingRotatableExpandableController;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->onOpenChildAnimationEnd()V

    return-void
.end method

.method static synthetic access$602(Lcom/lge/camera/controller/SettingRotatableExpandableController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/controller/SettingRotatableExpandableController;
    .param p1, "x1"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mStateDisplayChild:I

    return p1
.end method

.method static synthetic access$700(Lcom/lge/camera/controller/SettingRotatableExpandableController;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/SettingRotatableExpandableController;

    .prologue
    .line 60
    iget v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mTempRow:I

    return v0
.end method

.method static synthetic access$800(Lcom/lge/camera/controller/SettingRotatableExpandableController;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/SettingRotatableExpandableController;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mCheckOpenAnimation:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$900(Lcom/lge/camera/controller/SettingRotatableExpandableController;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/controller/SettingRotatableExpandableController;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->onCloseAnimationEnd()V

    return-void
.end method

.method private declared-synchronized addChildView(Landroid/view/ViewGroup;IILjava/lang/String;)Z
    .locals 5
    .param p1, "childLayout"    # Landroid/view/ViewGroup;
    .param p2, "column"    # I
    .param p3, "row"    # I
    .param p4, "key"    # Ljava/lang/String;

    .prologue
    .line 653
    monitor-enter p0

    if-nez p1, :cond_0

    .line 654
    const/4 v2, 0x0

    .line 680
    :goto_0
    monitor-exit p0

    return v2

    .line 656
    :cond_0
    const/16 v2, 0xb

    :try_start_0
    iput v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mStateDisplayChild:I

    .line 657
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 658
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 661
    :cond_1
    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 662
    .local v1, "innerChildLayout":Landroid/widget/RelativeLayout;
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 665
    const/4 v0, 0x0

    .line 666
    .local v0, "childView":Landroid/view/View;
    const-string v2, "key_brightness"

    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 667
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->initSettingBrightnessBar()Landroid/widget/RelativeLayout;

    move-result-object v0

    .line 668
    if-eqz v0, :cond_2

    .line 669
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 670
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->refreshBrightnessExpandSettingBars()V

    .line 679
    :cond_2
    :goto_1
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 680
    const/4 v2, 0x1

    goto :goto_0

    .line 673
    :cond_3
    invoke-direct {p0, p2, p3, p4}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->getChildListView(IILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 674
    if-eqz v0, :cond_2

    .line 675
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 653
    .end local v0    # "childView":Landroid/view/View;
    .end local v1    # "innerChildLayout":Landroid/widget/RelativeLayout;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private addParentMenuItem()V
    .locals 14

    .prologue
    .line 208
    iget-object v9, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderCurrentSetting:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 210
    .local v7, "numOfMenus":I
    const/4 v9, 0x7

    if-lt v7, v9, :cond_1

    const/16 v9, 0x9

    if-gt v7, v9, :cond_1

    .line 211
    const/4 v9, 0x3

    sput v9, Lcom/lge/camera/properties/CameraConstants;->SETTING_EXPAND_MAX_COLUMN:I

    .line 212
    iget-object v9, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v10, 0x7f0d01f6

    invoke-interface {v9, v10}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v9

    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v11, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v11}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f090153

    invoke-static {v11, v12}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v11

    iget-object v12, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v12}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    const v13, 0x7f090156

    invoke-static {v12, v13}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v12

    invoke-direct {v10, v11, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 256
    :goto_0
    sget v9, Lcom/lge/camera/properties/CameraConstants;->SETTING_EXPAND_MAX_COLUMN:I

    div-int v8, v7, v9

    .line 257
    .local v8, "numOfRow":I
    sget v9, Lcom/lge/camera/properties/CameraConstants;->SETTING_EXPAND_MAX_COLUMN:I

    rem-int v6, v7, v9

    .line 260
    .local v6, "numOfLastRowItems":I
    iget-object v9, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentAdapter:Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;

    invoke-virtual {v9}, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;->clear()V

    .line 261
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-gt v1, v8, :cond_a

    .line 262
    if-ne v1, v8, :cond_7

    .line 263
    move v5, v6

    .line 268
    .local v5, "numOfEachColumn":I
    :goto_2
    new-array v0, v5, [Lcom/lge/camera/setting/SettingMenuItem;

    .line 269
    .local v0, "arraySettingMenuItem":[Lcom/lge/camera/setting/SettingMenuItem;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_3
    if-ge v4, v5, :cond_8

    .line 270
    sget v9, Lcom/lge/camera/properties/CameraConstants;->SETTING_EXPAND_MAX_COLUMN:I

    mul-int/2addr v9, v1

    add-int v2, v9, v4

    .line 271
    .local v2, "index":I
    const/4 v3, 0x0

    .line 272
    .local v3, "item":Lcom/lge/camera/setting/SettingMenuItem;
    iget-object v9, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderCurrentSetting:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v2, v9, :cond_0

    .line 273
    invoke-virtual {p0}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->getCurrentSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v10

    iget-object v9, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderCurrentSetting:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v10, v9}, Lcom/lge/camera/setting/SettingMenu;->getMenu(Ljava/lang/String;)Lcom/lge/camera/setting/SettingMenuItem;

    move-result-object v3

    .line 274
    aput-object v3, v0, v4

    .line 269
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 216
    .end local v0    # "arraySettingMenuItem":[Lcom/lge/camera/setting/SettingMenuItem;
    .end local v1    # "i":I
    .end local v2    # "index":I
    .end local v3    # "item":Lcom/lge/camera/setting/SettingMenuItem;
    .end local v4    # "j":I
    .end local v5    # "numOfEachColumn":I
    .end local v6    # "numOfLastRowItems":I
    .end local v8    # "numOfRow":I
    :cond_1
    const/16 v9, 0xa

    if-lt v7, v9, :cond_4

    const/16 v9, 0xc

    if-gt v7, v9, :cond_4

    .line 217
    iget-object v9, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v9}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iget v10, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mDegree:I

    const/16 v11, 0x5a

    invoke-static {v9, v10, v11}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v9}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iget v10, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mDegree:I

    const/16 v11, 0x10e

    invoke-static {v9, v10, v11}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 219
    :cond_2
    const/4 v9, 0x3

    sput v9, Lcom/lge/camera/properties/CameraConstants;->SETTING_EXPAND_MAX_COLUMN:I

    .line 220
    iget-object v9, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v10, 0x7f0d01f6

    invoke-interface {v9, v10}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v9

    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v11, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v11}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f090153

    invoke-static {v11, v12}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v11

    iget-object v12, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v12}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    const v13, 0x7f090155

    invoke-static {v12, v13}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v12

    invoke-direct {v10, v11, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 227
    :cond_3
    const/4 v9, 0x4

    sput v9, Lcom/lge/camera/properties/CameraConstants;->SETTING_EXPAND_MAX_COLUMN:I

    .line 228
    iget-object v9, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v10, 0x7f0d01f6

    invoke-interface {v9, v10}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v9

    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v11, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v11}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f090154

    invoke-static {v11, v12}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v11

    iget-object v12, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v12}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    const v13, 0x7f090156

    invoke-static {v12, v13}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v12

    invoke-direct {v10, v11, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 236
    :cond_4
    iget-object v9, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v9}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iget v10, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mDegree:I

    const/16 v11, 0x5a

    invoke-static {v9, v10, v11}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v9

    if-nez v9, :cond_5

    iget-object v9, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v9}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iget v10, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mDegree:I

    const/16 v11, 0x10e

    invoke-static {v9, v10, v11}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 238
    :cond_5
    const/4 v9, 0x3

    sput v9, Lcom/lge/camera/properties/CameraConstants;->SETTING_EXPAND_MAX_COLUMN:I

    .line 239
    iget-object v9, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v10, 0x7f0d01f6

    invoke-interface {v9, v10}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v9

    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v11, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v11}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f090153

    invoke-static {v11, v12}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v11

    iget-object v12, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v12}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    const v13, 0x7f090157

    invoke-static {v12, v13}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v12

    invoke-direct {v10, v11, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 246
    :cond_6
    const/4 v9, 0x4

    sput v9, Lcom/lge/camera/properties/CameraConstants;->SETTING_EXPAND_MAX_COLUMN:I

    .line 247
    iget-object v9, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v10, 0x7f0d01f6

    invoke-interface {v9, v10}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v9

    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v11, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v11}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f090154

    invoke-static {v11, v12}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v11

    iget-object v12, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v12}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    const v13, 0x7f090155

    invoke-static {v12, v13}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v12

    invoke-direct {v10, v11, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 265
    .restart local v1    # "i":I
    .restart local v6    # "numOfLastRowItems":I
    .restart local v8    # "numOfRow":I
    :cond_7
    sget v5, Lcom/lge/camera/properties/CameraConstants;->SETTING_EXPAND_MAX_COLUMN:I

    .restart local v5    # "numOfEachColumn":I
    goto/16 :goto_2

    .line 278
    .restart local v0    # "arraySettingMenuItem":[Lcom/lge/camera/setting/SettingMenuItem;
    .restart local v4    # "j":I
    :cond_8
    if-eqz v5, :cond_9

    .line 279
    iget-object v9, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentAdapter:Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;

    invoke-virtual {v9, v0}, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;->add(Ljava/lang/Object;)V

    .line 261
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 282
    .end local v0    # "arraySettingMenuItem":[Lcom/lge/camera/setting/SettingMenuItem;
    .end local v4    # "j":I
    .end local v5    # "numOfEachColumn":I
    :cond_a
    return-void
.end method

.method private calcWantedRow(Landroid/widget/ListView;I)I
    .locals 3
    .param p1, "listView"    # Landroid/widget/ListView;
    .param p2, "row"    # I

    .prologue
    .line 560
    invoke-virtual {p1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 561
    .local v0, "firstRow":I
    sub-int v1, p2, v0

    .line 562
    .local v1, "wantedRow":I
    if-ltz v1, :cond_0

    invoke-virtual {p1}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 563
    :cond_0
    const/4 v1, -0x1

    .line 565
    .end local v1    # "wantedRow":I
    :cond_1
    return v1
.end method

.method private declared-synchronized closeChildView(Landroid/view/ViewGroup;Z)V
    .locals 1
    .param p1, "childLayout"    # Landroid/view/ViewGroup;
    .param p2, "needOpenAfterAnimation"    # Z

    .prologue
    .line 826
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->closeChildView(Landroid/view/ViewGroup;ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 827
    monitor-exit p0

    return-void

    .line 826
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized closeChildView(Landroid/view/ViewGroup;ZZ)V
    .locals 12
    .param p1, "childLayout"    # Landroid/view/ViewGroup;
    .param p2, "needOpenAfterAnimation"    # Z
    .param p3, "needAnimation"    # Z

    .prologue
    const/16 v11, 0x9

    const/4 v10, -0x1

    .line 831
    monitor-enter p0

    :try_start_0
    const-string v7, "CameraApp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "closeChildView mStateDisplayChild = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mStateDisplayChild:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    iget v7, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mStateDisplayChild:I

    if-eqz v7, :cond_0

    iget v7, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mStateDisplayChild:I

    const/16 v8, 0xa

    if-le v7, v8, :cond_0

    .line 834
    const-string v7, "CameraApp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exit closeChildView mStateDisplayChild = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mStateDisplayChild:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 899
    :goto_0
    monitor-exit p0

    return-void

    .line 837
    :cond_0
    const/16 v7, 0x64

    :try_start_1
    iput v7, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mStateDisplayChild:I

    .line 838
    if-nez p1, :cond_1

    .line 839
    const/4 v7, 0x0

    iput v7, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mStateDisplayChild:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 831
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 842
    :cond_1
    const/4 v7, 0x0

    :try_start_2
    invoke-virtual {p1, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    if-nez v7, :cond_2

    .line 843
    const/4 v7, 0x0

    iput v7, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mStateDisplayChild:I

    goto :goto_0

    .line 847
    :cond_2
    iget-object v7, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentListView:Landroid/widget/ListView;

    iget-object v8, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOpenChildPosition:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v7, v8}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->calcWantedRow(Landroid/widget/ListView;I)I

    move-result v6

    .line 848
    .local v6, "wantedRow":I
    if-eq v6, v10, :cond_4

    .line 849
    iget-object v7, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentListView:Landroid/widget/ListView;

    invoke-virtual {v7, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    sget-object v8, Lcom/lge/camera/properties/CameraConstants;->PARENT_ITEM_ID:[I

    iget-object v9, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOpenChildPosition:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    aget v8, v8, v9

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 851
    .local v3, "parentLayout":Landroid/view/View;
    if-eqz v3, :cond_4

    .line 852
    const v7, 0x7f0d01ef

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lge/camera/components/SettingExpandParentImage;

    .line 854
    .local v2, "parentImage":Lcom/lge/camera/components/SettingExpandParentImage;
    const/4 v7, 0x0

    iput-boolean v7, v2, Lcom/lge/camera/components/SettingExpandParentImage;->selected:Z

    .line 855
    const/4 v7, 0x4

    invoke-direct {p0, v3, v7}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->setArrowVisibility(Landroid/view/View;I)V

    .line 856
    const v7, 0x7f0d01f0

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setSelected(Z)V

    .line 859
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 860
    .local v1, "currentLanguage":Ljava/lang/String;
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v7

    if-ne v7, v11, :cond_3

    const-string v7, "th"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 862
    const v7, 0x7f0d01f0

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 864
    .local v4, "txt":Landroid/widget/TextView;
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    invoke-virtual {v4, v7, v8, v9, v10}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 865
    sget-object v7, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 869
    .end local v4    # "txt":Landroid/widget/TextView;
    :cond_3
    const v7, 0x7f0d01f1

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setSelected(Z)V

    .line 872
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v7

    if-ne v7, v11, :cond_4

    const-string v7, "th"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 874
    const v7, 0x7f0d01f1

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 876
    .local v5, "txt1":Landroid/widget/TextView;
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    invoke-virtual {v5, v7, v8, v9, v10}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 877
    sget-object v7, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 884
    .end local v1    # "currentLanguage":Ljava/lang/String;
    .end local v2    # "parentImage":Lcom/lge/camera/components/SettingExpandParentImage;
    .end local v3    # "parentLayout":Landroid/view/View;
    .end local v5    # "txt1":Landroid/widget/TextView;
    :cond_4
    iput-boolean p2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mTempNeedOpenChild:Z

    .line 885
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v7

    if-nez v7, :cond_5

    .line 886
    if-eqz p3, :cond_5

    .line 887
    new-instance v0, Lcom/lge/camera/setting/ExpandAnimation;

    iget-object v7, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const/16 v8, 0xc8

    const/4 v9, 0x0

    invoke-direct {v0, v7, p1, v8, v9}, Lcom/lge/camera/setting/ExpandAnimation;-><init>(Landroid/content/Context;Landroid/view/View;IZ)V

    .line 892
    .local v0, "animationChildClose":Lcom/lge/camera/setting/ExpandAnimation;
    iget-object v7, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mChildCloseAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v7}, Lcom/lge/camera/setting/ExpandAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 893
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 894
    iget-object v7, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getHandler()Lcom/lge/camera/util/MainHandler;

    move-result-object v7

    iget-object v8, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mCheckCloseAnimation:Ljava/lang/Runnable;

    const-wide/16 v10, 0xc8

    invoke-virtual {v7, v8, v10, v11}, Lcom/lge/camera/util/MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 898
    .end local v0    # "animationChildClose":Lcom/lge/camera/setting/ExpandAnimation;
    :cond_5
    invoke-direct {p0}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->doOnCloseAnimationEnd()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private doCommandSubMenuClicked(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "command"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 1204
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

    .line 1205
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

    .line 1208
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1209
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "subMenuClicked"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1210
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, p2, v0}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1234
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_1
    :goto_0
    return-void

    .line 1212
    :cond_2
    const-string v1, "key_swap"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1213
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isLiveEffectSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1214
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v1

    if-ne v1, v4, :cond_1

    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isEffectsCamcorderActive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1216
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getCameraMode()I

    move-result v1

    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_swap"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getSettingIndex(Ljava/lang/String;)I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 1219
    const-string v1, "CameraApp"

    const-string v2, "SwapCameraPrepared-start, liveeffect active"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1220
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    const/16 v2, 0x66

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->effectRecorderStopPreviewByCallFrom(I)V

    .line 1224
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1225
    .restart local v0    # "bundle":Landroid/os/Bundle;
    const-string v1, "liveeffect_mode"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1226
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v2, 0x0

    invoke-interface {v1, p2, v2, v0}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 1232
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_3
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, p2}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private doNoChildMenu(IILjava/lang/String;)Z
    .locals 4
    .param p1, "column"    # I
    .param p2, "row"    # I
    .param p3, "key"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 631
    const-string v3, "key_edit_shortcut"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "key_au_cloud"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "key_help_guide"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "key_restore"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 635
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->getCurrentSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/lge/camera/setting/SettingMenu;->getMenuIndex(Ljava/lang/String;)I

    move-result v0

    .line 636
    .local v0, "childPosition":I
    invoke-direct {p0, v0, v2}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->setChildViewPattern(IZ)V

    .line 637
    iget-object v3, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getSettingMenuCommand()Ljava/lang/String;

    move-result-object v1

    .line 638
    .local v1, "className":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 639
    iget-object v3, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v1}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 641
    :cond_1
    const-string v3, "key_restore"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 642
    iget-object v3, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOpenChildLayout:Landroid/view/ViewGroup;

    invoke-direct {p0, v3, v2}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->closeChildView(Landroid/view/ViewGroup;Z)V

    .line 646
    :goto_0
    const/4 v2, 0x1

    .line 648
    .end local v0    # "childPosition":I
    .end local v1    # "className":Ljava/lang/String;
    :cond_2
    return v2

    .line 644
    .restart local v0    # "childPosition":I
    .restart local v1    # "className":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->removeSettingView()V

    goto :goto_0
.end method

.method private doOnCloseAnimationEnd()V
    .locals 3

    .prologue
    .line 934
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mTempChildLayout:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mStateDisplayChild:I

    if-nez v1, :cond_1

    .line 935
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mStateDisplayChild:I

    .line 960
    :goto_0
    return-void

    .line 938
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mTempChildLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 939
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mTempChildLayout:Landroid/view/ViewGroup;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 940
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentListView:Landroid/widget/ListView;

    const/16 v2, 0xbb8

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setScrollBarFadeDuration(I)V

    .line 943
    iget-boolean v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mTempNeedOpenChild:Z

    if-eqz v1, :cond_2

    .line 944
    invoke-virtual {p0}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->getCurrentSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mTempKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/lge/camera/setting/SettingMenu;->getMenuIndex(Ljava/lang/String;)I

    move-result v0

    .line 945
    .local v0, "childPosition":I
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mChildAdapter:Lcom/lge/camera/setting/SettingExpandChildMenuAdapter;

    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mTempKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/lge/camera/setting/SettingExpandChildMenuAdapter;->setCurrentParentKey(Ljava/lang/String;)V

    .line 946
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->setChildViewPattern(IZ)V

    .line 948
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v2, Lcom/lge/camera/controller/SettingRotatableExpandableController$12;

    invoke-direct {v2, p0}, Lcom/lge/camera/controller/SettingRotatableExpandableController$12;-><init>(Lcom/lge/camera/controller/SettingRotatableExpandableController;)V

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->postOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 956
    .end local v0    # "childPosition":I
    :cond_2
    invoke-virtual {p0}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->updateSetting()V

    .line 957
    invoke-direct {p0}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->resetChildShowingValues()V

    goto :goto_0
.end method

.method private getChildListView(IILjava/lang/String;)Landroid/view/View;
    .locals 12
    .param p1, "column"    # I
    .param p2, "row"    # I
    .param p3, "key"    # Ljava/lang/String;

    .prologue
    .line 965
    new-instance v6, Lcom/lge/camera/components/InnerListView;

    iget-object v7, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/lge/camera/components/InnerListView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mChildListView:Lcom/lge/camera/components/InnerListView;

    .line 966
    iget-object v6, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mChildListView:Lcom/lge/camera/components/InnerListView;

    iget-object v7, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f020330

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/lge/camera/components/InnerListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 968
    iget-object v6, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mChildListView:Lcom/lge/camera/components/InnerListView;

    iget v7, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->DIVIDER:I

    invoke-virtual {v6, v7}, Lcom/lge/camera/components/InnerListView;->setDividerHeight(I)V

    .line 969
    iget-object v6, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mChildListView:Lcom/lge/camera/components/InnerListView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/lge/camera/components/InnerListView;->setFocusable(Z)V

    .line 970
    iget-object v6, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mChildListView:Lcom/lge/camera/components/InnerListView;

    iget-object v7, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mChildAdapter:Lcom/lge/camera/setting/SettingExpandChildMenuAdapter;

    invoke-virtual {v6, v7}, Lcom/lge/camera/components/InnerListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 971
    iget-object v6, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mChildListView:Lcom/lge/camera/components/InnerListView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/lge/camera/components/InnerListView;->setSelected(Z)V

    .line 973
    const/4 v3, -0x1

    .line 975
    .local v3, "childListWidth":I
    iget-object v6, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderCurrentSetting:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 976
    .local v4, "numOfMenus":I
    const/4 v6, 0x7

    if-lt v4, v6, :cond_2

    const/16 v6, 0x9

    if-gt v4, v6, :cond_2

    .line 977
    const/4 v6, 0x3

    sput v6, Lcom/lge/camera/controller/SettingRotatableExpandableController;->SETTING_EXPAND_NUM_OF_CHILD_ROW:I

    .line 994
    :goto_0
    iget v6, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->CONFIG_ITEM_HEIGHT:I

    int-to-double v6, v6

    sget v8, Lcom/lge/camera/controller/SettingRotatableExpandableController;->SETTING_EXPAND_NUM_OF_CHILD_ROW:I

    int-to-double v8, v8

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    add-double/2addr v8, v10

    mul-double/2addr v6, v8

    double-to-int v2, v6

    .line 995
    .local v2, "childListHeight":I
    iget-object v6, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mChildListView:Lcom/lge/camera/components/InnerListView;

    invoke-virtual {v6}, Lcom/lge/camera/components/InnerListView;->getCount()I

    move-result v1

    .line 997
    .local v1, "childListCountWithOutHeader":I
    iget v6, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->CONFIG_ITEM_HEIGHT:I

    iget v7, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->DIVIDER:I

    add-int/2addr v6, v7

    mul-int v0, v1, v6

    .line 998
    .local v0, "childHeight":I
    iget-object v6, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->getSelectedChildIndex()I

    move-result v5

    .line 999
    .local v5, "topPosition":I
    sget v6, Lcom/lge/camera/controller/SettingRotatableExpandableController;->SETTING_EXPAND_NUM_OF_CHILD_ROW:I

    if-le v1, v6, :cond_0

    .line 1000
    int-to-double v6, v0

    iget v8, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->CONFIG_ITEM_HEIGHT:I

    int-to-double v8, v8

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-int v0, v6

    .line 1001
    sget v6, Lcom/lge/camera/controller/SettingRotatableExpandableController;->SETTING_EXPAND_NUM_OF_CHILD_ROW:I

    if-lt v5, v6, :cond_8

    .line 1002
    add-int/lit8 v5, v5, -0x1

    .line 1007
    :cond_0
    :goto_1
    if-le v2, v0, :cond_1

    .line 1008
    move v2, v0

    .line 1010
    :cond_1
    iget-object v6, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mChildListView:Lcom/lge/camera/components/InnerListView;

    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7}, Lcom/lge/camera/components/InnerListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1011
    iget-object v6, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mChildListView:Lcom/lge/camera/components/InnerListView;

    iget-object v7, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mChildSettingListItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v6, v7}, Lcom/lge/camera/components/InnerListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1012
    iget-object v6, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mChildListView:Lcom/lge/camera/components/InnerListView;

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Lcom/lge/camera/components/InnerListView;->setSelectionFromTop(II)V

    .line 1013
    iget-object v6, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mChildListView:Lcom/lge/camera/components/InnerListView;

    return-object v6

    .line 978
    .end local v0    # "childHeight":I
    .end local v1    # "childListCountWithOutHeader":I
    .end local v2    # "childListHeight":I
    .end local v5    # "topPosition":I
    :cond_2
    const/16 v6, 0xa

    if-lt v4, v6, :cond_5

    const/16 v6, 0xc

    if-gt v4, v6, :cond_5

    .line 979
    iget-object v6, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v7, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mDegree:I

    const/16 v8, 0x5a

    invoke-static {v6, v7, v8}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v7, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mDegree:I

    const/16 v8, 0x10e

    invoke-static {v6, v7, v8}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 981
    :cond_3
    const/4 v6, 0x4

    sput v6, Lcom/lge/camera/controller/SettingRotatableExpandableController;->SETTING_EXPAND_NUM_OF_CHILD_ROW:I

    goto :goto_0

    .line 983
    :cond_4
    const/4 v6, 0x3

    sput v6, Lcom/lge/camera/controller/SettingRotatableExpandableController;->SETTING_EXPAND_NUM_OF_CHILD_ROW:I

    goto :goto_0

    .line 986
    :cond_5
    iget-object v6, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v7, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mDegree:I

    const/16 v8, 0x5a

    invoke-static {v6, v7, v8}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v7, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mDegree:I

    const/16 v8, 0x10e

    invoke-static {v6, v7, v8}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 988
    :cond_6
    const/4 v6, 0x5

    sput v6, Lcom/lge/camera/controller/SettingRotatableExpandableController;->SETTING_EXPAND_NUM_OF_CHILD_ROW:I

    goto/16 :goto_0

    .line 990
    :cond_7
    const/4 v6, 0x4

    sput v6, Lcom/lge/camera/controller/SettingRotatableExpandableController;->SETTING_EXPAND_NUM_OF_CHILD_ROW:I

    goto/16 :goto_0

    .line 1004
    .restart local v0    # "childHeight":I
    .restart local v1    # "childListCountWithOutHeader":I
    .restart local v2    # "childListHeight":I
    .restart local v5    # "topPosition":I
    :cond_8
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private initSettingOrder()V
    .locals 2

    .prologue
    .line 1312
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderBackCamera:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 1313
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderBackCamera:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1314
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderBackCamera:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1317
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderBackCamera:Ljava/util/ArrayList;

    const-string v1, "key_voiceshutter"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1318
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderBackCamera:Ljava/util/ArrayList;

    const-string v1, "key_brightness"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1319
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderBackCamera:Ljava/util/ArrayList;

    const-string v1, "key_focus"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1320
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderBackCamera:Ljava/util/ArrayList;

    const-string v1, "key_camera_picturesize"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1321
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderBackCamera:Ljava/util/ArrayList;

    const-string v1, "key_iso"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1322
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderBackCamera:Ljava/util/ArrayList;

    const-string v1, "key_camera_whitebalance"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1323
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderBackCamera:Ljava/util/ArrayList;

    const-string v1, "key_camera_coloreffect"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1324
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderBackCamera:Ljava/util/ArrayList;

    const-string v1, "key_camera_timer"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1325
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderBackCamera:Ljava/util/ArrayList;

    const-string v1, "key_camera_auto_review"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1326
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderBackCamera:Ljava/util/ArrayList;

    const-string v1, "key_camera_tag_location"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1327
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderBackCamera:Ljava/util/ArrayList;

    const-string v1, "key_camera_shutter_sound"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1328
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderBackCamera:Ljava/util/ArrayList;

    const-string v1, "key_volume"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1329
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderBackCamera:Ljava/util/ArrayList;

    const-string v1, "key_storage"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1330
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderBackCamera:Ljava/util/ArrayList;

    const-string v1, "key_au_cloud"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1331
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderBackCamera:Ljava/util/ArrayList;

    const-string v1, "key_help_guide"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1332
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderBackCamera:Ljava/util/ArrayList;

    const-string v1, "key_restore"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1335
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderFrontCamera:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 1336
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderFrontCamera:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 1337
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderFrontCamera:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1339
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderFrontCamera:Ljava/util/ArrayList;

    const-string v1, "key_voiceshutter"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1340
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderFrontCamera:Ljava/util/ArrayList;

    const-string v1, "key_brightness"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1341
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderFrontCamera:Ljava/util/ArrayList;

    const-string v1, "key_camera_picturesize"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1342
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderFrontCamera:Ljava/util/ArrayList;

    const-string v1, "key_camera_whitebalance"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1343
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderFrontCamera:Ljava/util/ArrayList;

    const-string v1, "key_camera_coloreffect"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1344
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderFrontCamera:Ljava/util/ArrayList;

    const-string v1, "key_camera_timer"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1345
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderFrontCamera:Ljava/util/ArrayList;

    const-string v1, "key_save_direction"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1346
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderFrontCamera:Ljava/util/ArrayList;

    const-string v1, "key_camera_auto_review"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1347
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderFrontCamera:Ljava/util/ArrayList;

    const-string v1, "key_camera_tag_location"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1348
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderFrontCamera:Ljava/util/ArrayList;

    const-string v1, "key_camera_shutter_sound"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1349
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderFrontCamera:Ljava/util/ArrayList;

    const-string v1, "key_volume"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1350
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderFrontCamera:Ljava/util/ArrayList;

    const-string v1, "key_storage"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1351
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderFrontCamera:Ljava/util/ArrayList;

    const-string v1, "key_au_cloud"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1352
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderFrontCamera:Ljava/util/ArrayList;

    const-string v1, "key_help_guide"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1353
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderFrontCamera:Ljava/util/ArrayList;

    const-string v1, "key_restore"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1356
    :cond_3
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderBackCamcorder:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 1357
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderBackCamcorder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 1358
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderBackCamcorder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1360
    :cond_4
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderBackCamcorder:Ljava/util/ArrayList;

    const-string v1, "key_audiozoom"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1362
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderBackCamcorder:Ljava/util/ArrayList;

    const-string v1, "key_preview_size_on_device"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1363
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderBackCamcorder:Ljava/util/ArrayList;

    const-string v1, "key_brightness"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1364
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderBackCamcorder:Ljava/util/ArrayList;

    const-string v1, "key_video_stabilization"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1365
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderBackCamcorder:Ljava/util/ArrayList;

    const-string v1, "key_camera_whitebalance"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1366
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderBackCamcorder:Ljava/util/ArrayList;

    const-string v1, "key_camera_coloreffect"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1367
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderBackCamcorder:Ljava/util/ArrayList;

    const-string v1, "key_video_auto_review"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1368
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderBackCamcorder:Ljava/util/ArrayList;

    const-string v1, "key_camera_tag_location"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1369
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderBackCamcorder:Ljava/util/ArrayList;

    const-string v1, "key_volume"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1370
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderBackCamcorder:Ljava/util/ArrayList;

    const-string v1, "key_storage"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1371
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderBackCamcorder:Ljava/util/ArrayList;

    const-string v1, "key_au_cloud"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1372
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderBackCamcorder:Ljava/util/ArrayList;

    const-string v1, "key_help_guide"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1373
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderBackCamcorder:Ljava/util/ArrayList;

    const-string v1, "key_restore"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1376
    :cond_5
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderFrontCamcorder:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    .line 1377
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderFrontCamcorder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 1378
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderFrontCamcorder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1380
    :cond_6
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderFrontCamcorder:Ljava/util/ArrayList;

    const-string v1, "key_preview_size_on_device"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1381
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderFrontCamcorder:Ljava/util/ArrayList;

    const-string v1, "key_brightness"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1382
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderFrontCamcorder:Ljava/util/ArrayList;

    const-string v1, "key_video_stabilization"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1383
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderFrontCamcorder:Ljava/util/ArrayList;

    const-string v1, "key_camera_whitebalance"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1384
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderFrontCamcorder:Ljava/util/ArrayList;

    const-string v1, "key_camera_coloreffect"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1385
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderFrontCamcorder:Ljava/util/ArrayList;

    const-string v1, "key_video_auto_review"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1386
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderFrontCamcorder:Ljava/util/ArrayList;

    const-string v1, "key_camera_tag_location"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1387
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderFrontCamcorder:Ljava/util/ArrayList;

    const-string v1, "key_volume"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1388
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderFrontCamcorder:Ljava/util/ArrayList;

    const-string v1, "key_storage"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1389
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderFrontCamcorder:Ljava/util/ArrayList;

    const-string v1, "key_au_cloud"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1390
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderFrontCamcorder:Ljava/util/ArrayList;

    const-string v1, "key_help_guide"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1391
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderFrontCamcorder:Ljava/util/ArrayList;

    const-string v1, "key_restore"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1393
    :cond_7
    return-void
.end method

.method private makeSettingItemOrder()V
    .locals 4

    .prologue
    .line 1398
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1400
    .local v2, "orderGuide":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v3

    if-nez v3, :cond_3

    .line 1401
    iget-object v3, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getCameraMode()I

    move-result v3

    if-nez v3, :cond_2

    .line 1402
    iget-object v3, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getCameraDimension()I

    move-result v3

    if-nez v3, :cond_0

    .line 1403
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderBackCamera:Ljava/util/ArrayList;

    .line 1422
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderCurrentSetting:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1423
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1424
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->getCurrentSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/lge/camera/setting/SettingMenu;->getMenu(Ljava/lang/String;)Lcom/lge/camera/setting/SettingMenuItem;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1425
    iget-object v3, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderCurrentSetting:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1408
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "key":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderFrontCamera:Ljava/util/ArrayList;

    goto :goto_0

    .line 1411
    :cond_3
    iget-object v3, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getCameraMode()I

    move-result v3

    if-nez v3, :cond_4

    .line 1412
    iget-object v3, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getCameraDimension()I

    move-result v3

    if-nez v3, :cond_0

    .line 1413
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderBackCamcorder:Ljava/util/ArrayList;

    goto :goto_0

    .line 1418
    :cond_4
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderFrontCamcorder:Ljava/util/ArrayList;

    goto :goto_0

    .line 1428
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_5
    return-void
.end method

.method private onCloseAnimationEnd()V
    .locals 1

    .prologue
    .line 928
    invoke-direct {p0}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->doOnCloseAnimationEnd()V

    .line 929
    invoke-direct {p0}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->updateParentScrollbar()V

    .line 930
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mTouchReleaseRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 931
    return-void
.end method

.method private onOpenChildAnimationEnd()V
    .locals 5

    .prologue
    const/16 v2, 0x64

    const/4 v4, 0x0

    .line 765
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mTempChildLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mStateDisplayChild:I

    if-nez v0, :cond_1

    .line 768
    :cond_0
    iput v4, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mStateDisplayChild:I

    .line 788
    :goto_0
    return-void

    .line 771
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentListView:Landroid/widget/ListView;

    iget v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mTempRow:I

    invoke-virtual {v0, v1, v4, v2}, Landroid/widget/ListView;->smoothScrollToPositionFromTop(III)V

    .line 773
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mTempChildLayout:Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOpenChildLayout:Landroid/view/ViewGroup;

    .line 774
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOpenChildPosition:Landroid/graphics/Point;

    iget v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mTempColumn:I

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 775
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOpenChildPosition:Landroid/graphics/Point;

    iget v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mTempRow:I

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 777
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setScrollBarFadeDuration(I)V

    .line 778
    iput v4, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mStateDisplayChild:I

    .line 779
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mTouchReleaseRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 781
    invoke-direct {p0}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->updateParentScrollbar()V

    .line 782
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.HideSettingExpandParentScrollbar"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->removeScheduledCommand(Ljava/lang/String;)V

    .line 783
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.HideSettingExpandParentScrollbar"

    const-wide/16 v2, 0xbb8

    invoke-interface {v0, v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->doCommandDelayed(Ljava/lang/String;J)V

    .line 784
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mTouchReleaseRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 786
    invoke-direct {p0, v4}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->setContentDescriptionForSetting(Z)V

    goto :goto_0
.end method

.method private declared-synchronized openChildView(Landroid/view/ViewGroup;IILjava/lang/String;)V
    .locals 7
    .param p1, "childLayout"    # Landroid/view/ViewGroup;
    .param p2, "column"    # I
    .param p3, "row"    # I
    .param p4, "key"    # Ljava/lang/String;

    .prologue
    .line 699
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->addChildView(Landroid/view/ViewGroup;IILjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 700
    const/4 v4, 0x0

    iput v4, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mStateDisplayChild:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 736
    :goto_0
    monitor-exit p0

    return-void

    .line 703
    :cond_0
    if-nez p1, :cond_1

    .line 704
    const/4 v4, 0x0

    :try_start_1
    iput v4, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mStateDisplayChild:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 699
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 707
    :cond_1
    :try_start_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-gez v4, :cond_2

    .line 708
    invoke-virtual {p1}, Landroid/view/ViewGroup;->clearAnimation()V

    .line 709
    const/4 v4, 0x0

    iput v4, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mStateDisplayChild:I

    goto :goto_0

    .line 713
    :cond_2
    const/16 v4, 0xc

    iput v4, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mStateDisplayChild:I

    .line 715
    if-ltz p2, :cond_3

    .line 716
    iget-object v4, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mTempParentLayout:Landroid/view/ViewGroup;

    sget-object v5, Lcom/lge/camera/properties/CameraConstants;->PARENT_ITEM_ID:[I

    aget v5, v5, p2

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 717
    .local v2, "parentLayout":Landroid/view/View;
    if-eqz v2, :cond_3

    .line 718
    const v4, 0x7f0d01ef

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/components/SettingExpandParentImage;

    .line 720
    .local v1, "parentImage":Lcom/lge/camera/components/SettingExpandParentImage;
    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/lge/camera/components/SettingExpandParentImage;->selected:Z

    .line 721
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/lge/camera/components/SettingExpandParentImage;->setImageLevel(I)V

    .line 722
    const v4, 0x7f0d01f0

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 724
    .local v3, "textView":Landroid/widget/TextView;
    const-string v4, "#ff119291"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 725
    const/4 v4, 0x0

    invoke-direct {p0, v2, v4}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->setArrowVisibility(Landroid/view/View;I)V

    .line 729
    .end local v1    # "parentImage":Lcom/lge/camera/components/SettingExpandParentImage;
    .end local v2    # "parentLayout":Landroid/view/View;
    .end local v3    # "textView":Landroid/widget/TextView;
    :cond_3
    new-instance v0, Lcom/lge/camera/setting/ExpandAnimation;

    iget-object v4, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/16 v5, 0xc8

    const/4 v6, 0x1

    invoke-direct {v0, v4, p1, v5, v6}, Lcom/lge/camera/setting/ExpandAnimation;-><init>(Landroid/content/Context;Landroid/view/View;IZ)V

    .line 734
    .local v0, "animationChildOpen":Lcom/lge/camera/setting/ExpandAnimation;
    iget-object v4, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mChildOpenAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v4}, Lcom/lge/camera/setting/ExpandAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 735
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private resetChildShowingValues()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 548
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOpenChildPosition:Landroid/graphics/Point;

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 549
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOpenChildPosition:Landroid/graphics/Point;

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 550
    iput-object v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOpenChildLayout:Landroid/view/ViewGroup;

    .line 551
    iput-object v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mTempChildLayout:Landroid/view/ViewGroup;

    .line 552
    iput v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mTempColumn:I

    .line 553
    iput v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mTempRow:I

    .line 554
    iput-object v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mTempKey:Ljava/lang/String;

    .line 555
    iput-boolean v3, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mTempNeedOpenChild:Z

    .line 556
    iput v3, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mStateDisplayChild:I

    .line 557
    return-void
.end method

.method private setArrowVisibility(Landroid/view/View;I)V
    .locals 1
    .param p1, "parentItem"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 684
    const v0, 0x7f0d01f2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 685
    return-void
.end method

.method private setChildViewPattern(IZ)V
    .locals 5
    .param p1, "position"    # I
    .param p2, "notify"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1097
    if-eqz p2, :cond_2

    .line 1098
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, p1}, Lcom/lge/camera/ControllerFunction;->setCurrentSettingMenu(I)Z

    .line 1103
    :goto_0
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mChildListView:Lcom/lge/camera/components/InnerListView;

    if-eqz v1, :cond_1

    .line 1104
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, p1}, Lcom/lge/camera/ControllerFunction;->getIndexMenuKey(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 1105
    .local v0, "pref":Lcom/lge/camera/setting/ListPreference;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/lge/camera/setting/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_camera_shutter_sound"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1106
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mChildListView:Lcom/lge/camera/components/InnerListView;

    invoke-virtual {v1, v3}, Lcom/lge/camera/components/InnerListView;->setSoundEffectsEnabled(Z)V

    .line 1110
    :goto_1
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mChildAdapter:Lcom/lge/camera/setting/SettingExpandChildMenuAdapter;

    invoke-virtual {v1, v4}, Lcom/lge/camera/setting/SettingExpandChildMenuAdapter;->setShowSelectedChild(Z)V

    .line 1111
    if-eqz v0, :cond_1

    const-string v1, "key_help_guide"

    invoke-virtual {v0}, Lcom/lge/camera/setting/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "key_au_cloud"

    invoke-virtual {v0}, Lcom/lge/camera/setting/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1114
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mChildAdapter:Lcom/lge/camera/setting/SettingExpandChildMenuAdapter;

    invoke-virtual {v1, v3}, Lcom/lge/camera/setting/SettingExpandChildMenuAdapter;->setShowSelectedChild(Z)V

    .line 1115
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mChildListView:Lcom/lge/camera/components/InnerListView;

    invoke-virtual {v1, v3}, Lcom/lge/camera/components/InnerListView;->setSelected(Z)V

    .line 1116
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v2, Lcom/lge/camera/controller/SettingRotatableExpandableController$14;

    invoke-direct {v2, p0}, Lcom/lge/camera/controller/SettingRotatableExpandableController$14;-><init>(Lcom/lge/camera/controller/SettingRotatableExpandableController;)V

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1127
    .end local v0    # "pref":Lcom/lge/camera/setting/ListPreference;
    :cond_1
    return-void

    .line 1100
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, p1}, Lcom/lge/camera/ControllerFunction;->setCurrentSettingMenuOnly(I)Z

    goto :goto_0

    .line 1108
    .restart local v0    # "pref":Lcom/lge/camera/setting/ListPreference;
    :cond_3
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mChildListView:Lcom/lge/camera/components/InnerListView;

    invoke-virtual {v1, v4}, Lcom/lge/camera/components/InnerListView;->setSoundEffectsEnabled(Z)V

    goto :goto_1
.end method

.method private setContentDescriptionForSetting(Z)V
    .locals 8
    .param p1, "isChildItemClosed"    # Z

    .prologue
    .line 791
    iget-object v4, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentListView:Landroid/widget/ListView;

    if-eqz v4, :cond_0

    .line 792
    iget-object v4, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->clearFocus()V

    .line 793
    iget-object v4, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentListView:Landroid/widget/ListView;

    const/high16 v5, 0x10000

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->sendAccessibilityEvent(I)V

    .line 797
    :cond_0
    iget-object v4, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v5, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getCurrentMenuKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->getSettingListPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v2

    .line 798
    .local v2, "listPref":Lcom/lge/camera/setting/ListPreference;
    invoke-virtual {v2}, Lcom/lge/camera/setting/ListPreference;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 799
    .local v0, "contentDescriptionTitle":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/lge/camera/setting/ListPreference;->getEntry()Ljava/lang/String;

    move-result-object v1

    .line 801
    .local v1, "contentDescriptionValue":Ljava/lang/String;
    const-string v4, "key_brightness"

    iget-object v5, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getCurrentMenuKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 802
    iget-object v4, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "key_brightness"

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 803
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sget v5, Lcom/lge/camera/properties/CameraConstants;->MAX_BRIGHTNESS_STEP:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    const/high16 v5, 0x40400000    # 3.0f

    div-float v3, v4, v5

    .line 805
    .local v3, "value":F
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isMTKChipset()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 806
    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    .line 808
    :cond_1
    const-string v4, "%.1f"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 811
    .end local v3    # "value":F
    :cond_2
    if-nez p1, :cond_4

    .line 812
    iget-object v4, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOpenChildLayout:Landroid/view/ViewGroup;

    if-eqz v4, :cond_3

    .line 813
    iget-object v4, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOpenChildLayout:Landroid/view/ViewGroup;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 822
    :cond_3
    :goto_0
    return-void

    .line 817
    :cond_4
    iget-object v4, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentListView:Landroid/widget/ListView;

    if-eqz v4, :cond_3

    .line 818
    iget-object v4, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentListView:Landroid/widget/ListView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private showSettingView()V
    .locals 4

    .prologue
    .line 399
    const-string v1, "CameraApp"

    const-string v2, "settingView : showSettingView - animation start"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mSettingView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mSettingViewRemoving:Z

    if-eqz v1, :cond_1

    .line 401
    :cond_0
    const-string v1, "CameraApp"

    const-string v2, "settingView : showSettingView - return"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    :goto_0
    return-void

    .line 405
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mSettingView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 406
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 407
    .local v0, "anim":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 408
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mSettingView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private updateParentScrollbar()V
    .locals 14

    .prologue
    .line 318
    iget-object v7, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentScrollbarThumb:Landroid/widget/ImageView;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentListView:Landroid/widget/ListView;

    if-nez v7, :cond_1

    .line 355
    :cond_0
    :goto_0
    return-void

    .line 322
    :cond_1
    const/4 v0, 0x0

    .line 323
    .local v0, "childHeight":I
    iget-object v7, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOpenChildLayout:Landroid/view/ViewGroup;

    if-eqz v7, :cond_2

    .line 324
    iget-object v7, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOpenChildLayout:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    .line 330
    const v7, 0x7f09015e

    invoke-virtual {p0, v7}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->getPixelFromDimens(I)I

    move-result v3

    .line 331
    .local v3, "parentItemHeight":I
    iget-object v7, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentListView:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getHeight()I

    move-result v7

    int-to-double v8, v7

    iget-object v7, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentListView:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getCount()I

    move-result v7

    mul-int/2addr v7, v3

    int-to-double v10, v7

    int-to-double v12, v0

    add-double/2addr v10, v12

    div-double v4, v8, v10

    .line 333
    .local v4, "rate":D
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    cmpg-double v7, v4, v8

    if-gez v7, :cond_3

    .line 334
    iget-object v7, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentScrollbarThumb:Landroid/widget/ImageView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 340
    iget-object v7, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentScrollbarThumb:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 341
    .local v2, "lpParentScrollbarThumb":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v7, -0x2

    iput v7, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 342
    iget-object v7, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentListView:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getHeight()I

    move-result v7

    int-to-double v8, v7

    mul-double/2addr v8, v4

    double-to-int v7, v8

    iput v7, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 344
    iget-object v7, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentListView:Landroid/widget/ListView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v6

    .line 345
    .local v6, "topMargin":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v7, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentListView:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v7

    if-ge v1, v7, :cond_5

    .line 346
    iget-object v7, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOpenChildPosition:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    if-ne v1, v7, :cond_4

    .line 347
    iget-object v7, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOpenChildLayout:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getHeight()I

    move-result v7

    sub-int/2addr v6, v7

    .line 345
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 326
    .end local v1    # "i":I
    .end local v2    # "lpParentScrollbarThumb":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v3    # "parentItemHeight":I
    .end local v4    # "rate":D
    .end local v6    # "topMargin":I
    :cond_2
    iget-object v7, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentScrollbarThumb:Landroid/widget/ImageView;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 336
    .restart local v3    # "parentItemHeight":I
    .restart local v4    # "rate":D
    :cond_3
    iget-object v7, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentScrollbarThumb:Landroid/widget/ImageView;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 349
    .restart local v1    # "i":I
    .restart local v2    # "lpParentScrollbarThumb":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v6    # "topMargin":I
    :cond_4
    sub-int/2addr v6, v3

    goto :goto_2

    .line 352
    :cond_5
    int-to-double v8, v6

    mul-double/2addr v8, v4

    double-to-int v7, v8

    neg-int v7, v7

    iput v7, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 354
    iget-object v7, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentScrollbarThumb:Landroid/widget/ImageView;

    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public checkAndCloseChildView()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 688
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOpenChildPosition:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    if-gt v1, v2, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOpenChildPosition:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-le v1, v2, :cond_1

    .line 690
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOpenChildLayout:Landroid/view/ViewGroup;

    invoke-direct {p0, v1, v0}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->closeChildView(Landroid/view/ViewGroup;Z)V

    .line 691
    const/4 v0, 0x1

    .line 693
    :cond_1
    return v0
.end method

.method public displaySettingView()V
    .locals 9

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 96
    const-string v2, "CameraApp"

    const-string v3, "settingView : displaySettingView-start"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-boolean v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mSettingViewRemoving:Z

    if-eqz v2, :cond_0

    .line 99
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "com.lge.camera.command.DisplaySettingMenu"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->removeScheduledCommand(Ljava/lang/String;)V

    .line 100
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "com.lge.camera.command.ShowSettingMenu"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->removeScheduledCommand(Ljava/lang/String;)V

    .line 101
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "com.lge.camera.command.ShowSettingMenu"

    const-wide/16 v4, 0x12c

    invoke-interface {v2, v3, v4, v5}, Lcom/lge/camera/ControllerFunction;->doCommandDelayed(Ljava/lang/String;J)V

    .line 102
    const-string v2, "CameraApp"

    const-string v3, "settingView : displaySettingView - return, send command"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    :goto_0
    return-void

    .line 105
    :cond_0
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-wide/16 v4, 0x1388

    invoke-interface {v2, v7, v4, v5, v7}, Lcom/lge/camera/ControllerFunction;->showBubblePopupVisibility(IJZ)V

    .line 106
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v2

    iput v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mDegree:I

    .line 108
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v3, 0x5

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->setSubMenuMode(I)V

    .line 110
    new-instance v2, Lcom/lge/camera/setting/SettingExpandChildMenuAdapter;

    iget-object v3, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->getCurrentSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/lge/camera/setting/SettingExpandChildMenuAdapter;-><init>(Landroid/content/Context;Lcom/lge/camera/setting/SettingMenu;)V

    iput-object v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mChildAdapter:Lcom/lge/camera/setting/SettingExpandChildMenuAdapter;

    .line 113
    new-instance v2, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;

    iget-object v3, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f030043

    invoke-virtual {p0}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->getCurrentSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;-><init>(Landroid/content/Context;ILcom/lge/camera/setting/SettingMenu;Lcom/lge/camera/ControllerFunction;)V

    iput-object v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentAdapter:Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;

    .line 119
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mSettingView:Landroid/view/View;

    if-nez v2, :cond_1

    .line 120
    const-string v2, "CameraApp"

    const-string v3, "inflate Setting Layout...!!"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f030045

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->inflateView(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mSettingView:Landroid/view/View;

    .line 122
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f0d00c5

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 123
    .local v1, "vg":Landroid/view/ViewGroup;
    if-eqz v1, :cond_1

    .line 124
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mSettingView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 128
    .end local v1    # "vg":Landroid/view/ViewGroup;
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mSettingView:Landroid/view/View;

    iget v3, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mDegree:I

    invoke-virtual {p0, v2, v3}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->setLayoutDegree(Landroid/view/View;I)V

    .line 129
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mSettingView:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 131
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getBackupCurrentMenuIndex()I

    move-result v2

    if-eq v2, v8, :cond_2

    .line 132
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v3, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getBackupCurrentMenuIndex()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->setCurrentSettingMenu(I)Z

    .line 133
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v8}, Lcom/lge/camera/ControllerFunction;->setBackupCurrentMenuIndex(I)V

    .line 136
    :cond_2
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCurrentSettingMenuIndex()I

    move-result v0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getSettingMenuCount()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 137
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v0}, Lcom/lge/camera/ControllerFunction;->getSettingMenuItem(I)Lcom/lge/camera/setting/SettingMenuItem;

    move-result-object v2

    iget-boolean v2, v2, Lcom/lge/camera/setting/SettingMenuItem;->enable:Z

    if-nez v2, :cond_3

    .line 136
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 140
    :cond_3
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_5

    .line 141
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v7}, Lcom/lge/camera/ControllerFunction;->setCurrentSettingMenu(I)Z

    .line 149
    :cond_4
    :goto_2
    invoke-direct {p0}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->makeSettingItemOrder()V

    .line 151
    invoke-direct {p0}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->addParentMenuItem()V

    .line 153
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f0d01f8

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentListView:Landroid/widget/ListView;

    .line 154
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentListView:Landroid/widget/ListView;

    invoke-virtual {v2, v7}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 155
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentListView:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 156
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentAdapter:Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 157
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentListView:Landroid/widget/ListView;

    invoke-virtual {v2, v7}, Landroid/widget/ListView;->setVisibility(I)V

    .line 158
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 159
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentListView:Landroid/widget/ListView;

    const v3, 0x7f02005d

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setSelector(I)V

    .line 160
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentListViewTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 162
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f0d01f9

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentScrollbarThumb:Landroid/widget/ImageView;

    .line 165
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mSettingView:Landroid/view/View;

    const v3, 0x7f0d006d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOnBackCoverTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 167
    iget v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mDegree:I

    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->rotateExpandList(I)V

    .line 168
    invoke-direct {p0}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->showSettingView()V

    .line 170
    const-string v2, "CameraApp"

    const-string v3, "displaySettingView-end"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 143
    :cond_5
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v0}, Lcom/lge/camera/ControllerFunction;->setCurrentSettingMenu(I)Z

    goto :goto_2
.end method

.method public hideAnimation()V
    .locals 4

    .prologue
    const v3, 0x7f0d01f5

    .line 1049
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1067
    :goto_0
    return-void

    .line 1052
    :cond_0
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/components/RotateLayout;

    .line 1054
    .local v1, "rl":Lcom/lge/camera/components/RotateLayout;
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1055
    .local v0, "anim":Landroid/view/animation/Animation;
    new-instance v2, Lcom/lge/camera/controller/SettingRotatableExpandableController$13;

    invoke-direct {v2, p0}, Lcom/lge/camera/controller/SettingRotatableExpandableController$13;-><init>(Lcom/lge/camera/controller/SettingRotatableExpandableController;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1065
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1066
    invoke-virtual {v1, v0}, Lcom/lge/camera/components/RotateLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public hideParentScrollbar()V
    .locals 4

    .prologue
    .line 358
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mTouchReleaseRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 360
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentScrollbarThumb:Landroid/widget/ImageView;

    if-nez v1, :cond_1

    .line 387
    :cond_0
    :goto_0
    return-void

    .line 363
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentScrollbarThumb:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentTouchActionState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 368
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentScrollbarThumb:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getAlpha()F

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 369
    .local v0, "anim":Landroid/view/animation/Animation;
    new-instance v1, Lcom/lge/camera/controller/SettingRotatableExpandableController$3;

    invoke-direct {v1, p0}, Lcom/lge/camera/controller/SettingRotatableExpandableController$3;-><init>(Lcom/lge/camera/controller/SettingRotatableExpandableController;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 385
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 386
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentScrollbarThumb:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public initController()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 86
    const v0, 0x7f090163

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->getPixelFromDimens(I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->CONFIG_ITEM_HEIGHT:I

    .line 87
    const v0, 0x7f090164

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->getPixelFromDimens(I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->DIVIDER:I

    .line 88
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v0

    iput v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mDegree:I

    .line 89
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOpenChildPosition:Landroid/graphics/Point;

    .line 91
    invoke-direct {p0}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->initSettingOrder()V

    .line 92
    invoke-super {p0}, Lcom/lge/camera/controller/SettingController;->initController()V

    .line 93
    return-void
.end method

.method public isNullSettingView()Z
    .locals 1

    .prologue
    .line 1089
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mSettingView:Landroid/view/View;

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
    .line 525
    iget-boolean v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mSettingViewRemoving:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 1093
    invoke-virtual {p0}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->isNullSettingView()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mSettingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1263
    const-string v0, "CameraApp"

    const-string v1, "onDestroy-start"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1265
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v0

    if-nez v0, :cond_4

    .line 1266
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mCameraMainSettingMenu:Lcom/lge/camera/setting/CameraMainSettingMenu;

    invoke-virtual {v0}, Lcom/lge/camera/setting/CameraMainSettingMenu;->close()V

    .line 1267
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mCameraFrontSettingMenu:Lcom/lge/camera/setting/CameraFrontSettingMenu;

    invoke-virtual {v0}, Lcom/lge/camera/setting/CameraFrontSettingMenu;->close()V

    .line 1268
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mCameraMainSetting:Lcom/lge/camera/setting/CameraSetting;

    invoke-virtual {v0}, Lcom/lge/camera/setting/CameraSetting;->close()V

    .line 1269
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mCameraFrontSetting:Lcom/lge/camera/setting/CameraSetting;

    invoke-virtual {v0}, Lcom/lge/camera/setting/CameraSetting;->close()V

    .line 1276
    :goto_0
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mSetting:Lcom/lge/camera/setting/Setting;

    invoke-virtual {v0}, Lcom/lge/camera/setting/Setting;->close()V

    .line 1278
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mChildListView:Lcom/lge/camera/components/InnerListView;

    if-eqz v0, :cond_1

    .line 1279
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wow not null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mChildAdapter:Lcom/lge/camera/setting/SettingExpandChildMenuAdapter;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mChildListView:Lcom/lge/camera/components/InnerListView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1280
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mChildListView:Lcom/lge/camera/components/InnerListView;

    invoke-virtual {v0, v3}, Lcom/lge/camera/components/InnerListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1281
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mChildListView:Lcom/lge/camera/components/InnerListView;

    invoke-virtual {v0, v3}, Lcom/lge/camera/components/InnerListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1282
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mChildListView:Lcom/lge/camera/components/InnerListView;

    invoke-virtual {v0}, Lcom/lge/camera/components/InnerListView;->removeAllViewsInLayout()V

    .line 1283
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mChildListView:Lcom/lge/camera/components/InnerListView;

    invoke-virtual {v0}, Lcom/lge/camera/components/InnerListView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1284
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mChildListView:Lcom/lge/camera/components/InnerListView;

    invoke-virtual {v0}, Lcom/lge/camera/components/InnerListView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1285
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mChildListView:Lcom/lge/camera/components/InnerListView;

    invoke-virtual {v0, v3}, Lcom/lge/camera/components/InnerListView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1287
    :cond_0
    iput-object v3, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mChildListView:Lcom/lge/camera/components/InnerListView;

    .line 1290
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentListView:Landroid/widget/ListView;

    if-eqz v0, :cond_3

    .line 1292
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1293
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1294
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->removeAllViewsInLayout()V

    .line 1295
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1296
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1297
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1299
    :cond_2
    iput-object v3, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentListView:Landroid/widget/ListView;

    .line 1301
    :cond_3
    iput-object v3, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentScrollbarThumb:Landroid/widget/ImageView;

    .line 1302
    invoke-super {p0}, Lcom/lge/camera/controller/SettingController;->onDestroy()V

    .line 1303
    const-string v0, "CameraApp"

    const-string v1, "onDestroy-end"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1304
    return-void

    .line 1271
    :cond_4
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mVideoMainSettingMenu:Lcom/lge/camera/setting/VideoMainSettingMenu;

    invoke-virtual {v0}, Lcom/lge/camera/setting/VideoMainSettingMenu;->close()V

    .line 1272
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mVideoFrontSettingMenu:Lcom/lge/camera/setting/VideoFrontSettingMenu;

    invoke-virtual {v0}, Lcom/lge/camera/setting/VideoFrontSettingMenu;->close()V

    .line 1273
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mCamcorderMainSetting:Lcom/lge/camera/setting/VideoSetting;

    invoke-virtual {v0}, Lcom/lge/camera/setting/VideoSetting;->close()V

    .line 1274
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mCamcorderFrontSetting:Lcom/lge/camera/setting/VideoSetting;

    invoke-virtual {v0}, Lcom/lge/camera/setting/VideoSetting;->close()V

    goto/16 :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 1243
    const-string v0, "CameraApp"

    const-string v1, "onPause-start"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1244
    iget-boolean v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mSettingInit:Z

    if-eqz v0, :cond_0

    .line 1245
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v0

    if-nez v0, :cond_2

    .line 1246
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mCameraMainSetting:Lcom/lge/camera/setting/CameraSetting;

    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/camera/setting/CameraSetting;->saveSetting(Landroid/content/Context;)V

    .line 1247
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mCameraFrontSetting:Lcom/lge/camera/setting/CameraSetting;

    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/camera/setting/CameraSetting;->saveSetting(Landroid/content/Context;)V

    .line 1253
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1254
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->setSubMenuMode(I)V

    .line 1255
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.RemoveSettingMenu"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 1257
    :cond_1
    invoke-super {p0}, Lcom/lge/camera/controller/SettingController;->onPause()V

    .line 1258
    const-string v0, "CameraApp"

    const-string v1, "onPause-end"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1259
    return-void

    .line 1249
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mCamcorderMainSetting:Lcom/lge/camera/setting/VideoSetting;

    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/camera/setting/VideoSetting;->saveSetting(Landroid/content/Context;)V

    .line 1250
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mCamcorderFrontSetting:Lcom/lge/camera/setting/VideoSetting;

    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/camera/setting/VideoSetting;->saveSetting(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public removeChildSettingView(Z)V
    .locals 0
    .param p1, "isShowAnim"    # Z

    .prologue
    .line 1452
    return-void
.end method

.method public removeSettingView()V
    .locals 6

    .prologue
    .line 414
    const-string v4, "CameraApp"

    const-string v5, "settingView : removeSettingView - animation start"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    iget-object v4, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v5, 0x7f0d01f3

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 417
    .local v2, "rl":Landroid/widget/RelativeLayout;
    if-eqz v2, :cond_0

    iget-boolean v4, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mSettingViewRemoving:Z

    if-eqz v4, :cond_1

    .line 418
    :cond_0
    const-string v4, "CameraApp"

    const-string v5, "settingView : removeSettingView - return"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    :goto_0
    return-void

    .line 422
    :cond_1
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mSettingViewRemoving:Z

    .line 423
    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->clearAnimation()V

    .line 424
    iget-object v4, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 425
    invoke-virtual {p0}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->removeSettingViewAll()V

    .line 461
    :goto_1
    invoke-direct {p0}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->resetChildShowingValues()V

    goto :goto_0

    .line 427
    :cond_2
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    invoke-direct {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 428
    .local v0, "anim":Landroid/view/animation/Animation;
    new-instance v4, Lcom/lge/camera/controller/SettingRotatableExpandableController$5;

    invoke-direct {v4, p0}, Lcom/lge/camera/controller/SettingRotatableExpandableController$5;-><init>(Lcom/lge/camera/controller/SettingRotatableExpandableController;)V

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 448
    const-wide/16 v4, 0x12c

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 449
    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 451
    move-object v1, v2

    .line 452
    .local v1, "layout":Landroid/widget/RelativeLayout;
    new-instance v3, Lcom/lge/camera/controller/SettingRotatableExpandableController$6;

    invoke-direct {v3, p0, v1}, Lcom/lge/camera/controller/SettingRotatableExpandableController$6;-><init>(Lcom/lge/camera/controller/SettingRotatableExpandableController;Landroid/widget/RelativeLayout;)V

    .line 458
    .local v3, "runnerForClearAnimation":Ljava/lang/Runnable;
    invoke-virtual {v0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method

.method public removeSettingViewAll()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 465
    const-string v1, "CameraApp"

    const-string v2, "settingView : removeSettingViewAll -start"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mSettingView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mSettingView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-ne v1, v6, :cond_1

    .line 468
    :cond_0
    const-string v1, "CameraApp"

    const-string v2, "settingView : removeSettingView -return, mSettingView is null"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    iput-boolean v4, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mSettingViewRemoving:Z

    .line 522
    :goto_0
    return-void

    .line 473
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.Rotate"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 474
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v1

    if-nez v1, :cond_2

    .line 475
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.ReleaseTouchFocus"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 477
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mSettingView:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 479
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentListView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 480
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentListView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 481
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentListView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 482
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->removeAllViewsInLayout()V

    .line 483
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 484
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 485
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentListView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 487
    :cond_3
    iput-object v3, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentListView:Landroid/widget/ListView;

    .line 489
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentAdapter:Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;

    if-eqz v1, :cond_4

    .line 490
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentAdapter:Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;

    invoke-virtual {v1}, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;->close()V

    .line 491
    iput-object v3, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentAdapter:Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;

    .line 494
    :cond_4
    iput-object v3, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mChildListView:Lcom/lge/camera/components/InnerListView;

    .line 495
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mChildAdapter:Lcom/lge/camera/setting/SettingExpandChildMenuAdapter;

    if-eqz v1, :cond_5

    .line 496
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mChildAdapter:Lcom/lge/camera/setting/SettingExpandChildMenuAdapter;

    invoke-virtual {v1}, Lcom/lge/camera/setting/SettingExpandChildMenuAdapter;->close()V

    .line 497
    iput-object v3, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mChildAdapter:Lcom/lge/camera/setting/SettingExpandChildMenuAdapter;

    .line 500
    :cond_5
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mSettingView:Landroid/view/View;

    const v2, 0x7f0d006d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 502
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0d00c5

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 503
    .local v0, "vg":Landroid/view/ViewGroup;
    if-eqz v0, :cond_6

    .line 504
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mSettingView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 506
    :cond_6
    iput-object v3, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mSettingView:Landroid/view/View;

    .line 508
    invoke-virtual {p0}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->initSettingMenu()V

    .line 509
    const/4 v1, -0x1

    iput v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mDegree:I

    .line 510
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 511
    iput-boolean v4, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mSettingViewRemoving:Z

    .line 513
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_7

    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v1

    const/16 v2, 0x19

    if-eq v1, v2, :cond_7

    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v1

    const/16 v2, 0x12

    if-eq v1, v2, :cond_7

    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v1

    const/16 v2, 0xf

    if-eq v1, v2, :cond_7

    .line 517
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v4}, Lcom/lge/camera/ControllerFunction;->setSubMenuMode(I)V

    .line 520
    :cond_7
    invoke-direct {p0}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->resetChildShowingValues()V

    .line 521
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v5, v5}, Lcom/lge/camera/ControllerFunction;->showControllerForHideSettingMenu(ZZ)V

    goto/16 :goto_0
.end method

.method public rotateExpandList(I)V
    .locals 3
    .param p1, "degree"    # I

    .prologue
    const v2, 0x7f0d01f5

    .line 1081
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1086
    :goto_0
    return-void

    .line 1084
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateLayout;

    .line 1085
    .local v0, "rl":Lcom/lge/camera/components/RotateLayout;
    invoke-virtual {v0, p1}, Lcom/lge/camera/components/RotateLayout;->rotateLayout(I)V

    goto :goto_0
.end method

.method protected setLayoutDegree(Landroid/view/View;I)V
    .locals 5
    .param p1, "settingMenuLayout"    # Landroid/view/View;
    .param p2, "degree"    # I

    .prologue
    .line 1017
    iget-object v4, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v1, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1018
    .local v1, "lcdWidth":I
    iget-object v4, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v0, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1020
    .local v0, "lcdHeight":I
    const v4, 0x7f0d01f4

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 1022
    .local v3, "settingSubLayout":Landroid/widget/RelativeLayout;
    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1023
    .local v2, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 1024
    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 1025
    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1026
    return-void
.end method

.method public showAnimation()V
    .locals 4

    .prologue
    .line 1070
    iget-boolean v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mSettingViewRemoving:Z

    if-eqz v2, :cond_0

    .line 1078
    :goto_0
    return-void

    .line 1073
    :cond_0
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f0d01f5

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/components/RotateLayout;

    .line 1074
    .local v1, "rl":Lcom/lge/camera/components/RotateLayout;
    invoke-virtual {v1}, Lcom/lge/camera/components/RotateLayout;->clearAnimation()V

    .line 1075
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1076
    .local v0, "anim":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1077
    invoke-virtual {v1, v0}, Lcom/lge/camera/components/RotateLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public declared-synchronized showChildSetting(IILjava/lang/String;)V
    .locals 5
    .param p1, "column"    # I
    .param p2, "row"    # I
    .param p3, "key"    # Ljava/lang/String;

    .prologue
    const/4 v4, -0x1

    .line 569
    monitor-enter p0

    :try_start_0
    const-string v2, "CameraApp"

    const-string v3, "showChildSetting start"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    iget v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mStateDisplayChild:I

    if-lez v2, :cond_0

    .line 571
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exit because state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mStateDisplayChild:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 628
    :goto_0
    monitor-exit p0

    return-void

    .line 574
    :cond_0
    const/16 v2, 0xa

    :try_start_1
    iput v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mStateDisplayChild:I

    .line 575
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->doNoChildMenu(IILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 576
    const/4 v2, 0x0

    iput v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mStateDisplayChild:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 569
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 579
    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentListView:Landroid/widget/ListView;

    invoke-direct {p0, v2, p2}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->calcWantedRow(Landroid/widget/ListView;I)I

    move-result v1

    .line 580
    .local v1, "wantedRow":I
    if-ne v1, v4, :cond_2

    .line 581
    const/4 v2, 0x0

    iput v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mStateDisplayChild:I

    goto :goto_0

    .line 585
    :cond_2
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentListView:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mTempParentLayout:Landroid/view/ViewGroup;

    .line 586
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mTempParentLayout:Landroid/view/ViewGroup;

    const v3, 0x7f0d01ed

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mTempChildLayout:Landroid/view/ViewGroup;

    .line 588
    iput p1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mTempColumn:I

    .line 589
    iput p2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mTempRow:I

    .line 590
    iput-object p3, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mTempKey:Ljava/lang/String;

    .line 593
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOpenChildPosition:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    if-gt v2, v4, :cond_3

    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOpenChildPosition:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    if-gt v2, v4, :cond_3

    .line 596
    invoke-virtual {p0}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->getCurrentSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/lge/camera/setting/SettingMenu;->getMenuIndex(Ljava/lang/String;)I

    move-result v0

    .line 597
    .local v0, "childPosition":I
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mChildAdapter:Lcom/lge/camera/setting/SettingExpandChildMenuAdapter;

    invoke-virtual {v2, p3}, Lcom/lge/camera/setting/SettingExpandChildMenuAdapter;->setCurrentParentKey(Ljava/lang/String;)V

    .line 598
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->setChildViewPattern(IZ)V

    .line 600
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v3, Lcom/lge/camera/controller/SettingRotatableExpandableController$7;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/lge/camera/controller/SettingRotatableExpandableController$7;-><init>(Lcom/lge/camera/controller/SettingRotatableExpandableController;IILjava/lang/String;)V

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->postOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 609
    .end local v0    # "childPosition":I
    :cond_3
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOpenChildPosition:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    if-eq v2, p2, :cond_4

    .line 613
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOpenChildLayout:Landroid/view/ViewGroup;

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->closeChildView(Landroid/view/ViewGroup;Z)V

    goto :goto_0

    .line 615
    :cond_4
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOpenChildPosition:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    if-ne v2, p1, :cond_5

    .line 618
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mTempChildLayout:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->closeChildView(Landroid/view/ViewGroup;Z)V

    goto :goto_0

    .line 624
    :cond_5
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mTempChildLayout:Landroid/view/ViewGroup;

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->closeChildView(Landroid/view/ViewGroup;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public startRotation(I)V
    .locals 4
    .param p1, "degree"    # I

    .prologue
    const/4 v3, 0x0

    .line 1029
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDegree = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mDegree:I

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

    .line 1031
    invoke-virtual {p0}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->checkMediator()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->isNullSettingView()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mSettingViewRemoving:Z

    if-nez v0, :cond_1

    .line 1036
    iget v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mDegree:I

    if-ne v0, p1, :cond_2

    .line 1046
    :cond_1
    :goto_0
    return-void

    .line 1039
    :cond_2
    iput p1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mDegree:I

    .line 1040
    invoke-virtual {p0}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->hideAnimation()V

    .line 1041
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOpenChildLayout:Landroid/view/ViewGroup;

    invoke-direct {p0, v0, v3, v3}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->closeChildView(Landroid/view/ViewGroup;ZZ)V

    .line 1042
    invoke-direct {p0}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->addParentMenuItem()V

    .line 1043
    invoke-virtual {p0, p1}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->rotateExpandList(I)V

    .line 1044
    invoke-virtual {p0}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->showAnimation()V

    goto :goto_0
.end method

.method public updateSetting()V
    .locals 1

    .prologue
    .line 1237
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentAdapter:Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;

    invoke-virtual {v0}, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;->update()V

    .line 1238
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mChildAdapter:Lcom/lge/camera/setting/SettingExpandChildMenuAdapter;

    invoke-virtual {v0}, Lcom/lge/camera/setting/SettingExpandChildMenuAdapter;->update()V

    .line 1239
    return-void
.end method
