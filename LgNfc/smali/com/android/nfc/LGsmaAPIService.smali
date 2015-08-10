.class public Lcom/android/nfc/LGsmaAPIService;
.super Lcom/lge/nfcaddon/IGsmaNfcController$Stub;
.source "LGsmaAPIService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/LGsmaAPIService$LGsmaAPIServiceCallback;
    }
.end annotation


# static fields
.field private static final ACTION_GSMA_NFC_ON:Ljava/lang/String; = "com.lge.nfc.action.GSMA_NFC_ON"

.field static final ACTION_GSMA_OFFHOSTSERVICE_ADD:Ljava/lang/String; = "com.android.nfc.action.GSMA_OFFHOSTSERVICE_ADD"

.field static final ACTION_GSMA_OFFHOSTSERVICE_REMOVE:Ljava/lang/String; = "com.android.nfc.action.GSMA_OFFHOSTSERVICE_REMOVE"

.field static final ACTION_TRANSACTION_DETECTED:Ljava/lang/String; = "android.nfc.action.TRANSACTION_DETECTED"

.field static final ACTION_TRANSACTION_EVENT:Ljava/lang/String; = "com.gsma.services.nfc.action.TRANSACTION_EVENT"

.field protected static final CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

.field private static DBG:Z = false

.field static final EXTRA_GSMA_OFFHOST_BANNER:Ljava/lang/String; = "com.android.nfc.extra.GSMA_OFFHOST_BANNER"

.field static final EXTRA_GSMA_OFFHOST_INFO:Ljava/lang/String; = "com.android.nfc.extra.GSMA_OFFHOST_INFO"

.field static final EXTRA_GSMA_OFFHOST_KEY:Ljava/lang/String; = "com.android.nfc.extra.GSMA_OFFHOST_KEY"

.field static final EXTRA_TRANS_AID:Ljava/lang/String; = "android.nfc.extra.AID"

.field static final EXTRA_TRANS_DATA:Ljava/lang/String; = "android.nfc.extra.DATA"

.field private static final GPAC_LAUNCH:Z = false

.field private static final GPAC_RESULT_VAILD_TIME:I = 0x1388

.field protected static final GSMA_API_JAR_NAME:[Ljava/lang/String;

.field protected static final GSMA_API_PACKAGE_NAME:[Ljava/lang/String;

.field public static final MIFARE_CLASSIC:I = 0x21

.field protected static final NFC_PERM:Ljava/lang/String; = "android.permission.NFC"

.field protected static final NFC_PERM_ERROR:Ljava/lang/String; = "NFC permission required"

.field public static final OMAPI:I = 0x50

.field static final OPENMOBILE_PACKAGE_NAME:Ljava/lang/String; = "org.simalliance.openmobileapi.service"

.field private static final SMARTCARD_SERVICE_CLASS:Ljava/lang/String; = "com.android.nfc.LSmartCardService"

.field private static final TAG:Ljava/lang/String; = "LGsmaAPIService"


# instance fields
.field mContext:Landroid/content/Context;

.field mGsmaAPIVer:Ljava/lang/String;

.field protected mGsmaNfcControllerCallback:Lcom/lge/nfcaddon/IGsmaNfcControllerCallback;

.field mGsmagetTransactionEventURIMethod:Ljava/lang/reflect/Method;

.field mIsGACConnectionAllowedMethod:Ljava/lang/reflect/Method;

.field mIsGPACCertificationAllowedArrayMethod:Ljava/lang/reflect/Method;

.field mIsGPACCertificationAllowedMethod:Ljava/lang/reflect/Method;

.field mIsGPACEventAllowedMethod:Ljava/lang/reflect/Method;

.field mIsMultiCast:Z

.field mNFCPermissionPackageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNfcEventsCacheTime:J

.field private mNfcFieldEventsCacheTime:J

.field private mNfcFieldEventsResults:[Z

.field private mNfcTransactionEventsResults:[Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field mSeName:Ljava/lang/String;

.field mSeekVersion:Ljava/lang/String;

.field mService:Lcom/android/nfc/LGsmaAPIService$LGsmaAPIServiceCallback;

.field mSmartCardServiceObject:Ljava/lang/Object;

.field mTransactionEventPackageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mTransactionIntentExtraAIDName:Ljava/lang/String;

.field mTransactionIntentExtraDATAName:Ljava/lang/String;

.field mTransactionIntentFilter:[Landroid/content/IntentFilter;

.field mTransactionIntentName:Ljava/lang/String;

.field mTransactionPendingIntent:Landroid/app/PendingIntent;

.field mTransactionPermissionName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 61
    sget-boolean v0, Lcom/android/nfc/utils/LNfcLog;->DBG:Z

    sput-boolean v0, Lcom/android/nfc/LGsmaAPIService;->DBG:Z

    .line 67
    invoke-static {}, Lcom/lge/nfcconfig/NfcConfigure;->getInstance()Lcom/lge/nfcconfig/NfcConfigure;

    move-result-object v0

    sput-object v0, Lcom/android/nfc/LGsmaAPIService;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    .line 128
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "com.gsma.services.nfc.jar"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/nfc/LGsmaAPIService;->GSMA_API_JAR_NAME:[Ljava/lang/String;

    .line 129
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "com.gsma.services.nfc"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/nfc/LGsmaAPIService;->GSMA_API_PACKAGE_NAME:[Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/android/nfc/LGsmaAPIService$LGsmaAPIServiceCallback;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/nfc/LGsmaAPIService$LGsmaAPIServiceCallback;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 131
    invoke-direct {p0}, Lcom/lge/nfcaddon/IGsmaNfcController$Stub;-><init>()V

    .line 101
    iput-object v5, p0, Lcom/android/nfc/LGsmaAPIService;->mNfcTransactionEventsResults:[Z

    .line 102
    iput-object v5, p0, Lcom/android/nfc/LGsmaAPIService;->mNfcFieldEventsResults:[Z

    .line 103
    iput-wide v6, p0, Lcom/android/nfc/LGsmaAPIService;->mNfcEventsCacheTime:J

    .line 104
    iput-wide v6, p0, Lcom/android/nfc/LGsmaAPIService;->mNfcFieldEventsCacheTime:J

    .line 126
    iput-boolean v4, p0, Lcom/android/nfc/LGsmaAPIService;->mIsMultiCast:Z

    .line 869
    new-instance v4, Lcom/android/nfc/LGsmaAPIService$1;

    invoke-direct {v4, p0}, Lcom/android/nfc/LGsmaAPIService$1;-><init>(Lcom/android/nfc/LGsmaAPIService;)V

    iput-object v4, p0, Lcom/android/nfc/LGsmaAPIService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 132
    iput-object p1, p0, Lcom/android/nfc/LGsmaAPIService;->mContext:Landroid/content/Context;

    .line 133
    iput-object p2, p0, Lcom/android/nfc/LGsmaAPIService;->mService:Lcom/android/nfc/LGsmaAPIService$LGsmaAPIServiceCallback;

    .line 136
    :try_start_0
    const-string v4, "com.android.nfc.LSmartCardService"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 137
    .local v2, "smartCardServiceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "getInstance"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 138
    .local v3, "smartCardServiceMethod":Ljava/lang/reflect/Method;
    const-string v4, "getSEName"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 140
    .local v1, "getSeNameMethod":Ljava/lang/reflect/Method;
    const-string v4, "isGPACNFCEventAllowed"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, [Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-class v7, [B

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, p0, Lcom/android/nfc/LGsmaAPIService;->mIsGPACEventAllowedMethod:Ljava/lang/reflect/Method;

    .line 141
    const-string v4, "isGPACCertificateAllowed"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, p0, Lcom/android/nfc/LGsmaAPIService;->mIsGPACCertificationAllowedMethod:Ljava/lang/reflect/Method;

    .line 142
    const-string v4, "isGPACCertificateAllowed"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, [Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, p0, Lcom/android/nfc/LGsmaAPIService;->mIsGPACCertificationAllowedArrayMethod:Ljava/lang/reflect/Method;

    .line 143
    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/nfc/LGsmaAPIService;->mContext:Landroid/content/Context;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lcom/android/nfc/LGsmaAPIService;->mSmartCardServiceObject:Ljava/lang/Object;

    .line 144
    iget-object v5, p0, Lcom/android/nfc/LGsmaAPIService;->mSmartCardServiceObject:Ljava/lang/Object;

    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/Object;

    invoke-virtual {v1, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, p0, Lcom/android/nfc/LGsmaAPIService;->mSeName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    invoke-direct {p0}, Lcom/android/nfc/LGsmaAPIService;->initAccessControl()V

    .line 153
    :try_start_1
    iget-object v4, p0, Lcom/android/nfc/LGsmaAPIService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "org.simalliance.openmobileapi.service"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/nfc/LGsmaAPIService;->mSeekVersion:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 159
    invoke-virtual {p0}, Lcom/android/nfc/LGsmaAPIService;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 160
    iget-object v4, p0, Lcom/android/nfc/LGsmaAPIService;->mSeekVersion:Ljava/lang/String;

    const-string v5, "3.1.0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "SIM - UICC"

    :goto_0
    iput-object v4, p0, Lcom/android/nfc/LGsmaAPIService;->mSeName:Ljava/lang/String;

    .line 162
    .end local v1    # "getSeNameMethod":Ljava/lang/reflect/Method;
    .end local v2    # "smartCardServiceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "smartCardServiceMethod":Ljava/lang/reflect/Method;
    :cond_0
    :goto_1
    return-void

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v4, Lcom/android/nfc/LGsmaAPIService;->DBG:Z

    const-string v5, "LGsmaAPIService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Smart Card Service can\'t loading! - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 154
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "getSeNameMethod":Ljava/lang/reflect/Method;
    .restart local v2    # "smartCardServiceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v3    # "smartCardServiceMethod":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v0

    .line 155
    .restart local v0    # "e":Ljava/lang/Exception;
    sget-boolean v4, Lcom/android/nfc/LGsmaAPIService;->DBG:Z

    const-string v5, "LGsmaAPIService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "seekVersion : catch exception - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 160
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const-string v4, "SIM1"

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/nfc/LGsmaAPIService;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/LGsmaAPIService;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/nfc/LGsmaAPIService;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 60
    sget-boolean v0, Lcom/android/nfc/LGsmaAPIService;->DBG:Z

    return v0
.end method

.method private convertApduServiceInfoGsma(ILcom/lge/nfcaddon/GsmaOffHostServiceInfo;)Landroid/nfc/cardemulation/ApduServiceInfoGsma;
    .locals 18
    .param p1, "key"    # I
    .param p2, "info"    # Lcom/lge/nfcaddon/GsmaOffHostServiceInfo;

    .prologue
    .line 504
    if-eqz p2, :cond_4

    .line 505
    const-string v3, "LGsmaAPIService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mServicePackageName = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/lge/nfcaddon/GsmaOffHostServiceInfo;->mServicePackageName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    sget-boolean v3, Lcom/android/nfc/LGsmaAPIService;->DBG:Z

    const-string v4, "LGsmaAPIService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mServiceName = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/lge/nfcaddon/GsmaOffHostServiceInfo;->mServiceName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v4, v7}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 507
    sget-boolean v3, Lcom/android/nfc/LGsmaAPIService;->DBG:Z

    const-string v4, "LGsmaAPIService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mDescription = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/lge/nfcaddon/GsmaOffHostServiceInfo;->mDescription:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v4, v7}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 508
    sget-boolean v3, Lcom/android/nfc/LGsmaAPIService;->DBG:Z

    const-string v4, "LGsmaAPIService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mLocation = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/lge/nfcaddon/GsmaOffHostServiceInfo;->mLocation:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v4, v7}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 509
    sget-boolean v3, Lcom/android/nfc/LGsmaAPIService;->DBG:Z

    const-string v4, "LGsmaAPIService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mSEName = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/lge/nfcaddon/GsmaOffHostServiceInfo;->mSEName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v4, v7}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 510
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/lge/nfcaddon/GsmaOffHostServiceInfo;->mValidAidGroup:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/lge/nfcaddon/GsmaOffHostServiceInfo$GsmaAidGroup;

    .line 511
    .local v13, "aidGrp":Lcom/lge/nfcaddon/GsmaOffHostServiceInfo$GsmaAidGroup;
    sget-boolean v3, Lcom/android/nfc/LGsmaAPIService;->DBG:Z

    const-string v4, "LGsmaAPIService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "    mCategory = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v13, Lcom/lge/nfcaddon/GsmaOffHostServiceInfo$GsmaAidGroup;->mCategory:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v4, v7}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 512
    sget-boolean v3, Lcom/android/nfc/LGsmaAPIService;->DBG:Z

    const-string v4, "LGsmaAPIService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "    mDescription = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v13, Lcom/lge/nfcaddon/GsmaOffHostServiceInfo$GsmaAidGroup;->mDescription:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v4, v7}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 513
    iget-object v3, v13, Lcom/lge/nfcaddon/GsmaOffHostServiceInfo$GsmaAidGroup;->mAids:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 514
    .local v11, "aid":Ljava/lang/String;
    sget-boolean v3, Lcom/android/nfc/LGsmaAPIService;->DBG:Z

    const-string v4, "LGsmaAPIService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "      aid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v4, v7}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 518
    .end local v11    # "aid":Ljava/lang/String;
    .end local v13    # "aidGrp":Lcom/lge/nfcaddon/GsmaOffHostServiceInfo$GsmaAidGroup;
    .end local v15    # "i$":Ljava/util/Iterator;
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 519
    .local v5, "aidGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 521
    .local v6, "aidDynGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/lge/nfcaddon/GsmaOffHostServiceInfo;->mValidAidGroup:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/lge/nfcaddon/GsmaOffHostServiceInfo$GsmaAidGroup;

    .line 522
    .restart local v13    # "aidGrp":Lcom/lge/nfcaddon/GsmaOffHostServiceInfo$GsmaAidGroup;
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 523
    .local v17, "tempAids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, v13, Lcom/lge/nfcaddon/GsmaOffHostServiceInfo$GsmaAidGroup;->mAids:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .restart local v15    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 524
    .restart local v11    # "aid":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 526
    .end local v11    # "aid":Ljava/lang/String;
    :cond_2
    new-instance v12, Landroid/nfc/cardemulation/AidGroup;

    iget-object v3, v13, Lcom/lge/nfcaddon/GsmaOffHostServiceInfo$GsmaAidGroup;->mCategory:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-direct {v12, v0, v3}, Landroid/nfc/cardemulation/AidGroup;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 529
    .local v12, "aidGroup":Landroid/nfc/cardemulation/AidGroup;
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 532
    .end local v12    # "aidGroup":Landroid/nfc/cardemulation/AidGroup;
    .end local v13    # "aidGrp":Lcom/lge/nfcaddon/GsmaOffHostServiceInfo$GsmaAidGroup;
    .end local v15    # "i$":Ljava/util/Iterator;
    .end local v17    # "tempAids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    new-instance v2, Landroid/content/pm/ResolveInfo;

    invoke-direct {v2}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 533
    .local v2, "resolveInfo":Landroid/content/pm/ResolveInfo;
    new-instance v16, Landroid/content/pm/ServiceInfo;

    invoke-direct/range {v16 .. v16}, Landroid/content/pm/ServiceInfo;-><init>()V

    .line 534
    .local v16, "serviceInfo":Landroid/content/pm/ServiceInfo;
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/lge/nfcaddon/GsmaOffHostServiceInfo;->mServicePackageName:Ljava/lang/String;

    move-object/from16 v0, v16

    iput-object v3, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 535
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    iput-object v3, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 536
    move-object/from16 v0, v16

    iput-object v0, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 537
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    new-instance v4, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v4}, Landroid/content/pm/ApplicationInfo;-><init>()V

    iput-object v4, v3, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 538
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/lge/nfcaddon/GsmaOffHostServiceInfo;->mDescription:Ljava/lang/String;

    iput-object v3, v2, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 540
    new-instance v1, Landroid/nfc/cardemulation/ApduServiceInfoGsma;

    const/4 v3, 0x0

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/lge/nfcaddon/GsmaOffHostServiceInfo;->mDescription:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/lge/nfcaddon/GsmaOffHostServiceInfo;->mBanner:Landroid/graphics/Bitmap;

    move/from16 v9, p1

    invoke-direct/range {v1 .. v10}, Landroid/nfc/cardemulation/ApduServiceInfoGsma;-><init>(Landroid/content/pm/ResolveInfo;ZLjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;ZIILandroid/graphics/Bitmap;)V

    .line 547
    .end local v2    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v5    # "aidGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    .end local v6    # "aidDynGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    .end local v16    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :goto_3
    return-object v1

    :cond_4
    const/4 v1, 0x0

    goto :goto_3
.end method

.method private static getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 2
    .param p1, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 815
    .local p0, "gsmaclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "parameter":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-nez p0, :cond_1

    .line 816
    const/4 v0, 0x0

    .line 828
    :cond_0
    :goto_0
    return-object v0

    .line 819
    :cond_1
    const/4 v0, 0x0

    .line 820
    .local v0, "method":Ljava/lang/reflect/Method;
    if-eqz p0, :cond_0

    .line 822
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 823
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static getStringField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "gsmaclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 782
    if-nez p0, :cond_0

    move-object v2, v3

    .line 794
    :goto_0
    return-object v2

    .line 785
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 786
    .local v1, "field":Ljava/lang/reflect/Field;
    if-eqz v1, :cond_1

    .line 787
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 789
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v0

    .line 790
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v2, Lcom/android/nfc/LGsmaAPIService;->DBG:Z

    const-string v4, "LGsmaAPIService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getStringField : Exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    move-object v2, v3

    .line 791
    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "field":Ljava/lang/reflect/Field;
    :cond_1
    move-object v2, v3

    .line 794
    goto :goto_0
.end method

.method private initAccessControl()V
    .locals 7

    .prologue
    .line 758
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v3, Lcom/android/nfc/LGsmaAPIService;->GSMA_API_JAR_NAME:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 760
    :try_start_0
    new-instance v1, Ldalvik/system/PathClassLoader;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "system/framework/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/nfc/LGsmaAPIService;->GSMA_API_JAR_NAME:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/android/nfc/LGsmaAPIService;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 761
    .local v1, "gsmaAPIClassLoader":Ljava/lang/ClassLoader;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/nfc/LGsmaAPIService;->GSMA_API_PACKAGE_NAME:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".NfcStaticVariable"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 762
    .local v0, "gsmaAPIClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "ACTION_TRANSACTION_EVENT"

    invoke-static {v0, v3}, Lcom/android/nfc/LGsmaAPIService;->getStringField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/nfc/LGsmaAPIService;->mTransactionIntentName:Ljava/lang/String;

    .line 763
    const-string v3, "EXTRA_AID"

    invoke-static {v0, v3}, Lcom/android/nfc/LGsmaAPIService;->getStringField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/nfc/LGsmaAPIService;->mTransactionIntentExtraAIDName:Ljava/lang/String;

    .line 764
    const-string v3, "EXTRA_DATA"

    invoke-static {v0, v3}, Lcom/android/nfc/LGsmaAPIService;->getStringField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/nfc/LGsmaAPIService;->mTransactionIntentExtraDATAName:Ljava/lang/String;

    .line 765
    const-string v3, "PERMISSION_TRANSACTION_EVENT"

    invoke-static {v0, v3}, Lcom/android/nfc/LGsmaAPIService;->getStringField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/nfc/LGsmaAPIService;->mTransactionPermissionName:Ljava/lang/String;

    .line 766
    const-string v3, "VER"

    invoke-static {v0, v3}, Lcom/android/nfc/LGsmaAPIService;->getStringField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/nfc/LGsmaAPIService;->mGsmaAPIVer:Ljava/lang/String;

    .line 767
    const-string v3, "getTransactionEventURI"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v0, v3, v4}, Lcom/android/nfc/LGsmaAPIService;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Lcom/android/nfc/LGsmaAPIService;->mGsmagetTransactionEventURIMethod:Ljava/lang/reflect/Method;

    .line 768
    sget-boolean v3, Lcom/android/nfc/LGsmaAPIService;->DBG:Z

    const-string v4, "LGsmaAPIService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GSMA API variable Loading Complete! : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/nfc/LGsmaAPIService;->mGsmaAPIVer:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 769
    sget-boolean v3, Lcom/android/nfc/LGsmaAPIService;->DBG:Z

    const-string v4, "LGsmaAPIService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GSMA API ACTION_TRANSACTION_EVENT : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/nfc/LGsmaAPIService;->mTransactionIntentName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 770
    sget-boolean v3, Lcom/android/nfc/LGsmaAPIService;->DBG:Z

    const-string v4, "LGsmaAPIService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GSMA API EXTRA_AID : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/nfc/LGsmaAPIService;->mTransactionIntentExtraAIDName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 771
    sget-boolean v3, Lcom/android/nfc/LGsmaAPIService;->DBG:Z

    const-string v4, "LGsmaAPIService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GSMA API EXTRA_DATA : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/nfc/LGsmaAPIService;->mTransactionIntentExtraDATAName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 772
    sget-boolean v3, Lcom/android/nfc/LGsmaAPIService;->DBG:Z

    const-string v4, "LGsmaAPIService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GSMA API PERMISSION_TRANSACTION_EVENT : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/nfc/LGsmaAPIService;->mTransactionPermissionName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 778
    .end local v0    # "gsmaAPIClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "gsmaAPIClassLoader":Ljava/lang/ClassLoader;
    :cond_0
    return-void

    .line 774
    :catch_0
    move-exception v3

    .line 758
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0
.end method

.method private isNfcEventAllowed([Ljava/lang/String;[B)[Z
    .locals 10
    .param p1, "packageName"    # [Ljava/lang/String;
    .param p2, "aid"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 264
    iget-object v4, p0, Lcom/android/nfc/LGsmaAPIService;->mSmartCardServiceObject:Ljava/lang/Object;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/nfc/LGsmaAPIService;->mIsGPACEventAllowedMethod:Ljava/lang/reflect/Method;

    if-nez v4, :cond_2

    .line 265
    :cond_0
    const-string v4, "LGsmaAPIService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mSmartCardServiceObject = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/nfc/LGsmaAPIService;->mSmartCardServiceObject:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    const-string v4, "LGsmaAPIService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mIsGPACEventAllowedMethod = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/nfc/LGsmaAPIService;->mIsGPACEventAllowedMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    new-array v3, v9, [Z

    .line 282
    :cond_1
    :goto_0
    return-object v3

    .line 271
    :cond_2
    :try_start_0
    iget-object v4, p0, Lcom/android/nfc/LGsmaAPIService;->mIsGPACEventAllowedMethod:Ljava/lang/reflect/Method;

    iget-object v5, p0, Lcom/android/nfc/LGsmaAPIService;->mSmartCardServiceObject:Ljava/lang/Object;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/nfc/LGsmaAPIService;->mSeName:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    const/4 v7, 0x2

    aput-object p2, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Z

    move-object v0, v4

    check-cast v0, [Z

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    .local v3, "ret":[Z
    if-eqz v3, :cond_3

    array-length v4, v3

    array-length v5, p1

    if-ne v4, v5, :cond_3

    .line 277
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 278
    sget-boolean v4, Lcom/android/nfc/LGsmaAPIService;->DBG:Z

    const-string v5, "LGsmaAPIService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isNfcEventAllowed["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-boolean v7, v3, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 277
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 272
    .end local v2    # "i":I
    .end local v3    # "ret":[Z
    :catch_0
    move-exception v1

    .line 273
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v4, Lcom/android/nfc/LGsmaAPIService;->DBG:Z

    const-string v5, "LGsmaAPIService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isNfcEventAllowed : catch exception e"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/android/nfc/utils/LNfcLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 274
    new-array v3, v9, [Z

    goto :goto_0

    .line 282
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "ret":[Z
    :cond_3
    new-array v3, v9, [Z

    goto :goto_0
.end method

.method private isTransactionEventFilterMatch(Landroid/content/Intent;[Landroid/content/IntentFilter;)Z
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "filters"    # [Landroid/content/IntentFilter;

    .prologue
    const/4 v4, 0x0

    .line 832
    if-eqz p2, :cond_0

    .line 833
    move-object v0, p2

    .local v0, "arr$":[Landroid/content/IntentFilter;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 834
    .local v1, "filter":Landroid/content/IntentFilter;
    sget-boolean v5, Lcom/android/nfc/LGsmaAPIService;->DBG:Z

    const-string v6, "LGsmaAPIService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isTransactionEventFilterMatch : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/android/nfc/utils/LNfcLog;->w(ZLjava/lang/String;Ljava/lang/String;)V

    .line 835
    iget-object v5, p0, Lcom/android/nfc/LGsmaAPIService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "LGsmaAPIService"

    invoke-virtual {v1, v5, p1, v4, v6}, Landroid/content/IntentFilter;->match(Landroid/content/ContentResolver;Landroid/content/Intent;ZLjava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_1

    .line 836
    const/4 v4, 0x1

    .line 840
    .end local v0    # "arr$":[Landroid/content/IntentFilter;
    .end local v1    # "filter":Landroid/content/IntentFilter;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_0
    return v4

    .line 833
    .restart local v0    # "arr$":[Landroid/content/IntentFilter;
    .restart local v1    # "filter":Landroid/content/IntentFilter;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected checkTransactionEventPermission(Landroid/content/pm/PackageManager;Ljava/lang/String;)J
    .locals 6
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const-wide/16 v4, -0x1

    .line 673
    const/16 v3, 0x1000

    :try_start_0
    invoke-virtual {p1, p2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 679
    .local v2, "pi":Landroid/content/pm/PackageInfo;
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v3, v3

    if-nez v3, :cond_1

    .line 690
    .end local v2    # "pi":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return-wide v4

    .line 674
    :catch_0
    move-exception v0

    .line 676
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0

    .line 684
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2    # "pi":Landroid/content/pm/PackageInfo;
    :cond_1
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 685
    .local v1, "permissionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/nfc/LGsmaAPIService;->mTransactionPermissionName:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 690
    iget-wide v4, v2, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    goto :goto_0
.end method

.method public commitGsmaOffHostService(ILcom/lge/nfcaddon/GsmaOffHostServiceInfo;)V
    .locals 5
    .param p1, "key"    # I
    .param p2, "info"    # Lcom/lge/nfcaddon/GsmaOffHostServiceInfo;

    .prologue
    .line 490
    sget-boolean v1, Lcom/android/nfc/LGsmaAPIService;->DBG:Z

    const-string v2, "LGsmaAPIService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "key = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 492
    invoke-direct {p0, p1, p2}, Lcom/android/nfc/LGsmaAPIService;->convertApduServiceInfoGsma(ILcom/lge/nfcaddon/GsmaOffHostServiceInfo;)Landroid/nfc/cardemulation/ApduServiceInfoGsma;

    move-result-object v0

    .line 494
    .local v0, "apduServiceInfoGsma":Landroid/nfc/cardemulation/ApduServiceInfoGsma;
    if-eqz v0, :cond_0

    .line 495
    sget-boolean v1, Lcom/android/nfc/LGsmaAPIService;->DBG:Z

    const-string v2, "LGsmaAPIService"

    const-string v3, "ADD GSMA OffHostService"

    invoke-static {v1, v2, v3}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 496
    invoke-static {}, Lcom/android/nfc/cardemulation/LCardEmulationManager;->getInstance()Lcom/android/nfc/cardemulation/LCardEmulationManager;

    sget-object v1, Lcom/android/nfc/cardemulation/LCardEmulationManager;->sLServiceCache:Lcom/android/nfc/cardemulation/LRegisteredServicesCache;

    invoke-virtual {v1, p1, v0}, Lcom/android/nfc/cardemulation/LRegisteredServicesCache;->addGsmaOffHostServices(ILandroid/nfc/cardemulation/ApduServiceInfoGsma;)V

    .line 501
    :goto_0
    return-void

    .line 498
    :cond_0
    sget-boolean v1, Lcom/android/nfc/LGsmaAPIService;->DBG:Z

    const-string v2, "LGsmaAPIService"

    const-string v3, "REMOVE GSMA OffHostService"

    invoke-static {v1, v2, v3}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 499
    invoke-static {}, Lcom/android/nfc/cardemulation/LCardEmulationManager;->getInstance()Lcom/android/nfc/cardemulation/LCardEmulationManager;

    sget-object v1, Lcom/android/nfc/cardemulation/LCardEmulationManager;->sLServiceCache:Lcom/android/nfc/cardemulation/LRegisteredServicesCache;

    invoke-virtual {v1, p1}, Lcom/android/nfc/cardemulation/LRegisteredServicesCache;->removeGsmaOffHostServices(I)V

    goto :goto_0
.end method

.method public disableNfcCardCallback(Lcom/lge/nfcaddon/IGsmaNfcControllerCallback;)Z
    .locals 3
    .param p1, "cb"    # Lcom/lge/nfcaddon/IGsmaNfcControllerCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 216
    const-string v0, "LGsmaAPIService"

    const-string v1, "disableNfcCardCallback"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/android/nfc/LGsmaAPIService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.NFC"

    const-string v2, "NFC permission required"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iput-object p1, p0, Lcom/android/nfc/LGsmaAPIService;->mGsmaNfcControllerCallback:Lcom/lge/nfcaddon/IGsmaNfcControllerCallback;

    .line 219
    iget-object v0, p0, Lcom/android/nfc/LGsmaAPIService;->mService:Lcom/android/nfc/LGsmaAPIService$LGsmaAPIServiceCallback;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/nfc/LGsmaAPIService$LGsmaAPIServiceCallback;->setNfcPowerStatus(IZ)Z

    move-result v0

    return v0
.end method

.method public enableMultiEvt_transactionReception(Ljava/lang/String;)V
    .locals 1
    .param p1, "seName"    # Ljava/lang/String;

    .prologue
    .line 233
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/LGsmaAPIService;->mIsMultiCast:Z

    .line 234
    return-void
.end method

.method public enableNfcCardCallback(Lcom/lge/nfcaddon/IGsmaNfcControllerCallback;)Z
    .locals 4
    .param p1, "cb"    # Lcom/lge/nfcaddon/IGsmaNfcControllerCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 207
    const-string v0, "LGsmaAPIService"

    const-string v1, "enableNfcCard"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/android/nfc/LGsmaAPIService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.NFC"

    const-string v2, "NFC permission required"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iput-object p1, p0, Lcom/android/nfc/LGsmaAPIService;->mGsmaNfcControllerCallback:Lcom/lge/nfcaddon/IGsmaNfcControllerCallback;

    .line 210
    iget-object v0, p0, Lcom/android/nfc/LGsmaAPIService;->mService:Lcom/android/nfc/LGsmaAPIService$LGsmaAPIServiceCallback;

    invoke-interface {v0, v3, v3}, Lcom/android/nfc/LGsmaAPIService$LGsmaAPIServiceCallback;->setNfcPowerStatus(IZ)Z

    move-result v0

    return v0
.end method

.method public enableNfcControllerCallback(Lcom/lge/nfcaddon/IGsmaNfcControllerCallback;)Z
    .locals 4
    .param p1, "cb"    # Lcom/lge/nfcaddon/IGsmaNfcControllerCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 170
    const-string v0, "LGsmaAPIService"

    const-string v1, "initNfcSystemCallback"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/android/nfc/LGsmaAPIService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.NFC"

    const-string v2, "NFC permission required"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iput-object p1, p0, Lcom/android/nfc/LGsmaAPIService;->mGsmaNfcControllerCallback:Lcom/lge/nfcaddon/IGsmaNfcControllerCallback;

    .line 173
    iget-object v0, p0, Lcom/android/nfc/LGsmaAPIService;->mService:Lcom/android/nfc/LGsmaAPIService$LGsmaAPIServiceCallback;

    const/4 v1, 0x5

    invoke-interface {v0, v1, v3}, Lcom/android/nfc/LGsmaAPIService$LGsmaAPIServiceCallback;->setNfcPowerStatus(IZ)Z

    .line 174
    return v3
.end method

.method public enableNfcControllerPopupCallback(Lcom/lge/nfcaddon/IGsmaNfcControllerCallback;)Z
    .locals 8
    .param p1, "cb"    # Lcom/lge/nfcaddon/IGsmaNfcControllerCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 179
    const-string v4, "LGsmaAPIService"

    const-string v5, "enableNfcControllerPopupCallback"

    invoke-static {v4, v5}, Lcom/android/nfc/utils/LNfcLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object v4, p0, Lcom/android/nfc/LGsmaAPIService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.NFC"

    const-string v6, "NFC permission required"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iput-object p1, p0, Lcom/android/nfc/LGsmaAPIService;->mGsmaNfcControllerCallback:Lcom/lge/nfcaddon/IGsmaNfcControllerCallback;

    .line 183
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.lge.nfc.action.GSMA_NFC_ON"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 184
    .local v1, "intent":Landroid/content/Intent;
    new-instance v4, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    invoke-direct {v4}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;-><init>()V

    iget-object v5, p0, Lcom/android/nfc/LGsmaAPIService;->mContext:Landroid/content/Context;

    const v6, 0x1040014

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->title(Ljava/lang/String;)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/nfc/LGsmaAPIService;->mContext:Landroid/content/Context;

    const v6, 0x7f08005c

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->message(Ljava/lang/String;)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v4

    const v5, 0x7f080015

    invoke-virtual {v4, v5}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->positiveButtonToken(I)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v4

    const/4 v5, 0x0

    sget-object v6, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v4, v1, v5, v6}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->positiveButtonIntent(Landroid/content/Intent;ZLandroid/os/UserHandle;)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v4

    const v5, 0x7f080016

    invoke-virtual {v4, v5}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->negativeButtonToken(I)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->selectPopup(Z)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->build()Lcom/android/nfc/utils/LNfcPopupInformation;

    move-result-object v0

    .line 192
    .local v0, "infor":Lcom/android/nfc/utils/LNfcPopupInformation;
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/nfc/LGsmaAPIService;->mContext:Landroid/content/Context;

    const-class v5, Lcom/android/nfc/utils/LNfcPopupDialog;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 193
    .local v3, "popupIntent":Landroid/content/Intent;
    const-string v4, "com.lge.nfc.action.NFC_POPUP"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 194
    const v4, 0x10008000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 195
    const-string v4, "com.lge.nfc.extra.POPUP_INFORMATION"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 197
    new-instance v2, Landroid/content/IntentFilter;

    const-string v4, "com.lge.nfc.action.GSMA_NFC_ON"

    invoke-direct {v2, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 198
    .local v2, "intentfilter":Landroid/content/IntentFilter;
    iget-object v4, p0, Lcom/android/nfc/LGsmaAPIService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/nfc/LGsmaAPIService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 200
    iget-object v4, p0, Lcom/android/nfc/LGsmaAPIService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 202
    return v7
.end method

.method public getActiveSecureElement()Ljava/lang/String;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/nfc/LGsmaAPIService;->mSeName:Ljava/lang/String;

    return-object v0
.end method

.method public getProperty(I)Z
    .locals 3
    .param p1, "feature"    # I

    .prologue
    .line 852
    const/4 v0, 0x0

    .line 854
    .local v0, "mRet":Z
    sparse-switch p1, :sswitch_data_0

    .line 866
    :goto_0
    return v0

    .line 856
    :sswitch_0
    iget-object v2, p0, Lcom/android/nfc/LGsmaAPIService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 857
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const-string v2, "com.nxp.mifare"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 858
    goto :goto_0

    .line 860
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :sswitch_1
    const/4 v0, 0x1

    .line 861
    goto :goto_0

    .line 854
    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 844
    iget-object v0, p0, Lcom/android/nfc/LGsmaAPIService;->mGsmaAPIVer:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 845
    const-string v0, ""

    .line 848
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/nfc/LGsmaAPIService;->mGsmaAPIVer:Ljava/lang/String;

    goto :goto_0
.end method

.method public intentAccessControl([B[B)Z
    .locals 3
    .param p1, "aid"    # [B
    .param p2, "payload"    # [B

    .prologue
    .line 305
    const/4 v0, 0x0

    .line 306
    .local v0, "ret":Z
    invoke-virtual {p0}, Lcom/android/nfc/LGsmaAPIService;->getVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Ver3.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 307
    invoke-virtual {p0, p1, p2}, Lcom/android/nfc/LGsmaAPIService;->intentAccessControl_Ver3_0([B[B)V

    .line 312
    :goto_0
    return v0

    .line 310
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/nfc/LGsmaAPIService;->intentAccessControl_VerX([B[B)Z

    move-result v0

    goto :goto_0
.end method

.method protected intentAccessControl_Ver3_0([B[B)V
    .locals 21
    .param p1, "aid"    # [B
    .param p2, "payload"    # [B

    .prologue
    .line 317
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 319
    .local v8, "intentTransaction":Landroid/content/Intent;
    sget-object v17, Lcom/android/nfc/LGsmaAPIService;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/lge/nfcconfig/NfcConfigure;->mTargetCountry:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "US"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    const-string v17, "com.gsma.services.nfc.action.TRANSACTION_EVENT"

    :goto_0
    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 320
    const-string v17, "android.nfc.extra.AID"

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 321
    if-eqz p2, :cond_0

    .line 322
    const-string v17, "android.nfc.extra.DATA"

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 326
    :cond_0
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "nfc://secure:0/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, -0x1

    const-string v20, ""

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    move-object/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Lcom/android/nfc/LNfcCommon;->byteArray2String([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 327
    .local v5, "contentUri":Landroid/net/Uri;
    sget-boolean v17, Lcom/android/nfc/LGsmaAPIService;->DBG:Z

    const-string v18, "LGsmaAPIService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "ContentUri    : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v17 .. v19}, Lcom/android/nfc/utils/LNfcLog;->w(ZLjava/lang/String;Ljava/lang/String;)V

    .line 328
    invoke-virtual {v8, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 330
    sget-boolean v17, Lcom/android/nfc/LGsmaAPIService;->DBG:Z

    const-string v18, "LGsmaAPIService"

    const-string v19, "intent Access Control"

    invoke-static/range {v17 .. v19}, Lcom/android/nfc/utils/LNfcLog;->w(ZLjava/lang/String;Ljava/lang/String;)V

    .line 333
    const/4 v15, 0x0

    .line 338
    .local v15, "signature":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/LGsmaAPIService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 339
    .local v12, "pm":Landroid/content/pm/PackageManager;
    const/high16 v17, 0x10000

    move/from16 v0, v17

    invoke-virtual {v12, v8, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v10

    .line 340
    .local v10, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v17

    if-nez v17, :cond_3

    .line 341
    sget-boolean v17, Lcom/android/nfc/LGsmaAPIService;->DBG:Z

    const-string v18, "LGsmaAPIService"

    const-string v19, "NO application to handle intentAccessControl ....."

    invoke-static/range {v17 .. v19}, Lcom/android/nfc/utils/LNfcLog;->w(ZLjava/lang/String;Ljava/lang/String;)V

    .line 393
    :cond_1
    :goto_1
    return-void

    .line 319
    .end local v5    # "contentUri":Landroid/net/Uri;
    .end local v10    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v12    # "pm":Landroid/content/pm/PackageManager;
    .end local v15    # "signature":Ljava/lang/String;
    :cond_2
    const-string v17, "android.nfc.action.TRANSACTION_DETECTED"

    goto/16 :goto_0

    .line 345
    .restart local v5    # "contentUri":Landroid/net/Uri;
    .restart local v10    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v12    # "pm":Landroid/content/pm/PackageManager;
    .restart local v15    # "signature":Ljava/lang/String;
    :cond_3
    sget-boolean v17, Lcom/android/nfc/LGsmaAPIService;->DBG:Z

    const-string v18, "LGsmaAPIService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "intentAccessControl : list.size() : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v17 .. v19}, Lcom/android/nfc/utils/LNfcLog;->w(ZLjava/lang/String;Ljava/lang/String;)V

    .line 346
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v7, v0, :cond_1

    .line 347
    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/ResolveInfo;

    .line 348
    .local v14, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v0, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v13, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 349
    .local v13, "processname":Ljava/lang/String;
    sget-boolean v17, Lcom/android/nfc/LGsmaAPIService;->DBG:Z

    const-string v18, "LGsmaAPIService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "list "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " processname : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v17 .. v19}, Lcom/android/nfc/utils/LNfcLog;->w(ZLjava/lang/String;Ljava/lang/String;)V

    .line 351
    const/16 v17, 0x40

    :try_start_0
    move/from16 v0, v17

    invoke-virtual {v12, v13, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v11

    .line 352
    .local v11, "pi":Landroid/content/pm/PackageInfo;
    sget-boolean v17, Lcom/android/nfc/LGsmaAPIService;->DBG:Z

    const-string v18, "LGsmaAPIService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[Internal] : pi : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v17 .. v19}, Lcom/android/nfc/utils/LNfcLog;->w(ZLjava/lang/String;Ljava/lang/String;)V

    .line 353
    if-nez v11, :cond_4

    .line 354
    sget-boolean v17, Lcom/android/nfc/LGsmaAPIService;->DBG:Z

    const-string v18, "LGsmaAPIService"

    const-string v19, "[Internal] : pi is null"

    invoke-static/range {v17 .. v19}, Lcom/android/nfc/utils/LNfcLog;->w(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_1

    .line 387
    .end local v11    # "pi":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v6

    .line 388
    .local v6, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_3
    sget-boolean v17, Lcom/android/nfc/LGsmaAPIService;->DBG:Z

    const-string v18, "LGsmaAPIService"

    const-string v19, "Application name not found"

    invoke-static/range {v17 .. v19}, Lcom/android/nfc/utils/LNfcLog;->w(ZLjava/lang/String;Ljava/lang/String;)V

    .line 346
    .end local v6    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    .line 358
    .restart local v11    # "pi":Landroid/content/pm/PackageInfo;
    :cond_4
    const/4 v9, 0x0

    .local v9, "j":I
    move-object/from16 v16, v15

    .end local v15    # "signature":Ljava/lang/String;
    .local v16, "signature":Ljava/lang/String;
    :goto_5
    :try_start_1
    iget-object v0, v11, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v9, v0, :cond_7

    .line 359
    new-instance v15, Ljava/lang/String;

    iget-object v0, v11, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    move-object/from16 v17, v0

    aget-object v17, v17, v9

    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/Signature;->toChars()[C

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Ljava/lang/String;-><init>([C)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 360
    .end local v16    # "signature":Ljava/lang/String;
    .restart local v15    # "signature":Ljava/lang/String;
    :try_start_2
    sget-boolean v17, Lcom/android/nfc/LGsmaAPIService;->DBG:Z

    const-string v18, "LGsmaAPIService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[Internal] : signature : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v17 .. v19}, Lcom/android/nfc/utils/LNfcLog;->w(ZLjava/lang/String;Ljava/lang/String;)V

    .line 361
    if-eqz v15, :cond_6

    .line 362
    const/4 v4, 0x0

    .line 367
    .local v4, "bResult":Z
    const/4 v4, 0x0

    .line 375
    if-eqz v4, :cond_5

    .line 376
    sget-boolean v17, Lcom/android/nfc/LGsmaAPIService;->DBG:Z

    const-string v18, "LGsmaAPIService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "processname : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " connection allowed ...."

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v17 .. v19}, Lcom/android/nfc/utils/LNfcLog;->w(ZLjava/lang/String;Ljava/lang/String;)V

    .line 377
    invoke-virtual {v8, v13}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 378
    const/high16 v17, 0x10000000

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 379
    sget-boolean v17, Lcom/android/nfc/LGsmaAPIService;->DBG:Z

    const-string v18, "LGsmaAPIService"

    const-string v19, "Start Activity for Card Emulation event"

    invoke-static/range {v17 .. v19}, Lcom/android/nfc/utils/LNfcLog;->w(ZLjava/lang/String;Ljava/lang/String;)V

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/LGsmaAPIService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 389
    .end local v4    # "bResult":Z
    .end local v9    # "j":I
    .end local v11    # "pi":Landroid/content/pm/PackageInfo;
    :catch_1
    move-exception v6

    .line 390
    .local v6, "e":Ljava/lang/Exception;
    :goto_6
    sget-boolean v17, Lcom/android/nfc/LGsmaAPIService;->DBG:Z

    const-string v18, "LGsmaAPIService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Exception : e= "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v17 .. v19}, Lcom/android/nfc/utils/LNfcLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 383
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v4    # "bResult":Z
    .restart local v9    # "j":I
    .restart local v11    # "pi":Landroid/content/pm/PackageInfo;
    :cond_5
    :try_start_3
    sget-boolean v17, Lcom/android/nfc/LGsmaAPIService;->DBG:Z

    const-string v18, "LGsmaAPIService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "processname : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " connection rejected ...."

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v17 .. v19}, Lcom/android/nfc/utils/LNfcLog;->w(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 358
    .end local v4    # "bResult":Z
    :cond_6
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v16, v15

    .end local v15    # "signature":Ljava/lang/String;
    .restart local v16    # "signature":Ljava/lang/String;
    goto/16 :goto_5

    :cond_7
    move-object/from16 v15, v16

    .line 391
    .end local v16    # "signature":Ljava/lang/String;
    .restart local v15    # "signature":Ljava/lang/String;
    goto/16 :goto_4

    .line 389
    .end local v15    # "signature":Ljava/lang/String;
    .restart local v16    # "signature":Ljava/lang/String;
    :catch_2
    move-exception v6

    move-object/from16 v15, v16

    .end local v16    # "signature":Ljava/lang/String;
    .restart local v15    # "signature":Ljava/lang/String;
    goto :goto_6

    .line 387
    .end local v15    # "signature":Ljava/lang/String;
    .restart local v16    # "signature":Ljava/lang/String;
    :catch_3
    move-exception v6

    move-object/from16 v15, v16

    .end local v16    # "signature":Ljava/lang/String;
    .restart local v15    # "signature":Ljava/lang/String;
    goto/16 :goto_3
.end method

.method protected intentAccessControl_VerX([B[B)Z
    .locals 10
    .param p1, "aid"    # [B
    .param p2, "payload"    # [B

    .prologue
    const/4 v9, 0x0

    .line 396
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/nfc/LGsmaAPIService;->mTransactionIntentName:Ljava/lang/String;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 397
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/nfc/LGsmaAPIService;->mTransactionIntentExtraAIDName:Ljava/lang/String;

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 398
    iget-object v2, p0, Lcom/android/nfc/LGsmaAPIService;->mTransactionIntentExtraDATAName:Ljava/lang/String;

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 401
    const/4 v1, 0x0

    .line 403
    .local v1, "uriString":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/android/nfc/LGsmaAPIService;->mGsmagetTransactionEventURIMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/nfc/LGsmaAPIService;->mSeName:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, -0x1

    const-string v8, ""

    invoke-static {p1, v6, v7, v8}, Lcom/android/nfc/LNfcCommon;->byteArray2String([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 407
    :goto_0
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 408
    sget-boolean v2, Lcom/android/nfc/LGsmaAPIService;->DBG:Z

    const-string v3, "LGsmaAPIService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ContentUri : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/nfc/utils/LNfcLog;->w(ZLjava/lang/String;Ljava/lang/String;)V

    .line 410
    sget-boolean v2, Lcom/android/nfc/LGsmaAPIService;->DBG:Z

    const-string v3, "LGsmaAPIService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "intentAccessControl : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/nfc/LGsmaAPIService;->mIsMultiCast:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/nfc/utils/LNfcLog;->w(ZLjava/lang/String;Ljava/lang/String;)V

    .line 412
    iget-boolean v2, p0, Lcom/android/nfc/LGsmaAPIService;->mIsMultiCast:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1, v0, v9}, Lcom/android/nfc/LGsmaAPIService;->sendMultiCastEvent([BLandroid/content/Intent;Z)Z

    move-result v2

    :goto_1
    return v2

    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/android/nfc/LGsmaAPIService;->sendUniCastTransactionEvent([BLandroid/content/Intent;)Z

    move-result v2

    goto :goto_1

    .line 404
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public isGSMACertificateAllowed(Ljava/lang/String;)Z
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 238
    iget-object v1, p0, Lcom/android/nfc/LGsmaAPIService;->mSmartCardServiceObject:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/nfc/LGsmaAPIService;->mIsGPACCertificationAllowedMethod:Ljava/lang/reflect/Method;

    if-nez v1, :cond_1

    :cond_0
    move v1, v2

    .line 244
    :goto_0
    return v1

    .line 242
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/LGsmaAPIService;->mIsGPACCertificationAllowedMethod:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/android/nfc/LGsmaAPIService;->mSmartCardServiceObject:Ljava/lang/Object;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/nfc/LGsmaAPIService;->mSeName:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 243
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    move v1, v2

    .line 244
    goto :goto_0
.end method

.method public isGSMACertificateAllowedArray([Ljava/lang/String;)[Z
    .locals 7
    .param p1, "packageNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 251
    iget-object v1, p0, Lcom/android/nfc/LGsmaAPIService;->mSmartCardServiceObject:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/nfc/LGsmaAPIService;->mIsGPACCertificationAllowedArrayMethod:Ljava/lang/reflect/Method;

    if-nez v1, :cond_1

    :cond_0
    move-object v1, v2

    .line 257
    :goto_0
    return-object v1

    .line 255
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/LGsmaAPIService;->mIsGPACCertificationAllowedArrayMethod:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/android/nfc/LGsmaAPIService;->mSmartCardServiceObject:Ljava/lang/Object;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/nfc/LGsmaAPIService;->mSeName:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Z

    check-cast v1, [Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 256
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    move-object v1, v2

    .line 257
    goto :goto_0
.end method

.method public onCardEmulationModeCallback(I)V
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 744
    iget-object v0, p0, Lcom/android/nfc/LGsmaAPIService;->mGsmaNfcControllerCallback:Lcom/lge/nfcaddon/IGsmaNfcControllerCallback;

    if-nez v0, :cond_0

    .line 753
    :goto_0
    return-void

    .line 749
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/LGsmaAPIService;->mGsmaNfcControllerCallback:Lcom/lge/nfcaddon/IGsmaNfcControllerCallback;

    invoke-interface {v0, p1}, Lcom/lge/nfcaddon/IGsmaNfcControllerCallback;->onCardEmulationMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 750
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onNfcControllerCallback(Z)V
    .locals 1
    .param p1, "status"    # Z

    .prologue
    .line 734
    iget-object v0, p0, Lcom/android/nfc/LGsmaAPIService;->mGsmaNfcControllerCallback:Lcom/lge/nfcaddon/IGsmaNfcControllerCallback;

    if-eqz v0, :cond_0

    .line 736
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/LGsmaAPIService;->mGsmaNfcControllerCallback:Lcom/lge/nfcaddon/IGsmaNfcControllerCallback;

    invoke-interface {v0, p1}, Lcom/lge/nfcaddon/IGsmaNfcControllerCallback;->onNfcController(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 741
    :cond_0
    :goto_0
    return-void

    .line 737
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected sendMultiCastEvent([BLandroid/content/Intent;Z)Z
    .locals 12
    .param p1, "aid"    # [B
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "isRFFieldEvent"    # Z

    .prologue
    .line 423
    const/4 v5, 0x0

    .line 424
    .local v5, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 425
    .local v2, "eventsResults":[Z
    const-wide/16 v0, 0x0

    .line 428
    .local v0, "eventsCacheTime":J
    if-eqz p3, :cond_3

    .line 429
    iget-object v5, p0, Lcom/android/nfc/LGsmaAPIService;->mNFCPermissionPackageList:Ljava/util/List;

    .line 430
    if-nez v5, :cond_0

    .line 431
    invoke-virtual {p0}, Lcom/android/nfc/LGsmaAPIService;->setNFCPermissionPackageList()V

    .line 433
    :cond_0
    iget-object v2, p0, Lcom/android/nfc/LGsmaAPIService;->mNfcFieldEventsResults:[Z

    .line 434
    iget-wide v0, p0, Lcom/android/nfc/LGsmaAPIService;->mNfcFieldEventsCacheTime:J

    .line 445
    :cond_1
    :goto_0
    if-nez v5, :cond_5

    .line 446
    const/4 v4, 0x0

    .line 483
    :cond_2
    :goto_1
    return v4

    .line 436
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/nfc/LGsmaAPIService;->mTransactionIntentName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 437
    iget-object v5, p0, Lcom/android/nfc/LGsmaAPIService;->mTransactionEventPackageList:Ljava/util/List;

    .line 438
    if-nez v5, :cond_4

    .line 439
    invoke-virtual {p0}, Lcom/android/nfc/LGsmaAPIService;->setTransactionEventPackageList()V

    .line 441
    :cond_4
    iget-object v2, p0, Lcom/android/nfc/LGsmaAPIService;->mNfcTransactionEventsResults:[Z

    .line 442
    iget-wide v0, p0, Lcom/android/nfc/LGsmaAPIService;->mNfcEventsCacheTime:J

    goto :goto_0

    .line 449
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v0

    const-wide/16 v10, 0x1388

    cmp-long v7, v8, v10

    if-ltz v7, :cond_6

    .line 450
    const/4 v2, 0x0

    .line 451
    sget-boolean v7, Lcom/android/nfc/LGsmaAPIService;->DBG:Z

    const-string v8, "LGsmaAPIService"

    const-string v9, "time is over, mNfcEventResults is null"

    invoke-static {v7, v8, v9}, Lcom/android/nfc/utils/LNfcLog;->w(ZLjava/lang/String;Ljava/lang/String;)V

    .line 454
    :cond_6
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-interface {v5, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    .line 455
    .local v6, "packageNames":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 458
    .local v4, "isSendBroadcast":Z
    if-nez v2, :cond_7

    :try_start_0
    iget-object v7, p0, Lcom/android/nfc/LGsmaAPIService;->mSeName:Ljava/lang/String;

    if-eqz v7, :cond_7

    .line 459
    invoke-direct {p0, v6, p1}, Lcom/android/nfc/LGsmaAPIService;->isNfcEventAllowed([Ljava/lang/String;[B)[Z

    move-result-object v2

    .line 463
    :cond_7
    if-eqz p3, :cond_9

    .line 464
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/nfc/LGsmaAPIService;->mNfcFieldEventsCacheTime:J

    .line 465
    iput-object v2, p0, Lcom/android/nfc/LGsmaAPIService;->mNfcFieldEventsResults:[Z

    .line 472
    :goto_2
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    array-length v7, v2

    if-ge v3, v7, :cond_2

    .line 473
    aget-boolean v7, v2, v3

    const/4 v8, 0x1

    if-ne v7, v8, :cond_8

    .line 474
    sget-boolean v7, Lcom/android/nfc/LGsmaAPIService;->DBG:Z

    const-string v8, "LGsmaAPIService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "processname["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v6, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " - connection Certificated, SendBroadcast for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/android/nfc/utils/LNfcLog;->w(ZLjava/lang/String;Ljava/lang/String;)V

    .line 475
    aget-object v7, v6, v3

    invoke-virtual {p2, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 476
    iget-object v7, p0, Lcom/android/nfc/LGsmaAPIService;->mContext:Landroid/content/Context;

    invoke-virtual {v7, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 477
    const/4 v4, 0x1

    .line 472
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 468
    .end local v3    # "i":I
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/nfc/LGsmaAPIService;->mNfcEventsCacheTime:J

    .line 469
    iput-object v2, p0, Lcom/android/nfc/LGsmaAPIService;->mNfcTransactionEventsResults:[Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 480
    :catch_0
    move-exception v7

    goto/16 :goto_1
.end method

.method protected sendUniCastTransactionEvent([BLandroid/content/Intent;)Z
    .locals 12
    .param p1, "aid"    # [B
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 551
    iget-object v0, p0, Lcom/android/nfc/LGsmaAPIService;->mTransactionPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/nfc/LGsmaAPIService;->mTransactionIntentFilter:[Landroid/content/IntentFilter;

    if-eqz v0, :cond_0

    .line 552
    sget-boolean v0, Lcom/android/nfc/LGsmaAPIService;->DBG:Z

    const-string v6, "LGsmaAPIService"

    const-string v7, "mTransactionIntentFilter isn\'t null"

    invoke-static {v0, v6, v7}, Lcom/android/nfc/utils/LNfcLog;->w(ZLjava/lang/String;Ljava/lang/String;)V

    .line 553
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/nfc/LGsmaAPIService;->mTransactionIntentFilter:[Landroid/content/IntentFilter;

    invoke-direct {p0, p2, v0}, Lcom/android/nfc/LGsmaAPIService;->isTransactionEventFilterMatch(Landroid/content/Intent;[Landroid/content/IntentFilter;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 555
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/LGsmaAPIService;->mTransactionPendingIntent:Landroid/app/PendingIntent;

    iget-object v1, p0, Lcom/android/nfc/LGsmaAPIService;->mContext:Landroid/content/Context;

    const/4 v2, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/nfc/LGsmaAPIService;->mTransactionPermissionName:Ljava/lang/String;

    move-object v3, p2

    invoke-virtual/range {v0 .. v6}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;)V

    .line 556
    sget-boolean v0, Lcom/android/nfc/LGsmaAPIService;->DBG:Z

    const-string v6, "LGsmaAPIService"

    const-string v7, "matched Transaction Event Dispatched!"

    invoke-static {v0, v6, v7}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 557
    const/4 v0, 0x1

    .line 583
    :goto_0
    return v0

    .line 558
    :catch_0
    move-exception v0

    .line 564
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/LGsmaAPIService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 565
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/high16 v0, 0x10000

    invoke-virtual {v1, p2, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 566
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 567
    :cond_1
    sget-boolean v0, Lcom/android/nfc/LGsmaAPIService;->DBG:Z

    const-string v6, "LGsmaAPIService"

    const-string v7, "NO application to handle intentAccessControl ....."

    invoke-static {v0, v6, v7}, Lcom/android/nfc/utils/LNfcLog;->w(ZLjava/lang/String;Ljava/lang/String;)V

    .line 568
    const/4 v0, 0x0

    goto :goto_0

    .line 575
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 576
    .local v3, "priorList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 577
    .local v4, "priorMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/Long;>;>;"
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 579
    .local v5, "timeKeyMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Landroid/content/pm/ResolveInfo;>;"
    sget-boolean v0, Lcom/android/nfc/LGsmaAPIService;->DBG:Z

    const-string v6, "LGsmaAPIService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "intentAccessControl_VerX : list.size() : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v6, v7}, Lcom/android/nfc/utils/LNfcLog;->w(ZLjava/lang/String;Ljava/lang/String;)V

    move-object v0, p0

    .line 581
    invoke-virtual/range {v0 .. v5}, Lcom/android/nfc/LGsmaAPIService;->sortTransactionAppList(Landroid/content/pm/PackageManager;Ljava/util/List;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/HashMap;)V

    move-object v6, p0

    move-object v7, p1

    move-object v8, p2

    move-object v9, v3

    move-object v10, v4

    move-object v11, v5

    .line 583
    invoke-virtual/range {v6 .. v11}, Lcom/android/nfc/LGsmaAPIService;->startTransactionActivity([BLandroid/content/Intent;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/HashMap;)Z

    move-result v0

    goto :goto_0
.end method

.method public setEvt_TransactionFgDispatch(Landroid/app/PendingIntent;[Landroid/content/IntentFilter;)V
    .locals 0
    .param p1, "intent"    # Landroid/app/PendingIntent;
    .param p2, "intentfilter"    # [Landroid/content/IntentFilter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 225
    iput-object p1, p0, Lcom/android/nfc/LGsmaAPIService;->mTransactionPendingIntent:Landroid/app/PendingIntent;

    .line 226
    iput-object p2, p0, Lcom/android/nfc/LGsmaAPIService;->mTransactionIntentFilter:[Landroid/content/IntentFilter;

    .line 229
    return-void
.end method

.method protected setNFCPermissionPackageList()V
    .locals 6

    .prologue
    .line 648
    iget-object v4, p0, Lcom/android/nfc/LGsmaAPIService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 649
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/16 v4, 0x1000

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getInstalledPackages(II)Ljava/util/List;

    move-result-object v1

    .line 650
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 668
    :cond_0
    :goto_0
    return-void

    .line 654
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/nfc/LGsmaAPIService;->mNFCPermissionPackageList:Ljava/util/List;

    .line 656
    monitor-enter p0

    .line 657
    :try_start_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 658
    .local v2, "pkg":Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_2

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_2

    .line 659
    const-string v4, "android.permission.NFC"

    iget-object v5, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_2

    .line 660
    iget-object v4, p0, Lcom/android/nfc/LGsmaAPIService;->mNFCPermissionPackageList:Ljava/util/List;

    iget-object v5, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 661
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/nfc/LGsmaAPIService;->mNfcFieldEventsResults:[Z

    .line 662
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/nfc/LGsmaAPIService;->mNfcFieldEventsCacheTime:J

    goto :goto_1

    .line 666
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "pkg":Landroid/content/pm/PackageInfo;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method protected setTransactionEventPackageList()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    .line 624
    iget-object v5, p0, Lcom/android/nfc/LGsmaAPIService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 625
    .local v4, "pm":Landroid/content/pm/PackageManager;
    const/16 v5, 0x1000

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getInstalledPackages(II)Ljava/util/List;

    move-result-object v1

    .line 626
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 644
    :cond_0
    return-void

    .line 630
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/nfc/LGsmaAPIService;->mTransactionEventPackageList:Ljava/util/List;

    .line 632
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 633
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/PackageInfo;>;"
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 634
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 635
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v5, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 636
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {p0, v4, v3}, Lcom/android/nfc/LGsmaAPIService;->checkTransactionEventPermission(Landroid/content/pm/PackageManager;Ljava/lang/String;)J

    move-result-wide v6

    cmp-long v5, v6, v10

    if-ltz v5, :cond_2

    .line 637
    sget-boolean v5, Lcom/android/nfc/LGsmaAPIService;->DBG:Z

    const-string v6, "LGsmaAPIService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Add Transaction Event PackageList : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/android/nfc/utils/LNfcLog;->w(ZLjava/lang/String;Ljava/lang/String;)V

    .line 638
    iget-object v5, p0, Lcom/android/nfc/LGsmaAPIService;->mTransactionEventPackageList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 639
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/nfc/LGsmaAPIService;->mNfcTransactionEventsResults:[Z

    .line 640
    iput-wide v10, p0, Lcom/android/nfc/LGsmaAPIService;->mNfcEventsCacheTime:J

    goto :goto_0
.end method

.method protected sortTransactionAppList(Landroid/content/pm/PackageManager;Ljava/util/List;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 10
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;>;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 590
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local p3, "priorList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p4, "priorMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/Long;>;>;"
    .local p5, "timeKeyMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Landroid/content/pm/ResolveInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_3

    .line 591
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_1

    .line 590
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 595
    :cond_1
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v6, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 596
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {p0, p1, v1}, Lcom/android/nfc/LGsmaAPIService;->checkTransactionEventPermission(Landroid/content/pm/PackageManager;Ljava/lang/String;)J

    move-result-wide v2

    .line 598
    .local v2, "installDate":J
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-ltz v6, :cond_0

    .line 602
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    iget v4, v6, Landroid/content/pm/ResolveInfo;->priority:I

    .line 604
    .local v4, "priority":I
    sget-boolean v7, Lcom/android/nfc/LGsmaAPIService;->DBG:Z

    const-string v8, "LGsmaAPIService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "package Name : "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ", priority : "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    iget v6, v6, Landroid/content/pm/ResolveInfo;->priority:I

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ", installDate : "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "MMM dd, yyyy h:mmaa"

    invoke-static {v9, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v8, v6}, Lcom/android/nfc/utils/LNfcLog;->w(ZLjava/lang/String;Ljava/lang/String;)V

    .line 606
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 607
    sget-boolean v6, Lcom/android/nfc/LGsmaAPIService;->DBG:Z

    const-string v7, "LGsmaAPIService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Add Priority : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 608
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 609
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    :cond_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 613
    .local v5, "timeKeyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-eqz v5, :cond_0

    .line 614
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 615
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 619
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "installDate":J
    .end local v4    # "priority":I
    .end local v5    # "timeKeyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_3
    invoke-static {p3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 620
    return-void
.end method

.method protected startTransactionActivity([BLandroid/content/Intent;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/HashMap;)Z
    .locals 16
    .param p1, "aid"    # [B
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Landroid/content/Intent;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;>;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Landroid/content/pm/ResolveInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 698
    .local p3, "priorList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p4, "priorMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/Long;>;>;"
    .local p5, "timeKeyMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v2, v8, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_4

    .line 699
    sget-boolean v8, Lcom/android/nfc/LGsmaAPIService;->DBG:Z

    const-string v9, "LGsmaAPIService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Priority : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 700
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v0, p4

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 701
    .local v7, "timeKeyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-nez v7, :cond_1

    .line 702
    sget-boolean v8, Lcom/android/nfc/LGsmaAPIService;->DBG:Z

    const-string v9, "LGsmaAPIService"

    const-string v10, "timeKeyList is null - continue"

    invoke-static {v8, v9, v10}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 698
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 705
    :cond_1
    invoke-static {v7}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 707
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v4, v8, :cond_0

    .line 708
    sget-boolean v9, Lcom/android/nfc/LGsmaAPIService;->DBG:Z

    const-string v10, "LGsmaAPIService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "time : "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "MMM dd, yyyy h:mmaa"

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-static {v12, v14, v15}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v10, v8}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 709
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v0, p5

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 710
    .local v6, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-nez v6, :cond_3

    .line 711
    sget-boolean v8, Lcom/android/nfc/LGsmaAPIService;->DBG:Z

    const-string v9, "LGsmaAPIService"

    const-string v10, "resolveInfo is null - continue"

    invoke-static {v8, v9, v10}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 707
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 714
    :cond_3
    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v8, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 716
    .local v5, "packageName":Ljava/lang/String;
    const/4 v8, 0x1

    :try_start_0
    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v8, v1}, Lcom/android/nfc/LGsmaAPIService;->isNfcEventAllowed([Ljava/lang/String;[B)[Z

    move-result-object v3

    .line 718
    .local v3, "isAllowed":[Z
    if-eqz v3, :cond_2

    array-length v8, v3

    if-lez v8, :cond_2

    const/4 v8, 0x0

    aget-boolean v8, v3, v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    .line 719
    sget-boolean v8, Lcom/android/nfc/LGsmaAPIService;->DBG:Z

    const-string v9, "LGsmaAPIService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "processname : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " connection Certificated ...."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/android/nfc/utils/LNfcLog;->w(ZLjava/lang/String;Ljava/lang/String;)V

    .line 720
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 721
    const/high16 v8, 0x10000000

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 722
    sget-boolean v8, Lcom/android/nfc/LGsmaAPIService;->DBG:Z

    const-string v9, "LGsmaAPIService"

    const-string v10, "Start Activity for Card Emulation event"

    invoke-static {v8, v9, v10}, Lcom/android/nfc/utils/LNfcLog;->w(ZLjava/lang/String;Ljava/lang/String;)V

    .line 723
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/nfc/LGsmaAPIService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 724
    const/4 v8, 0x1

    .line 730
    .end local v3    # "isAllowed":[Z
    .end local v4    # "j":I
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v7    # "timeKeyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :goto_3
    return v8

    :cond_4
    const/4 v8, 0x0

    goto :goto_3

    .line 726
    .restart local v4    # "j":I
    .restart local v5    # "packageName":Ljava/lang/String;
    .restart local v6    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .restart local v7    # "timeKeyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :catch_0
    move-exception v8

    goto :goto_2
.end method
