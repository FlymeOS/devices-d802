.class public Lcom/android/nfc/LSmartCardService;
.super Ljava/lang/Object;
.source "LSmartCardService.java"


# static fields
.field private static DBG:Z = false

.field private static INSTANCE:Lcom/android/nfc/LSmartCardService; = null

.field private static final SMART_CARD_SERVICE_CLASS:Ljava/lang/String; = "org.simalliance.openmobileapi.service.ISmartcardService"

.field static SeName:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "LSmartCardService"


# instance fields
.field public GPACConnection:Landroid/content/ServiceConnection;

.field private final mCallback:Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;

.field private mContext:Landroid/content/Context;

.field private final mError:Lorg/simalliance/openmobileapi/service/SmartcardError;

.field public mFlag_siwa:Z

.field public volatile mGpacAccessControlSvc:Lorg/simalliance/openmobileapi/service/ISmartcardService;

.field mIsCertificateAllowed:Ljava/lang/reflect/Method;

.field private mIsFirst:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    sget-boolean v0, Lcom/android/nfc/utils/LNfcLog;->DBG:Z

    sput-boolean v0, Lcom/android/nfc/LSmartCardService;->DBG:Z

    .line 43
    const-string v0, "ro.build.target_operator"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DTAG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.build.target_operator"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TMO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "SIM"

    :goto_0
    sput-object v0, Lcom/android/nfc/LSmartCardService;->SeName:Ljava/lang/String;

    return-void

    :cond_1
    const-string v0, "SIM: UICC"

    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-boolean v3, p0, Lcom/android/nfc/LSmartCardService;->mFlag_siwa:Z

    .line 41
    iput-boolean v3, p0, Lcom/android/nfc/LSmartCardService;->mIsFirst:Z

    .line 48
    new-instance v3, Lcom/android/nfc/LSmartCardService$1;

    invoke-direct {v3, p0}, Lcom/android/nfc/LSmartCardService$1;-><init>(Lcom/android/nfc/LSmartCardService;)V

    iput-object v3, p0, Lcom/android/nfc/LSmartCardService;->GPACConnection:Landroid/content/ServiceConnection;

    .line 62
    iput-object p1, p0, Lcom/android/nfc/LSmartCardService;->mContext:Landroid/content/Context;

    .line 64
    new-instance v3, Lcom/android/nfc/LSmartCardService$2;

    invoke-direct {v3, p0}, Lcom/android/nfc/LSmartCardService$2;-><init>(Lcom/android/nfc/LSmartCardService;)V

    iput-object v3, p0, Lcom/android/nfc/LSmartCardService;->mCallback:Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;

    .line 65
    new-instance v3, Lorg/simalliance/openmobileapi/service/SmartcardError;

    invoke-direct {v3}, Lorg/simalliance/openmobileapi/service/SmartcardError;-><init>()V

    iput-object v3, p0, Lcom/android/nfc/LSmartCardService;->mError:Lorg/simalliance/openmobileapi/service/SmartcardError;

    .line 67
    new-instance v1, Landroid/content/Intent;

    const-string v3, "org.simalliance.openmobileapi.service.ISmartcardService"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 68
    .local v1, "intentAC":Landroid/content/Intent;
    const-string v3, "org.simalliance.openmobileapi.service"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 69
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "org.simalliance.openmobileapi.service"

    const-string v5, "org.simalliance.openmobileapi.service.SmartcardService"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    .line 71
    iget-object v3, p0, Lcom/android/nfc/LSmartCardService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/nfc/LSmartCardService;->GPACConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v1, v4, v6}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    .line 72
    .local v2, "ret":Z
    sget-boolean v3, Lcom/android/nfc/LSmartCardService;->DBG:Z

    const-string v4, "LSmartCardService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[LSmartCardService]GPAC : bindService on startup!!! - result : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 75
    :try_start_0
    const-class v3, Lorg/simalliance/openmobileapi/service/ISmartcardService;

    const-string v4, "isCertificateAllowed"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, [Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-class v7, Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-class v7, Lorg/simalliance/openmobileapi/service/SmartcardError;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Lcom/android/nfc/LSmartCardService;->mIsCertificateAllowed:Ljava/lang/reflect/Method;

    .line 76
    sget-boolean v3, Lcom/android/nfc/LSmartCardService;->DBG:Z

    const-string v4, "LSmartCardService"

    const-string v5, "ISmartcardService.isCertificateAllowed is supported!"

    invoke-static {v3, v4, v5}, Lcom/android/nfc/utils/LNfcLog;->e(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :goto_0
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v3, Lcom/android/nfc/LSmartCardService;->DBG:Z

    const-string v4, "LSmartCardService"

    const-string v5, "ISmartcardService.isCertificateAllowed is not supported!"

    invoke-static {v3, v4, v5}, Lcom/android/nfc/utils/LNfcLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 23
    sget-boolean v0, Lcom/android/nfc/LSmartCardService;->DBG:Z

    return v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/nfc/LSmartCardService;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 147
    sget-object v0, Lcom/android/nfc/LSmartCardService;->INSTANCE:Lcom/android/nfc/LSmartCardService;

    if-nez v0, :cond_0

    .line 148
    new-instance v0, Lcom/android/nfc/LSmartCardService;

    invoke-direct {v0, p0}, Lcom/android/nfc/LSmartCardService;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/nfc/LSmartCardService;->INSTANCE:Lcom/android/nfc/LSmartCardService;

    .line 151
    :cond_0
    sget-object v0, Lcom/android/nfc/LSmartCardService;->INSTANCE:Lcom/android/nfc/LSmartCardService;

    return-object v0
.end method

.method private receivedSmartCardACInitializedIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x1

    .line 125
    iget-boolean v3, p0, Lcom/android/nfc/LSmartCardService;->mIsFirst:Z

    if-nez v3, :cond_0

    .line 126
    iput-boolean v7, p0, Lcom/android/nfc/LSmartCardService;->mIsFirst:Z

    .line 127
    sget-boolean v3, Lcom/android/nfc/LSmartCardService;->DBG:Z

    const-string v4, "LSmartCardService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[LSmartCardService](onReceive)firstRunning ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/nfc/LSmartCardService;->mIsFirst:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/nfc/utils/LNfcLog;->v(ZLjava/lang/String;Ljava/lang/String;)V

    .line 128
    sget-boolean v3, Lcom/android/nfc/LSmartCardService;->DBG:Z

    const-string v4, "LSmartCardService"

    const-string v5, "[LSmartCardService.Reciever]GPAC_LAUNCH"

    invoke-static {v3, v4, v5}, Lcom/android/nfc/utils/LNfcLog;->v(ZLjava/lang/String;Ljava/lang/String;)V

    .line 130
    new-instance v0, Landroid/content/Intent;

    const-string v3, "org.simalliance.openmobileapi.service.ISmartcardService"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 131
    .local v0, "intentAC":Landroid/content/Intent;
    const-string v3, "org.simalliance.openmobileapi.service"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 132
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "org.simalliance.openmobileapi.service"

    const-string v5, "org.simalliance.openmobileapi.service.SmartcardService"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 134
    iget-object v3, p0, Lcom/android/nfc/LSmartCardService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/nfc/LSmartCardService;->GPACConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v0, v4, v7}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    .line 135
    .local v2, "ret":Z
    sget-boolean v3, Lcom/android/nfc/LSmartCardService;->DBG:Z

    const-string v4, "LSmartCardService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[NfcService.Reciever]GPAC : bindService result : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/nfc/utils/LNfcLog;->v(ZLjava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-boolean v3, p0, Lcom/android/nfc/LSmartCardService;->mFlag_siwa:Z

    if-nez v3, :cond_0

    .line 138
    iput-boolean v7, p0, Lcom/android/nfc/LSmartCardService;->mFlag_siwa:Z

    .line 139
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.lge.nfc.start"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 140
    .local v1, "intentNfc":Landroid/content/Intent;
    sget-boolean v3, Lcom/android/nfc/LSmartCardService;->DBG:Z

    const-string v4, "LSmartCardService"

    const-string v5, "send action:com.lge.nfc.start *** testing ***"

    invoke-static {v3, v4, v5}, Lcom/android/nfc/utils/LNfcLog;->v(ZLjava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v3, p0, Lcom/android/nfc/LSmartCardService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 144
    .end local v0    # "intentAC":Landroid/content/Intent;
    .end local v1    # "intentNfc":Landroid/content/Intent;
    .end local v2    # "ret":Z
    :cond_0
    return-void
.end method


# virtual methods
.method public getSEName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lcom/android/nfc/LSmartCardService;->SeName:Ljava/lang/String;

    return-object v0
.end method

.method public isGPACCertificateAllowed(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "seName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 96
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    aput-object p2, v2, v1

    invoke-virtual {p0, p1, v2}, Lcom/android/nfc/LSmartCardService;->isGPACCertificateAllowed(Ljava/lang/String;[Ljava/lang/String;)[Z

    move-result-object v0

    .line 97
    .local v0, "ret":[Z
    if-eqz v0, :cond_0

    array-length v2, v0

    if-lez v2, :cond_0

    aget-boolean v1, v0, v1

    :cond_0
    return v1
.end method

.method public isGPACCertificateAllowed(Ljava/lang/String;[Ljava/lang/String;)[Z
    .locals 9
    .param p1, "seName"    # Ljava/lang/String;
    .param p2, "packageNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 101
    iget-object v4, p0, Lcom/android/nfc/LSmartCardService;->mGpacAccessControlSvc:Lorg/simalliance/openmobileapi/service/ISmartcardService;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/nfc/LSmartCardService;->mIsCertificateAllowed:Ljava/lang/reflect/Method;

    if-nez v4, :cond_1

    .line 102
    :cond_0
    sget-boolean v4, Lcom/android/nfc/LSmartCardService;->DBG:Z

    const-string v5, "LSmartCardService"

    const-string v6, "isGPACCertificateAllowed - mGpacAccessControlSvc or mIsCertificateAllowed is null"

    invoke-static {v4, v5, v6}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 117
    :goto_0
    return-object v3

    .line 108
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/android/nfc/LSmartCardService;->mIsCertificateAllowed:Ljava/lang/reflect/Method;

    iget-object v5, p0, Lcom/android/nfc/LSmartCardService;->mGpacAccessControlSvc:Lorg/simalliance/openmobileapi/service/ISmartcardService;

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    aput-object p2, v6, v7

    const/4 v7, 0x2

    iget-object v8, p0, Lcom/android/nfc/LSmartCardService;->mCallback:Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;

    aput-object v8, v6, v7

    const/4 v7, 0x3

    iget-object v8, p0, Lcom/android/nfc/LSmartCardService;->mError:Lorg/simalliance/openmobileapi/service/SmartcardError;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Z

    move-object v0, v4

    check-cast v0, [Z

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .local v3, "ret":[Z
    iget-object v4, p0, Lcom/android/nfc/LSmartCardService;->mError:Lorg/simalliance/openmobileapi/service/SmartcardError;

    invoke-virtual {v4}, Lorg/simalliance/openmobileapi/service/SmartcardError;->createException()Ljava/lang/Exception;

    move-result-object v2

    .line 115
    .local v2, "exp":Ljava/lang/Exception;
    sget-boolean v4, Lcom/android/nfc/LSmartCardService;->DBG:Z

    const-string v5, "LSmartCardService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[LSmartCardService]isGPACCertificateAllowed(Array API) : return SmartcardError:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 109
    .end local v2    # "exp":Ljava/lang/Exception;
    .end local v3    # "ret":[Z
    :catch_0
    move-exception v1

    .line 110
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v4, Lcom/android/nfc/LSmartCardService;->DBG:Z

    const-string v5, "LSmartCardService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isGPACCertificateAllowed - exception : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isGPACNFCEventAllowed(Ljava/lang/String;[Ljava/lang/String;[B)[Z
    .locals 8
    .param p1, "seName"    # Ljava/lang/String;
    .param p2, "packageNames"    # [Ljava/lang/String;
    .param p3, "aid"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/nfc/LSmartCardService;->mGpacAccessControlSvc:Lorg/simalliance/openmobileapi/service/ISmartcardService;

    if-nez v0, :cond_0

    .line 84
    const/4 v7, 0x0

    .line 92
    :goto_0
    return-object v7

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/LSmartCardService;->mGpacAccessControlSvc:Lorg/simalliance/openmobileapi/service/ISmartcardService;

    iget-object v4, p0, Lcom/android/nfc/LSmartCardService;->mCallback:Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;

    iget-object v5, p0, Lcom/android/nfc/LSmartCardService;->mError:Lorg/simalliance/openmobileapi/service/SmartcardError;

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    invoke-interface/range {v0 .. v5}, Lorg/simalliance/openmobileapi/service/ISmartcardService;->isNFCEventAllowed(Ljava/lang/String;[B[Ljava/lang/String;Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;Lorg/simalliance/openmobileapi/service/SmartcardError;)[Z

    move-result-object v7

    .line 89
    .local v7, "ret":[Z
    iget-object v0, p0, Lcom/android/nfc/LSmartCardService;->mError:Lorg/simalliance/openmobileapi/service/SmartcardError;

    invoke-virtual {v0}, Lorg/simalliance/openmobileapi/service/SmartcardError;->createException()Ljava/lang/Exception;

    move-result-object v6

    .line 90
    .local v6, "exp":Ljava/lang/Exception;
    sget-boolean v0, Lcom/android/nfc/LSmartCardService;->DBG:Z

    const-string v1, "LSmartCardService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[LSmartCardService]isGPACNFCEventAllowed : return SmartcardError:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
