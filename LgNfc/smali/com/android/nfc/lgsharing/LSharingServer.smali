.class public Lcom/android/nfc/lgsharing/LSharingServer;
.super Ljava/lang/Object;
.source "LSharingServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/lgsharing/LSharingServer$ConnectionThread;,
        Lcom/android/nfc/lgsharing/LSharingServer$ServerThread;
    }
.end annotation


# static fields
.field public static final DBG:Ljava/lang/Boolean;

.field public static final MIU:I = 0x80

.field public static final SERVICE_NAME:Ljava/lang/String; = "urn:nfc:xsn:lge.com:lgsharing"

.field public static final TAG:Ljava/lang/String; = "LSharingServer"


# instance fields
.field final mSap:I

.field mServerRunning:Z

.field mServerThread:Lcom/android/nfc/lgsharing/LSharingServer$ServerThread;

.field final mSharingManager:Lcom/android/nfc/lgsharing/LSharingManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    sget-boolean v0, Lcom/android/nfc/utils/LNfcLog;->DBG:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/nfc/lgsharing/LSharingServer;->DBG:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(ILcom/android/nfc/lgsharing/LSharingManager;)V
    .locals 1
    .param p1, "sap"    # I
    .param p2, "manager"    # Lcom/android/nfc/lgsharing/LSharingManager;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/lgsharing/LSharingServer;->mServerThread:Lcom/android/nfc/lgsharing/LSharingServer$ServerThread;

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/lgsharing/LSharingServer;->mServerRunning:Z

    .line 30
    iput p1, p0, Lcom/android/nfc/lgsharing/LSharingServer;->mSap:I

    .line 31
    iput-object p2, p0, Lcom/android/nfc/lgsharing/LSharingServer;->mSharingManager:Lcom/android/nfc/lgsharing/LSharingManager;

    .line 32
    return-void
.end method


# virtual methods
.method receivePacket(Lcom/android/nfc/DeviceHost$LlcpSocket;Ljava/io/ByteArrayOutputStream;)Landroid/nfc/NdefMessage;
    .locals 5
    .param p1, "sock"    # Lcom/android/nfc/DeviceHost$LlcpSocket;
    .param p2, "byteStream"    # Ljava/io/ByteArrayOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 199
    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$LlcpSocket;->getLocalMiu()I

    move-result v3

    new-array v0, v3, [B

    .line 200
    .local v0, "partial":[B
    invoke-interface {p1, v0}, Lcom/android/nfc/DeviceHost$LlcpSocket;->receive([B)I

    move-result v1

    .line 201
    .local v1, "size":I
    if-gez v1, :cond_0

    .line 211
    :goto_0
    return-object v2

    .line 204
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p2, v0, v3, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 207
    :try_start_0
    new-instance v3, Landroid/nfc/NdefMessage;

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/nfc/NdefMessage;-><init>([B)V
    :try_end_0
    .catch Landroid/nfc/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    goto :goto_0

    .line 208
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public declared-synchronized start()V
    .locals 1

    .prologue
    .line 35
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/lgsharing/LSharingServer;->mServerThread:Lcom/android/nfc/lgsharing/LSharingServer$ServerThread;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/android/nfc/lgsharing/LSharingServer$ServerThread;

    invoke-direct {v0, p0}, Lcom/android/nfc/lgsharing/LSharingServer$ServerThread;-><init>(Lcom/android/nfc/lgsharing/LSharingServer;)V

    iput-object v0, p0, Lcom/android/nfc/lgsharing/LSharingServer;->mServerThread:Lcom/android/nfc/lgsharing/LSharingServer$ServerThread;

    .line 37
    iget-object v0, p0, Lcom/android/nfc/lgsharing/LSharingServer;->mServerThread:Lcom/android/nfc/lgsharing/LSharingServer$ServerThread;

    invoke-virtual {v0}, Lcom/android/nfc/lgsharing/LSharingServer$ServerThread;->start()V

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/lgsharing/LSharingServer;->mServerRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    :cond_0
    monitor-exit p0

    return-void

    .line 35
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 1

    .prologue
    .line 43
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/lgsharing/LSharingServer;->mServerThread:Lcom/android/nfc/lgsharing/LSharingServer$ServerThread;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/android/nfc/lgsharing/LSharingServer;->mServerThread:Lcom/android/nfc/lgsharing/LSharingServer$ServerThread;

    invoke-virtual {v0}, Lcom/android/nfc/lgsharing/LSharingServer$ServerThread;->shutdown()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/lgsharing/LSharingServer;->mServerThread:Lcom/android/nfc/lgsharing/LSharingServer$ServerThread;

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/lgsharing/LSharingServer;->mServerRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    :cond_0
    monitor-exit p0

    return-void

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
