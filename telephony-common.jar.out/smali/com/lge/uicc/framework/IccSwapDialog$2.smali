.class Lcom/lge/uicc/framework/IccSwapDialog$2;
.super Landroid/os/CountDownTimer;
.source "IccSwapDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/uicc/framework/IccSwapDialog;->registerScreenLockTimer(JLandroid/app/ProgressDialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/uicc/framework/IccSwapDialog;

.field final synthetic val$progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/lge/uicc/framework/IccSwapDialog;JJLandroid/app/ProgressDialog;)V
    .locals 0
    .param p2, "x0"    # J
    .param p4, "x1"    # J

    .prologue
    .line 243
    iput-object p1, p0, Lcom/lge/uicc/framework/IccSwapDialog$2;->this$0:Lcom/lge/uicc/framework/IccSwapDialog;

    iput-object p6, p0, Lcom/lge/uicc/framework/IccSwapDialog$2;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/lge/uicc/framework/IccSwapDialog$2;->this$0:Lcom/lge/uicc/framework/IccSwapDialog;

    # getter for: Lcom/lge/uicc/framework/IccSwapDialog;->mCountdownTimer:Landroid/os/CountDownTimer;
    invoke-static {v0}, Lcom/lge/uicc/framework/IccSwapDialog;->access$300(Lcom/lge/uicc/framework/IccSwapDialog;)Landroid/os/CountDownTimer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/uicc/framework/IccSwapDialog$2;->val$progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/lge/uicc/framework/IccSwapDialog$2;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 249
    iget-object v0, p0, Lcom/lge/uicc/framework/IccSwapDialog$2;->this$0:Lcom/lge/uicc/framework/IccSwapDialog;

    const/4 v1, 0x0

    # setter for: Lcom/lge/uicc/framework/IccSwapDialog;->mCountdownTimer:Landroid/os/CountDownTimer;
    invoke-static {v0, v1}, Lcom/lge/uicc/framework/IccSwapDialog;->access$302(Lcom/lge/uicc/framework/IccSwapDialog;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;

    .line 251
    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 0
    .param p1, "millisUntilFinished"    # J

    .prologue
    .line 244
    return-void
.end method
