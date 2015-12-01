.class public Lcom/lge/camera/controller/QuickFunctionDragController;
.super Lcom/lge/camera/controller/Controller;
.source "QuickFunctionDragController.java"


# static fields
.field private static final CLEAR_X:I = -0xc8

.field private static final CLEAR_Y:I = -0xc8

.field public static final COL_MIN_NUM_LANDSCAPE:I = 0x3

.field public static final COL_MIN_NUM_PORTRAIT:I

.field public static final ROW_NUM_LANDSCAPE:I

.field public static final ROW_NUM_PORTRAIT:I

.field private static final VIBRATE_DURATION:I = 0x23


# instance fields
.field private QUICKFUNCTION_WIDTH:I

.field private SELECT_MENU_ITEM_HEIGHT:I

.field private SELECT_MENU_VIEW_HEIGHT:I

.field private SELECT_MENU_VIEW_WIDTH:I

.field private final mCoordinatesTemp:[I

.field private mDegree:I

.field private mDragLayout:Lcom/lge/camera/components/DragLayout;

.field private mDragView:Lcom/lge/camera/components/RotateDragView;

.field private mDragViewGroup:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/camera/components/RotateImageButton;",
            ">;"
        }
    .end annotation
.end field

.field private mOnGridViewTouchListener:Landroid/view/View$OnTouchListener;

.field public mOnTouchDragListener:Landroid/view/View$OnTouchListener;

.field private mOriginator:Landroid/view/View;

.field private mSelectIndex:I

.field private mSelectMenuAdapter:Lcom/lge/camera/setting/SelectMenuGridAdapter;

.field private mSelectMenuGridView:Landroid/widget/GridView;

.field mSelectMenuList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/camera/setting/SettingMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectMenuListViewItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mSelectMenuView:Landroid/view/View;

.field private mSrcBitmap:Landroid/graphics/Bitmap;

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    invoke-static {}, Lcom/lge/camera/controller/QuickFunctionDragController;->getRowNumLandscape()I

    move-result v0

    sput v0, Lcom/lge/camera/controller/QuickFunctionDragController;->ROW_NUM_LANDSCAPE:I

    .line 59
    invoke-static {}, Lcom/lge/camera/controller/QuickFunctionDragController;->getRowNumPortrait()I

    move-result v0

    sput v0, Lcom/lge/camera/controller/QuickFunctionDragController;->ROW_NUM_PORTRAIT:I

    .line 61
    invoke-static {}, Lcom/lge/camera/controller/QuickFunctionDragController;->getColMinNumPortrait()I

    move-result v0

    sput v0, Lcom/lge/camera/controller/QuickFunctionDragController;->COL_MIN_NUM_PORTRAIT:I

    return-void
.end method

.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 1
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/Controller;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mDragViewGroup:Ljava/util/ArrayList;

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mDegree:I

    .line 71
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mCoordinatesTemp:[I

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSelectMenuList:Ljava/util/ArrayList;

    .line 276
    new-instance v0, Lcom/lge/camera/controller/QuickFunctionDragController$2;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/QuickFunctionDragController$2;-><init>(Lcom/lge/camera/controller/QuickFunctionDragController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSelectMenuListViewItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 485
    new-instance v0, Lcom/lge/camera/controller/QuickFunctionDragController$3;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/QuickFunctionDragController$3;-><init>(Lcom/lge/camera/controller/QuickFunctionDragController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mOnGridViewTouchListener:Landroid/view/View$OnTouchListener;

    .line 687
    new-instance v0, Lcom/lge/camera/controller/QuickFunctionDragController$4;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/QuickFunctionDragController$4;-><init>(Lcom/lge/camera/controller/QuickFunctionDragController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mOnTouchDragListener:Landroid/view/View$OnTouchListener;

    .line 104
    return-void
.end method

.method static synthetic access$000(Lcom/lge/camera/controller/QuickFunctionDragController;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/controller/QuickFunctionDragController;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/lge/camera/controller/QuickFunctionDragController;->removeSelectMenuView()V

    return-void
.end method

.method static synthetic access$100(Lcom/lge/camera/controller/QuickFunctionDragController;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/QuickFunctionDragController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/QuickFunctionDragController;->checkMenuDuplicated(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/lge/camera/controller/QuickFunctionDragController;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/controller/QuickFunctionDragController;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/lge/camera/controller/QuickFunctionDragController;->endDrag()V

    return-void
.end method

.method static synthetic access$200(Lcom/lge/camera/controller/QuickFunctionDragController;)Lcom/lge/camera/setting/SelectMenuGridAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/QuickFunctionDragController;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSelectMenuAdapter:Lcom/lge/camera/setting/SelectMenuGridAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lge/camera/controller/QuickFunctionDragController;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/QuickFunctionDragController;

    .prologue
    .line 51
    iget v0, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSelectIndex:I

    return v0
.end method

.method static synthetic access$400(Lcom/lge/camera/controller/QuickFunctionDragController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/QuickFunctionDragController;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mDragViewGroup:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lge/camera/controller/QuickFunctionDragController;)Landroid/widget/GridView;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/QuickFunctionDragController;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSelectMenuGridView:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lge/camera/controller/QuickFunctionDragController;)Lcom/lge/camera/components/DragLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/QuickFunctionDragController;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mDragLayout:Lcom/lge/camera/components/DragLayout;

    return-object v0
.end method

.method static synthetic access$700(Lcom/lge/camera/controller/QuickFunctionDragController;)Lcom/lge/camera/components/RotateDragView;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/QuickFunctionDragController;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mDragView:Lcom/lge/camera/components/RotateDragView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/lge/camera/controller/QuickFunctionDragController;II)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/QuickFunctionDragController;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/controller/QuickFunctionDragController;->isOverlapTrashIcon(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/lge/camera/controller/QuickFunctionDragController;FF)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/controller/QuickFunctionDragController;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/controller/QuickFunctionDragController;->drop(FF)V

    return-void
.end method

.method private checkMenuDuplicated(Ljava/lang/String;)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 263
    iget-boolean v2, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mInit:Z

    if-nez v2, :cond_0

    move v2, v3

    .line 273
    :goto_0
    return v2

    .line 266
    :cond_0
    const/4 v1, 0x0

    .line 267
    .local v1, "pref":Lcom/lge/camera/setting/ListPreference;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mDragViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 268
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mDragViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v2}, Lcom/lge/camera/components/RotateImageButton;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "pref":Lcom/lge/camera/setting/ListPreference;
    check-cast v1, Lcom/lge/camera/setting/ListPreference;

    .line 269
    .restart local v1    # "pref":Lcom/lge/camera/setting/ListPreference;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 270
    const/4 v2, 0x1

    goto :goto_0

    .line 267
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v2, v3

    .line 273
    goto :goto_0
.end method

.method private clearSelectedDragViewGroup()V
    .locals 3

    .prologue
    .line 465
    iget-boolean v2, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mInit:Z

    if-nez v2, :cond_1

    .line 471
    :cond_0
    return-void

    .line 468
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mDragViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/components/RotateImageButton;

    .line 469
    .local v1, "ib":Lcom/lge/camera/components/RotateImageButton;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lge/camera/components/RotateImageButton;->setSelected(Z)V

    goto :goto_0
.end method

.method private displaySelectMenuView()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 211
    iget-boolean v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mInit:Z

    if-nez v1, :cond_0

    .line 233
    :goto_0
    return-void

    .line 214
    :cond_0
    invoke-direct {p0}, Lcom/lge/camera/controller/QuickFunctionDragController;->makeSelectMenuList()V

    .line 215
    new-instance v1, Lcom/lge/camera/setting/SelectMenuGridAdapter;

    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSelectMenuList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mDragViewGroup:Ljava/util/ArrayList;

    const/4 v5, 0x5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/lge/camera/setting/SelectMenuGridAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    iput-object v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSelectMenuAdapter:Lcom/lge/camera/setting/SelectMenuGridAdapter;

    .line 217
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSelectMenuAdapter:Lcom/lge/camera/setting/SelectMenuGridAdapter;

    sget v2, Lcom/lge/camera/controller/QuickFunctionDragController;->ROW_NUM_LANDSCAPE:I

    invoke-virtual {v1, v2}, Lcom/lge/camera/setting/SelectMenuGridAdapter;->setRowNumLandscape(I)V

    .line 218
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSelectMenuView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 219
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f03003c

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->inflateView(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSelectMenuView:Landroid/view/View;

    .line 220
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mDragLayout:Lcom/lge/camera/components/DragLayout;

    .line 221
    .local v0, "vg":Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSelectMenuView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 223
    .end local v0    # "vg":Landroid/view/ViewGroup;
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSelectMenuView:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 224
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0d01cd

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSelectMenuGridView:Landroid/widget/GridView;

    .line 225
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSelectMenuGridView:Landroid/widget/GridView;

    invoke-virtual {v1, v6}, Landroid/widget/GridView;->setFocusable(Z)V

    .line 226
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSelectMenuGridView:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSelectMenuAdapter:Lcom/lge/camera/setting/SelectMenuGridAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 227
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSelectMenuGridView:Landroid/widget/GridView;

    invoke-virtual {v1, v6}, Landroid/widget/GridView;->setSelected(Z)V

    .line 228
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSelectMenuGridView:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mOnGridViewTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 229
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSelectMenuGridView:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSelectMenuListViewItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 231
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.Rotate"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 232
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSelectMenuGridView:Landroid/widget/GridView;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/lge/camera/controller/QuickFunctionDragController;->qflDragAnimation(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method private drop(FF)V
    .locals 12
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x1

    const v8, 0x7f0d01ab

    .line 631
    iget-boolean v6, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mInit:Z

    if-nez v6, :cond_0

    .line 671
    :goto_0
    return-void

    .line 634
    :cond_0
    float-to-int v6, p1

    float-to-int v7, p2

    invoke-direct {p0, v6, v7}, Lcom/lge/camera/controller/QuickFunctionDragController;->findDropTarget(II)Lcom/lge/camera/components/RotateImageButton;

    move-result-object v3

    .line 635
    .local v3, "dropTraget":Landroid/view/View;
    iget-object v6, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mOriginator:Landroid/view/View;

    if-nez v6, :cond_1

    .line 636
    const-string v6, "CameraApp"

    const-string v7, "drop-mOriginator is null."

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 639
    :cond_1
    iget-object v6, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mOriginator:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lge/camera/setting/ListPreference;

    .line 641
    .local v4, "srcPref":Lcom/lge/camera/setting/ListPreference;
    if-eqz v3, :cond_5

    .line 642
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v6

    if-ne v6, v8, :cond_3

    .line 643
    iget-object v6, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6, v8}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/view/View;->setPressed(Z)V

    .line 644
    iget-object v6, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mOriginator:Landroid/view/View;

    invoke-virtual {v6, v11}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 645
    iget-object v6, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mOriginator:Landroid/view/View;

    invoke-virtual {v6, v9}, Landroid/view/View;->setSelected(Z)V

    .line 646
    iget-object v6, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSelectMenuAdapter:Lcom/lge/camera/setting/SelectMenuGridAdapter;

    if-eqz v6, :cond_2

    .line 647
    iget-object v6, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSelectMenuAdapter:Lcom/lge/camera/setting/SelectMenuGridAdapter;

    invoke-virtual {v6}, Lcom/lge/camera/setting/SelectMenuGridAdapter;->notifyDataSetChanged()V

    .line 669
    :cond_2
    :goto_1
    iget-object v6, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6, v8}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/lge/camera/components/RotateImageButton;

    .line 670
    .local v5, "trashCanView":Lcom/lge/camera/components/RotateImageButton;
    const v6, 0x7f0202d3

    invoke-virtual {v5, v6}, Lcom/lge/camera/components/RotateImageButton;->setImageResource(I)V

    goto :goto_0

    .line 651
    .end local v5    # "trashCanView":Lcom/lge/camera/components/RotateImageButton;
    :cond_3
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/camera/setting/ListPreference;

    .line 653
    .local v2, "destPref":Lcom/lge/camera/setting/ListPreference;
    if-eqz v2, :cond_4

    move-object v6, v3

    .line 654
    check-cast v6, Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 655
    .local v0, "destBd":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 656
    .local v1, "destBitmap":Landroid/graphics/Bitmap;
    iget-object v6, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mOriginator:Landroid/view/View;

    invoke-direct {p0, v6, v2, v1}, Lcom/lge/camera/controller/QuickFunctionDragController;->setDragDropIcon(Landroid/view/View;Lcom/lge/camera/setting/ListPreference;Landroid/graphics/Bitmap;)V

    .line 660
    .end local v0    # "destBd":Landroid/graphics/drawable/BitmapDrawable;
    .end local v1    # "destBitmap":Landroid/graphics/Bitmap;
    :goto_2
    iget-object v6, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSrcBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v3, v4, v6}, Lcom/lge/camera/controller/QuickFunctionDragController;->setDragDropIcon(Landroid/view/View;Lcom/lge/camera/setting/ListPreference;Landroid/graphics/Bitmap;)V

    .line 661
    invoke-direct {p0, v3}, Lcom/lge/camera/controller/QuickFunctionDragController;->getDragViewGroupIndex(Landroid/view/View;)I

    move-result v6

    iput v6, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSelectIndex:I

    .line 662
    iget-object v6, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mDragViewGroup:Ljava/util/ArrayList;

    iget v7, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSelectIndex:I

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v6, v9}, Lcom/lge/camera/components/RotateImageButton;->setSelected(Z)V

    goto :goto_1

    .line 658
    :cond_4
    iget-object v6, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mOriginator:Landroid/view/View;

    invoke-virtual {v6, v11}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_2

    .line 665
    .end local v2    # "destPref":Lcom/lge/camera/setting/ListPreference;
    :cond_5
    iget-object v6, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6, v8}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/view/View;->setPressed(Z)V

    .line 666
    iget-object v6, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mOriginator:Landroid/view/View;

    iget-object v7, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSrcBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v6, v4, v7}, Lcom/lge/camera/controller/QuickFunctionDragController;->setDragDropIcon(Landroid/view/View;Lcom/lge/camera/setting/ListPreference;Landroid/graphics/Bitmap;)V

    .line 667
    iget-object v6, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mOriginator:Landroid/view/View;

    invoke-virtual {v6, v9}, Landroid/view/View;->setSelected(Z)V

    goto :goto_1
.end method

.method private endDrag()V
    .locals 2

    .prologue
    .line 674
    iget-boolean v0, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mInit:Z

    if-nez v0, :cond_1

    .line 685
    :cond_0
    :goto_0
    return-void

    .line 677
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mDragLayout:Lcom/lge/camera/components/DragLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mDragLayout:Lcom/lge/camera/components/DragLayout;

    invoke-virtual {v0}, Lcom/lge/camera/components/DragLayout;->getDrag()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 678
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mDragLayout:Lcom/lge/camera/components/DragLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/DragLayout;->setDrag(Z)V

    .line 680
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mDragView:Lcom/lge/camera/components/RotateDragView;

    if-eqz v0, :cond_0

    .line 681
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mDragView:Lcom/lge/camera/components/RotateDragView;

    invoke-virtual {v0}, Lcom/lge/camera/components/RotateDragView;->remove()V

    .line 682
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mDragView:Lcom/lge/camera/components/RotateDragView;

    goto :goto_0
.end method

.method private findDropTarget(II)Lcom/lge/camera/components/RotateImageButton;
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v3, 0x0

    .line 598
    iget-boolean v4, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mInit:Z

    if-nez v4, :cond_0

    move-object v2, v3

    .line 613
    :goto_0
    return-object v2

    .line 601
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 602
    .local v1, "rect":Landroid/graphics/Rect;
    const/4 v2, 0x0

    .line 603
    .local v2, "view":Landroid/view/View;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v4, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mDragViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 604
    iget-object v4, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mDragViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "view":Landroid/view/View;
    check-cast v2, Landroid/view/View;

    .line 605
    .restart local v2    # "view":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 606
    invoke-virtual {v2, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 607
    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 608
    check-cast v2, Lcom/lge/camera/components/RotateImageButton;

    goto :goto_0

    .line 603
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v2, v3

    .line 613
    goto :goto_0
.end method

.method private static getColMinNumPortrait()I
    .locals 1

    .prologue
    .line 96
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    .line 98
    const/4 v0, 0x4

    return v0
.end method

.method private getDragViewGroupIndex(Landroid/view/View;)I
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, -0x1

    .line 474
    iget-boolean v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mInit:Z

    if-nez v1, :cond_1

    move v0, v2

    .line 482
    :cond_0
    :goto_0
    return v0

    .line 477
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mDragViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 478
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mDragViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v1}, Lcom/lge/camera/components/RotateImageButton;->getId()I

    move-result v1

    if-eq v3, v1, :cond_0

    .line 477
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v2

    .line 482
    goto :goto_0
.end method

.method private static getRowNumLandscape()I
    .locals 1

    .prologue
    .line 80
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    .line 82
    const/4 v0, 0x4

    return v0
.end method

.method private static getRowNumPortrait()I
    .locals 1

    .prologue
    .line 87
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 91
    const/4 v0, 0x3

    :goto_0
    return v0

    .line 89
    :pswitch_0
    const/4 v0, 0x4

    goto :goto_0

    .line 87
    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_0
    .end packed-switch
.end method

.method private isOverlapTrashIcon(II)Z
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v1, 0x0

    .line 617
    iget-boolean v2, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mInit:Z

    if-nez v2, :cond_1

    .line 627
    :cond_0
    :goto_0
    return v1

    .line 620
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/controller/QuickFunctionDragController;->findDropTarget(II)Lcom/lge/camera/components/RotateImageButton;

    move-result-object v0

    .line 622
    .local v0, "overlabView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 623
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f0d01ab

    if-ne v2, v3, :cond_0

    .line 624
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private makeSelectMenuList()V
    .locals 3

    .prologue
    .line 151
    iget-boolean v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mInit:Z

    if-nez v1, :cond_1

    .line 159
    :cond_0
    return-void

    .line 154
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->initSettingMenu()V

    .line 155
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSelectMenuList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 156
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getSettingMenuCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 157
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSelectMenuList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v0}, Lcom/lge/camera/ControllerFunction;->getSettingMenuItem(I)Lcom/lge/camera/setting/SettingMenuItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private removeSelectMenuView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 236
    iget-boolean v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mInit:Z

    if-nez v1, :cond_0

    .line 260
    :goto_0
    return-void

    .line 239
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSelectMenuGridView:Landroid/widget/GridView;

    if-eqz v1, :cond_2

    .line 240
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSelectMenuGridView:Landroid/widget/GridView;

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 241
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSelectMenuGridView:Landroid/widget/GridView;

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 242
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSelectMenuGridView:Landroid/widget/GridView;

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 243
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSelectMenuGridView:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->removeAllViewsInLayout()V

    .line 244
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSelectMenuGridView:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 245
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSelectMenuGridView:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 246
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSelectMenuGridView:Landroid/widget/GridView;

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 248
    :cond_1
    iput-object v3, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSelectMenuGridView:Landroid/widget/GridView;

    .line 251
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSelectMenuView:Landroid/view/View;

    if-eqz v1, :cond_4

    .line 252
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSelectMenuView:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 253
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mDragLayout:Lcom/lge/camera/components/DragLayout;

    .line 254
    .local v0, "vg":Landroid/view/ViewGroup;
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSelectMenuView:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 255
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSelectMenuView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 257
    :cond_3
    iput-object v3, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSelectMenuView:Landroid/view/View;

    .line 259
    .end local v0    # "vg":Landroid/view/ViewGroup;
    :cond_4
    iput-object v3, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSelectMenuAdapter:Lcom/lge/camera/setting/SelectMenuGridAdapter;

    goto :goto_0
.end method

.method private rotateSelectMenu(I)V
    .locals 7
    .param p1, "degree"    # I

    .prologue
    const v6, 0x7f0d01cc

    const v5, 0x7f0901f0

    .line 356
    iget-boolean v4, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mInit:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4, v6}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_1

    .line 391
    :cond_0
    :goto_0
    return-void

    .line 360
    :cond_1
    iget-object v4, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4, v6}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateLayout;

    .line 361
    .local v0, "cl":Lcom/lge/camera/components/RotateLayout;
    invoke-virtual {v0, p1}, Lcom/lge/camera/components/RotateLayout;->rotateLayout(I)V

    .line 363
    invoke-direct {p0}, Lcom/lge/camera/controller/QuickFunctionDragController;->updateSelectMenuGridLayout()V

    .line 365
    const/4 v2, 0x0

    .line 366
    .local v2, "marginTop":I
    const/4 v1, 0x0

    .line 367
    .local v1, "marginLeft":I
    iget-object v4, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 368
    :goto_1
    invoke-virtual {v0}, Lcom/lge/camera/components/RotateLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 369
    .local v3, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    sparse-switch p1, :sswitch_data_0

    .line 383
    :goto_2
    iget-object v4, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 384
    iput v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 385
    iput v2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 390
    :goto_3
    invoke-virtual {v0, v3}, Lcom/lge/camera/components/RotateLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 367
    .end local v3    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_2
    add-int/lit8 v4, p1, 0x5a

    rem-int/lit16 p1, v4, 0x168

    goto :goto_1

    .line 372
    .restart local v3    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    :sswitch_0
    invoke-virtual {p0, v5}, Lcom/lge/camera/controller/QuickFunctionDragController;->getPixelFromDimens(I)I

    move-result v2

    .line 373
    iget v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->QUICKFUNCTION_WIDTH:I

    .line 374
    goto :goto_2

    .line 377
    :sswitch_1
    invoke-virtual {p0, v5}, Lcom/lge/camera/controller/QuickFunctionDragController;->getPixelFromDimens(I)I

    move-result v2

    .line 378
    iget v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->QUICKFUNCTION_WIDTH:I

    .line 379
    goto :goto_2

    .line 387
    :cond_3
    iput v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 388
    iput v2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_3

    .line 369
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_0
        0x10e -> :sswitch_1
    .end sparse-switch
.end method

.method private setDragDropIcon(Landroid/view/View;Lcom/lge/camera/setting/ListPreference;I)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "pref"    # Lcom/lge/camera/setting/ListPreference;
    .param p3, "resId"    # I

    .prologue
    .line 576
    iget-boolean v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mInit:Z

    if-nez v1, :cond_0

    .line 591
    .end local p1    # "v":Landroid/view/View;
    :goto_0
    return-void

    .line 579
    .restart local p1    # "v":Landroid/view/View;
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 580
    if-eqz p2, :cond_1

    .line 581
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-virtual {p2}, Lcom/lge/camera/setting/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingMenuItem(Ljava/lang/String;)Lcom/lge/camera/setting/SettingMenuItem;

    move-result-object v0

    .line 582
    .local v0, "menuItem":Lcom/lge/camera/setting/SettingMenuItem;
    if-eqz v0, :cond_1

    .line 583
    iget-boolean v1, v0, Lcom/lge/camera/setting/SettingMenuItem;->enable:Z

    if-eqz v1, :cond_2

    move-object v1, p1

    .line 584
    check-cast v1, Landroid/widget/ImageView;

    invoke-static {}, Lcom/lge/camera/util/ColorUtil;->getDefaultColor()Landroid/graphics/ColorMatrixColorFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 590
    .end local v0    # "menuItem":Lcom/lge/camera/setting/SettingMenuItem;
    :cond_1
    :goto_1
    check-cast p1, Landroid/widget/ImageView;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .restart local v0    # "menuItem":Lcom/lge/camera/setting/SettingMenuItem;
    .restart local p1    # "v":Landroid/view/View;
    :cond_2
    move-object v1, p1

    .line 586
    check-cast v1, Landroid/widget/ImageView;

    invoke-static {}, Lcom/lge/camera/util/ColorUtil;->getDimColor()Landroid/graphics/ColorMatrixColorFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_1
.end method

.method private setDragDropIcon(Landroid/view/View;Lcom/lge/camera/setting/ListPreference;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "pref"    # Lcom/lge/camera/setting/ListPreference;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 557
    iget-boolean v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mInit:Z

    if-nez v1, :cond_0

    .line 573
    .end local p1    # "v":Landroid/view/View;
    :goto_0
    return-void

    .line 560
    .restart local p1    # "v":Landroid/view/View;
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 561
    if-eqz p2, :cond_1

    .line 562
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-virtual {p2}, Lcom/lge/camera/setting/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingMenuItem(Ljava/lang/String;)Lcom/lge/camera/setting/SettingMenuItem;

    move-result-object v0

    .line 563
    .local v0, "menuItem":Lcom/lge/camera/setting/SettingMenuItem;
    if-eqz v0, :cond_1

    .line 564
    iget-boolean v1, v0, Lcom/lge/camera/setting/SettingMenuItem;->enable:Z

    if-eqz v1, :cond_2

    move-object v1, p1

    .line 565
    check-cast v1, Landroid/widget/ImageView;

    invoke-static {}, Lcom/lge/camera/util/ColorUtil;->getDefaultColor()Landroid/graphics/ColorMatrixColorFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :goto_1
    move-object v1, p1

    .line 569
    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/lge/camera/setting/SettingMenuItem;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/QuickFunctionDragController;->getMenuIconStringResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 572
    .end local v0    # "menuItem":Lcom/lge/camera/setting/SettingMenuItem;
    :cond_1
    check-cast p1, Landroid/widget/ImageView;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .restart local v0    # "menuItem":Lcom/lge/camera/setting/SettingMenuItem;
    .restart local p1    # "v":Landroid/view/View;
    :cond_2
    move-object v1, p1

    .line 567
    check-cast v1, Landroid/widget/ImageView;

    invoke-static {}, Lcom/lge/camera/util/ColorUtil;->getDimColor()Landroid/graphics/ColorMatrixColorFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_1
.end method

.method private setEmptyIcon(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 547
    iget-boolean v0, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mInit:Z

    if-nez v0, :cond_0

    .line 554
    .end local p1    # "v":Landroid/view/View;
    :goto_0
    return-void

    .restart local p1    # "v":Landroid/view/View;
    :cond_0
    move-object v0, p1

    .line 550
    check-cast v0, Landroid/widget/ImageView;

    invoke-static {}, Lcom/lge/camera/util/ColorUtil;->getDefaultColor()Landroid/graphics/ColorMatrixColorFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    move-object v0, p1

    .line 551
    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0200e6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 552
    check-cast p1, Landroid/widget/ImageView;

    .end local p1    # "v":Landroid/view/View;
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0a0324

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateSelectMenuGridLayout()V
    .locals 5

    .prologue
    .line 394
    iget-boolean v2, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mInit:Z

    if-nez v2, :cond_0

    .line 431
    :goto_0
    return-void

    .line 398
    :cond_0
    const/4 v0, 0x0

    .line 400
    .local v0, "col":I
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mDegree:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mDegree:I

    const/16 v4, 0xb4

    invoke-static {v2, v3, v4}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 402
    :cond_1
    const v2, 0x7f0901f7

    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/QuickFunctionDragController;->getPixelFromDimens(I)I

    move-result v2

    iput v2, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->SELECT_MENU_ITEM_HEIGHT:I

    .line 403
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSelectMenuAdapter:Lcom/lge/camera/setting/SelectMenuGridAdapter;

    sget v3, Lcom/lge/camera/controller/QuickFunctionDragController;->ROW_NUM_LANDSCAPE:I

    invoke-virtual {v2, v3}, Lcom/lge/camera/setting/SelectMenuGridAdapter;->setRowNum(I)V

    .line 404
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSelectMenuGridView:Landroid/widget/GridView;

    sget v3, Lcom/lge/camera/controller/QuickFunctionDragController;->ROW_NUM_LANDSCAPE:I

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 405
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSelectMenuAdapter:Lcom/lge/camera/setting/SelectMenuGridAdapter;

    invoke-virtual {v2}, Lcom/lge/camera/setting/SelectMenuGridAdapter;->getCount()I

    move-result v2

    sget v3, Lcom/lge/camera/controller/QuickFunctionDragController;->ROW_NUM_LANDSCAPE:I

    div-int v0, v2, v3

    .line 406
    const/4 v2, 0x3

    if-le v0, v2, :cond_2

    .line 407
    const v2, 0x7f0901f2

    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/QuickFunctionDragController;->getPixelFromDimens(I)I

    move-result v2

    iput v2, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->SELECT_MENU_VIEW_HEIGHT:I

    .line 411
    :goto_1
    const v2, 0x7f0901f1

    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/QuickFunctionDragController;->getPixelFromDimens(I)I

    move-result v2

    iput v2, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->SELECT_MENU_VIEW_WIDTH:I

    .line 413
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->SELECT_MENU_VIEW_WIDTH:I

    iget v3, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->SELECT_MENU_VIEW_HEIGHT:I

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 430
    .local v1, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :goto_2
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSelectMenuGridView:Landroid/widget/GridView;

    invoke-virtual {v2, v1}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 409
    .end local v1    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    iget v2, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->SELECT_MENU_ITEM_HEIGHT:I

    mul-int/2addr v2, v0

    add-int/2addr v2, v0

    iput v2, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->SELECT_MENU_VIEW_HEIGHT:I

    goto :goto_1

    .line 416
    :cond_3
    const v2, 0x7f0901f9

    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/QuickFunctionDragController;->getPixelFromDimens(I)I

    move-result v2

    iput v2, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->SELECT_MENU_ITEM_HEIGHT:I

    .line 417
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSelectMenuAdapter:Lcom/lge/camera/setting/SelectMenuGridAdapter;

    sget v3, Lcom/lge/camera/controller/QuickFunctionDragController;->ROW_NUM_PORTRAIT:I

    invoke-virtual {v2, v3}, Lcom/lge/camera/setting/SelectMenuGridAdapter;->setRowNum(I)V

    .line 418
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSelectMenuGridView:Landroid/widget/GridView;

    sget v3, Lcom/lge/camera/controller/QuickFunctionDragController;->ROW_NUM_PORTRAIT:I

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 419
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSelectMenuAdapter:Lcom/lge/camera/setting/SelectMenuGridAdapter;

    invoke-virtual {v2}, Lcom/lge/camera/setting/SelectMenuGridAdapter;->getCount()I

    move-result v2

    sget v3, Lcom/lge/camera/controller/QuickFunctionDragController;->ROW_NUM_PORTRAIT:I

    div-int v0, v2, v3

    .line 420
    sget v2, Lcom/lge/camera/controller/QuickFunctionDragController;->COL_MIN_NUM_PORTRAIT:I

    if-le v0, v2, :cond_4

    .line 421
    const v2, 0x7f0901f4

    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/QuickFunctionDragController;->getPixelFromDimens(I)I

    move-result v2

    iput v2, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->SELECT_MENU_VIEW_HEIGHT:I

    .line 425
    :goto_3
    const v2, 0x7f0901f3

    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/QuickFunctionDragController;->getPixelFromDimens(I)I

    move-result v2

    iput v2, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->SELECT_MENU_VIEW_WIDTH:I

    .line 426
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->SELECT_MENU_VIEW_WIDTH:I

    iget v3, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->SELECT_MENU_VIEW_HEIGHT:I

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .restart local v1    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    goto :goto_2

    .line 423
    .end local v1    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_4
    iget v2, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->SELECT_MENU_ITEM_HEIGHT:I

    mul-int/2addr v2, v0

    add-int/2addr v2, v0

    iput v2, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->SELECT_MENU_VIEW_HEIGHT:I

    goto :goto_3
.end method


# virtual methods
.method public cancelDrag()V
    .locals 0

    .prologue
    .line 594
    invoke-direct {p0}, Lcom/lge/camera/controller/QuickFunctionDragController;->endDrag()V

    .line 595
    return-void
.end method

.method public getDragView(I)Landroid/view/View;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 320
    iget-boolean v0, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mInit:Z

    if-nez v0, :cond_0

    .line 321
    const/4 v0, 0x0

    .line 323
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mDragViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/QuickFunctionDragController;->hide(Z)V

    .line 130
    return-void
.end method

.method public hide(Z)V
    .locals 3
    .param p1, "showAnimation"    # Z

    .prologue
    const/high16 v2, -0x3cb80000    # -200.0f

    .line 111
    iget-boolean v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mInit:Z

    if-nez v1, :cond_1

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mDragLayout:Lcom/lge/camera/components/DragLayout;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mDragLayout:Lcom/lge/camera/components/DragLayout;

    invoke-virtual {v1}, Lcom/lge/camera/components/DragLayout;->getDrag()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 115
    invoke-direct {p0, v2, v2}, Lcom/lge/camera/controller/QuickFunctionDragController;->drop(FF)V

    .line 116
    invoke-direct {p0}, Lcom/lge/camera/controller/QuickFunctionDragController;->endDrag()V

    .line 118
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0d01a5

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 119
    .local v0, "qflDragView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 120
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 121
    if-eqz p1, :cond_0

    .line 122
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/lge/camera/controller/QuickFunctionDragController;->qflDragAnimation(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method public initController()V
    .locals 0

    .prologue
    .line 107
    return-void
.end method

.method public initDragDropMenus()V
    .locals 5

    .prologue
    .line 438
    iget-boolean v3, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mInit:Z

    if-nez v3, :cond_1

    .line 462
    :cond_0
    return-void

    .line 441
    :cond_1
    const/4 v2, 0x0

    .line 442
    .local v2, "pref":Lcom/lge/camera/setting/ListPreference;
    const/4 v0, 0x0

    .line 443
    .local v0, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mDragViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 444
    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mDragViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/camera/components/RotateImageButton;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/lge/camera/components/RotateImageButton;->setTag(Ljava/lang/Object;)V

    .line 445
    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v1}, Lcom/lge/camera/ControllerFunction;->getQuickFunctionControllerMenuTag(I)Lcom/lge/camera/setting/ListPreference;

    move-result-object v2

    .line 446
    if-eqz v2, :cond_0

    .line 449
    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mDragViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_3

    .line 450
    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v1}, Lcom/lge/camera/ControllerFunction;->getQuickFunctionControllerMenuView(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 452
    .restart local v0    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v0, :cond_2

    .line 453
    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mDragViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {p0, v3, v2, v4}, Lcom/lge/camera/controller/QuickFunctionDragController;->setDragDropIcon(Landroid/view/View;Lcom/lge/camera/setting/ListPreference;Landroid/graphics/Bitmap;)V

    .line 443
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 455
    :cond_2
    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mDragViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-direct {p0, v3}, Lcom/lge/camera/controller/QuickFunctionDragController;->setEmptyIcon(Landroid/view/View;)V

    goto :goto_1

    .line 458
    :cond_3
    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mDragViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    const v4, 0x7f0202d3

    invoke-direct {p0, v3, v2, v4}, Lcom/lge/camera/controller/QuickFunctionDragController;->setDragDropIcon(Landroid/view/View;Lcom/lge/camera/setting/ListPreference;I)V

    goto :goto_1
.end method

.method public isNullSelectMenuView()Z
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSelectMenuGridView:Landroid/widget/GridView;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 327
    iget-boolean v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mInit:Z

    if-eqz v1, :cond_0

    .line 328
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0d01a5

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 330
    :cond_0
    return v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 743
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mDragLayout:Lcom/lge/camera/components/DragLayout;

    if-eqz v0, :cond_0

    .line 744
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mDragLayout:Lcom/lge/camera/components/DragLayout;

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/DragLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 745
    iput-object v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mDragLayout:Lcom/lge/camera/components/DragLayout;

    .line 747
    :cond_0
    iput-object v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mOriginator:Landroid/view/View;

    .line 748
    iput-object v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mVibrator:Landroid/os/Vibrator;

    .line 749
    iput-object v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSelectMenuView:Landroid/view/View;

    .line 750
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSrcBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 751
    iput-object v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSrcBitmap:Landroid/graphics/Bitmap;

    .line 753
    :cond_1
    iput-object v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mDragViewGroup:Ljava/util/ArrayList;

    .line 754
    invoke-super {p0}, Lcom/lge/camera/controller/Controller;->onDestroy()V

    .line 755
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 732
    iget-boolean v0, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mInit:Z

    if-nez v0, :cond_0

    .line 739
    :goto_0
    return-void

    .line 735
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/controller/QuickFunctionDragController;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 736
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.HideQuickFunctionDragDrop"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;)V

    .line 738
    :cond_1
    invoke-super {p0}, Lcom/lge/camera/controller/Controller;->onPause()V

    goto :goto_0
.end method

.method public qflDragAnimation(Landroid/view/View;Z)V
    .locals 8
    .param p1, "aniView"    # Landroid/view/View;
    .param p2, "show"    # Z

    .prologue
    .line 162
    const-string v6, "CameraApp"

    const-string v7, "qflSettingAnimation-start"

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-boolean v6, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mInit:Z

    if-nez v6, :cond_1

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    if-eqz p1, :cond_0

    .line 168
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 169
    const/4 v6, 0x4

    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 171
    iget-object v6, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v6

    if-eqz v6, :cond_2

    const v5, 0x7f040012

    .line 173
    .local v5, "showResId":I
    :goto_1
    iget-object v6, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v6

    if-eqz v6, :cond_3

    const v3, 0x7f040010

    .line 175
    .local v3, "hideResId":I
    :goto_2
    iget-object v6, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    .line 177
    .local v4, "showAni":Landroid/view/animation/Animation;
    iget-object v6, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    .line 180
    .local v2, "hideAni":Landroid/view/animation/Animation;
    if-eqz p2, :cond_4

    move-object v0, v4

    .line 181
    .local v0, "animation":Landroid/view/animation/Animation;
    :goto_3
    new-instance v6, Lcom/lge/camera/controller/QuickFunctionDragController$1;

    invoke-direct {v6, p0, p1, p2}, Lcom/lge/camera/controller/QuickFunctionDragController$1;-><init>(Lcom/lge/camera/controller/QuickFunctionDragController;Landroid/view/View;Z)V

    invoke-virtual {v0, v6}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 203
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 205
    .end local v0    # "animation":Landroid/view/animation/Animation;
    .end local v2    # "hideAni":Landroid/view/animation/Animation;
    .end local v3    # "hideResId":I
    .end local v4    # "showAni":Landroid/view/animation/Animation;
    .end local v5    # "showResId":I
    :catch_0
    move-exception v1

    .line 206
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v6, "CameraApp"

    const-string v7, "NullPointerException : "

    invoke-static {v6, v7, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 171
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :cond_2
    const v5, 0x7f040013

    goto :goto_1

    .line 173
    .restart local v5    # "showResId":I
    :cond_3
    const v3, 0x7f040011

    goto :goto_2

    .restart local v2    # "hideAni":Landroid/view/animation/Animation;
    .restart local v3    # "hideResId":I
    .restart local v4    # "showAni":Landroid/view/animation/Animation;
    :cond_4
    move-object v0, v2

    .line 180
    goto :goto_3
.end method

.method public setSelectIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 434
    iput p1, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSelectIndex:I

    .line 435
    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    .line 133
    iget-boolean v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mInit:Z

    if-nez v1, :cond_1

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    invoke-direct {p0}, Lcom/lge/camera/controller/QuickFunctionDragController;->clearSelectedDragViewGroup()V

    .line 138
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mDragViewGroup:Ljava/util/ArrayList;

    iget v2, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSelectIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/components/RotateImageButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/lge/camera/components/RotateImageButton;->setSelected(Z)V

    .line 140
    invoke-virtual {p0}, Lcom/lge/camera/controller/QuickFunctionDragController;->initDragDropMenus()V

    .line 141
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0d01a5

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 142
    .local v0, "qflDragView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 143
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 144
    invoke-direct {p0}, Lcom/lge/camera/controller/QuickFunctionDragController;->displaySelectMenuView()V

    goto :goto_0
.end method

.method public startDrag(Landroid/view/View;)V
    .locals 18
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 501
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lge/camera/controller/QuickFunctionDragController;->mInit:Z

    if-nez v2, :cond_1

    .line 544
    :cond_0
    :goto_0
    return-void

    .line 504
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/lge/camera/setting/ListPreference;

    .line 505
    .local v14, "pref":Lcom/lge/camera/setting/ListPreference;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/controller/QuickFunctionDragController;->mDragLayout:Lcom/lge/camera/components/DragLayout;

    if-eqz v2, :cond_0

    if-eqz v14, :cond_0

    .line 508
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/controller/QuickFunctionDragController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "vibrator"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lge/camera/controller/QuickFunctionDragController;->mVibrator:Landroid/os/Vibrator;

    .line 509
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/controller/QuickFunctionDragController;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v8, 0x23

    invoke-virtual {v2, v8, v9}, Landroid/os/Vibrator;->vibrate(J)V

    .line 510
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/camera/controller/QuickFunctionDragController;->mOriginator:Landroid/view/View;

    move-object/from16 v2, p1

    .line 511
    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    check-cast v11, Landroid/graphics/drawable/BitmapDrawable;

    .line 512
    .local v11, "bd":Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v11, :cond_0

    .line 515
    invoke-virtual {v11}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSrcBitmap:Landroid/graphics/Bitmap;

    .line 516
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSrcBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 520
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/camera/controller/QuickFunctionDragController;->mCoordinatesTemp:[I

    .line 521
    .local v13, "loc":[I
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 522
    const/4 v2, 0x0

    aget v15, v13, v2

    .line 523
    .local v15, "screenX":I
    const/4 v2, 0x1

    aget v16, v13, v2

    .line 525
    .local v16, "screenY":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/controller/QuickFunctionDragController;->mDragLayout:Lcom/lge/camera/components/DragLayout;

    invoke-virtual {v2}, Lcom/lge/camera/components/DragLayout;->getMotionDownX()F

    move-result v2

    float-to-int v2, v2

    sub-int v5, v2, v15

    .line 526
    .local v5, "regX":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/controller/QuickFunctionDragController;->mDragLayout:Lcom/lge/camera/components/DragLayout;

    invoke-virtual {v2}, Lcom/lge/camera/components/DragLayout;->getMotionDownY()F

    move-result v2

    float-to-int v2, v2

    sub-int v6, v2, v16

    .line 528
    .local v6, "regY":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/controller/QuickFunctionDragController;->mDragLayout:Lcom/lge/camera/components/DragLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/lge/camera/components/DragLayout;->setDrag(Z)V

    .line 529
    new-instance v2, Lcom/lge/camera/components/RotateDragView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/camera/controller/QuickFunctionDragController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/camera/controller/QuickFunctionDragController;->mDragLayout:Lcom/lge/camera/components/DragLayout;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSrcBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSrcBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-direct/range {v2 .. v10}, Lcom/lge/camera/components/RotateDragView;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;IIIIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lge/camera/controller/QuickFunctionDragController;->mDragView:Lcom/lge/camera/components/RotateDragView;

    .line 531
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/controller/QuickFunctionDragController;->mDragView:Lcom/lge/camera/components/RotateDragView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSrcBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Lcom/lge/camera/components/RotateDragView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 532
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/controller/QuickFunctionDragController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f0202d5

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 533
    .local v12, "dragBackGround":Landroid/graphics/drawable/Drawable;
    if-eqz v12, :cond_2

    .line 534
    const/16 v2, 0xb2

    invoke-virtual {v12, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 535
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/controller/QuickFunctionDragController;->mDragView:Lcom/lge/camera/components/RotateDragView;

    invoke-virtual {v2, v12}, Lcom/lge/camera/components/RotateDragView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 537
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/controller/QuickFunctionDragController;->mDragView:Lcom/lge/camera/components/RotateDragView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/camera/controller/QuickFunctionDragController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/lge/camera/components/RotateDragView;->setDegree(IZ)V

    .line 538
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/controller/QuickFunctionDragController;->mDragView:Lcom/lge/camera/components/RotateDragView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/camera/controller/QuickFunctionDragController;->mDragLayout:Lcom/lge/camera/components/DragLayout;

    invoke-virtual {v3}, Lcom/lge/camera/components/DragLayout;->getMotionDownX()F

    move-result v3

    float-to-int v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/camera/controller/QuickFunctionDragController;->mDragLayout:Lcom/lge/camera/components/DragLayout;

    invoke-virtual {v4}, Lcom/lge/camera/components/DragLayout;->getMotionDownY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/lge/camera/components/RotateDragView;->show(II)V

    .line 540
    invoke-direct/range {p0 .. p1}, Lcom/lge/camera/controller/QuickFunctionDragController;->setEmptyIcon(Landroid/view/View;)V

    .line 542
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/controller/QuickFunctionDragController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f0d01ab

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Lcom/lge/camera/components/RotateImageButton;

    .line 543
    .local v17, "trashCanView":Lcom/lge/camera/components/RotateImageButton;
    const v2, 0x7f0202a8

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/lge/camera/components/RotateImageButton;->setImageResource(I)V

    goto/16 :goto_0
.end method

.method public startRotation(IZ)V
    .locals 3
    .param p1, "degree"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 339
    iget-boolean v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mInit:Z

    if-nez v1, :cond_1

    .line 353
    :cond_0
    :goto_0
    return-void

    .line 342
    :cond_1
    iput p1, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mDegree:I

    .line 343
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mDragViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 344
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mDragViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v1}, Lcom/lge/camera/components/RotateImageButton;->getId()I

    move-result v1

    invoke-interface {v2, v1, p1, p2}, Lcom/lge/camera/ControllerFunction;->setDegree(IIZ)V

    .line 343
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 346
    :cond_2
    invoke-virtual {p0}, Lcom/lge/camera/controller/QuickFunctionDragController;->checkMediator()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/lge/camera/controller/QuickFunctionDragController;->isNullSelectMenuView()Z

    move-result v1

    if-nez v1, :cond_3

    .line 347
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/QuickFunctionDragController;->rotateSelectMenu(I)V

    .line 350
    :cond_3
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mDragView:Lcom/lge/camera/components/RotateDragView;

    if-eqz v1, :cond_0

    .line 351
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mDragView:Lcom/lge/camera/components/RotateDragView;

    invoke-virtual {v1, p1, p2}, Lcom/lge/camera/components/RotateDragView;->setDegree(IZ)V

    goto :goto_0
.end method
