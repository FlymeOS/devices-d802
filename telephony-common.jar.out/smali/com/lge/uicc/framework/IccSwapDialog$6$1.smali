.class Lcom/lge/uicc/framework/IccSwapDialog$6$1;
.super Ljava/lang/Object;
.source "IccSwapDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/uicc/framework/IccSwapDialog$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/uicc/framework/IccSwapDialog$6;


# direct methods
.method constructor <init>(Lcom/lge/uicc/framework/IccSwapDialog$6;)V
    .locals 0

    .prologue
    .line 567
    iput-object p1, p0, Lcom/lge/uicc/framework/IccSwapDialog$6$1;->this$1:Lcom/lge/uicc/framework/IccSwapDialog$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 570
    iget-object v0, p0, Lcom/lge/uicc/framework/IccSwapDialog$6$1;->this$1:Lcom/lge/uicc/framework/IccSwapDialog$6;

    iget-object v0, v0, Lcom/lge/uicc/framework/IccSwapDialog$6;->this$0:Lcom/lge/uicc/framework/IccSwapDialog;

    const/4 v1, 0x0

    # invokes: Lcom/lge/uicc/framework/IccSwapDialog;->showIccRemovedDialog(I)V
    invoke-static {v0, v1}, Lcom/lge/uicc/framework/IccSwapDialog;->access$800(Lcom/lge/uicc/framework/IccSwapDialog;I)V

    .line 571
    return-void
.end method
