.class Lcom/lge/camera/controller/SettingRotatableExpandableController$14;
.super Ljava/lang/Object;
.source "SettingRotatableExpandableController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/SettingRotatableExpandableController;->setChildViewPattern(IZ)V
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
    .line 1116
    iput-object p1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$14;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1118
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$14;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->checkMediator()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$14;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    iget-object v0, v0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mChildAdapter:Lcom/lge/camera/setting/SettingExpandChildMenuAdapter;

    if-eqz v0, :cond_0

    .line 1119
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$14;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    iget-object v0, v0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 1120
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$14;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    iget-object v0, v0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mChildAdapter:Lcom/lge/camera/setting/SettingExpandChildMenuAdapter;

    invoke-virtual {v0}, Lcom/lge/camera/setting/SettingExpandChildMenuAdapter;->update()V

    .line 1122
    :cond_0
    return-void
.end method
