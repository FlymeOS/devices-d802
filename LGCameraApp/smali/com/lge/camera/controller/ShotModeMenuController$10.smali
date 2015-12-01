.class Lcom/lge/camera/controller/ShotModeMenuController$10;
.super Ljava/lang/Object;
.source "ShotModeMenuController.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 1093
    iput-object p1, p0, Lcom/lge/camera/controller/ShotModeMenuController$10;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1095
    iget-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController$10;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    iget-object v0, v0, Lcom/lge/camera/controller/ShotModeMenuController;->mListView:Lcom/lge/camera/components/ModeMenuListView;

    if-eqz v0, :cond_0

    .line 1096
    iget-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController$10;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    iget-object v0, v0, Lcom/lge/camera/controller/ShotModeMenuController;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1097
    iget-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController$10;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    iget-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController$10;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    iget-object v1, v1, Lcom/lge/camera/controller/ShotModeMenuController;->mContentView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/controller/ShotModeMenuController;->showingAnimation(Landroid/view/View;Z)V

    .line 1100
    :cond_0
    return-void
.end method
