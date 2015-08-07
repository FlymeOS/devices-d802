.class Lcom/android/server/display/DisplayManagerServiceEx$BinderServiceEx$ExtendedBinderInternal;
.super Landroid/hardware/display/IDisplayManagerEx$Stub;
.source "DisplayManagerServiceEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayManagerServiceEx$BinderServiceEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExtendedBinderInternal"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/display/DisplayManagerServiceEx$BinderServiceEx;


# direct methods
.method private constructor <init>(Lcom/android/server/display/DisplayManagerServiceEx$BinderServiceEx;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerServiceEx$BinderServiceEx$ExtendedBinderInternal;->this$1:Lcom/android/server/display/DisplayManagerServiceEx$BinderServiceEx;

    invoke-direct {p0}, Landroid/hardware/display/IDisplayManagerEx$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/display/DisplayManagerServiceEx$BinderServiceEx;Lcom/android/server/display/DisplayManagerServiceEx$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/display/DisplayManagerServiceEx$BinderServiceEx;
    .param p2, "x1"    # Lcom/android/server/display/DisplayManagerServiceEx$1;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerServiceEx$BinderServiceEx$ExtendedBinderInternal;-><init>(Lcom/android/server/display/DisplayManagerServiceEx$BinderServiceEx;)V

    return-void
.end method


# virtual methods
.method public recoverBacklightBrightness(I)V
    .locals 1
    .param p1, "currentBrightness"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceEx$BinderServiceEx$ExtendedBinderInternal;->this$1:Lcom/android/server/display/DisplayManagerServiceEx$BinderServiceEx;

    iget-object v0, v0, Lcom/android/server/display/DisplayManagerServiceEx$BinderServiceEx;->this$0:Lcom/android/server/display/DisplayManagerServiceEx;

    # getter for: Lcom/android/server/display/DisplayManagerServiceEx;->mDisplayPowerControllerEx:Lcom/android/server/display/DisplayPowerControllerEx;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerServiceEx;->access$100(Lcom/android/server/display/DisplayManagerServiceEx;)Lcom/android/server/display/DisplayPowerControllerEx;

    move-result-object v0

    if-nez v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceEx$BinderServiceEx$ExtendedBinderInternal;->this$1:Lcom/android/server/display/DisplayManagerServiceEx$BinderServiceEx;

    iget-object v0, v0, Lcom/android/server/display/DisplayManagerServiceEx$BinderServiceEx;->this$0:Lcom/android/server/display/DisplayManagerServiceEx;

    # invokes: Lcom/android/server/display/DisplayManagerServiceEx;->getDisplayPowerController()V
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerServiceEx;->access$200(Lcom/android/server/display/DisplayManagerServiceEx;)V

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceEx$BinderServiceEx$ExtendedBinderInternal;->this$1:Lcom/android/server/display/DisplayManagerServiceEx$BinderServiceEx;

    iget-object v0, v0, Lcom/android/server/display/DisplayManagerServiceEx$BinderServiceEx;->this$0:Lcom/android/server/display/DisplayManagerServiceEx;

    # getter for: Lcom/android/server/display/DisplayManagerServiceEx;->mDisplayPowerControllerEx:Lcom/android/server/display/DisplayPowerControllerEx;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerServiceEx;->access$100(Lcom/android/server/display/DisplayManagerServiceEx;)Lcom/android/server/display/DisplayPowerControllerEx;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 46
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceEx$BinderServiceEx$ExtendedBinderInternal;->this$1:Lcom/android/server/display/DisplayManagerServiceEx$BinderServiceEx;

    iget-object v0, v0, Lcom/android/server/display/DisplayManagerServiceEx$BinderServiceEx;->this$0:Lcom/android/server/display/DisplayManagerServiceEx;

    # getter for: Lcom/android/server/display/DisplayManagerServiceEx;->mDisplayPowerControllerEx:Lcom/android/server/display/DisplayPowerControllerEx;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerServiceEx;->access$100(Lcom/android/server/display/DisplayManagerServiceEx;)Lcom/android/server/display/DisplayPowerControllerEx;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayPowerControllerEx;->requestRecoverScreenBrightness(I)V

    .line 48
    :cond_1
    return-void
.end method

.method public setGlanceView()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceEx$BinderServiceEx$ExtendedBinderInternal;->this$1:Lcom/android/server/display/DisplayManagerServiceEx$BinderServiceEx;

    iget-object v0, v0, Lcom/android/server/display/DisplayManagerServiceEx$BinderServiceEx;->this$0:Lcom/android/server/display/DisplayManagerServiceEx;

    # getter for: Lcom/android/server/display/DisplayManagerServiceEx;->mDisplayPowerControllerEx:Lcom/android/server/display/DisplayPowerControllerEx;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerServiceEx;->access$100(Lcom/android/server/display/DisplayManagerServiceEx;)Lcom/android/server/display/DisplayPowerControllerEx;

    move-result-object v0

    if-nez v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceEx$BinderServiceEx$ExtendedBinderInternal;->this$1:Lcom/android/server/display/DisplayManagerServiceEx$BinderServiceEx;

    iget-object v0, v0, Lcom/android/server/display/DisplayManagerServiceEx$BinderServiceEx;->this$0:Lcom/android/server/display/DisplayManagerServiceEx;

    # invokes: Lcom/android/server/display/DisplayManagerServiceEx;->getDisplayPowerController()V
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerServiceEx;->access$200(Lcom/android/server/display/DisplayManagerServiceEx;)V

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceEx$BinderServiceEx$ExtendedBinderInternal;->this$1:Lcom/android/server/display/DisplayManagerServiceEx$BinderServiceEx;

    iget-object v0, v0, Lcom/android/server/display/DisplayManagerServiceEx$BinderServiceEx;->this$0:Lcom/android/server/display/DisplayManagerServiceEx;

    # getter for: Lcom/android/server/display/DisplayManagerServiceEx;->mDisplayPowerControllerEx:Lcom/android/server/display/DisplayPowerControllerEx;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerServiceEx;->access$100(Lcom/android/server/display/DisplayManagerServiceEx;)Lcom/android/server/display/DisplayPowerControllerEx;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 60
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceEx$BinderServiceEx$ExtendedBinderInternal;->this$1:Lcom/android/server/display/DisplayManagerServiceEx$BinderServiceEx;

    iget-object v0, v0, Lcom/android/server/display/DisplayManagerServiceEx$BinderServiceEx;->this$0:Lcom/android/server/display/DisplayManagerServiceEx;

    # getter for: Lcom/android/server/display/DisplayManagerServiceEx;->mDisplayPowerControllerEx:Lcom/android/server/display/DisplayPowerControllerEx;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerServiceEx;->access$100(Lcom/android/server/display/DisplayManagerServiceEx;)Lcom/android/server/display/DisplayPowerControllerEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerControllerEx;->requestSetGlanceView()V

    .line 62
    :cond_1
    return-void
.end method
