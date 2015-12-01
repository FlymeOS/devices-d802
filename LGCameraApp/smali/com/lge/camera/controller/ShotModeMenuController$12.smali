.class Lcom/lge/camera/controller/ShotModeMenuController$12;
.super Ljava/lang/Thread;
.source "ShotModeMenuController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/ShotModeMenuController;->makeAllImageResources()V
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
    .line 1188
    iput-object p1, p0, Lcom/lge/camera/controller/ShotModeMenuController$12;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1190
    iget-object v2, p0, Lcom/lge/camera/controller/ShotModeMenuController$12;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    iget-object v2, v2, Lcom/lge/camera/controller/ShotModeMenuController;->mModeItemList:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 1191
    iget-object v2, p0, Lcom/lge/camera/controller/ShotModeMenuController$12;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    iget-object v2, v2, Lcom/lge/camera/controller/ShotModeMenuController;->mModeItemList:Ljava/util/ArrayList;

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

    .line 1192
    .local v1, "item":Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;
    iget-object v2, p0, Lcom/lge/camera/controller/ShotModeMenuController$12;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    # getter for: Lcom/lge/camera/controller/ShotModeMenuController;->mImageCacheThread:Ljava/lang/Thread;
    invoke-static {v2}, Lcom/lge/camera/controller/ShotModeMenuController;->access$200(Lcom/lge/camera/controller/ShotModeMenuController;)Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1201
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "item":Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;
    :cond_1
    return-void

    .line 1195
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "item":Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;
    :cond_2
    if-eqz v1, :cond_0

    .line 1196
    iget-object v2, p0, Lcom/lge/camera/controller/ShotModeMenuController$12;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    iget-object v2, v2, Lcom/lge/camera/controller/ShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-virtual {v1}, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;->getImageResourceId()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/LevelListDrawable;

    invoke-virtual {v1, v2}, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;->setImageDrawable(Landroid/graphics/drawable/LevelListDrawable;)V

    goto :goto_0
.end method
