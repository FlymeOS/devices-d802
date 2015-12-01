.class Lcom/lge/camera/controller/SettingRotatableController$11$1;
.super Ljava/lang/Object;
.source "SettingRotatableController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/SettingRotatableController$11;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/camera/controller/SettingRotatableController$11;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/SettingRotatableController$11;)V
    .locals 0

    .prologue
    .line 1230
    iput-object p1, p0, Lcom/lge/camera/controller/SettingRotatableController$11$1;->this$1:Lcom/lge/camera/controller/SettingRotatableController$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1232
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableController$11$1;->this$1:Lcom/lge/camera/controller/SettingRotatableController$11;

    iget-object v0, v0, Lcom/lge/camera/controller/SettingRotatableController$11;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/SettingRotatableController;->checkMediator()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableController$11$1;->this$1:Lcom/lge/camera/controller/SettingRotatableController$11;

    iget-object v0, v0, Lcom/lge/camera/controller/SettingRotatableController$11;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    iget-object v0, v0, Lcom/lge/camera/controller/SettingRotatableController;->mChildAdapter:Lcom/lge/camera/setting/SettingMenuAdapter;

    if-eqz v0, :cond_0

    .line 1233
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableController$11$1;->this$1:Lcom/lge/camera/controller/SettingRotatableController$11;

    iget-object v0, v0, Lcom/lge/camera/controller/SettingRotatableController$11;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    iget-object v0, v0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 1234
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableController$11$1;->this$1:Lcom/lge/camera/controller/SettingRotatableController$11;

    iget-object v0, v0, Lcom/lge/camera/controller/SettingRotatableController$11;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    iget-object v0, v0, Lcom/lge/camera/controller/SettingRotatableController;->mChildAdapter:Lcom/lge/camera/setting/SettingMenuAdapter;

    invoke-virtual {v0}, Lcom/lge/camera/setting/SettingMenuAdapter;->update()V

    .line 1236
    :cond_0
    return-void
.end method
