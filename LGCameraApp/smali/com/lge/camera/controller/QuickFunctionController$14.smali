.class Lcom/lge/camera/controller/QuickFunctionController$14;
.super Ljava/lang/Object;
.source "QuickFunctionController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/QuickFunctionController;->setMenuIcon(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/QuickFunctionController;

.field final synthetic val$iconIndex:I

.field final synthetic val$menuIndex:I


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/QuickFunctionController;II)V
    .locals 0

    .prologue
    .line 1022
    iput-object p1, p0, Lcom/lge/camera/controller/QuickFunctionController$14;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iput p2, p0, Lcom/lge/camera/controller/QuickFunctionController$14;->val$menuIndex:I

    iput p3, p0, Lcom/lge/camera/controller/QuickFunctionController$14;->val$iconIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1025
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionController$14;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v1, v1, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 1027
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionController$14;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    # getter for: Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/lge/camera/controller/QuickFunctionController;->access$300(Lcom/lge/camera/controller/QuickFunctionController;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1028
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionController$14;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget v2, p0, Lcom/lge/camera/controller/QuickFunctionController$14;->val$menuIndex:I

    iget v3, p0, Lcom/lge/camera/controller/QuickFunctionController$14;->val$iconIndex:I

    # invokes: Lcom/lge/camera/controller/QuickFunctionController;->getMenuIconResource(II)I
    invoke-static {v1, v2, v3}, Lcom/lge/camera/controller/QuickFunctionController;->access$1100(Lcom/lge/camera/controller/QuickFunctionController;II)I

    move-result v0

    .line 1029
    .local v0, "resId":I
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionController$14;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    # getter for: Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/lge/camera/controller/QuickFunctionController;->access$300(Lcom/lge/camera/controller/QuickFunctionController;)Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/controller/QuickFunctionController$14;->val$menuIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v1, v0}, Lcom/lge/camera/components/RotateImageButton;->setImageResource(I)V

    .line 1031
    .end local v0    # "resId":I
    :cond_0
    return-void
.end method
