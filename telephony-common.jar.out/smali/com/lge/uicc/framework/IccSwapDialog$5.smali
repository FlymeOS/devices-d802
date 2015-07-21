.class Lcom/lge/uicc/framework/IccSwapDialog$5;
.super Ljava/lang/Object;
.source "IccSwapDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/uicc/framework/IccSwapDialog;->onIccAbsentEx()V
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
    .line 417
    iput-object p1, p0, Lcom/lge/uicc/framework/IccSwapDialog$5;->this$0:Lcom/lge/uicc/framework/IccSwapDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 420
    iget-object v0, p0, Lcom/lge/uicc/framework/IccSwapDialog$5;->this$0:Lcom/lge/uicc/framework/IccSwapDialog;

    # getter for: Lcom/lge/uicc/framework/IccSwapDialog;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/lge/uicc/framework/IccSwapDialog;->access$000(Lcom/lge/uicc/framework/IccSwapDialog;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 421
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 422
    :try_start_0
    const-string v0, "Push the OK button!!"

    # invokes: Lcom/lge/uicc/framework/IccSwapDialog;->logd(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/lge/uicc/framework/IccSwapDialog;->access$600(Ljava/lang/String;)V

    .line 423
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 425
    :cond_0
    monitor-exit v1

    .line 426
    return-void

    .line 425
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
