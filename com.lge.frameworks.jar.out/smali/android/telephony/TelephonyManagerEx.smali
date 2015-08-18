.class public Landroid/telephony/TelephonyManagerEx;
.super Ljava/lang/Object;
.source "TelephonyManagerEx.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TelephonyManagerEx"

.field private static sInstance:Landroid/telephony/TelephonyManagerEx;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Landroid/telephony/TelephonyManagerEx;

    invoke-direct {v0}, Landroid/telephony/TelephonyManagerEx;-><init>()V

    sput-object v0, Landroid/telephony/TelephonyManagerEx;->sInstance:Landroid/telephony/TelephonyManagerEx;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telephony/TelephonyManagerEx;->mContext:Landroid/content/Context;

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Landroid/telephony/TelephonyManagerEx;->mContext:Landroid/content/Context;

    .line 31
    return-void
.end method

.method public static getDefault()Landroid/telephony/TelephonyManagerEx;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Landroid/telephony/TelephonyManagerEx;->sInstance:Landroid/telephony/TelephonyManagerEx;

    return-object v0
.end method

.method private getITelephonyEx()Lcom/lge/internal/telephony/ITelephonyEx;
    .locals 1

    .prologue
    .line 42
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/internal/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v0

    return-object v0
.end method

.method private getSubscriberInfoEx()Lcom/lge/internal/telephony/IPhoneSubInfoEx;
    .locals 1

    .prologue
    .line 47
    const-string v0, "iphonesubinfo"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/internal/telephony/IPhoneSubInfoEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/internal/telephony/IPhoneSubInfoEx;

    move-result-object v0

    return-object v0
.end method

.method private handleDataInterface(Ljava/lang/String;)V
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 166
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManagerEx;->getITelephonyEx()Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lge/internal/telephony/ITelephonyEx;->handleDataInterface(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :goto_0
    return-void

    .line 168
    :catch_0
    move-exception v0

    goto :goto_0

    .line 167
    :catch_1
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public checkDataProfileEx(II)Z
    .locals 3
    .param p1, "arg0"    # I
    .param p2, "arg1"    # I

    .prologue
    const/4 v1, 0x0

    .line 60
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManagerEx;->getITelephonyEx()Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/lge/internal/telephony/ITelephonyEx;->checkDataProfileEx(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 64
    :goto_0
    return v1

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 63
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public clearDataDisabledFlag(I)I
    .locals 3
    .param p1, "arg0"    # I

    .prologue
    const/4 v1, 0x0

    .line 76
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManagerEx;->getITelephonyEx()Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/lge/internal/telephony/ITelephonyEx;->clearDataDisabledFlag(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 80
    :goto_0
    return v1

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 79
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 80
    .local v0, "e":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getAPNList()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 91
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManagerEx;->getITelephonyEx()Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v2

    invoke-interface {v2}, Lcom/lge/internal/telephony/ITelephonyEx;->getAPNList()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 95
    :goto_0
    return-object v1

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 94
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 95
    .local v0, "e":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDebugInfo(II)[I
    .locals 3
    .param p1, "arg0"    # I
    .param p2, "arg1"    # I

    .prologue
    const/4 v1, 0x0

    .line 108
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManagerEx;->getITelephonyEx()Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/lge/internal/telephony/ITelephonyEx;->getDebugInfo(II)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 112
    :goto_0
    return-object v1

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 111
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 112
    .local v0, "e":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDeviceId(I)Ljava/lang/String;
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 316
    const-string v0, ""

    return-object v0
.end method

.method public getDeviceIdForVZW(I)Ljava/lang/String;
    .locals 3
    .param p1, "type"    # I

    .prologue
    const/4 v1, 0x0

    .line 226
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManagerEx;->getSubscriberInfoEx()Lcom/lge/internal/telephony/IPhoneSubInfoEx;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/lge/internal/telephony/IPhoneSubInfoEx;->getDeviceIdForVZW(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 233
    :goto_0
    return-object v1

    .line 227
    :catch_0
    move-exception v0

    .line 228
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 229
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 233
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDmNodeHandlerDiagMonNetwork(ZII)Ljava/lang/String;
    .locals 3
    .param p1, "setpreferrednetworktype"    # Z
    .param p2, "preferrednetworktype"    # I
    .param p3, "networksignal"    # I

    .prologue
    const/4 v1, 0x0

    .line 242
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManagerEx;->getSubscriberInfoEx()Lcom/lge/internal/telephony/IPhoneSubInfoEx;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/lge/internal/telephony/IPhoneSubInfoEx;->getDmNodeHandlerDiagMonNetwork(ZII)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 247
    :goto_0
    return-object v1

    .line 243
    :catch_0
    move-exception v0

    .line 244
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 245
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 247
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getEsn()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 299
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManagerEx;->getSubscriberInfoEx()Lcom/lge/internal/telephony/IPhoneSubInfoEx;

    move-result-object v2

    invoke-interface {v2}, Lcom/lge/internal/telephony/IPhoneSubInfoEx;->getEsn()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 303
    :goto_0
    return-object v1

    .line 300
    :catch_0
    move-exception v0

    .line 301
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 302
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 303
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getLine1Number()Ljava/lang/String;
    .locals 1

    .prologue
    .line 315
    const-string v0, ""

    return-object v0
.end method

.method public getMSIN()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 194
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManagerEx;->getSubscriberInfoEx()Lcom/lge/internal/telephony/IPhoneSubInfoEx;

    move-result-object v2

    invoke-interface {v2}, Lcom/lge/internal/telephony/IPhoneSubInfoEx;->getMSIN()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 201
    :goto_0
    return-object v1

    .line 195
    :catch_0
    move-exception v0

    .line 196
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 197
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 201
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getMSIN(J)Ljava/lang/String;
    .locals 3
    .param p1, "subId"    # J

    .prologue
    const/4 v1, 0x0

    .line 206
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManagerEx;->getSubscriberInfoEx()Lcom/lge/internal/telephony/IPhoneSubInfoEx;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/lge/internal/telephony/IPhoneSubInfoEx;->getMSINUsingSubId(J)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 213
    :goto_0
    return-object v1

    .line 207
    :catch_0
    move-exception v0

    .line 208
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 209
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 213
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getMipErrorCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 123
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManagerEx;->getITelephonyEx()Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v2

    invoke-interface {v2}, Lcom/lge/internal/telephony/ITelephonyEx;->getMipErrorCode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 127
    :goto_0
    return v1

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 126
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 127
    .local v0, "e":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getSimState(I)I
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 311
    const/4 v0, 0x0

    return v0
.end method

.method public getTimeFromSIB16String()[J
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 268
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManagerEx;->getSubscriberInfoEx()Lcom/lge/internal/telephony/IPhoneSubInfoEx;

    move-result-object v2

    invoke-interface {v2}, Lcom/lge/internal/telephony/IPhoneSubInfoEx;->getTimeFromSIB16String()[J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 273
    :goto_0
    return-object v1

    .line 269
    :catch_0
    move-exception v0

    .line 270
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 271
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 273
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getValueFromSIB16String()[I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 256
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManagerEx;->getSubscriberInfoEx()Lcom/lge/internal/telephony/IPhoneSubInfoEx;

    move-result-object v2

    invoke-interface {v2}, Lcom/lge/internal/telephony/IPhoneSubInfoEx;->getValueFromSIB16String()[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 261
    :goto_0
    return-object v1

    .line 257
    :catch_0
    move-exception v0

    .line 258
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 259
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 261
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public mobileDataPdpReset()V
    .locals 1

    .prologue
    .line 188
    const-string v0, "mobileData_PdpReset"

    invoke-direct {p0, v0}, Landroid/telephony/TelephonyManagerEx;->handleDataInterface(Ljava/lang/String;)V

    .line 189
    return-void
.end method

.method public resetVoiceMessageCount()V
    .locals 1

    .prologue
    .line 137
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManagerEx;->getITelephonyEx()Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/internal/telephony/ITelephonyEx;->resetVoiceMessageCount()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :goto_0
    return-void

    .line 139
    :catch_0
    move-exception v0

    goto :goto_0

    .line 138
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public setDataDisabledFlag(II)I
    .locals 3
    .param p1, "arg0"    # I
    .param p2, "arg1"    # I

    .prologue
    const/4 v1, 0x0

    .line 152
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManagerEx;->getITelephonyEx()Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/lge/internal/telephony/ITelephonyEx;->setDataDisabledFlag(II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 156
    :goto_0
    return v1

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 155
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 156
    .local v0, "e":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public setPttDrxMode(I)Z
    .locals 3
    .param p1, "mode"    # I

    .prologue
    const/4 v1, 0x0

    .line 282
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManagerEx;->getSubscriberInfoEx()Lcom/lge/internal/telephony/IPhoneSubInfoEx;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/lge/internal/telephony/IPhoneSubInfoEx;->setPttDrxMode(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 286
    :goto_0
    return v1

    .line 283
    :catch_0
    move-exception v0

    .line 284
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 285
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 286
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public setRoamingDataEnabled_RILCMD(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 177
    if-eqz p1, :cond_0

    .line 178
    const-string v0, "setDataRoamingEnabled"

    invoke-direct {p0, v0}, Landroid/telephony/TelephonyManagerEx;->handleDataInterface(Ljava/lang/String;)V

    .line 182
    :goto_0
    return-void

    .line 180
    :cond_0
    const-string v0, "setDataRoamingDisabled"

    invoke-direct {p0, v0}, Landroid/telephony/TelephonyManagerEx;->handleDataInterface(Ljava/lang/String;)V

    goto :goto_0
.end method
