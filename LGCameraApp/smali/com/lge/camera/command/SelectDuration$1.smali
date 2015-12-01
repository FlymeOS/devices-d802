.class Lcom/lge/camera/command/SelectDuration$1;
.super Ljava/lang/Object;
.source "SelectDuration.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/command/SelectDuration;->execute(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/command/SelectDuration;

.field final synthetic val$con:Z

.field final synthetic val$videoSizePrefIndex:I


# direct methods
.method constructor <init>(Lcom/lge/camera/command/SelectDuration;IZ)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/lge/camera/command/SelectDuration$1;->this$0:Lcom/lge/camera/command/SelectDuration;

    iput p2, p0, Lcom/lge/camera/command/SelectDuration$1;->val$videoSizePrefIndex:I

    iput-boolean p3, p0, Lcom/lge/camera/command/SelectDuration$1;->val$con:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const v3, 0x3e4ccccd    # 0.2f

    .line 49
    iget-object v1, p0, Lcom/lge/camera/command/SelectDuration$1;->this$0:Lcom/lge/camera/command/SelectDuration;

    iget-object v1, v1, Lcom/lge/camera/command/SelectDuration;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 50
    iget-object v1, p0, Lcom/lge/camera/command/SelectDuration$1;->this$0:Lcom/lge/camera/command/SelectDuration;

    iget-object v1, v1, Lcom/lge/camera/command/SelectDuration;->mGet:Lcom/lge/camera/ControllerFunction;

    iget v2, p0, Lcom/lge/camera/command/SelectDuration$1;->val$videoSizePrefIndex:I

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->isQuickFunctionList(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    iget-object v1, p0, Lcom/lge/camera/command/SelectDuration$1;->this$0:Lcom/lge/camera/command/SelectDuration;

    iget-object v1, v1, Lcom/lge/camera/command/SelectDuration;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-boolean v2, p0, Lcom/lge/camera/command/SelectDuration$1;->val$con:Z

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->setQuickFunctionControllerMmsLimit(Z)V

    .line 53
    :cond_0
    iget-boolean v1, p0, Lcom/lge/camera/command/SelectDuration$1;->val$con:Z

    if-eqz v1, :cond_2

    .line 54
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v0

    .line 55
    .local v0, "currentCarrierCode":I
    iget-object v1, p0, Lcom/lge/camera/command/SelectDuration$1;->this$0:Lcom/lge/camera/command/SelectDuration;

    iget-object v1, v1, Lcom/lge/camera/command/SelectDuration;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isMMSRecording()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 58
    iget-object v1, p0, Lcom/lge/camera/command/SelectDuration$1;->this$0:Lcom/lge/camera/command/SelectDuration;

    iget-object v1, v1, Lcom/lge/camera/command/SelectDuration;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x3e99999a    # 0.3f

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->setScaleWidthHeight(F)V

    .line 65
    .end local v0    # "currentCarrierCode":I
    :goto_0
    return-void

    .line 60
    .restart local v0    # "currentCarrierCode":I
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/command/SelectDuration$1;->this$0:Lcom/lge/camera/command/SelectDuration;

    iget-object v1, v1, Lcom/lge/camera/command/SelectDuration;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v3}, Lcom/lge/camera/ControllerFunction;->setScaleWidthHeight(F)V

    goto :goto_0

    .line 63
    .end local v0    # "currentCarrierCode":I
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/command/SelectDuration$1;->this$0:Lcom/lge/camera/command/SelectDuration;

    iget-object v1, v1, Lcom/lge/camera/command/SelectDuration;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v3}, Lcom/lge/camera/ControllerFunction;->setScaleWidthHeight(F)V

    goto :goto_0
.end method
