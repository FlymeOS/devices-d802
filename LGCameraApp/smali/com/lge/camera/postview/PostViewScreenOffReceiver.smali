.class public Lcom/lge/camera/postview/PostViewScreenOffReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PostViewScreenOffReceiver.java"


# instance fields
.field private mGet:Lcom/lge/camera/postview/ReceiverFunction;


# direct methods
.method public constructor <init>(Lcom/lge/camera/postview/ReceiverFunction;)V
    .locals 1
    .param p1, "function"    # Lcom/lge/camera/postview/ReceiverFunction;

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/postview/PostViewScreenOffReceiver;->mGet:Lcom/lge/camera/postview/ReceiverFunction;

    .line 21
    iput-object p1, p0, Lcom/lge/camera/postview/PostViewScreenOffReceiver;->mGet:Lcom/lge/camera/postview/ReceiverFunction;

    .line 22
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/lge/camera/postview/PostViewScreenOffReceiver;->mGet:Lcom/lge/camera/postview/ReceiverFunction;

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/lge/camera/postview/PostViewScreenOffReceiver;->mGet:Lcom/lge/camera/postview/ReceiverFunction;

    invoke-interface {v0}, Lcom/lge/camera/postview/ReceiverFunction;->finish()V

    .line 29
    :cond_0
    return-void
.end method

.method public unbind()V
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/lge/camera/postview/PostViewScreenOffReceiver;->mGet:Lcom/lge/camera/postview/ReceiverFunction;

    if-eqz v0, :cond_0

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/postview/PostViewScreenOffReceiver;->mGet:Lcom/lge/camera/postview/ReceiverFunction;

    .line 35
    :cond_0
    return-void
.end method
