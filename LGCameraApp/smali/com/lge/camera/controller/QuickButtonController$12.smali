.class Lcom/lge/camera/controller/QuickButtonController$12;
.super Ljava/lang/Object;
.source "QuickButtonController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/QuickButtonController;->refreshQuickButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/QuickButtonController;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/QuickButtonController;)V
    .locals 0

    .prologue
    .line 1246
    iput-object p1, p0, Lcom/lge/camera/controller/QuickButtonController$12;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1248
    iget-object v3, p0, Lcom/lge/camera/controller/QuickButtonController$12;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v3, v3, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 1249
    iget-object v3, p0, Lcom/lge/camera/controller/QuickButtonController$12;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    # getter for: Lcom/lge/camera/controller/QuickButtonController;->mMenuViewGroup:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/lge/camera/controller/QuickButtonController;->access$800(Lcom/lge/camera/controller/QuickButtonController;)Ljava/util/ArrayList;

    move-result-object v3

    if-nez v3, :cond_1

    .line 1257
    :cond_0
    return-void

    .line 1252
    :cond_1
    const/16 v2, 0x64

    .line 1253
    .local v2, "tag":I
    iget-object v3, p0, Lcom/lge/camera/controller/QuickButtonController$12;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    # getter for: Lcom/lge/camera/controller/QuickButtonController;->mMenuViewGroup:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/lge/camera/controller/QuickButtonController;->access$800(Lcom/lge/camera/controller/QuickButtonController;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;

    .line 1254
    .local v1, "quickButton":Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;
    invoke-virtual {v1}, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;->getButton()Lcom/lge/camera/components/RotateImageButton;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/components/RotateImageButton;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1255
    iget-object v3, p0, Lcom/lge/camera/controller/QuickButtonController$12;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    # invokes: Lcom/lge/camera/controller/QuickButtonController;->setQuickButtonResources(I)V
    invoke-static {v3, v2}, Lcom/lge/camera/controller/QuickButtonController;->access$100(Lcom/lge/camera/controller/QuickButtonController;I)V

    goto :goto_0
.end method
