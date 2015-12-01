.class Lcom/lge/camera/command/setting/SetOptionalParameters$4;
.super Ljava/lang/Object;
.source "SetOptionalParameters.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/command/setting/SetOptionalParameters;->setTimerSetting()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/command/setting/SetOptionalParameters;


# direct methods
.method constructor <init>(Lcom/lge/camera/command/setting/SetOptionalParameters;)V
    .locals 0

    .prologue
    .line 299
    iput-object p1, p0, Lcom/lge/camera/command/setting/SetOptionalParameters$4;->this$0:Lcom/lge/camera/command/setting/SetOptionalParameters;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetOptionalParameters$4;->this$0:Lcom/lge/camera/command/setting/SetOptionalParameters;

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetOptionalParameters;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 302
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetOptionalParameters$4;->this$0:Lcom/lge/camera/command/setting/SetOptionalParameters;

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetOptionalParameters;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->updateTimerIndicator()V

    .line 303
    return-void
.end method
