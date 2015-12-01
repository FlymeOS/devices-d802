.class Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer$1;
.super Ljava/lang/Object;
.source "ShowLiveEffectSubMenuDrawer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;


# direct methods
.method constructor <init>(Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;)V
    .locals 0

    .prologue
    .line 332
    iput-object p1, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer$1;->this$0:Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 336
    iget-object v0, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer$1;->this$0:Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;

    iget-object v0, v0, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isPressedShutterButton()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    const-string v0, "CameraApp"

    const-string v1, "ShutterButton pressed -> block goofyface click"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    :goto_0
    return-void

    .line 343
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    # setter for: Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->mFaceSelectedMenu:I
    invoke-static {v0}, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->access$002(I)I

    .line 345
    iget-object v0, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer$1;->this$0:Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;

    # getter for: Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->mFaceSelectedMenu:I
    invoke-static {}, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->access$000()I

    move-result v1

    # invokes: Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->updateSettingMenu(I)V
    invoke-static {v0, v1}, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->access$100(Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;I)V

    .line 347
    iget-object v0, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer$1;->this$0:Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;

    # invokes: Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->clearSelection()V
    invoke-static {v0}, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->access$200(Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;)V

    .line 348
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0
.end method
