.class public Lcom/android/nfc/handover/LHandoverClient;
.super Lcom/android/nfc/handover/HandoverClient;
.source "LHandoverClient.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LHandoverClient"


# instance fields
.field mLHandoverManager:Lcom/android/nfc/handover/LHandoverManager;


# direct methods
.method public constructor <init>(Lcom/android/nfc/handover/LHandoverManager;)V
    .locals 0
    .param p1, "handoverManager"    # Lcom/android/nfc/handover/LHandoverManager;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/nfc/handover/HandoverClient;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/android/nfc/handover/LHandoverClient;->mLHandoverManager:Lcom/android/nfc/handover/LHandoverManager;

    .line 24
    return-void
.end method


# virtual methods
.method checkHandoverCollision(Landroid/nfc/NdefMessage;)Z
    .locals 2
    .param p1, "msg"    # Landroid/nfc/NdefMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    const-string v0, "LHandoverClient"

    const-string v1, "createHandoverRequestMessage"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    const/4 v0, 0x1

    return v0
.end method
