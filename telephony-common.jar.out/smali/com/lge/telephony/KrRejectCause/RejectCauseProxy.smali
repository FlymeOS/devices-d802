.class public Lcom/lge/telephony/KrRejectCause/RejectCauseProxy;
.super Ljava/lang/Object;
.source "RejectCauseProxy.java"

# interfaces
.implements Lcom/lge/telephony/KrRejectCause/RejectCause;


# instance fields
.field private mRejectCause:Lcom/lge/telephony/KrRejectCause/RejectCause;


# direct methods
.method public constructor <init>(Lcom/lge/telephony/KrRejectCause/RejectCause;)V
    .locals 1
    .param p1, "rc"    # Lcom/lge/telephony/KrRejectCause/RejectCause;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseProxy;->mRejectCause:Lcom/lge/telephony/KrRejectCause/RejectCause;

    .line 19
    iput-object p1, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseProxy;->mRejectCause:Lcom/lge/telephony/KrRejectCause/RejectCause;

    .line 20
    return-void
.end method


# virtual methods
.method public bManualSelectionAvailable()Z
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseProxy;->mRejectCause:Lcom/lge/telephony/KrRejectCause/RejectCause;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseProxy;->mRejectCause:Lcom/lge/telephony/KrRejectCause/RejectCause;

    invoke-interface {v0}, Lcom/lge/telephony/KrRejectCause/RejectCause;->bManualSelectionAvailable()Z

    move-result v0

    .line 42
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public clearRejectCause(II)Z
    .locals 2
    .param p1, "clear_mm"    # I
    .param p2, "clear_gmm"    # I

    .prologue
    .line 48
    const/4 v0, 0x0

    .line 49
    .local v0, "result":Z
    iget-object v1, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseProxy;->mRejectCause:Lcom/lge/telephony/KrRejectCause/RejectCause;

    if-eqz v1, :cond_0

    .line 50
    iget-object v1, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseProxy;->mRejectCause:Lcom/lge/telephony/KrRejectCause/RejectCause;

    invoke-interface {v1, p1, p2}, Lcom/lge/telephony/KrRejectCause/RejectCause;->clearRejectCause(II)Z

    move-result v0

    .line 52
    :cond_0
    return v0
.end method

.method public handleServiceStatusResult(Landroid/os/AsyncResult;)I
    .locals 2
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 23
    const/4 v0, 0x0

    .line 24
    .local v0, "result":I
    iget-object v1, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseProxy;->mRejectCause:Lcom/lge/telephony/KrRejectCause/RejectCause;

    if-eqz v1, :cond_0

    .line 25
    iget-object v1, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseProxy;->mRejectCause:Lcom/lge/telephony/KrRejectCause/RejectCause;

    invoke-interface {v1, p1}, Lcom/lge/telephony/KrRejectCause/RejectCause;->handleServiceStatusResult(Landroid/os/AsyncResult;)I

    move-result v0

    .line 27
    :cond_0
    return v0
.end method

.method public initialize()V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseProxy;->mRejectCause:Lcom/lge/telephony/KrRejectCause/RejectCause;

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseProxy;->mRejectCause:Lcom/lge/telephony/KrRejectCause/RejectCause;

    invoke-interface {v0}, Lcom/lge/telephony/KrRejectCause/RejectCause;->initialize()V

    .line 34
    :cond_0
    return-void
.end method

.method public setRejectCauseStateListener(Lcom/lge/telephony/KrRejectCause/IRejectCauseStateListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/lge/telephony/KrRejectCause/IRejectCauseStateListener;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseProxy;->mRejectCause:Lcom/lge/telephony/KrRejectCause/RejectCause;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseProxy;->mRejectCause:Lcom/lge/telephony/KrRejectCause/RejectCause;

    invoke-interface {v0, p1}, Lcom/lge/telephony/KrRejectCause/RejectCause;->setRejectCauseStateListener(Lcom/lge/telephony/KrRejectCause/IRejectCauseStateListener;)V

    .line 59
    :cond_0
    return-void
.end method
