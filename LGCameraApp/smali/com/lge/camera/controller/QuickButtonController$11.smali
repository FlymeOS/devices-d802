.class Lcom/lge/camera/controller/QuickButtonController$11;
.super Ljava/lang/Object;
.source "QuickButtonController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/QuickButtonController;->setMenuDim(Lcom/lge/camera/components/RotateImageButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/QuickButtonController;

.field final synthetic val$enable:Z

.field final synthetic val$rib:Lcom/lge/camera/components/RotateImageButton;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/QuickButtonController;ZLcom/lge/camera/components/RotateImageButton;)V
    .locals 0

    .prologue
    .line 1233
    iput-object p1, p0, Lcom/lge/camera/controller/QuickButtonController$11;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iput-boolean p2, p0, Lcom/lge/camera/controller/QuickButtonController$11;->val$enable:Z

    iput-object p3, p0, Lcom/lge/camera/controller/QuickButtonController$11;->val$rib:Lcom/lge/camera/components/RotateImageButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1235
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$11;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v0, v0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 1236
    iget-boolean v0, p0, Lcom/lge/camera/controller/QuickButtonController$11;->val$enable:Z

    if-eqz v0, :cond_0

    .line 1237
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$11;->val$rib:Lcom/lge/camera/components/RotateImageButton;

    invoke-static {}, Lcom/lge/camera/util/ColorUtil;->getDefaultColor()Landroid/graphics/ColorMatrixColorFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateImageButton;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1241
    :goto_0
    return-void

    .line 1239
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$11;->val$rib:Lcom/lge/camera/components/RotateImageButton;

    invoke-static {}, Lcom/lge/camera/util/ColorUtil;->getQuickButtonDimColor()Landroid/graphics/ColorMatrixColorFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateImageButton;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0
.end method
