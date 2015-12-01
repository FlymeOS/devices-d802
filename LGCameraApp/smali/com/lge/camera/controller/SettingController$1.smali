.class Lcom/lge/camera/controller/SettingController$1;
.super Ljava/lang/Object;
.source "SettingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/SettingController;->setMmsLimit(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/SettingController;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/SettingController;)V
    .locals 0

    .prologue
    .line 431
    iput-object p1, p0, Lcom/lge/camera/controller/SettingController$1;->this$0:Lcom/lge/camera/controller/SettingController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController$1;->this$0:Lcom/lge/camera/controller/SettingController;

    iget-object v0, v0, Lcom/lge/camera/controller/SettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 434
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController$1;->this$0:Lcom/lge/camera/controller/SettingController;

    iget-object v0, v0, Lcom/lge/camera/controller/SettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->updateSizeIndicator()V

    .line 435
    return-void
.end method
