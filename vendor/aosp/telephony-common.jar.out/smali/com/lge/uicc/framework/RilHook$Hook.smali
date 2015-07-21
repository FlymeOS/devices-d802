.class public abstract Lcom/lge/uicc/framework/RilHook$Hook;
.super Ljava/lang/Object;
.source "RilHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/uicc/framework/RilHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "Hook"
.end annotation


# instance fields
.field msg:Landroid/os/Message;

.field final synthetic this$0:Lcom/lge/uicc/framework/RilHook;


# direct methods
.method constructor <init>(Lcom/lge/uicc/framework/RilHook;Landroid/os/Message;)V
    .locals 0
    .param p2, "m"    # Landroid/os/Message;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/lge/uicc/framework/RilHook$Hook;->this$0:Lcom/lge/uicc/framework/RilHook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p2, p0, Lcom/lge/uicc/framework/RilHook$Hook;->msg:Landroid/os/Message;

    .line 67
    return-void
.end method


# virtual methods
.method handleResult(Landroid/os/AsyncResult;)Landroid/os/Message;
    .locals 3
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 69
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/lge/uicc/framework/RilHook$Hook;->msg:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/lge/uicc/framework/RilHook$Hook;->msg:Landroid/os/Message;

    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 71
    iget-object v0, p0, Lcom/lge/uicc/framework/RilHook$Hook;->msg:Landroid/os/Message;

    .line 73
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
