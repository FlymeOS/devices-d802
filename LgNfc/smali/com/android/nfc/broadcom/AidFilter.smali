.class public Lcom/android/nfc/broadcom/AidFilter;
.super Ljava/lang/Object;
.source "AidFilter.java"


# static fields
.field static final DBG:Z = true

.field public static final SERVICE_NAME:Ljava/lang/String; = "com.vzw.nfc.AidFilter"

.field static final TAG:Ljava/lang/String; = "BrcmAidFilter"


# instance fields
.field mService:Lcom/android/nfc/NfcService;


# direct methods
.method public constructor <init>(Lcom/android/nfc/NfcService;)V
    .locals 2
    .param p1, "nfcService"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/broadcom/AidFilter;->mService:Lcom/android/nfc/NfcService;

    .line 67
    const-string v0, "BrcmAidFilter"

    const-string v1, "constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iput-object p1, p0, Lcom/android/nfc/broadcom/AidFilter;->mService:Lcom/android/nfc/NfcService;

    .line 70
    return-void
.end method


# virtual methods
.method public declared-synchronized disableFilterCondition(Ljava/lang/String;B)Z
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "filterConditionTag"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 99
    monitor-enter p0

    :try_start_0
    const-string v0, "BrcmAidFilter"

    const-string v1, "disableFilterCondition"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-virtual {p0, p2}, Lcom/android/nfc/broadcom/AidFilter;->doDisableFilterCondition(B)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method native doDisableFilterCondition(B)Z
.end method

.method native doEnableFilterCondition(B)Z
.end method

.method native doSetFilterList([B)Z
.end method

.method public declared-synchronized enableFilterCondition(Ljava/lang/String;B)Z
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "filterConditionTag"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 88
    monitor-enter p0

    :try_start_0
    const-string v0, "BrcmAidFilter"

    const-string v1, "enableFilterCondition"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-virtual {p0, p2}, Lcom/android/nfc/broadcom/AidFilter;->doEnableFilterCondition(B)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setFilterList(Ljava/lang/String;[B)Z
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "filterList"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 77
    monitor-enter p0

    :try_start_0
    const-string v0, "BrcmAidFilter"

    const-string v1, "setFilterList"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-virtual {p0, p2}, Lcom/android/nfc/broadcom/AidFilter;->doSetFilterList([B)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
