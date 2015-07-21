.class Lcom/lge/uicc/framework/IccSwapDialog$6;
.super Ljava/util/TimerTask;
.source "IccSwapDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/uicc/framework/IccSwapDialog;->delayedDialogEmergencyCall()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/uicc/framework/IccSwapDialog;


# direct methods
.method constructor <init>(Lcom/lge/uicc/framework/IccSwapDialog;)V
    .locals 0

    .prologue
    .line 559
    iput-object p1, p0, Lcom/lge/uicc/framework/IccSwapDialog$6;->this$0:Lcom/lge/uicc/framework/IccSwapDialog;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 563
    const-string v2, "ril.cdma.emergencyCall"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 564
    .local v1, "isEmergencyCall":Ljava/lang/String;
    const-string v2, "false"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 565
    iget-object v2, p0, Lcom/lge/uicc/framework/IccSwapDialog$6;->this$0:Lcom/lge/uicc/framework/IccSwapDialog;

    # getter for: Lcom/lge/uicc/framework/IccSwapDialog;->mEccTimer:Ljava/util/Timer;
    invoke-static {v2}, Lcom/lge/uicc/framework/IccSwapDialog;->access$700(Lcom/lge/uicc/framework/IccSwapDialog;)Ljava/util/Timer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    .line 567
    :try_start_0
    # getter for: Lcom/lge/uicc/framework/IccSwapDialog;->mInstance:Lcom/lge/uicc/framework/IccSwapDialog;
    invoke-static {}, Lcom/lge/uicc/framework/IccSwapDialog;->access$900()Lcom/lge/uicc/framework/IccSwapDialog;

    move-result-object v2

    new-instance v3, Lcom/lge/uicc/framework/IccSwapDialog$6$1;

    invoke-direct {v3, p0}, Lcom/lge/uicc/framework/IccSwapDialog$6$1;-><init>(Lcom/lge/uicc/framework/IccSwapDialog$6;)V

    invoke-virtual {v2, v3}, Lcom/lge/uicc/framework/IccSwapDialog;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 579
    :goto_0
    return-void

    .line 573
    :catch_0
    move-exception v0

    .line 574
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 577
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const-string v2, "delayed during emergency call"

    # invokes: Lcom/lge/uicc/framework/IccSwapDialog;->loge(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/lge/uicc/framework/IccSwapDialog;->access$1000(Ljava/lang/String;)V

    goto :goto_0
.end method
