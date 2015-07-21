.class public Lcom/android/internal/telephony/soi/SoiManager;
.super Ljava/lang/Object;
.source "SoiManager.java"

# interfaces
.implements Lcom/android/internal/telephony/soi/ISmsInvoker;
.implements Lcom/android/internal/telephony/soi/ISoiManager;


# static fields
.field private static final TAG:Ljava/lang/String; = "SoiManager"

.field private static imsStatus:I

.field private static lock:Ljava/lang/Object;

.field private static protocols:[Lcom/android/internal/telephony/soi/IProtocolStore;

.field private static sInstance:Lcom/android/internal/telephony/soi/SoiManager;

.field private static smsFormat:I


# instance fields
.field private mCdmaTest:Z

.field private rilNotifier:Lcom/android/internal/telephony/soi/IRilResponseNotifier;

.field private smsListener:Lcom/android/internal/telephony/soi/ISmsEventListener;

.field protected spec:Lcom/android/internal/telephony/soi/Spec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/internal/telephony/soi/IProtocolStore;

    sput-object v0, Lcom/android/internal/telephony/soi/SoiManager;->protocols:[Lcom/android/internal/telephony/soi/IProtocolStore;

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/soi/SoiManager;->lock:Ljava/lang/Object;

    .line 49
    const/4 v0, 0x0

    sput v0, Lcom/android/internal/telephony/soi/SoiManager;->smsFormat:I

    .line 50
    const/4 v0, 0x3

    sput v0, Lcom/android/internal/telephony/soi/SoiManager;->imsStatus:I

    .line 52
    new-instance v0, Lcom/android/internal/telephony/soi/SoiManager;

    invoke-direct {v0}, Lcom/android/internal/telephony/soi/SoiManager;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/soi/SoiManager;->sInstance:Lcom/android/internal/telephony/soi/SoiManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/soi/SoiManager;->mCdmaTest:Z

    .line 64
    const-string v0, "SoiManager"

    const-string v1, "create SoiManager()"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-direct {p0}, Lcom/android/internal/telephony/soi/SoiManager;->init()V

    .line 67
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/internal/telephony/soi/SoiManager;-><init>()V

    .line 61
    return-void
.end method

.method private acknowledgeLastIncomingSms(ZILandroid/os/Message;)V
    .locals 7
    .param p1, "success"    # Z
    .param p2, "cause"    # I
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 385
    const-string v1, "SoiManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "acknowledgeLastIncomingSms(), success = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    const/4 v4, 0x1

    .line 387
    .local v4, "causeLength":I
    new-instance v0, Lcom/android/internal/telephony/soi/TransportData;

    const/4 v1, 0x1

    move v2, p1

    move v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/soi/TransportData;-><init>(IZIILandroid/os/Message;)V

    .line 390
    .local v0, "data":Lcom/android/internal/telephony/soi/TransportData;
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/soi/SoiManager;->getCurrentProtocol()Lcom/android/internal/telephony/soi/IProtocolStore;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/soi/IProtocolStore;->sendToTransport(Lcom/android/internal/telephony/soi/TransportData;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/soi/exception/SoiException; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    :goto_0
    return-void

    .line 391
    :catch_0
    move-exception v6

    .line 392
    .local v6, "e":Lcom/android/internal/telephony/soi/exception/SoiException;
    invoke-virtual {v6}, Lcom/android/internal/telephony/soi/exception/SoiException;->printStackTrace()V

    .line 393
    const-string v1, "SoiManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SoiException occurs, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Lcom/android/internal/telephony/soi/exception/SoiException;->getCauseValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/soi/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    const/4 v1, 0x0

    invoke-static {p3, v1}, Lcom/android/internal/telephony/soi/Transport;->sendGenericError(Landroid/os/Message;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private acknowledgeLastIncomingSms(ZILandroid/os/Message;I)V
    .locals 7
    .param p1, "success"    # Z
    .param p2, "cause"    # I
    .param p3, "result"    # Landroid/os/Message;
    .param p4, "smsFormat"    # I

    .prologue
    .line 399
    const-string v1, "SoiManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "acknowledgeLastIncomingSms(), success = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    const/4 v4, 0x1

    .line 401
    .local v4, "causeLength":I
    new-instance v0, Lcom/android/internal/telephony/soi/TransportData;

    const/4 v1, 0x1

    move v2, p1

    move v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/soi/TransportData;-><init>(IZIILandroid/os/Message;)V

    .line 404
    .local v0, "data":Lcom/android/internal/telephony/soi/TransportData;
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/soi/SoiManager;->protocols:[Lcom/android/internal/telephony/soi/IProtocolStore;

    add-int/lit8 v2, p4, -0x1

    aget-object v1, v1, v2

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/soi/IProtocolStore;->sendToTransport(Lcom/android/internal/telephony/soi/TransportData;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/soi/exception/SoiException; {:try_start_0 .. :try_end_0} :catch_0

    .line 410
    :goto_0
    return-void

    .line 405
    :catch_0
    move-exception v6

    .line 406
    .local v6, "e":Lcom/android/internal/telephony/soi/exception/SoiException;
    invoke-virtual {v6}, Lcom/android/internal/telephony/soi/exception/SoiException;->printStackTrace()V

    .line 407
    const-string v1, "SoiManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SoiException occurs, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Lcom/android/internal/telephony/soi/exception/SoiException;->getCauseValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/soi/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    const/4 v1, 0x0

    invoke-static {p3, v1}, Lcom/android/internal/telephony/soi/Transport;->sendGenericError(Landroid/os/Message;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private getCurrentProtocol()Lcom/android/internal/telephony/soi/IProtocolStore;
    .locals 3

    .prologue
    .line 413
    const-string v0, "SoiManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentProtocol(), smsformat = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/soi/SoiManager;->smsFormat:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    sget-object v0, Lcom/android/internal/telephony/soi/SoiManager;->protocols:[Lcom/android/internal/telephony/soi/IProtocolStore;

    sget v1, Lcom/android/internal/telephony/soi/SoiManager;->smsFormat:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static declared-synchronized getDefault()Lcom/android/internal/telephony/soi/SoiManager;
    .locals 2

    .prologue
    .line 82
    const-class v1, Lcom/android/internal/telephony/soi/SoiManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/soi/SoiManager;->sInstance:Lcom/android/internal/telephony/soi/SoiManager;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Lcom/android/internal/telephony/soi/SoiManager;

    invoke-direct {v0}, Lcom/android/internal/telephony/soi/SoiManager;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/soi/SoiManager;->sInstance:Lcom/android/internal/telephony/soi/SoiManager;

    .line 85
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/soi/SoiManager;->sInstance:Lcom/android/internal/telephony/soi/SoiManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getSmsFormat()I
    .locals 2

    .prologue
    .line 95
    sget-object v1, Lcom/android/internal/telephony/soi/SoiManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 96
    :try_start_0
    sget v0, Lcom/android/internal/telephony/soi/SoiManager;->smsFormat:I

    monitor-exit v1

    return v0

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 70
    sget-object v0, Lcom/android/internal/telephony/soi/SoiManager;->protocols:[Lcom/android/internal/telephony/soi/IProtocolStore;

    const/4 v1, 0x0

    new-instance v2, Lcom/android/internal/telephony/soi/GsmProtocolStore;

    invoke-direct {v2}, Lcom/android/internal/telephony/soi/GsmProtocolStore;-><init>()V

    aput-object v2, v0, v1

    .line 71
    sget-object v0, Lcom/android/internal/telephony/soi/SoiManager;->protocols:[Lcom/android/internal/telephony/soi/IProtocolStore;

    const/4 v1, 0x1

    new-instance v2, Lcom/android/internal/telephony/soi/CdmaProtocolStore;

    invoke-direct {v2}, Lcom/android/internal/telephony/soi/CdmaProtocolStore;-><init>()V

    aput-object v2, v0, v1

    .line 72
    return-void
.end method

.method private notifyResponse(ILandroid/os/AsyncResult;)V
    .locals 2
    .param p1, "cmd"    # I
    .param p2, "result"    # Landroid/os/AsyncResult;

    .prologue
    .line 485
    iget-object v0, p0, Lcom/android/internal/telephony/soi/SoiManager;->rilNotifier:Lcom/android/internal/telephony/soi/IRilResponseNotifier;

    if-nez v0, :cond_0

    .line 486
    const-string v0, "SoiManager"

    const-string v1, "notifyResponse() need ril Constructors"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    :goto_0
    return-void

    .line 489
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/soi/SoiManager;->rilNotifier:Lcom/android/internal/telephony/soi/IRilResponseNotifier;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/soi/IRilResponseNotifier;->notify(ILandroid/os/AsyncResult;)V

    goto :goto_0
.end method

.method private sendImsSms(Ljava/lang/String;[BIILandroid/os/Message;)V
    .locals 8
    .param p1, "smsc"    # Ljava/lang/String;
    .param p2, "pdu"    # [B
    .param p3, "retry"    # I
    .param p4, "messageRef"    # I
    .param p5, "result"    # Landroid/os/Message;

    .prologue
    .line 303
    const-string v1, "SoiManager"

    const-string v2, "sendImsSms()"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    new-instance v0, Lcom/android/internal/telephony/soi/TransportData;

    const/4 v1, 0x0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/soi/TransportData;-><init>(ILjava/lang/String;[BIILandroid/os/Message;)V

    .line 312
    .local v0, "data":Lcom/android/internal/telephony/soi/TransportData;
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/soi/SoiManager;->getCurrentProtocol()Lcom/android/internal/telephony/soi/IProtocolStore;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/soi/IProtocolStore;->sendToTransport(Lcom/android/internal/telephony/soi/TransportData;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/soi/exception/SoiException; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    :goto_0
    return-void

    .line 313
    :catch_0
    move-exception v7

    .line 314
    .local v7, "e":Lcom/android/internal/telephony/soi/exception/SoiException;
    invoke-virtual {v7}, Lcom/android/internal/telephony/soi/exception/SoiException;->printStackTrace()V

    .line 315
    const-string v1, "SoiManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SoiException occurs, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Lcom/android/internal/telephony/soi/exception/SoiException;->getCauseValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/soi/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    new-instance v1, Lcom/android/internal/telephony/SmsResponse;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v1, p4, v2, v3}, Lcom/android/internal/telephony/SmsResponse;-><init>(ILjava/lang/String;I)V

    invoke-static {p5, v1}, Lcom/android/internal/telephony/soi/Transport;->sendGenericError(Landroid/os/Message;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private sendImsSms(Ljava/lang/String;[BIILandroid/os/Message;I)V
    .locals 8
    .param p1, "smsc"    # Ljava/lang/String;
    .param p2, "pdu"    # [B
    .param p3, "retry"    # I
    .param p4, "messageRef"    # I
    .param p5, "result"    # Landroid/os/Message;
    .param p6, "smsFormat"    # I

    .prologue
    .line 321
    const-string v1, "SoiManager"

    const-string v2, "sendImsSms()"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    new-instance v0, Lcom/android/internal/telephony/soi/TransportData;

    const/4 v1, 0x0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/soi/TransportData;-><init>(ILjava/lang/String;[BIILandroid/os/Message;)V

    .line 330
    .local v0, "data":Lcom/android/internal/telephony/soi/TransportData;
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/soi/SoiManager;->protocols:[Lcom/android/internal/telephony/soi/IProtocolStore;

    add-int/lit8 v2, p6, -0x1

    aget-object v1, v1, v2

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/soi/IProtocolStore;->sendToTransport(Lcom/android/internal/telephony/soi/TransportData;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/soi/exception/SoiException; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    :goto_0
    return-void

    .line 331
    :catch_0
    move-exception v7

    .line 332
    .local v7, "e":Lcom/android/internal/telephony/soi/exception/SoiException;
    invoke-virtual {v7}, Lcom/android/internal/telephony/soi/exception/SoiException;->printStackTrace()V

    .line 333
    const-string v1, "SoiManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SoiException occurs, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Lcom/android/internal/telephony/soi/exception/SoiException;->getCauseValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/soi/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    new-instance v1, Lcom/android/internal/telephony/SmsResponse;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v1, p4, v2, v3}, Lcom/android/internal/telephony/SmsResponse;-><init>(ILjava/lang/String;I)V

    invoke-static {p5, v1}, Lcom/android/internal/telephony/soi/Transport;->sendGenericError(Landroid/os/Message;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static setSmsFormat(I)V
    .locals 2
    .param p0, "smsFormat"    # I

    .prologue
    .line 101
    sget-object v1, Lcom/android/internal/telephony/soi/SoiManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 102
    :try_start_0
    sput p0, Lcom/android/internal/telephony/soi/SoiManager;->smsFormat:I

    .line 103
    monitor-exit v1

    .line 104
    return-void

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public acknowledgeIncomingGsmSmsWithPdu(ZLjava/lang/String;Landroid/os/Message;)V
    .locals 5
    .param p1, "success"    # Z
    .param p2, "ackPdu"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 433
    const-string v2, "SoiManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "acknowledgeIncomingGsmSmsWithPdu(), success = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    new-instance v0, Lcom/android/internal/telephony/soi/TransportData;

    const/4 v2, 0x2

    invoke-direct {v0, v2, p1, p2, p3}, Lcom/android/internal/telephony/soi/TransportData;-><init>(IZLjava/lang/String;Landroid/os/Message;)V

    .line 439
    .local v0, "data":Lcom/android/internal/telephony/soi/TransportData;
    :try_start_0
    sget-object v2, Lcom/android/internal/telephony/soi/SoiManager;->protocols:[Lcom/android/internal/telephony/soi/IProtocolStore;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-interface {v2, v0}, Lcom/android/internal/telephony/soi/IProtocolStore;->sendToTransport(Lcom/android/internal/telephony/soi/TransportData;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/soi/exception/SoiException; {:try_start_0 .. :try_end_0} :catch_0

    .line 445
    :goto_0
    return-void

    .line 440
    :catch_0
    move-exception v1

    .line 441
    .local v1, "e":Lcom/android/internal/telephony/soi/exception/SoiException;
    invoke-virtual {v1}, Lcom/android/internal/telephony/soi/exception/SoiException;->printStackTrace()V

    .line 442
    const-string v2, "SoiManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SoiException occurs, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/internal/telephony/soi/exception/SoiException;->getCauseValue()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/soi/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    const/4 v2, 0x0

    invoke-static {p3, v2}, Lcom/android/internal/telephony/soi/Transport;->sendGenericError(Landroid/os/Message;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public acknowledgeLastIncomingCdmaSms(ZILandroid/os/Message;)V
    .locals 2
    .param p1, "success"    # Z
    .param p2, "cause"    # I
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 426
    const-string v0, "SoiManager"

    const-string v1, "acknowledgeLastIncomingCdmaSms()"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/soi/SoiManager;->acknowledgeLastIncomingSms(ZILandroid/os/Message;I)V

    .line 429
    return-void
.end method

.method public acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V
    .locals 2
    .param p1, "success"    # Z
    .param p2, "cause"    # I
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 419
    const-string v0, "SoiManager"

    const-string v1, "acknowledgeLastIncomingGsmSms()"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/soi/SoiManager;->acknowledgeLastIncomingSms(ZILandroid/os/Message;I)V

    .line 422
    return-void
.end method

.method public getImsRegistrationState(Landroid/os/Message;)V
    .locals 6
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 372
    const-string v3, "SoiManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getImsRegistrationState(), imsStatus = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/internal/telephony/soi/SoiManager;->imsStatus:I

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/soi/SoiManager;->imsStatusToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " smsFormat = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/internal/telephony/soi/SoiManager;->smsFormat:I

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/soi/SoiManager;->smsFormatToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    const/4 v3, 0x2

    new-array v0, v3, [I

    .line 377
    .local v0, "response":[I
    sget-object v3, Lcom/android/internal/telephony/soi/SoiManager;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 378
    const/4 v4, 0x0

    :try_start_0
    sget v5, Lcom/android/internal/telephony/soi/SoiManager;->imsStatus:I

    if-ne v5, v1, :cond_0

    :goto_0
    aput v1, v0, v4

    .line 379
    const/4 v1, 0x1

    sget v2, Lcom/android/internal/telephony/soi/SoiManager;->smsFormat:I

    aput v2, v0, v1

    .line 380
    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/android/internal/telephony/soi/Transport;->sendResponse(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 381
    monitor-exit v3

    .line 382
    return-void

    :cond_0
    move v1, v2

    .line 378
    goto :goto_0

    .line 381
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSpec()Lcom/android/internal/telephony/soi/Spec;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/internal/telephony/soi/SoiManager;->spec:Lcom/android/internal/telephony/soi/Spec;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Lcom/android/internal/telephony/soi/SpecStore;

    invoke-direct {v0}, Lcom/android/internal/telephony/soi/SpecStore;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/soi/SpecStore;->createSpec()Lcom/android/internal/telephony/soi/Spec;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/soi/SoiManager;->spec:Lcom/android/internal/telephony/soi/Spec;

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/soi/SoiManager;->spec:Lcom/android/internal/telephony/soi/Spec;

    return-object v0
.end method

.method public imsStatusToString(I)Ljava/lang/String;
    .locals 3
    .param p1, "status"    # I

    .prologue
    .line 493
    packed-switch p1, :pswitch_data_0

    .line 503
    const-string v0, "SoiManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid imsStatus, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    const-string v0, "invalid imsStatus"

    :goto_0
    return-object v0

    .line 495
    :pswitch_0
    const-string v0, "Value:0: IMS_STATUS_INIT"

    goto :goto_0

    .line 497
    :pswitch_1
    const-string v0, "Value:1: IMS_STATUS_READY"

    goto :goto_0

    .line 499
    :pswitch_2
    const-string v0, "Value:2: IMS_STATUS_LIMITED"

    goto :goto_0

    .line 501
    :pswitch_3
    const-string v0, "Value:3: IMS_STATUS_NOT_READY"

    goto :goto_0

    .line 493
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public isImsSmsSupported()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 107
    sget-object v1, Lcom/android/internal/telephony/soi/SoiManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 108
    :try_start_0
    sget v2, Lcom/android/internal/telephony/soi/SoiManager;->imsStatus:I

    if-ne v2, v0, :cond_0

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public moSendTest(IILandroid/os/Message;)V
    .locals 9
    .param p1, "retry"    # I
    .param p2, "messageRef"    # I
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 523
    const-string v8, "06912801009901"

    .line 525
    .local v8, "smscBcd":Ljava/lang/String;
    invoke-static {v8}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/soi/RpMessage;->getAddressStrFromBCDwithLength([B)Ljava/lang/String;

    move-result-object v1

    .line 526
    .local v1, "smsc":Ljava/lang/String;
    const-string v7, "01000b811020410763f300080431533142"

    .line 527
    .local v7, "pdu":Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/soi/SoiManager;->getDefault()Lcom/android/internal/telephony/soi/SoiManager;

    move-result-object v0

    invoke-static {v7}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v6, 0x1

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/soi/SoiManager;->sendImsSms(Ljava/lang/String;[BIILandroid/os/Message;I)V

    .line 529
    return-void
.end method

.method public notifyCdmaNewSms(Landroid/os/AsyncResult;)V
    .locals 2
    .param p1, "result"    # Landroid/os/AsyncResult;

    .prologue
    .line 464
    const-string v0, "SoiManager"

    const-string v1, "notifyCdmaMtSms()"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    const/16 v0, 0x3fc

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/soi/SoiManager;->notifyResponse(ILandroid/os/AsyncResult;)V

    .line 466
    return-void
.end method

.method public notifyMoSms(Lcom/android/internal/telephony/soi/ImsPdu;)I
    .locals 4
    .param p1, "imsPdu"    # Lcom/android/internal/telephony/soi/ImsPdu;

    .prologue
    const/4 v3, 0x1

    .line 259
    const-string v0, "SoiManager"

    const-string v1, "notifyMoSms()"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    if-eqz p1, :cond_0

    .line 261
    const/4 v0, 0x2

    invoke-virtual {p1}, Lcom/android/internal/telephony/soi/ImsPdu;->getSmsFormat()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 262
    const-string v0, "SoiManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SMS Flow : CDMA Format Mo :::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/soi/ImsPdu;->getData()[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    :goto_0
    sget-boolean v0, Lcom/android/internal/telephony/soi/GsmRelayTest;->MO_TEST_ENABLE:Z

    if-eqz v0, :cond_2

    .line 274
    const-string v0, "SoiManager"

    const-string v1, "notifyMoSms() MO_TEST_ENABLE"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    :cond_0
    :goto_1
    return v3

    .line 264
    :cond_1
    const-string v0, "SoiManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SMS Flow : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/soi/ImsPdu;->getDataRpMti()B

    move-result v2

    invoke-static {v2}, Lcom/android/internal/telephony/soi/RpMessage;->getStringMti(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "::: RPDU : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/soi/ImsPdu;->getData()[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 277
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/soi/SoiManager;->smsListener:Lcom/android/internal/telephony/soi/ISmsEventListener;

    if-eqz v0, :cond_3

    .line 279
    iget-object v0, p0, Lcom/android/internal/telephony/soi/SoiManager;->smsListener:Lcom/android/internal/telephony/soi/ISmsEventListener;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/soi/ISmsEventListener;->sendMoSms(Lcom/android/internal/telephony/soi/ImsPdu;)I

    .line 281
    :cond_3
    const-string v0, "SoiManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyMoSms() + ImsPdu : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public notifyNewSms(Landroid/os/AsyncResult;)V
    .locals 2
    .param p1, "result"    # Landroid/os/AsyncResult;

    .prologue
    .line 470
    const-string v0, "SoiManager"

    const-string v1, "notifyGsmMtSms()"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    const/16 v0, 0x3eb

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/soi/SoiManager;->notifyResponse(ILandroid/os/AsyncResult;)V

    .line 472
    return-void
.end method

.method public notifyNewSmsOnSim(Landroid/os/AsyncResult;)V
    .locals 1
    .param p1, "result"    # Landroid/os/AsyncResult;

    .prologue
    .line 481
    const/16 v0, 0x3ed

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/soi/SoiManager;->notifyResponse(ILandroid/os/AsyncResult;)V

    .line 482
    return-void
.end method

.method public notifyNewSmsStatusReport(Landroid/os/AsyncResult;)V
    .locals 1
    .param p1, "result"    # Landroid/os/AsyncResult;

    .prologue
    .line 476
    const/16 v0, 0x3ec

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/soi/SoiManager;->notifyResponse(ILandroid/os/AsyncResult;)V

    .line 477
    return-void
.end method

.method public registerRilResponseListener(Lcom/android/internal/telephony/soi/IRilResponseBroker;)V
    .locals 3
    .param p1, "listener"    # Lcom/android/internal/telephony/soi/IRilResponseBroker;

    .prologue
    const/4 v2, 0x1

    .line 292
    const-string v0, "SoiManager"

    const-string v1, "registerRilResponseListener()"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    new-instance v0, Lcom/android/internal/telephony/soi/RilResponseNotifier;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/soi/RilResponseNotifier;-><init>(Lcom/android/internal/telephony/soi/IRilResponseBroker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/soi/SoiManager;->rilNotifier:Lcom/android/internal/telephony/soi/IRilResponseNotifier;

    .line 296
    sget-boolean v0, Lcom/android/internal/telephony/soi/GsmRelayTest;->MO_TEST_ENABLE:Z

    if-eqz v0, :cond_0

    .line 297
    sput v2, Lcom/android/internal/telephony/soi/SoiManager;->imsStatus:I

    .line 298
    sput v2, Lcom/android/internal/telephony/soi/SoiManager;->smsFormat:I

    .line 300
    :cond_0
    return-void
.end method

.method public registerSmsEventListener(Lcom/android/internal/telephony/soi/ISmsEventListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/internal/telephony/soi/ISmsEventListener;

    .prologue
    .line 288
    iput-object p1, p0, Lcom/android/internal/telephony/soi/SoiManager;->smsListener:Lcom/android/internal/telephony/soi/ISmsEventListener;

    .line 289
    return-void
.end method

.method public reportMoStatus(III)I
    .locals 10
    .param p1, "status"    # I
    .param p2, "format"    # I
    .param p3, "retryAfter"    # I

    .prologue
    const/4 v9, 0x4

    const/4 v2, 0x2

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v8, 0x1

    .line 195
    const-string v5, "SoiManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SMS Flow : reportMoStatus(), status: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    if-ne v2, p2, :cond_2

    .line 197
    if-ne p1, v8, :cond_0

    move v2, v3

    .line 198
    .local v2, "moStauts":I
    :cond_0
    iget-boolean v5, p0, Lcom/android/internal/telephony/soi/SoiManager;->mCdmaTest:Z

    if-ne v5, v8, :cond_1

    .line 199
    const/4 v2, 0x2

    .line 200
    new-instance v0, Lcom/android/internal/telephony/soi/TransportData;

    invoke-direct {v0, v9, p3, v2}, Lcom/android/internal/telephony/soi/TransportData;-><init>(III)V

    .line 201
    .local v0, "data":Lcom/android/internal/telephony/soi/TransportData;
    sget-object v4, Lcom/android/internal/telephony/soi/SoiManager;->protocols:[Lcom/android/internal/telephony/soi/IProtocolStore;

    aget-object v4, v4, v8

    invoke-interface {v4, v0}, Lcom/android/internal/telephony/soi/IProtocolStore;->sendToTransport(Lcom/android/internal/telephony/soi/TransportData;)V

    .line 239
    .end local v0    # "data":Lcom/android/internal/telephony/soi/TransportData;
    .end local v2    # "moStauts":I
    :goto_0
    return v3

    .line 205
    .restart local v2    # "moStauts":I
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/soi/TransportData;

    invoke-direct {v0, v9, p3, v2}, Lcom/android/internal/telephony/soi/TransportData;-><init>(III)V

    .line 207
    .restart local v0    # "data":Lcom/android/internal/telephony/soi/TransportData;
    :try_start_0
    sget-object v5, Lcom/android/internal/telephony/soi/SoiManager;->protocols:[Lcom/android/internal/telephony/soi/IProtocolStore;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-interface {v5, v0}, Lcom/android/internal/telephony/soi/IProtocolStore;->sendToTransport(Lcom/android/internal/telephony/soi/TransportData;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/soi/exception/SoiException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 209
    :catch_0
    move-exception v1

    .line 210
    .local v1, "e":Lcom/android/internal/telephony/soi/exception/SoiException;
    invoke-virtual {v1}, Lcom/android/internal/telephony/soi/exception/SoiException;->printStackTrace()V

    .line 211
    const-string v3, "SoiManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SoiException occurs, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/internal/telephony/soi/exception/SoiException;->getCauseValue()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/internal/telephony/soi/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v4

    .line 212
    goto :goto_0

    .line 215
    .end local v0    # "data":Lcom/android/internal/telephony/soi/TransportData;
    .end local v1    # "e":Lcom/android/internal/telephony/soi/exception/SoiException;
    .end local v2    # "moStauts":I
    :cond_2
    if-ne p2, v8, :cond_4

    .line 216
    if-eq v8, p1, :cond_3

    .line 217
    const-string v5, "SoiManager"

    const-string v6, "SMS Flow : IMS_ERROR_IND"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    new-instance v0, Lcom/android/internal/telephony/soi/RelayData;

    const/4 v5, 0x3

    invoke-direct {v0, v5, p1, p3}, Lcom/android/internal/telephony/soi/RelayData;-><init>(III)V

    .line 225
    .local v0, "data":Lcom/android/internal/telephony/soi/RelayData;
    :try_start_1
    sget-object v5, Lcom/android/internal/telephony/soi/SoiManager;->protocols:[Lcom/android/internal/telephony/soi/IProtocolStore;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-interface {v5, v0}, Lcom/android/internal/telephony/soi/IProtocolStore;->sendToRelay(Lcom/android/internal/telephony/soi/RelayData;)V
    :try_end_1
    .catch Lcom/android/internal/telephony/soi/exception/SoiException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 227
    :catch_1
    move-exception v1

    .line 228
    .restart local v1    # "e":Lcom/android/internal/telephony/soi/exception/SoiException;
    const-string v3, "SoiManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SoiException occurs, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/internal/telephony/soi/exception/SoiException;->getCauseValue()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/internal/telephony/soi/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v4

    .line 229
    goto :goto_0

    .line 233
    .end local v0    # "data":Lcom/android/internal/telephony/soi/RelayData;
    .end local v1    # "e":Lcom/android/internal/telephony/soi/exception/SoiException;
    :cond_3
    const-string v4, "SoiManager"

    const-string v5, "SMS Flow : CP_ACK_N"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string v4, "SoiManager"

    const-string v5, "reportMoStatus(), success to send mo"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move v3, v4

    .line 237
    goto :goto_0
.end method

.method public reportMtSms(Lcom/android/internal/telephony/soi/ImsPdu;)I
    .locals 14
    .param p1, "pdu"    # Lcom/android/internal/telephony/soi/ImsPdu;

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v8, -0x2

    const/4 v6, -0x1

    const/4 v7, 0x0

    .line 127
    if-eqz p1, :cond_7

    .line 128
    const-string v9, "SoiManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SMS Flow : reportMtSms(), pdu = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-virtual {p1}, Lcom/android/internal/telephony/soi/ImsPdu;->getSmsFormat()I

    move-result v9

    if-ne v13, v9, :cond_4

    .line 131
    :try_start_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/soi/ImsPdu;->getData()[B

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->createFromRawPdu([B)Lcom/android/internal/telephony/soi/CdmaTransportMessage;

    move-result-object v1

    .line 132
    .local v1, "cdmaMessage":Lcom/android/internal/telephony/soi/CdmaTransportMessage;
    invoke-virtual {v1}, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->getTeleserviceId()I

    move-result v8

    const/16 v9, 0x1007

    if-ne v8, v9, :cond_3

    .line 133
    invoke-virtual {v1}, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->getBearerData()[B

    move-result-object v8

    if-nez v8, :cond_0

    .line 134
    const-string v7, "SoiManager"

    const-string v8, "WMS_TELESERVICE_CATPT ERROR getBearerData == null"

    invoke-static {v7, v8}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    .end local v1    # "cdmaMessage":Lcom/android/internal/telephony/soi/CdmaTransportMessage;
    :goto_0
    return v6

    .line 137
    .restart local v1    # "cdmaMessage":Lcom/android/internal/telephony/soi/CdmaTransportMessage;
    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->getBearerData()[B

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decode([B)Lcom/android/internal/telephony/cdma/sms/BearerData;

    move-result-object v0

    .line 138
    .local v0, "bd":Lcom/android/internal/telephony/cdma/sms/BearerData;
    if-eqz v0, :cond_1

    iget-object v8, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    if-nez v8, :cond_2

    .line 139
    :cond_1
    const-string v7, "SoiManager"

    const-string v8, "WMS_TELESERVICE_CATPT ERROR bd == null"

    invoke-static {v7, v8}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/soi/exception/SoiException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 152
    .end local v0    # "bd":Lcom/android/internal/telephony/cdma/sms/BearerData;
    .end local v1    # "cdmaMessage":Lcom/android/internal/telephony/soi/CdmaTransportMessage;
    :catch_0
    move-exception v3

    .line 153
    .local v3, "e":Lcom/android/internal/telephony/soi/exception/SoiException;
    invoke-virtual {v3}, Lcom/android/internal/telephony/soi/exception/SoiException;->printStackTrace()V

    .line 154
    const-string v7, "SoiManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SoiException occurs, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lcom/android/internal/telephony/soi/exception/SoiException;->getCauseValue()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/internal/telephony/soi/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 142
    .end local v3    # "e":Lcom/android/internal/telephony/soi/exception/SoiException;
    .restart local v0    # "bd":Lcom/android/internal/telephony/cdma/sms/BearerData;
    .restart local v1    # "cdmaMessage":Lcom/android/internal/telephony/soi/CdmaTransportMessage;
    :cond_2
    :try_start_1
    new-instance v4, Lcom/android/internal/telephony/soi/TransportData;

    const/4 v8, 0x3

    iget-object v9, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v9, v9, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    invoke-direct {v4, v8, v9}, Lcom/android/internal/telephony/soi/TransportData;-><init>(I[B)V

    .line 143
    .local v4, "gsmData":Lcom/android/internal/telephony/soi/TransportData;
    const/16 v8, 0x100

    invoke-virtual {v4, v8}, Lcom/android/internal/telephony/soi/TransportData;->setMessageRef(I)V

    .line 144
    const-string v8, "0181"

    invoke-virtual {v4, v8}, Lcom/android/internal/telephony/soi/TransportData;->setScAddress(Ljava/lang/String;)V

    .line 145
    sget-object v8, Lcom/android/internal/telephony/soi/SoiManager;->protocols:[Lcom/android/internal/telephony/soi/IProtocolStore;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    invoke-interface {v8, v4}, Lcom/android/internal/telephony/soi/IProtocolStore;->sendToTransport(Lcom/android/internal/telephony/soi/TransportData;)V

    .end local v0    # "bd":Lcom/android/internal/telephony/cdma/sms/BearerData;
    .end local v4    # "gsmData":Lcom/android/internal/telephony/soi/TransportData;
    :goto_1
    move v6, v7

    .line 157
    goto :goto_0

    .line 149
    :cond_3
    new-instance v2, Lcom/android/internal/telephony/soi/TransportData;

    const/4 v8, 0x3

    invoke-virtual {p1}, Lcom/android/internal/telephony/soi/ImsPdu;->getData()[B

    move-result-object v9

    invoke-direct {v2, v8, v9}, Lcom/android/internal/telephony/soi/TransportData;-><init>(I[B)V

    .line 150
    .local v2, "data":Lcom/android/internal/telephony/soi/TransportData;
    sget-object v8, Lcom/android/internal/telephony/soi/SoiManager;->protocols:[Lcom/android/internal/telephony/soi/IProtocolStore;

    const/4 v9, 0x1

    aget-object v8, v8, v9

    invoke-interface {v8, v2}, Lcom/android/internal/telephony/soi/IProtocolStore;->sendToTransport(Lcom/android/internal/telephony/soi/TransportData;)V
    :try_end_1
    .catch Lcom/android/internal/telephony/soi/exception/SoiException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 158
    .end local v1    # "cdmaMessage":Lcom/android/internal/telephony/soi/CdmaTransportMessage;
    .end local v2    # "data":Lcom/android/internal/telephony/soi/TransportData;
    :cond_4
    invoke-virtual {p1}, Lcom/android/internal/telephony/soi/ImsPdu;->getSmsFormat()I

    move-result v9

    if-ne v12, v9, :cond_6

    .line 160
    const/4 v5, 0x1

    .line 161
    .local v5, "messageSet":I
    new-instance v2, Lcom/android/internal/telephony/soi/RelayData;

    invoke-virtual {p1}, Lcom/android/internal/telephony/soi/ImsPdu;->getData()[B

    move-result-object v8

    invoke-direct {v2, v5, v8}, Lcom/android/internal/telephony/soi/RelayData;-><init>(I[B)V

    .line 163
    .local v2, "data":Lcom/android/internal/telephony/soi/RelayData;
    const-string v8, "SoiManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SMS Flow : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/android/internal/telephony/soi/ImsPdu;->getDataRpMti()B

    move-result v10

    invoke-static {v10}, Lcom/android/internal/telephony/soi/RpMessage;->getStringMti(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "::: RPDU : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/android/internal/telephony/soi/ImsPdu;->getData()[B

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-virtual {p1}, Lcom/android/internal/telephony/soi/ImsPdu;->getData()[B

    move-result-object v8

    if-eqz v8, :cond_5

    invoke-virtual {p1}, Lcom/android/internal/telephony/soi/ImsPdu;->getData()[B

    move-result-object v8

    array-length v8, v8

    if-ge v8, v13, :cond_5

    .line 173
    const-string v6, "SoiManager"

    const-string v8, "SMR recd CP_USER_DATA too short"

    invoke-static {v6, v8}, Lcom/android/internal/telephony/soi/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v7

    .line 174
    goto/16 :goto_0

    .line 178
    :cond_5
    :try_start_2
    sget-object v8, Lcom/android/internal/telephony/soi/SoiManager;->protocols:[Lcom/android/internal/telephony/soi/IProtocolStore;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    invoke-interface {v8, v2}, Lcom/android/internal/telephony/soi/IProtocolStore;->sendToRelay(Lcom/android/internal/telephony/soi/RelayData;)V
    :try_end_2
    .catch Lcom/android/internal/telephony/soi/exception/SoiException; {:try_start_2 .. :try_end_2} :catch_1

    move v6, v7

    .line 183
    goto/16 :goto_0

    .line 179
    :catch_1
    move-exception v3

    .line 180
    .restart local v3    # "e":Lcom/android/internal/telephony/soi/exception/SoiException;
    const-string v7, "SoiManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SoiException occurs, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lcom/android/internal/telephony/soi/exception/SoiException;->getCauseValue()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/internal/telephony/soi/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v2    # "data":Lcom/android/internal/telephony/soi/RelayData;
    .end local v3    # "e":Lcom/android/internal/telephony/soi/exception/SoiException;
    .end local v5    # "messageSet":I
    :cond_6
    move v6, v8

    .line 186
    goto/16 :goto_0

    :cond_7
    move v6, v8

    .line 189
    goto/16 :goto_0
.end method

.method public reportSmsMemoryStatus(ZLandroid/os/Message;)V
    .locals 5
    .param p1, "available"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 449
    const-string v2, "SoiManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reportSmsMemoryStatus(), available = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    new-instance v0, Lcom/android/internal/telephony/soi/TransportData;

    const/4 v2, 0x5

    invoke-direct {v0, v2, p1, p2}, Lcom/android/internal/telephony/soi/TransportData;-><init>(IZLandroid/os/Message;)V

    .line 454
    .local v0, "data":Lcom/android/internal/telephony/soi/TransportData;
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/soi/SoiManager;->getCurrentProtocol()Lcom/android/internal/telephony/soi/IProtocolStore;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/android/internal/telephony/soi/IProtocolStore;->sendToTransport(Lcom/android/internal/telephony/soi/TransportData;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/soi/exception/SoiException; {:try_start_0 .. :try_end_0} :catch_0

    .line 460
    :goto_0
    return-void

    .line 455
    :catch_0
    move-exception v1

    .line 456
    .local v1, "e":Lcom/android/internal/telephony/soi/exception/SoiException;
    invoke-virtual {v1}, Lcom/android/internal/telephony/soi/exception/SoiException;->printStackTrace()V

    .line 457
    const-string v2, "SoiManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SoiException occurs, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/internal/telephony/soi/exception/SoiException;->getCauseValue()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/soi/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    const/4 v2, 0x0

    invoke-static {p2, v2}, Lcom/android/internal/telephony/soi/Transport;->sendGenericError(Landroid/os/Message;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public sendImsCdmaSms([BIILandroid/os/Message;)V
    .locals 7
    .param p1, "pdu"    # [B
    .param p2, "retry"    # I
    .param p3, "messageRef"    # I
    .param p4, "result"    # Landroid/os/Message;

    .prologue
    .line 361
    const-string v0, "SoiManager"

    const-string v1, "sendImsCdmaSms()"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    sget-boolean v0, Lcom/android/internal/telephony/soi/GsmRelayTest;->MO_TEST_ENABLE:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/soi/SoiManager;->mCdmaTest:Z

    if-nez v0, :cond_0

    .line 363
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/internal/telephony/soi/SoiManager;->moSendTest(IILandroid/os/Message;)V

    .line 368
    :goto_0
    return-void

    .line 367
    :cond_0
    const/4 v1, 0x0

    const/4 v6, 0x2

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/soi/SoiManager;->sendImsSms(Ljava/lang/String;[BIILandroid/os/Message;I)V

    goto :goto_0
.end method

.method public sendImsGsmSms(Ljava/lang/String;Ljava/lang/String;IILandroid/os/Message;)V
    .locals 7
    .param p1, "smsc"    # Ljava/lang/String;
    .param p2, "pdu"    # Ljava/lang/String;
    .param p3, "retry"    # I
    .param p4, "messageRef"    # I
    .param p5, "result"    # Landroid/os/Message;

    .prologue
    .line 339
    const-string v0, "SoiManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendImsGsmSms(), smsc: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " retry = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " messageRef = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 342
    const-string v0, "SoiManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendImsGsmSms() smsc: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    tpdu: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    messageRef : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    :cond_0
    sget-boolean v0, Lcom/android/internal/telephony/soi/GsmRelayTest;->MO_3GPP_TEST_ENABLE:Z

    if-eqz v0, :cond_1

    .line 347
    invoke-virtual {p0, p3, p4, p5}, Lcom/android/internal/telephony/soi/SoiManager;->moSendTest(IILandroid/os/Message;)V

    .line 357
    :goto_0
    return-void

    .line 350
    :cond_1
    sget-boolean v0, Lcom/android/internal/telephony/soi/GsmRelayTest;->SCADDRESS_TEST_ENABLE:Z

    if-eqz v0, :cond_2

    .line 351
    const/4 p1, 0x0

    .line 355
    :cond_2
    invoke-static {p1}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/soi/RpMessage;->getAddressStrFromBCDwithLength([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v6, 0x1

    move-object v0, p0

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/soi/SoiManager;->sendImsSms(Ljava/lang/String;[BIILandroid/os/Message;I)V

    goto :goto_0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 89
    const-string v0, "SoiManager"

    const-string v1, "setContext()"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-static {p1}, Lcom/android/internal/telephony/soi/SmsUsimHandler;->setup(Landroid/content/Context;)V

    .line 91
    invoke-static {}, Lcom/android/internal/telephony/soi/SoiContext;->getInstance()Lcom/android/internal/telephony/soi/SoiContext;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/soi/SoiContext;->setContext(Landroid/content/Context;)V

    .line 92
    return-void
.end method

.method public smsFormatToString(I)Ljava/lang/String;
    .locals 3
    .param p1, "status"    # I

    .prologue
    .line 509
    packed-switch p1, :pswitch_data_0

    .line 517
    const-string v0, "SoiManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid imsStatus, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    const-string v0, "invalid imsStatus"

    :goto_0
    return-object v0

    .line 511
    :pswitch_0
    const-string v0, "Value:0: SMS_FORMAT_INVALID"

    goto :goto_0

    .line 513
    :pswitch_1
    const-string v0, "Value:1: SMS_FORMAT_3GPP"

    goto :goto_0

    .line 515
    :pswitch_2
    const-string v0, "Value:2: SMS_FORMAT_3GPP2"

    goto :goto_0

    .line 509
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public updateServiceStatus(I)I
    .locals 5
    .param p1, "status"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 244
    const-string v0, "SoiManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateServiceStatus(), status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/android/internal/telephony/soi/SoiManager;->rilNotifier:Lcom/android/internal/telephony/soi/IRilResponseNotifier;

    if-nez v0, :cond_0

    .line 246
    const-string v0, "SoiManager"

    const-string v1, "updateServiceStatus() need ril Constructors"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    :goto_0
    return v4

    .line 249
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/soi/SoiManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 250
    :try_start_0
    sput p1, Lcom/android/internal/telephony/soi/SoiManager;->imsStatus:I

    .line 251
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    const/16 v0, 0x40d

    new-instance v1, Landroid/os/AsyncResult;

    invoke-direct {v1, v3, v3, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/soi/SoiManager;->notifyResponse(ILandroid/os/AsyncResult;)V

    goto :goto_0

    .line 251
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public updateSmsFormat(I)I
    .locals 4
    .param p1, "format"    # I

    .prologue
    const/4 v3, 0x0

    .line 114
    const-string v0, "SoiManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSmsFormat(), format = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    sget-object v1, Lcom/android/internal/telephony/soi/SoiManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 116
    :try_start_0
    sput p1, Lcom/android/internal/telephony/soi/SoiManager;->smsFormat:I

    .line 118
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    const/16 v0, 0x40d

    new-instance v1, Landroid/os/AsyncResult;

    invoke-direct {v1, v3, v3, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/soi/SoiManager;->notifyResponse(ILandroid/os/AsyncResult;)V

    .line 122
    const/4 v0, 0x0

    return v0

    .line 118
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
