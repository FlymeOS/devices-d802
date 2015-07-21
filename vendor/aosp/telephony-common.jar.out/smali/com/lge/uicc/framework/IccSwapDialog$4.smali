.class Lcom/lge/uicc/framework/IccSwapDialog$4;
.super Lcom/lge/uicc/framework/IccSwapDialog$RebootTimer;
.source "IccSwapDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/uicc/framework/IccSwapDialog;->showIccRemovedDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/uicc/framework/IccSwapDialog;


# direct methods
.method constructor <init>(Lcom/lge/uicc/framework/IccSwapDialog;JJ)V
    .locals 0
    .param p2, "x0"    # J
    .param p4, "x1"    # J

    .prologue
    .line 334
    iput-object p1, p0, Lcom/lge/uicc/framework/IccSwapDialog$4;->this$0:Lcom/lge/uicc/framework/IccSwapDialog;

    invoke-direct/range {p0 .. p5}, Lcom/lge/uicc/framework/IccSwapDialog$RebootTimer;-><init>(Lcom/lge/uicc/framework/IccSwapDialog;JJ)V

    return-void
.end method


# virtual methods
.method public onTick(J)V
    .locals 2
    .param p1, "millisUntilFinished"    # J

    .prologue
    .line 336
    iget-object v0, p0, Lcom/lge/uicc/framework/IccSwapDialog$4;->this$0:Lcom/lge/uicc/framework/IccSwapDialog;

    # getter for: Lcom/lge/uicc/framework/IccSwapDialog;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/lge/uicc/framework/IccSwapDialog;->access$500(Lcom/lge/uicc/framework/IccSwapDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->incrementProgressBy(I)V

    .line 337
    return-void
.end method
