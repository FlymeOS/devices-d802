.class Lcom/lge/camera/controller/SettingRotatableExpandableController$4;
.super Ljava/lang/Object;
.source "SettingRotatableExpandableController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/controller/SettingRotatableExpandableController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/SettingRotatableExpandableController;)V
    .locals 0

    .prologue
    .line 389
    iput-object p1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$4;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$4;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    iget-object v0, v0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 392
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$4;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    iget-object v0, v0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentAdapter:Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$4;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    iget-object v0, v0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentAdapter:Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;

    invoke-virtual {v0}, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;->releasePressedCount()V

    .line 395
    :cond_0
    return-void
.end method
