.class Lcom/lge/uicc/framework/IccSwapDialog$RebootTimer;
.super Landroid/os/CountDownTimer;
.source "IccSwapDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/uicc/framework/IccSwapDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RebootTimer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/uicc/framework/IccSwapDialog;


# direct methods
.method public constructor <init>(Lcom/lge/uicc/framework/IccSwapDialog;JJ)V
    .locals 0
    .param p2, "milisInFuture"    # J
    .param p4, "countDownInterval"    # J

    .prologue
    .line 228
    iput-object p1, p0, Lcom/lge/uicc/framework/IccSwapDialog$RebootTimer;->this$0:Lcom/lge/uicc/framework/IccSwapDialog;

    .line 229
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 230
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/lge/uicc/framework/IccSwapDialog$RebootTimer;->this$0:Lcom/lge/uicc/framework/IccSwapDialog;

    const-string v1, "SIM is added/removed"

    # invokes: Lcom/lge/uicc/framework/IccSwapDialog;->reboot(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/lge/uicc/framework/IccSwapDialog;->access$100(Lcom/lge/uicc/framework/IccSwapDialog;Ljava/lang/String;)V

    .line 235
    return-void
.end method

.method public onTick(J)V
    .locals 0
    .param p1, "millisUntilFinished"    # J

    .prologue
    .line 232
    return-void
.end method
