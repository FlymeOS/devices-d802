.class Lcom/lge/uicc/framework/IccNotiControllerVZW$2;
.super Landroid/os/CountDownTimer;
.source "IccNotiControllerVZW.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/uicc/framework/IccNotiControllerVZW;->registerIccProvisionTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/uicc/framework/IccNotiControllerVZW;


# direct methods
.method constructor <init>(Lcom/lge/uicc/framework/IccNotiControllerVZW;JJ)V
    .locals 0
    .param p2, "x0"    # J
    .param p4, "x1"    # J

    .prologue
    .line 369
    iput-object p1, p0, Lcom/lge/uicc/framework/IccNotiControllerVZW$2;->this$0:Lcom/lge/uicc/framework/IccNotiControllerVZW;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/lge/uicc/framework/IccNotiControllerVZW$2;->this$0:Lcom/lge/uicc/framework/IccNotiControllerVZW;

    # getter for: Lcom/lge/uicc/framework/IccNotiControllerVZW;->mCountdownTimer:Landroid/os/CountDownTimer;
    invoke-static {v0}, Lcom/lge/uicc/framework/IccNotiControllerVZW;->access$400(Lcom/lge/uicc/framework/IccNotiControllerVZW;)Landroid/os/CountDownTimer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/lge/uicc/framework/IccNotiControllerVZW$2;->this$0:Lcom/lge/uicc/framework/IccNotiControllerVZW;

    # invokes: Lcom/lge/uicc/framework/IccNotiControllerVZW;->sendProvisionFailEvent()V
    invoke-static {v0}, Lcom/lge/uicc/framework/IccNotiControllerVZW;->access$500(Lcom/lge/uicc/framework/IccNotiControllerVZW;)V

    .line 376
    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 0
    .param p1, "millisUntilFinished"    # J

    .prologue
    .line 370
    return-void
.end method
