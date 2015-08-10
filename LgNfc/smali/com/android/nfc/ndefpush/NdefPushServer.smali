.class public Lcom/android/nfc/ndefpush/NdefPushServer;
.super Ljava/lang/Object;
.source "NdefPushServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;,
        Lcom/android/nfc/ndefpush/NdefPushServer$ConnectionThread;,
        Lcom/android/nfc/ndefpush/NdefPushServer$Callback;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final MIU:I = 0xf8

.field static final SERVICE_NAME:Ljava/lang/String; = "com.android.npp"

.field private static final TAG:Ljava/lang/String; = "NdefPushServer"


# instance fields
.field final mCallback:Lcom/android/nfc/ndefpush/NdefPushServer$Callback;

.field mSap:I

.field mServerThread:Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;

.field mService:Lcom/android/nfc/NfcService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    sget-boolean v0, Lcom/android/nfc/utils/LNfcLog;->DBG:Z

    sput-boolean v0, Lcom/android/nfc/ndefpush/NdefPushServer;->DBG:Z

    return-void
.end method

.method public constructor <init>(ILcom/android/nfc/ndefpush/NdefPushServer$Callback;)V
    .locals 1
    .param p1, "sap"    # I
    .param p2, "callback"    # Lcom/android/nfc/ndefpush/NdefPushServer$Callback;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushServer;->mService:Lcom/android/nfc/NfcService;

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushServer;->mServerThread:Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;

    .line 60
    iput p1, p0, Lcom/android/nfc/ndefpush/NdefPushServer;->mSap:I

    .line 61
    iput-object p2, p0, Lcom/android/nfc/ndefpush/NdefPushServer;->mCallback:Lcom/android/nfc/ndefpush/NdefPushServer$Callback;

    .line 62
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 38
    sget-boolean v0, Lcom/android/nfc/ndefpush/NdefPushServer;->DBG:Z

    return v0
.end method


# virtual methods
.method public start()V
    .locals 3

    .prologue
    .line 207
    monitor-enter p0

    .line 208
    :try_start_0
    sget-boolean v0, Lcom/android/nfc/ndefpush/NdefPushServer;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "NdefPushServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start, thread = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/nfc/ndefpush/NdefPushServer;->mServerThread:Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushServer;->mServerThread:Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;

    if-nez v0, :cond_2

    .line 210
    sget-boolean v0, Lcom/android/nfc/ndefpush/NdefPushServer;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "NdefPushServer"

    const-string v1, "starting new server thread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_1
    new-instance v0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;

    invoke-direct {v0, p0}, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;-><init>(Lcom/android/nfc/ndefpush/NdefPushServer;)V

    iput-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushServer;->mServerThread:Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;

    .line 212
    iget-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushServer;->mServerThread:Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;

    invoke-virtual {v0}, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->start()V

    .line 214
    :cond_2
    monitor-exit p0

    .line 215
    return-void

    .line 214
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 218
    monitor-enter p0

    .line 219
    :try_start_0
    sget-boolean v0, Lcom/android/nfc/ndefpush/NdefPushServer;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "NdefPushServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop, thread = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/nfc/ndefpush/NdefPushServer;->mServerThread:Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushServer;->mServerThread:Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;

    if-eqz v0, :cond_2

    .line 221
    sget-boolean v0, Lcom/android/nfc/ndefpush/NdefPushServer;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "NdefPushServer"

    const-string v1, "shuting down server thread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_1
    iget-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushServer;->mServerThread:Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;

    invoke-virtual {v0}, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->shutdown()V

    .line 223
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushServer;->mServerThread:Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;

    .line 225
    :cond_2
    monitor-exit p0

    .line 226
    return-void

    .line 225
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
