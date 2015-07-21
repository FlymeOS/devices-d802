.class public Lcom/android/server/connectivity/TetherNetworkDataTransition;
.super Ljava/lang/Object;
.source "TetherNetworkDataTransition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/TetherNetworkDataTransition$1;,
        Lcom/android/server/connectivity/TetherNetworkDataTransition$TetherNetworkDataReceiver;
    }
.end annotation


# static fields
.field private static final CHECK_TIMEOUT:I = 0x2710

.field public static final CMD_GET_MOBILE_HOTSPOT_FLAG:I = 0x6a

.field public static final CMD_GET_USB_TETHERING_FLAG:I = 0x6c

.field public static final CMD_SET_MOBILE_HOTSPOT_FLAG:I = 0x69

.field public static final CMD_SET_USB_TETHERING_FLAG:I = 0x6b

.field private static final DEBUG:Z = true

.field private static final INT_SIZE:I = 0x4

.field private static final LONG_TIMEOUT:J = 0x7530L

.field private static final NETWORK_STATE_CHECK_TIMEOUT:I = 0x7d0

.field public static final QCRILHOOK_CMD_GET:I = 0x91004

.field public static final QCRILHOOK_CMD_SET:I = 0x91005

.field public static final QCRILHOOK_OEM_BASE:I = 0x90000

.field public static final QCRILHOOK_OEM_LGRIL_BASE:I = 0x91000

.field public static final QCRILHOOK_OPRT_MODE:I = 0x91003

.field public static final QCRILHOOK_SVC_READ:I = 0x91001

.field public static final QCRILHOOK_SVC_WRITE:I = 0x91002

.field public static final QCRIL_EVT_HOOK_BASE:I = 0x80000

.field public static final QCRIL_EVT_HOOK_NV_READ:I = 0x80001

.field public static final QCRIL_EVT_OEM_BASE:I = 0x90000

.field public static final QCRIL_EVT_OEM_LGRIL_BASE:I = 0x91000

.field public static final QCRIL_EVT_OEM_LGRIL_CMD_GET:I = 0x91004

.field private static final RESPONSE_BUFFER_SIZE:I = 0x800

.field private static final SHORT_TIMEOUT:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "TetherNetworkDataTransition"

.field private static mTetherNetworkFlagSet:Z

.field private static qcRilHookClassLoader:Ljava/lang/ClassLoader;


# instance fields
.field private connectivityObject:Ljava/lang/Object;

.field private mCm:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mEscapeWaiting:Z

.field private final mHeaderSize:I

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private final mOemIdentifier:Ljava/lang/String;

.field private mTetherNetworkData:Landroid/content/BroadcastReceiver;

.field private mTm:Landroid/telephony/TelephonyManager;

.field private phone:Lcom/android/internal/telephony/ITelephony;

.field private phoneEx:Lcom/lge/internal/telephony/ITelephonyEx;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 99
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mTetherNetworkFlagSet:Z

    .line 114
    sput-object v4, Lcom/android/server/connectivity/TetherNetworkDataTransition;->qcRilHookClassLoader:Ljava/lang/ClassLoader;

    .line 117
    :try_start_0
    new-instance v1, Ldalvik/system/PathClassLoader;

    const-string v2, "/system/framework/qcrilhook.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    sput-object v1, Lcom/android/server/connectivity/TetherNetworkDataTransition;->qcRilHookClassLoader:Ljava/lang/ClassLoader;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 119
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 120
    .restart local v0    # "e":Ljava/lang/Exception;
    sput-object v4, Lcom/android/server/connectivity/TetherNetworkDataTransition;->qcRilHookClassLoader:Ljava/lang/ClassLoader;

    .line 121
    const-string v1, "TetherNetworkDataTransition"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to init qcRilHookClassLoader class (could be not QCT model), exception= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const-string v0, "QUALCOMM"

    iput-object v0, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mOemIdentifier:Ljava/lang/String;

    .line 81
    const-string v0, "QUALCOMM"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mHeaderSize:I

    .line 93
    iput-object v1, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->phone:Lcom/android/internal/telephony/ITelephony;

    .line 94
    iput-object v1, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->phoneEx:Lcom/lge/internal/telephony/ITelephonyEx;

    .line 95
    iput-object v1, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mCm:Landroid/net/ConnectivityManager;

    .line 96
    iput-object v1, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mTm:Landroid/telephony/TelephonyManager;

    .line 102
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->connectivityObject:Ljava/lang/Object;

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mEscapeWaiting:Z

    .line 128
    iput-object v1, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 131
    iput-object p1, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mContext:Landroid/content/Context;

    .line 132
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/connectivity/TetherNetworkDataTransition;)Landroid/net/NetworkInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/TetherNetworkDataTransition;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/connectivity/TetherNetworkDataTransition;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/TetherNetworkDataTransition;
    .param p1, "x1"    # Landroid/net/NetworkInfo;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/server/connectivity/TetherNetworkDataTransition;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/TetherNetworkDataTransition;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->notifyNetworkConnectivityChange()V

    return-void
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 56
    sget-boolean v0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mTetherNetworkFlagSet:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/connectivity/TetherNetworkDataTransition;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/TetherNetworkDataTransition;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mEscapeWaiting:Z

    return p1
.end method

.method private addLgGpsRilHookHeader(Ljava/nio/ByteBuffer;II)V
    .locals 1
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "requestId"    # I
    .param p3, "requestSize"    # I

    .prologue
    .line 810
    const-string v0, "QUALCOMM"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 813
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 816
    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 817
    return-void
.end method

.method private checkMobileConnection(Landroid/net/NetworkInfo$State;)Z
    .locals 8
    .param p1, "expectedState"    # Landroid/net/NetworkInfo$State;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 469
    invoke-direct {p0}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mCm:Landroid/net/ConnectivityManager;

    .line 471
    const-string v5, "TetherNetworkDataTransition"

    const-string v6, "[DEBUG][NSH]checkMobileConnection"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    :try_start_0
    iget-object v5, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mCm:Landroid/net/ConnectivityManager;

    if-eqz v5, :cond_2

    .line 475
    iget-object v5, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mCm:Landroid/net/ConnectivityManager;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 476
    .local v2, "netInfoMobile":Landroid/net/NetworkInfo;
    iget-object v5, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mCm:Landroid/net/ConnectivityManager;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 477
    .local v1, "netInfoHipri":Landroid/net/NetworkInfo;
    sget-object v5, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {p1, v5}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 478
    const-string v5, "TetherNetworkDataTransition"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NetworkInfo for TYPE_MOBILE getState= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",  TYPE_MOBILE_HIPRI getState =  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    if-ne v5, p1, :cond_2

    .line 480
    const-string v5, "TetherNetworkDataTransition"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NetworkInfo for TYPE_MOBILE or TYPE_MOBILE_HIPRI "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    .end local v1    # "netInfoHipri":Landroid/net/NetworkInfo;
    .end local v2    # "netInfoMobile":Landroid/net/NetworkInfo;
    :goto_0
    return v3

    .line 484
    .restart local v1    # "netInfoHipri":Landroid/net/NetworkInfo;
    .restart local v2    # "netInfoMobile":Landroid/net/NetworkInfo;
    :cond_0
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    if-ne v5, p1, :cond_1

    .line 485
    const-string v5, "TetherNetworkDataTransition"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NetworkInfo for TYPE_MOBILE"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 495
    .end local v1    # "netInfoHipri":Landroid/net/NetworkInfo;
    .end local v2    # "netInfoMobile":Landroid/net/NetworkInfo;
    :catch_0
    move-exception v0

    .line 496
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v3, v4

    .line 497
    goto :goto_0

    .line 489
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "netInfoHipri":Landroid/net/NetworkInfo;
    .restart local v2    # "netInfoMobile":Landroid/net/NetworkInfo;
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    if-ne v5, p1, :cond_2

    .line 490
    const-string v5, "TetherNetworkDataTransition"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NetworkInfo for TYPE_MOBILE_HIPRI"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .end local v1    # "netInfoHipri":Landroid/net/NetworkInfo;
    .end local v2    # "netInfoMobile":Landroid/net/NetworkInfo;
    :cond_2
    move v3, v4

    .line 499
    goto :goto_0
.end method

.method public static createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;
    .locals 2
    .param p0, "bytes"    # [B

    .prologue
    .line 803
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 804
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 805
    return-object v0
.end method

.method private getConnectivityManager()Landroid/net/ConnectivityManager;
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mCm:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mCm:Landroid/net/ConnectivityManager;

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mCm:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method private getPhone()Lcom/android/internal/telephony/ITelephony;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->phone:Lcom/android/internal/telephony/ITelephony;

    if-nez v0, :cond_0

    .line 136
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->phone:Lcom/android/internal/telephony/ITelephony;

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->phone:Lcom/android/internal/telephony/ITelephony;

    return-object v0
.end method

.method private getPhoneEx()Lcom/lge/internal/telephony/ITelephonyEx;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->phoneEx:Lcom/lge/internal/telephony/ITelephonyEx;

    if-nez v0, :cond_0

    .line 143
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/internal/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->phoneEx:Lcom/lge/internal/telephony/ITelephonyEx;

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->phoneEx:Lcom/lge/internal/telephony/ITelephonyEx;

    return-object v0
.end method

.method private getTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mTm:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mTm:Landroid/telephony/TelephonyManager;

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mTm:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method private notifyNetworkConnectivityChange()V
    .locals 3

    .prologue
    .line 163
    iget-object v1, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->connectivityObject:Ljava/lang/Object;

    monitor-enter v1

    .line 164
    :try_start_0
    const-string v0, "TetherNetworkDataTransition"

    const-string v2, "notify network connectivity changed"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v0, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->connectivityObject:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 166
    monitor-exit v1

    .line 167
    return-void

    .line 166
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private registerConnectivityReceiver()V
    .locals 3

    .prologue
    .line 171
    iget-object v1, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mTetherNetworkData:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 184
    :goto_0
    return-void

    .line 173
    :cond_0
    new-instance v1, Lcom/android/server/connectivity/TetherNetworkDataTransition$TetherNetworkDataReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/connectivity/TetherNetworkDataTransition$TetherNetworkDataReceiver;-><init>(Lcom/android/server/connectivity/TetherNetworkDataTransition;Lcom/android/server/connectivity/TetherNetworkDataTransition$1;)V

    iput-object v1, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mTetherNetworkData:Landroid/content/BroadcastReceiver;

    .line 177
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 178
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 179
    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 181
    iget-object v1, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mTetherNetworkData:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;
    .locals 13
    .param p1, "requestId"    # I
    .param p2, "request"    # [B

    .prologue
    .line 822
    const-string v2, "com.qualcomm.qcrilhook.QcRilHook"

    .line 823
    .local v2, "QCRILHOOK_CLASS":Ljava/lang/String;
    const/4 v3, 0x0

    .line 825
    .local v3, "ar":Landroid/os/AsyncResult;
    sget-object v9, Lcom/android/server/connectivity/TetherNetworkDataTransition;->qcRilHookClassLoader:Ljava/lang/ClassLoader;

    if-eqz v9, :cond_0

    .line 828
    :try_start_0
    sget-object v9, Lcom/android/server/connectivity/TetherNetworkDataTransition;->qcRilHookClassLoader:Ljava/lang/ClassLoader;

    const-string v10, "com.qualcomm.qcrilhook.QcRilHook"

    invoke-virtual {v9, v10}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 829
    .local v5, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Landroid/content/Context;

    aput-object v11, v9, v10

    invoke-virtual {v5, v9}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    .line 832
    .local v4, "c":Ljava/lang/reflect/Constructor;
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mContext:Landroid/content/Context;

    aput-object v11, v9, v10

    invoke-virtual {v4, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v8

    .line 852
    .local v8, "qcrilObj":Ljava/lang/Object;
    const-wide/16 v10, 0x1f4

    :try_start_1
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 857
    :goto_0
    :try_start_2
    const-string v9, "sendQcRilHookMsg"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-class v12, [B

    aput-object v12, v10, v11

    invoke-virtual {v5, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 859
    .local v7, "mSendMsg":Ljava/lang/reflect/Method;
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object p2, v9, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Landroid/os/AsyncResult;

    move-object v3, v0

    .line 865
    .end local v4    # "c":Ljava/lang/reflect/Constructor;
    .end local v5    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "mSendMsg":Ljava/lang/reflect/Method;
    .end local v8    # "qcrilObj":Ljava/lang/Object;
    :cond_0
    :goto_1
    return-object v3

    .line 853
    .restart local v4    # "c":Ljava/lang/reflect/Constructor;
    .restart local v5    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v8    # "qcrilObj":Ljava/lang/Object;
    :catch_0
    move-exception v6

    .line 854
    .local v6, "e":Ljava/lang/InterruptedException;
    const-string v9, "TetherNetworkDataTransition"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 860
    .end local v4    # "c":Ljava/lang/reflect/Constructor;
    .end local v5    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "e":Ljava/lang/InterruptedException;
    .end local v8    # "qcrilObj":Ljava/lang/Object;
    :catch_1
    move-exception v6

    .line 861
    .local v6, "e":Ljava/lang/Exception;
    const-string v9, "TetherNetworkDataTransition"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private sendTetherBroadcast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 794
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 795
    .local v0, "broadcast":Landroid/content/Intent;
    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 797
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 799
    return-void
.end method

.method private unregisterConnectivityReceiver()V
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mTetherNetworkData:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mTetherNetworkData:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 190
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mTetherNetworkData:Landroid/content/BroadcastReceiver;

    .line 191
    return-void
.end method

.method private waitForMobileConnection(Landroid/net/NetworkInfo$State;J)Z
    .locals 8
    .param p1, "expectedState"    # Landroid/net/NetworkInfo$State;
    .param p2, "timeout"    # J

    .prologue
    const/4 v1, 0x1

    .line 503
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 504
    .local v2, "startTime":J
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mEscapeWaiting:Z

    .line 507
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    cmp-long v4, v4, p2

    if-lez v4, :cond_0

    .line 508
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->checkMobileConnection(Landroid/net/NetworkInfo$State;)Z

    move-result v1

    .line 529
    :goto_1
    return v1

    .line 511
    :cond_0
    iget-object v4, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->connectivityObject:Ljava/lang/Object;

    monitor-enter v4

    .line 514
    :try_start_0
    iget-object v5, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->connectivityObject:Ljava/lang/Object;

    const-wide/16 v6, 0x7d0

    invoke-virtual {v5, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 520
    :goto_2
    :try_start_1
    iget-boolean v5, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mEscapeWaiting:Z

    if-ne v5, v1, :cond_1

    .line 521
    const-string v5, "TetherNetworkDataTransition"

    const-string v6, "Escape mobile connection waiting"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    monitor-exit v4

    goto :goto_1

    .line 530
    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 516
    :catch_0
    move-exception v0

    .line 517
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 525
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->checkMobileConnection(Landroid/net/NetworkInfo$State;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 526
    monitor-exit v4

    goto :goto_0

    .line 529
    :cond_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private waitForNetworkState(ILandroid/net/NetworkInfo$State;J)Z
    .locals 11
    .param p1, "networkType"    # I
    .param p2, "expectedState"    # Landroid/net/NetworkInfo$State;
    .param p3, "timeout"    # J

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 540
    invoke-direct {p0}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mCm:Landroid/net/ConnectivityManager;

    .line 542
    iget-object v5, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mCm:Landroid/net/ConnectivityManager;

    if-nez v5, :cond_1

    .line 611
    :cond_0
    :goto_0
    return v1

    .line 545
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 547
    .local v2, "startTime":J
    iget-object v5, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mCm:Landroid/net/ConnectivityManager;

    if-eqz v5, :cond_0

    .line 549
    :try_start_0
    iget-object v5, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v5, p1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mNetworkInfo:Landroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 559
    iget-object v5, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v5, :cond_0

    .line 562
    const-string v5, "TetherNetworkDataTransition"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mNetworkInfo before state : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    iput-boolean v1, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mEscapeWaiting:Z

    .line 566
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    cmp-long v5, v6, p3

    if-lez v5, :cond_2

    .line 568
    :try_start_1
    iget-object v5, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v5, p1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    if-ne v5, p2, :cond_0

    .line 572
    const-string v5, "TetherNetworkDataTransition"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "networktype: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " state: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v7, p1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v1, v4

    .line 574
    goto :goto_0

    .line 550
    :catch_0
    move-exception v0

    .line 551
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 577
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 578
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 582
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    const-string v5, "TetherNetworkDataTransition"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Wait for the connectivity state for network: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to be "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Landroid/net/NetworkInfo$State;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    iget-object v5, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->connectivityObject:Ljava/lang/Object;

    monitor-enter v5

    .line 587
    :try_start_2
    iget-object v6, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->connectivityObject:Ljava/lang/Object;

    const-wide/16 v8, 0x7d0

    invoke-virtual {v6, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 593
    :goto_2
    :try_start_3
    iget-boolean v6, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mEscapeWaiting:Z

    if-ne v6, v4, :cond_3

    .line 594
    const-string v1, "TetherNetworkDataTransition"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Escape!! network state for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    monitor-exit v5

    move v1, v4

    goto/16 :goto_0

    .line 589
    :catch_2
    move-exception v0

    .line 590
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 612
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 600
    :cond_3
    :try_start_4
    iget-object v6, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v6, p1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mNetworkInfo:Landroid/net/NetworkInfo;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 604
    :goto_3
    :try_start_5
    iget-object v6, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    if-ne v6, p1, :cond_4

    iget-object v6, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v6

    if-eq v6, p2, :cond_5

    .line 606
    :cond_4
    const-string v6, "TetherNetworkDataTransition"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "network state for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getType()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    monitor-exit v5

    goto/16 :goto_1

    .line 610
    :cond_5
    const-string v1, "TetherNetworkDataTransition"

    const-string v6, "[DEBUG][NSH]expectedState reached"

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move v1, v4

    goto/16 :goto_0

    .line 601
    :catch_3
    move-exception v6

    goto :goto_3
.end method


# virtual methods
.method public checkDataProfile()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 747
    const/4 v1, 0x0

    .line 749
    .local v1, "result":Z
    invoke-direct {p0}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->getPhoneEx()Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->phoneEx:Lcom/lge/internal/telephony/ITelephonyEx;

    .line 753
    :try_start_0
    iget-object v3, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->phoneEx:Lcom/lge/internal/telephony/ITelephonyEx;

    if-eqz v3, :cond_0

    .line 755
    iget-object v3, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->phoneEx:Lcom/lge/internal/telephony/ITelephonyEx;

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lcom/lge/internal/telephony/ITelephonyEx;->checkDataProfileEx(II)Z

    move-result v1

    .line 757
    :cond_0
    const-string v3, "TetherNetworkDataTransition"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkDataProfile check apn info : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v1

    .line 760
    :goto_0
    return v2

    .line 759
    :catch_0
    move-exception v0

    .line 760
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public connectMobile()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 346
    invoke-direct {p0}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mCm:Landroid/net/ConnectivityManager;

    .line 348
    iget-object v3, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mCm:Landroid/net/ConnectivityManager;

    if-nez v3, :cond_0

    .line 384
    :goto_0
    return v1

    .line 359
    :cond_0
    invoke-direct {p0}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->registerConnectivityReceiver()V

    .line 366
    :try_start_0
    iget-object v3, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mTm:Landroid/telephony/TelephonyManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    const-wide/16 v4, 0x7530

    invoke-direct {p0, v3, v4, v5}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->waitForMobileConnection(Landroid/net/NetworkInfo$State;J)Z

    move-result v3

    if-nez v3, :cond_1

    .line 378
    invoke-direct {p0}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->unregisterConnectivityReceiver()V

    .line 379
    const-string v2, "TetherNetworkDataTransition"

    const-string v3, "Can\'t change to connect Mobile Data connection"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 367
    :catch_0
    move-exception v0

    .line 369
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 383
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-direct {p0}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->unregisterConnectivityReceiver()V

    move v1, v2

    .line 384
    goto :goto_0
.end method

.method public connectMobileCheck()Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 278
    const/4 v0, 0x0

    .line 280
    .local v0, "doWait":Z
    invoke-direct {p0}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mCm:Landroid/net/ConnectivityManager;

    .line 282
    iget-object v4, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mCm:Landroid/net/ConnectivityManager;

    if-nez v4, :cond_1

    .line 338
    :cond_0
    :goto_0
    return v2

    .line 285
    :cond_1
    const-string v4, "TetherNetworkDataTransition"

    const-string v5, "[DEBUG][NSH]connectMobileCheck"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :try_start_0
    iget-object v4, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 299
    :try_start_1
    iget-object v4, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mCm:Landroid/net/ConnectivityManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v4, v5, :cond_2

    iget-object v4, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mCm:Landroid/net/ConnectivityManager;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eq v4, v5, :cond_2

    .line 302
    const/4 v0, 0x1

    .line 309
    :cond_2
    invoke-direct {p0}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->registerConnectivityReceiver()V

    .line 312
    if-ne v0, v3, :cond_3

    .line 315
    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    const-wide/16 v6, 0x2710

    invoke-direct {p0, v4, v6, v7}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->waitForMobileConnection(Landroid/net/NetworkInfo$State;J)Z

    move-result v4

    if-nez v4, :cond_3

    .line 317
    invoke-direct {p0}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->unregisterConnectivityReceiver()V

    .line 318
    const-string v3, "TetherNetworkDataTransition"

    const-string v4, "Can\'t change to connect Mobile Data connectMobileCheck"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 290
    :catch_0
    move-exception v1

    .line 292
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 303
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 305
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 323
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    invoke-direct {p0}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->unregisterConnectivityReceiver()V

    .line 328
    :try_start_2
    iget-object v4, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mCm:Landroid/net/ConnectivityManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v4, v5, :cond_4

    iget-object v4, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mCm:Landroid/net/ConnectivityManager;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-ne v4, v5, :cond_0

    :cond_4
    move v2, v3

    .line 338
    goto :goto_0

    .line 332
    :catch_2
    move-exception v1

    .line 334
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public connectMobileNoWait()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 393
    invoke-direct {p0}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mCm:Landroid/net/ConnectivityManager;

    .line 394
    invoke-direct {p0}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mTm:Landroid/telephony/TelephonyManager;

    .line 396
    iget-object v3, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mCm:Landroid/net/ConnectivityManager;

    if-nez v3, :cond_0

    .line 415
    :goto_0
    return v1

    .line 408
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mTm:Landroid/telephony/TelephonyManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 415
    goto :goto_0

    .line 409
    :catch_0
    move-exception v0

    .line 411
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public disconnectMobile()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 422
    invoke-direct {p0}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mCm:Landroid/net/ConnectivityManager;

    .line 423
    invoke-direct {p0}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mTm:Landroid/telephony/TelephonyManager;

    .line 425
    iget-object v2, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mCm:Landroid/net/ConnectivityManager;

    if-nez v2, :cond_0

    .line 462
    :goto_0
    return v1

    .line 432
    :cond_0
    invoke-direct {p0}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->registerConnectivityReceiver()V

    .line 439
    :try_start_0
    iget-object v2, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mTm:Landroid/telephony/TelephonyManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 452
    sget-object v2, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    const-wide/16 v4, 0x7530

    invoke-direct {p0, v2, v4, v5}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->waitForMobileConnection(Landroid/net/NetworkInfo$State;J)Z

    move-result v2

    if-nez v2, :cond_1

    .line 456
    invoke-direct {p0}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->unregisterConnectivityReceiver()V

    .line 457
    const-string v2, "TetherNetworkDataTransition"

    const-string v3, "can not disconnect Mobile Data connection"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 440
    :catch_0
    move-exception v0

    .line 442
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 461
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-direct {p0}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->unregisterConnectivityReceiver()V

    .line 462
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getFlag(I)Ljava/lang/String;
    .locals 11
    .param p1, "itemId"    # I

    .prologue
    .line 907
    const/4 v3, 0x0

    .line 909
    .local v3, "length":I
    const/16 v8, 0x8

    new-array v4, v8, [B

    .line 910
    .local v4, "requestData":[B
    invoke-static {v4}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 911
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 912
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 914
    const v8, 0x91004

    invoke-direct {p0, v8, v4}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v7

    .line 916
    .local v7, "result":Landroid/os/AsyncResult;
    iget-object v8, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v8, :cond_1

    .line 917
    iget-object v8, v7, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, [B

    check-cast v8, [B

    invoke-static {v8}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 918
    .local v6, "responseData":Ljava/nio/ByteBuffer;
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 919
    new-array v5, v3, [B

    .line 920
    .local v5, "responseBytes":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 921
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->get()B

    move-result v8

    aput-byte v8, v5, v1

    .line 920
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 923
    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/lang/String;-><init>([B)V

    .line 930
    .local v2, "itemValue":Ljava/lang/String;
    const-string v8, "TetherNetworkDataTransition"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getCommands itemId "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "-END"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    .end local v1    # "i":I
    .end local v2    # "itemValue":Ljava/lang/String;
    .end local v5    # "responseBytes":[B
    .end local v6    # "responseData":Ljava/nio/ByteBuffer;
    :goto_1
    return-object v2

    .line 925
    :cond_1
    const-string v8, "TetherNetworkDataTransition"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to read item "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getNetworkTechType()I
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 683
    invoke-direct {p0}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->getPhone()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->phone:Lcom/android/internal/telephony/ITelephony;

    .line 685
    iget-object v2, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->phone:Lcom/android/internal/telephony/ITelephony;

    if-nez v2, :cond_0

    .line 686
    const-string v2, "TetherNetworkDataTransition"

    const-string v3, "phone is null at isMultiPDNNetworkEnabled"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    :goto_0
    return v1

    .line 691
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->phone:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getNetworkType()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 692
    :catch_0
    move-exception v0

    .line 694
    .local v0, "e4":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getTetherNetworkDataFlagSet()Z
    .locals 1

    .prologue
    .line 271
    sget-boolean v0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mTetherNetworkFlagSet:Z

    return v0
.end method

.method public isGsmNetwork()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 649
    invoke-direct {p0}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->getPhone()Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->phone:Lcom/android/internal/telephony/ITelephony;

    .line 651
    iget-object v4, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->phone:Lcom/android/internal/telephony/ITelephony;

    if-nez v4, :cond_1

    .line 652
    const-string v3, "TetherNetworkDataTransition"

    const-string v4, "phone is null at isMultiPDNNetworkEnabled"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    :cond_0
    :goto_0
    return v2

    .line 658
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->phone:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v4}, Lcom/android/internal/telephony/ITelephony;->getNetworkType()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 659
    .local v1, "networkType":I
    if-eq v3, v1, :cond_2

    const/4 v4, 0x2

    if-eq v4, v1, :cond_2

    const/4 v4, 0x3

    if-eq v4, v1, :cond_2

    const/16 v4, 0x8

    if-eq v4, v1, :cond_2

    const/16 v4, 0x9

    if-eq v4, v1, :cond_2

    const/16 v4, 0xa

    if-eq v4, v1, :cond_2

    const/16 v4, 0xb

    if-eq v4, v1, :cond_2

    const/16 v4, 0xf

    if-ne v4, v1, :cond_0

    :cond_2
    move v2, v3

    .line 667
    goto :goto_0

    .line 672
    .end local v1    # "networkType":I
    :catch_0
    move-exception v0

    .line 674
    .local v0, "e4":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public isLteOrEhrpdNetwork()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 620
    invoke-direct {p0}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->getPhone()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->phone:Lcom/android/internal/telephony/ITelephony;

    .line 622
    iget-object v2, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->phone:Lcom/android/internal/telephony/ITelephony;

    if-nez v2, :cond_1

    .line 623
    const-string v2, "TetherNetworkDataTransition"

    const-string v3, "phone is null at isMultiPDNNetworkEnabled"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    :cond_0
    :goto_0
    return v1

    .line 629
    :cond_1
    const/16 v2, 0xd

    :try_start_0
    iget-object v3, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->phone:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->getNetworkType()I

    move-result v3

    if-eq v2, v3, :cond_2

    const/16 v2, 0xe

    iget-object v3, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->phone:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->getNetworkType()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v2, v3, :cond_0

    .line 631
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 636
    :catch_0
    move-exception v0

    .line 638
    .local v0, "e4":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public isMobileDataEnabled()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 938
    const/4 v1, 0x0

    .line 942
    .local v1, "mIsMobileDataEnabled":Z
    invoke-direct {p0}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mCm:Landroid/net/ConnectivityManager;

    .line 944
    iget-object v3, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mCm:Landroid/net/ConnectivityManager;

    if-nez v3, :cond_0

    .line 945
    const-string v3, "TetherNetworkDataTransition"

    const-string v4, "ConnectivityManager is null at is MobileDataEnabled!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    :goto_0
    return v2

    .line 950
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    move v2, v1

    .line 956
    goto :goto_0

    .line 951
    :catch_0
    move-exception v0

    .line 952
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public isPamPdnDataProfileEnabled()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 704
    invoke-direct {p0}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->getPhone()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->phone:Lcom/android/internal/telephony/ITelephony;

    .line 706
    iget-object v3, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->phone:Lcom/android/internal/telephony/ITelephony;

    if-nez v3, :cond_1

    .line 707
    const-string v2, "TetherNetworkDataTransition"

    const-string v3, "phone is null at isMultiPDNNetworkEnabled"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    :cond_0
    :goto_0
    return v1

    .line 713
    :cond_1
    const/16 v3, 0xd

    :try_start_0
    iget-object v4, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->phone:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v4}, Lcom/android/internal/telephony/ITelephony;->getNetworkType()I

    move-result v4

    if-eq v3, v4, :cond_2

    const/16 v3, 0xe

    iget-object v4, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->phone:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v4}, Lcom/android/internal/telephony/ITelephony;->getNetworkType()I

    move-result v4

    if-ne v3, v4, :cond_3

    .line 717
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->checkDataProfile()Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    .line 718
    goto :goto_0

    .line 726
    :cond_3
    const-string v3, "TetherNetworkDataTransition"

    const-string v4, "mobile data will use as tether network "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 727
    goto :goto_0

    .line 729
    :catch_0
    move-exception v0

    .line 731
    .local v0, "e4":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public notifyPhoneTetherStatus(Z)Z
    .locals 2
    .param p1, "tethered"    # Z

    .prologue
    .line 257
    if-eqz p1, :cond_0

    .line 258
    const-string v0, "TetherNetworkDataTransition"

    const-string v1, "&&&&&&&&&&& TETHER REQUEST ++++++++++++++++"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :goto_0
    const-string v0, "TetherNetworkDataTransition"

    const-string v1, "USB Tethering flag setting"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    const/16 v1, 0x6b

    if-eqz p1, :cond_1

    const-string v0, "1"

    :goto_1
    invoke-virtual {p0, v1, v0}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->setFlag(ILjava/lang/String;)V

    .line 266
    sput-boolean p1, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mTetherNetworkFlagSet:Z

    .line 267
    const/4 v0, 0x1

    return v0

    .line 260
    :cond_0
    const-string v0, "TetherNetworkDataTransition"

    const-string v1, "&&&&&&&&&&& TETHER REQUEST ----------------"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 264
    :cond_1
    const-string v0, "0"

    goto :goto_1
.end method

.method public readMipErrorCode()I
    .locals 4

    .prologue
    .line 770
    const/4 v1, 0x0

    .line 776
    .local v1, "mipError":I
    invoke-direct {p0}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->getPhoneEx()Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->phoneEx:Lcom/lge/internal/telephony/ITelephonyEx;

    .line 779
    :try_start_0
    iget-object v2, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->phoneEx:Lcom/lge/internal/telephony/ITelephonyEx;

    if-eqz v2, :cond_0

    .line 780
    iget-object v2, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->phoneEx:Lcom/lge/internal/telephony/ITelephonyEx;

    invoke-interface {v2}, Lcom/lge/internal/telephony/ITelephonyEx;->getMipErrorCode()I

    move-result v1

    .line 789
    :goto_0
    return v1

    .line 782
    :cond_0
    const-string v2, "TetherNetworkDataTransition"

    const-string v3, "phone is null FATAL ERROR"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 785
    :catch_0
    move-exception v0

    .line 786
    .local v0, "e3":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public sendLgRilHookMsg(ILjava/lang/String;)Landroid/os/AsyncResult;
    .locals 4
    .param p1, "requestId"    # I
    .param p2, "payload"    # Ljava/lang/String;

    .prologue
    .line 869
    iget v2, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mHeaderSize:I

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-array v1, v2, [B

    .line 870
    .local v1, "request":[B
    invoke-static {v1}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 872
    .local v0, "reqBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {p0, v0, p1, v2}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->addLgGpsRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 873
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 875
    invoke-direct {p0, p1, v1}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v2

    return-object v2
.end method

.method public sendLgRilHookMsg(I[B)Landroid/os/AsyncResult;
    .locals 4
    .param p1, "requestId"    # I
    .param p2, "payload"    # [B

    .prologue
    .line 879
    iget v2, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mHeaderSize:I

    array-length v3, p2

    add-int/2addr v2, v3

    new-array v1, v2, [B

    .line 880
    .local v1, "request":[B
    invoke-static {v1}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 882
    .local v0, "reqBuffer":Ljava/nio/ByteBuffer;
    array-length v2, p2

    invoke-direct {p0, v0, p1, v2}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->addLgGpsRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 883
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 885
    invoke-direct {p0, p1, v1}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v2

    return-object v2
.end method

.method public setFlag(ILjava/lang/String;)V
    .locals 4
    .param p1, "itemId"    # I
    .param p2, "itemValue"    # Ljava/lang/String;

    .prologue
    .line 889
    const/4 v1, 0x0

    .line 890
    .local v1, "length":I
    if-eqz p2, :cond_0

    .line 891
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 893
    :cond_0
    add-int/lit8 v3, v1, 0x8

    new-array v2, v3, [B

    .line 894
    .local v2, "requestData":[B
    invoke-static {v2}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 895
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 896
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 897
    if-eqz p2, :cond_1

    .line 898
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 901
    :cond_1
    const v3, 0x91005

    invoke-direct {p0, v3, v2}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;

    .line 902
    return-void
.end method
