.class Lcom/lge/camera/controller/QuickFunctionController$16;
.super Ljava/lang/Object;
.source "QuickFunctionController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/QuickFunctionController;->setMenuDim(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/QuickFunctionController;

.field final synthetic val$enable:Z

.field final synthetic val$menuIndex:I


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/QuickFunctionController;ZI)V
    .locals 0

    .prologue
    .line 1096
    iput-object p1, p0, Lcom/lge/camera/controller/QuickFunctionController$16;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iput-boolean p2, p0, Lcom/lge/camera/controller/QuickFunctionController$16;->val$enable:Z

    iput p3, p0, Lcom/lge/camera/controller/QuickFunctionController$16;->val$menuIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1099
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController$16;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v0, v0, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 1100
    iget-boolean v0, p0, Lcom/lge/camera/controller/QuickFunctionController$16;->val$enable:Z

    if-eqz v0, :cond_0

    .line 1101
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController$16;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    # getter for: Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lge/camera/controller/QuickFunctionController;->access$300(Lcom/lge/camera/controller/QuickFunctionController;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/lge/camera/controller/QuickFunctionController$16;->val$menuIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateImageButton;

    invoke-static {}, Lcom/lge/camera/util/ColorUtil;->getDefaultColor()Landroid/graphics/ColorMatrixColorFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateImageButton;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1102
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController$16;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    # getter for: Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lge/camera/controller/QuickFunctionController;->access$300(Lcom/lge/camera/controller/QuickFunctionController;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/lge/camera/controller/QuickFunctionController$16;->val$menuIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateImageButton;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateImageButton;->setAlpha(F)V

    .line 1107
    :goto_0
    return-void

    .line 1104
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController$16;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    # getter for: Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lge/camera/controller/QuickFunctionController;->access$300(Lcom/lge/camera/controller/QuickFunctionController;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/lge/camera/controller/QuickFunctionController$16;->val$menuIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateImageButton;

    invoke-static {}, Lcom/lge/camera/util/ColorUtil;->getDimColor()Landroid/graphics/ColorMatrixColorFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateImageButton;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1105
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController$16;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    # getter for: Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lge/camera/controller/QuickFunctionController;->access$300(Lcom/lge/camera/controller/QuickFunctionController;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/lge/camera/controller/QuickFunctionController$16;->val$menuIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateImageButton;

    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionController$16;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    # getter for: Lcom/lge/camera/controller/QuickFunctionController;->alpha:F
    invoke-static {v1}, Lcom/lge/camera/controller/QuickFunctionController;->access$1300(Lcom/lge/camera/controller/QuickFunctionController;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateImageButton;->setAlpha(F)V

    goto :goto_0
.end method
