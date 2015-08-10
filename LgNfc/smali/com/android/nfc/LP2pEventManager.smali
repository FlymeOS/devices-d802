.class public Lcom/android/nfc/LP2pEventManager;
.super Lcom/android/nfc/P2pEventManager;
.source "LP2pEventManager.java"

# interfaces
.implements Lcom/android/nfc/LP2pLinkManager$LP2pEventListener;


# static fields
.field static TAG:Ljava/lang/String;


# instance fields
.field mLSendUi:Lcom/android/nfc/LSendUi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string v0, "LP2pEventManager"

    sput-object v0, Lcom/android/nfc/LP2pEventManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/nfc/P2pEventListener$Callback;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/nfc/P2pEventListener$Callback;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/android/nfc/P2pEventManager;-><init>(Landroid/content/Context;Lcom/android/nfc/P2pEventListener$Callback;)V

    .line 23
    return-void
.end method


# virtual methods
.method protected newSendUi(Landroid/content/Context;)Lcom/android/nfc/SendUi;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    new-instance v0, Lcom/android/nfc/LSendUi;

    invoke-direct {v0, p1, p0}, Lcom/android/nfc/LSendUi;-><init>(Landroid/content/Context;Lcom/android/nfc/SendUi$Callback;)V

    iput-object v0, p0, Lcom/android/nfc/LP2pEventManager;->mLSendUi:Lcom/android/nfc/LSendUi;

    .line 38
    iget-object v0, p0, Lcom/android/nfc/LP2pEventManager;->mLSendUi:Lcom/android/nfc/LSendUi;

    return-object v0
.end method

.method public onP2pSendConfirmationRequested_addException(Ljava/lang/String;)Z
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/nfc/LP2pEventManager;->mLSendUi:Lcom/android/nfc/LSendUi;

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/android/nfc/LP2pEventManager;->mLSendUi:Lcom/android/nfc/LSendUi;

    invoke-virtual {v0, p1}, Lcom/android/nfc/LSendUi;->showPreSend_addException(Ljava/lang/String;)Z

    move-result v0

    .line 32
    :goto_0
    return v0

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/LP2pEventManager;->mCallback:Lcom/android/nfc/P2pEventListener$Callback;

    invoke-interface {v0}, Lcom/android/nfc/P2pEventListener$Callback;->onP2pSendConfirmed()V

    .line 32
    const/4 v0, 0x1

    goto :goto_0
.end method
