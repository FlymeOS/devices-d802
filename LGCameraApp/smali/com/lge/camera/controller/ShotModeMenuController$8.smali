.class Lcom/lge/camera/controller/ShotModeMenuController$8;
.super Ljava/lang/Object;
.source "ShotModeMenuController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/controller/ShotModeMenuController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/ShotModeMenuController;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/ShotModeMenuController;)V
    .locals 0

    .prologue
    .line 1030
    iput-object p1, p0, Lcom/lge/camera/controller/ShotModeMenuController$8;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1032
    iget-object v9, p0, Lcom/lge/camera/controller/ShotModeMenuController$8;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    iget-object v9, v9, Lcom/lge/camera/controller/ShotModeMenuController;->mShotModeMenuView:Landroid/view/View;

    if-eqz v9, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    if-nez v9, :cond_3

    .line 1033
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 1034
    .local v5, "x":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 1035
    .local v6, "y":F
    iget-object v9, p0, Lcom/lge/camera/controller/ShotModeMenuController$8;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    iget-object v9, v9, Lcom/lge/camera/controller/ShotModeMenuController;->mShotModeMenuView:Landroid/view/View;

    const v10, 0x7f0d0211

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1036
    .local v3, "rdl":Landroid/view/View;
    if-eqz v3, :cond_3

    .line 1037
    const/4 v2, 0x0

    .line 1038
    .local v2, "outTouch":Z
    iget-object v9, p0, Lcom/lge/camera/controller/ShotModeMenuController$8;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    iget-object v9, v9, Lcom/lge/camera/controller/ShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v9}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const/high16 v10, 0x42000000    # 32.0f

    invoke-static {v9, v10}, Lcom/lge/camera/util/Util;->dpToPx(Landroid/content/Context;F)F

    move-result v9

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1039
    .local v1, "margin":I
    iget-object v9, p0, Lcom/lge/camera/controller/ShotModeMenuController$8;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    iget-object v9, v9, Lcom/lge/camera/controller/ShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v9}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1040
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v4

    .line 1041
    .local v4, "top":I
    sget v9, Lcom/lge/camera/properties/CameraConstants;->LCD_SIZE_HEIGHT:I

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v10

    sub-int v0, v9, v10

    .line 1042
    .local v0, "bottom":I
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v9

    int-to-float v9, v9

    cmpg-float v9, v5, v9

    if-ltz v9, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v9

    int-to-float v9, v9

    cmpl-float v9, v5, v9

    if-lez v9, :cond_4

    :cond_0
    move v2, v8

    .line 1043
    :goto_0
    if-nez v2, :cond_2

    if-lt v4, v1, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v9

    int-to-float v9, v9

    cmpg-float v9, v6, v9

    if-ltz v9, :cond_2

    :cond_1
    if-lt v0, v1, :cond_5

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v9

    int-to-float v9, v9

    cmpl-float v9, v6, v9

    if-lez v9, :cond_5

    :cond_2
    move v2, v8

    .line 1052
    :goto_1
    if-eqz v2, :cond_3

    .line 1053
    iget-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController$8;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    invoke-virtual {v8}, Lcom/lge/camera/controller/ShotModeMenuController;->hide()V

    .line 1057
    .end local v0    # "bottom":I
    .end local v1    # "margin":I
    .end local v2    # "outTouch":Z
    .end local v3    # "rdl":Landroid/view/View;
    .end local v4    # "top":I
    .end local v5    # "x":F
    .end local v6    # "y":F
    :cond_3
    return v7

    .restart local v0    # "bottom":I
    .restart local v1    # "margin":I
    .restart local v2    # "outTouch":Z
    .restart local v3    # "rdl":Landroid/view/View;
    .restart local v4    # "top":I
    .restart local v5    # "x":F
    .restart local v6    # "y":F
    :cond_4
    move v2, v7

    .line 1042
    goto :goto_0

    :cond_5
    move v2, v7

    .line 1043
    goto :goto_1

    .line 1046
    .end local v0    # "bottom":I
    .end local v4    # "top":I
    :cond_6
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v4

    .line 1047
    .restart local v4    # "top":I
    sget v9, Lcom/lge/camera/properties/CameraConstants;->LCD_SIZE_HEIGHT:I

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v10

    sub-int v0, v9, v10

    .line 1048
    .restart local v0    # "bottom":I
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v9

    int-to-float v9, v9

    cmpg-float v9, v6, v9

    if-ltz v9, :cond_7

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v9

    int-to-float v9, v9

    cmpl-float v9, v6, v9

    if-lez v9, :cond_a

    :cond_7
    move v2, v8

    .line 1049
    :goto_2
    if-nez v2, :cond_9

    if-lt v4, v1, :cond_8

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v9

    int-to-float v9, v9

    cmpg-float v9, v5, v9

    if-ltz v9, :cond_9

    :cond_8
    if-lt v0, v1, :cond_b

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v9

    int-to-float v9, v9

    cmpl-float v9, v5, v9

    if-lez v9, :cond_b

    :cond_9
    move v2, v8

    :goto_3
    goto :goto_1

    :cond_a
    move v2, v7

    .line 1048
    goto :goto_2

    :cond_b
    move v2, v7

    .line 1049
    goto :goto_3
.end method
