.class public Lcom/lge/telephony/LGTelephonyManagerImpl;
.super Ljava/lang/Object;
.source "LGTelephonyManagerImpl.java"

# interfaces
.implements Lcom/lge/telephony/ILGTelephonyManager;


# static fields
.field private static final TAG:Ljava/lang/String; = "LGTelephonyManagerImpl"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getITelephonyEx()Lcom/lge/internal/telephony/ITelephonyEx;
    .locals 1

    .prologue
    .line 48
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
    .line 53
    const-string v0, "iphonesubinfo"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/internal/telephony/IPhoneSubInfoEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/internal/telephony/IPhoneSubInfoEx;

    move-result-object v0

    return-object v0
.end method

.method private uknight_get_data_result(I[B)[B
    .locals 7
    .param p1, "cumuDataSize"    # I
    .param p2, "logDataTemp"    # [B

    .prologue
    const/4 v3, 0x0

    .line 173
    if-nez p1, :cond_0

    .line 174
    const-string v4, "LGTelephonyManagerImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "uknightGetData()-- cumuDataSize="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .line 200
    :goto_0
    return-object v2

    .line 179
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/lge/telephony/LGTelephonyManagerImpl;->getITelephonyEx()Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v4

    const v5, 0xffff

    invoke-interface {v4, v5}, Lcom/lge/internal/telephony/ITelephonyEx;->uknightGetData(I)Lcom/lge/internal/telephony/KNDataResponse;

    move-result-object v1

    .line 180
    .local v1, "knDataResp":Lcom/lge/internal/telephony/KNDataResponse;
    if-nez v1, :cond_1

    .line 181
    const-string v4, "LGTelephonyManagerImpl"

    const-string v5, "Internal Start ERROR : KNDataResponse is NULL"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .line 182
    goto :goto_0

    .line 185
    :cond_1
    array-length v4, p2

    if-ge p1, v4, :cond_2

    .line 186
    new-array v2, p1, [B

    .line 187
    .local v2, "logDataResult":[B
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {p2, v4, v2, v5, p1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 188
    const-string v4, "LGTelephonyManagerImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "uknightGetData()-- logDataResult.length="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 194
    .end local v1    # "knDataResp":Lcom/lge/internal/telephony/KNDataResponse;
    .end local v2    # "logDataResult":[B
    :catch_0
    move-exception v0

    .line 195
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_1
    move-object v2, v3

    .line 200
    goto :goto_0

    .line 191
    .restart local v1    # "knDataResp":Lcom/lge/internal/telephony/KNDataResponse;
    :cond_2
    :try_start_1
    const-string v4, "LGTelephonyManagerImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "uknightGetData()-- logData.length="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, p2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, p2

    .line 192
    goto :goto_0

    .line 196
    .end local v1    # "knDataResp":Lcom/lge/internal/telephony/KNDataResponse;
    :catch_1
    move-exception v0

    .line 197
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public getDeviceIdForVZW(I)Ljava/lang/String;
    .locals 3
    .param p1, "type"    # I

    .prologue
    const/4 v1, 0x0

    .line 281
    :try_start_0
    invoke-direct {p0}, Lcom/lge/telephony/LGTelephonyManagerImpl;->getSubscriberInfoEx()Lcom/lge/internal/telephony/IPhoneSubInfoEx;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/lge/internal/telephony/IPhoneSubInfoEx;->getDeviceIdForVZW(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 286
    :goto_0
    return-object v1

    .line 282
    :catch_0
    move-exception v0

    .line 283
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 284
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 286
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getLteOnCdmaPhoneType()I
    .locals 2

    .prologue
    .line 295
    const-string v1, "KDDI"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 296
    sget v0, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    .line 297
    .local v0, "mode":I
    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    .line 301
    :cond_0
    const/4 v1, 0x1

    .line 305
    .end local v0    # "mode":I
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public getMobileDebugScreen()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 269
    :try_start_0
    invoke-direct {p0}, Lcom/lge/telephony/LGTelephonyManagerImpl;->getITelephonyEx()Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v2

    invoke-interface {v2}, Lcom/lge/internal/telephony/ITelephonyEx;->getMobileDebugScreen()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 273
    :goto_0
    return-object v1

    .line 270
    :catch_0
    move-exception v0

    .line 271
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 272
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 273
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getMobileQualityInformation()Ljava/util/HashMap;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 249
    :try_start_0
    invoke-direct {p0}, Lcom/lge/telephony/LGTelephonyManagerImpl;->getITelephonyEx()Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/internal/telephony/ITelephonyEx;->getMobileQualityInformation()Ljava/util/Map;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 253
    :goto_0
    return-object v1

    .line 250
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    move-object v1, v2

    .line 251
    goto :goto_0

    .line 252
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    move-object v1, v2

    .line 253
    goto :goto_0
.end method

.method public getNetworkCountryIso(I)Ljava/lang/String;
    .locals 2
    .param p1, "currentPhoneType"    # I

    .prologue
    .line 346
    const-string v0, "US"

    const-string v1, "SPR"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 347
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 348
    const-string/jumbo v0, "us"

    .line 356
    :goto_0
    return-object v0

    .line 349
    :cond_0
    const/16 v0, 0xd

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    if-ne v0, v1, :cond_1

    const-string v0, "ril.card_operator"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SPR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    if-nez v0, :cond_1

    .line 353
    const-string/jumbo v0, "us"

    goto :goto_0

    .line 356
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public getNetworkOperator(I)Ljava/lang/String;
    .locals 2
    .param p1, "currentPhoneType"    # I

    .prologue
    .line 328
    const-string v0, "US"

    const-string v1, "SPR"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 329
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 330
    const-string v0, "ro.cdma.home.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 338
    :goto_0
    return-object v0

    .line 331
    :cond_0
    const/16 v0, 0xd

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    if-ne v0, v1, :cond_1

    const-string v0, "ril.card_operator"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SPR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    if-nez v0, :cond_1

    .line 335
    const-string v0, "ro.cdma.home.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 338
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public getNetworkOperatorName(I)Ljava/lang/String;
    .locals 2
    .param p1, "currentPhoneType"    # I

    .prologue
    .line 311
    const-string v0, "US"

    const-string v1, "SPR"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 312
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 313
    const-string v0, "ro.cdma.home.operator.alpha"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 321
    :goto_0
    return-object v0

    .line 314
    :cond_0
    const/16 v0, 0xd

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    if-ne v0, v1, :cond_1

    const-string v0, "ril.card_operator"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SPR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    if-nez v0, :cond_1

    .line 318
    const-string v0, "ro.cdma.home.operator.alpha"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 321
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public getSimCountryIso(I)Ljava/lang/String;
    .locals 2
    .param p1, "simState"    # I

    .prologue
    .line 389
    const-string v0, "US"

    const-string v1, "SPR"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 390
    const-string v0, "ril.card_operator"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SPR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 392
    :cond_0
    const-string/jumbo v0, "us"

    .line 395
    :goto_0
    return-object v0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public getSimOperator(I)Ljava/lang/String;
    .locals 2
    .param p1, "simState"    # I

    .prologue
    .line 363
    const-string v0, "US"

    const-string v1, "SPR"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 364
    const-string v0, "ril.card_operator"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SPR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 366
    :cond_0
    const-string v0, "ro.cdma.home.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 369
    :goto_0
    return-object v0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public getSimOperatorName(I)Ljava/lang/String;
    .locals 2
    .param p1, "simState"    # I

    .prologue
    .line 376
    const-string v0, "US"

    const-string v1, "SPR"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 377
    const-string v0, "ril.card_operator"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SPR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 379
    :cond_0
    const-string v0, "ro.cdma.home.operator.alpha"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 382
    :goto_0
    return-object v0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public moca_alarm_event([B)[B
    .locals 7
    .param p1, "mask"    # [B

    .prologue
    const/4 v3, 0x0

    .line 750
    :try_start_0
    invoke-direct {p0}, Lcom/lge/telephony/LGTelephonyManagerImpl;->getITelephonyEx()Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v1

    .line 751
    .local v1, "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    if-nez v1, :cond_0

    .line 752
    const-string v4, "LGTelephonyManagerImpl"

    const-string/jumbo v5, "telephony is null"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    .end local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :goto_0
    return-object v3

    .line 756
    .restart local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :cond_0
    if-eqz p1, :cond_1

    .line 758
    const-string v4, "LGTelephonyManagerImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "moca_alarm_event:: mask.length="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    invoke-interface {v1, p1}, Lcom/lge/internal/telephony/ITelephonyEx;->mocaAlarmEvent([B)[B

    move-result-object v3

    goto :goto_0

    .line 764
    :cond_1
    const-string v4, "LGTelephonyManagerImpl"

    const-string v5, "moca_alarm_event:: reset"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    const/4 v4, 0x1

    new-array v2, v4, [B

    .line 766
    .local v2, "unset":[B
    const/4 v4, 0x0

    const/4 v5, -0x1

    aput-byte v5, v2, v4

    .line 768
    invoke-interface {v1, v2}, Lcom/lge/internal/telephony/ITelephonyEx;->mocaAlarmEvent([B)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    goto :goto_0

    .line 770
    .end local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    .end local v2    # "unset":[B
    :catch_0
    move-exception v0

    .line 771
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 772
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 773
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public moca_alarm_event_reg(I)Z
    .locals 6
    .param p1, "event"    # I

    .prologue
    const/4 v2, 0x0

    .line 725
    const-string v3, "LGTelephonyManagerImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "moca_alarm_event_reg event = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    :try_start_0
    invoke-direct {p0}, Lcom/lge/telephony/LGTelephonyManagerImpl;->getITelephonyEx()Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v1

    .line 730
    .local v1, "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    if-nez v1, :cond_0

    .line 732
    const-string v3, "LGTelephonyManagerImpl"

    const-string/jumbo v4, "telephony is null"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    .end local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :goto_0
    return v2

    .line 736
    .restart local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :cond_0
    invoke-interface {v1, p1}, Lcom/lge/internal/telephony/ITelephonyEx;->mocaAlarmEventReg(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 738
    .end local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :catch_0
    move-exception v0

    .line 739
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 740
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 741
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public moca_check_mem()[I
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1081
    const-string v3, "LGTelephonyManagerImpl"

    const-string v4, "moca_check_mem"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    :try_start_0
    invoke-direct {p0}, Lcom/lge/telephony/LGTelephonyManagerImpl;->getITelephonyEx()Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v1

    .line 1085
    .local v1, "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    if-nez v1, :cond_0

    .line 1086
    const-string v3, "LGTelephonyManagerImpl"

    const-string/jumbo v4, "telephony is null"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    .end local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :goto_0
    return-object v2

    .line 1089
    .restart local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :cond_0
    invoke-interface {v1}, Lcom/lge/internal/telephony/ITelephonyEx;->mocaCheckMem()[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    goto :goto_0

    .line 1090
    .end local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :catch_0
    move-exception v0

    .line 1091
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1092
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1093
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public moca_get_RFParameter(I)[B
    .locals 12
    .param p1, "kindOfRFParameter"    # I

    .prologue
    const/4 v8, 0x0

    .line 881
    const/4 v6, 0x0

    .line 882
    .local v6, "mocaRFParamTemp":[B
    const/4 v5, 0x0

    .line 883
    .local v5, "mocaRFParamResult":[B
    const/4 v4, 0x0

    .line 884
    .local v4, "mocaRFParamResp":Lcom/lge/internal/telephony/MOCARFParameterResponse;
    const/4 v3, 0x0

    .line 885
    .local v3, "getRFParamTotBufNum":I
    const/4 v1, 0x0

    .line 886
    .local v1, "getRFParamCurBufNum":I
    const/4 v2, 0x0

    .line 887
    .local v2, "getRFParamCurDataSize":I
    const-string v9, "LGTelephonyManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "moca_get_RFParameter(), kindOfRFParameter = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    :try_start_0
    invoke-direct {p0}, Lcom/lge/telephony/LGTelephonyManagerImpl;->getITelephonyEx()Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v7

    .line 890
    .local v7, "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    if-nez v7, :cond_0

    .line 891
    const-string v9, "LGTelephonyManagerImpl"

    const-string/jumbo v10, "telephony is null"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    .end local v7    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :goto_0
    return-object v8

    .line 894
    .restart local v7    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :cond_0
    invoke-interface {v7, p1, v1}, Lcom/lge/internal/telephony/ITelephonyEx;->mocaGetRFParameter(II)Lcom/lge/internal/telephony/MOCARFParameterResponse;

    move-result-object v4

    .line 895
    if-nez v4, :cond_1

    .line 896
    const-string v9, "LGTelephonyManagerImpl"

    const-string v10, "Internal Start ERROR : MOCARFParameterResponse is NULL"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    const-string v9, "LGTelephonyManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mocaRFParamResp = telephony.mocaGetRFParameter("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ");"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 954
    .end local v7    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :catch_0
    move-exception v0

    .line 955
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 900
    .end local v0    # "ex":Landroid/os/RemoteException;
    .restart local v7    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :cond_1
    :try_start_1
    iget v3, v4, Lcom/lge/internal/telephony/MOCARFParameterResponse;->send_buf_num:I

    .line 901
    if-lez v3, :cond_3

    const/16 v9, 0x1000

    if-ge v3, v9, :cond_3

    .line 902
    const-string v9, "LGTelephonyManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getRFParamTotBufNum="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    mul-int/lit16 v9, v3, 0x7f8

    new-array v6, v9, [B

    .line 904
    const-string v9, "LGTelephonyManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "local buffer size = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, v6

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    :cond_2
    :goto_1
    if-ge v1, v3, :cond_6

    .line 913
    add-int/lit8 v1, v1, 0x1

    .line 914
    invoke-interface {v7, p1, v1}, Lcom/lge/internal/telephony/ITelephonyEx;->mocaGetRFParameter(II)Lcom/lge/internal/telephony/MOCARFParameterResponse;

    move-result-object v4

    .line 915
    if-nez v4, :cond_4

    .line 916
    const-string v9, "LGTelephonyManagerImpl"

    const-string v10, "Internal Loop ERROR  : MOCARFParameterResponse is NULL"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    const-string v9, "LGTelephonyManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mocaRFParamResp = (MOCARFParameterResponse)telephony.mocaGetRFParameter("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 956
    .end local v7    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :catch_1
    move-exception v0

    .line 957
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_0

    .line 907
    .end local v0    # "ex":Ljava/lang/NullPointerException;
    .restart local v7    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :cond_3
    :try_start_2
    const-string v9, "LGTelephonyManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getRFParamTotBufNum="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " is Invalid"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    if-eqz v3, :cond_2

    .line 909
    const/4 v3, 0x0

    goto :goto_1

    .line 920
    :cond_4
    iget v9, v4, Lcom/lge/internal/telephony/MOCARFParameterResponse;->data_len:I

    add-int/2addr v9, v2

    array-length v10, v6

    if-le v9, v10, :cond_5

    .line 921
    const-string v9, "LGTelephonyManagerImpl"

    const-string v10, "Internal Loop ERROR  : TOO Large data"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    const-string v9, "LGTelephonyManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[getRFParam] mocaRFParamTemp.length = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, v6

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 925
    :cond_5
    iget-object v9, v4, Lcom/lge/internal/telephony/MOCARFParameterResponse;->data:[B

    const/4 v10, 0x0

    iget v11, v4, Lcom/lge/internal/telephony/MOCARFParameterResponse;->data_len:I

    invoke-static {v9, v10, v6, v2, v11}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 926
    iget v9, v4, Lcom/lge/internal/telephony/MOCARFParameterResponse;->data_len:I

    add-int/2addr v2, v9

    .line 927
    if-ne v1, v3, :cond_2

    .line 928
    const-string v9, "LGTelephonyManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[getRFParam] CurBufNum="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", CurDataSize="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", Resp.data_len="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v4, Lcom/lge/internal/telephony/MOCARFParameterResponse;->data_len:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 931
    :cond_6
    const v9, 0xffff

    invoke-interface {v7, p1, v9}, Lcom/lge/internal/telephony/ITelephonyEx;->mocaGetRFParameter(II)Lcom/lge/internal/telephony/MOCARFParameterResponse;

    move-result-object v4

    .line 932
    if-nez v4, :cond_7

    .line 933
    const-string v9, "LGTelephonyManagerImpl"

    const-string v10, "mocaGetRFParameter(kindOfRFParameter, 0xffff) is NULL"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    const-string v9, "LGTelephonyManagerImpl"

    const-string v10, "Internal Start ERROR : MOCARFParameterResponse is NULL"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 937
    :cond_7
    if-nez v2, :cond_8

    .line 938
    const-string v9, "LGTelephonyManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "moca_get_RFParameter()-- getRFParamTotBufNum = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    const-string v9, "LGTelephonyManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "moca_get_RFParameter()-- kindOfRFParameter = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "getRFParamCurDataSize="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 942
    :cond_8
    array-length v9, v6

    if-ge v2, v9, :cond_9

    .line 943
    new-array v5, v2, [B

    .line 944
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v6, v9, v5, v10, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 945
    const-string v9, "LGTelephonyManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[moca_get_RFParameter] kindOfRFParameter = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    const-string v9, "LGTelephonyManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[moca_get_RFParameter] mocaRFParamResult.length="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, v5

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, v5

    .line 947
    goto/16 :goto_0

    .line 950
    :cond_9
    const-string v9, "LGTelephonyManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[moca_get_RFParameter] kindOfRFParameter = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    const-string v9, "LGTelephonyManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[moca_get_RFParameter] mocaRFParamTemp.length="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, v6

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v8, v6

    .line 952
    goto/16 :goto_0
.end method

.method public moca_get_data()[B
    .locals 12

    .prologue
    const/4 v8, 0x0

    .line 781
    const/4 v6, 0x0

    .line 782
    .local v6, "mocaLogData":[B
    const/4 v5, 0x0

    .line 783
    .local v5, "mocaGetDataResult":[B
    const/4 v4, 0x0

    .line 784
    .local v4, "mocaGetDataResp":Lcom/lge/internal/telephony/MOCADataResponse;
    const/4 v3, 0x0

    .line 785
    .local v3, "getDataTotBufNum":I
    const/4 v1, 0x0

    .line 786
    .local v1, "getDataCurBufNum":I
    const/4 v2, 0x0

    .line 788
    .local v2, "getDataCurDataSize":I
    const-string v9, "LGTelephonyManagerImpl"

    const-string v10, "moca_get_data()"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    :try_start_0
    invoke-direct {p0}, Lcom/lge/telephony/LGTelephonyManagerImpl;->getITelephonyEx()Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v7

    .line 793
    .local v7, "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    if-nez v7, :cond_0

    .line 795
    const-string v9, "LGTelephonyManagerImpl"

    const-string/jumbo v10, "telephony is null"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    .end local v7    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :goto_0
    return-object v8

    .line 799
    .restart local v7    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :cond_0
    invoke-interface {v7, v1}, Lcom/lge/internal/telephony/ITelephonyEx;->mocaGetData(I)Lcom/lge/internal/telephony/MOCADataResponse;

    move-result-object v4

    .line 801
    if-nez v4, :cond_1

    .line 803
    const-string v9, "LGTelephonyManagerImpl"

    const-string v10, "mocaGetDataResp = telephony.mocaGetData(getDataCurBufNum)"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    const-string v9, "LGTelephonyManagerImpl"

    const-string v10, "Internal Start ERROR : mocaGetDataResp is NULL"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 870
    .end local v7    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :catch_0
    move-exception v0

    .line 871
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 808
    .end local v0    # "ex":Landroid/os/RemoteException;
    .restart local v7    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :cond_1
    :try_start_1
    iget v3, v4, Lcom/lge/internal/telephony/MOCADataResponse;->send_buf_num:I

    .line 809
    const-string v9, "LGTelephonyManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getDataTotBufNum = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    if-lez v3, :cond_3

    const/16 v9, 0x1000

    if-ge v3, v9, :cond_3

    .line 812
    mul-int/lit16 v9, v3, 0x7f8

    new-array v6, v9, [B

    .line 813
    const-string v9, "LGTelephonyManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "local buffer size = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, v6

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    :cond_2
    :goto_1
    if-ge v1, v3, :cond_6

    .line 824
    add-int/lit8 v1, v1, 0x1

    .line 825
    invoke-interface {v7, v1}, Lcom/lge/internal/telephony/ITelephonyEx;->mocaGetData(I)Lcom/lge/internal/telephony/MOCADataResponse;

    move-result-object v4

    .line 826
    if-nez v4, :cond_4

    .line 827
    const-string v9, "LGTelephonyManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mocaGetDataResp = (MOCADataResponse)telephony.mocaGetData("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ");"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    const-string v9, "LGTelephonyManagerImpl"

    const-string v10, "Internal Loop ERROR  : mocaGetDataResp is NULL"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 872
    .end local v7    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :catch_1
    move-exception v0

    .line 873
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_0

    .line 816
    .end local v0    # "ex":Ljava/lang/NullPointerException;
    .restart local v7    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :cond_3
    :try_start_2
    const-string v9, "LGTelephonyManagerImpl"

    const-string v10, "getDataTotBufNum is Invalid"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    if-eqz v3, :cond_2

    .line 818
    const/4 v3, 0x0

    goto :goto_1

    .line 831
    :cond_4
    iget v9, v4, Lcom/lge/internal/telephony/MOCADataResponse;->data_len:I

    add-int/2addr v9, v2

    array-length v10, v6

    if-le v9, v10, :cond_5

    .line 832
    const-string v9, "LGTelephonyManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[getRFParam] mocaLogData.length = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, v6

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    const-string v9, "LGTelephonyManagerImpl"

    const-string v10, "Internal Loop ERROR  : TOO Large data"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 836
    :cond_5
    iget-object v9, v4, Lcom/lge/internal/telephony/MOCADataResponse;->data:[B

    const/4 v10, 0x0

    iget v11, v4, Lcom/lge/internal/telephony/MOCADataResponse;->data_len:I

    invoke-static {v9, v10, v6, v2, v11}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 837
    iget v9, v4, Lcom/lge/internal/telephony/MOCADataResponse;->data_len:I

    add-int/2addr v2, v9

    .line 838
    if-ne v1, v3, :cond_2

    .line 839
    const-string v9, "LGTelephonyManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[getData] CurBufNum="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", CurDataSize="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", Resp.data_len="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v4, Lcom/lge/internal/telephony/MOCADataResponse;->data_len:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 844
    :cond_6
    const v9, 0xffff

    invoke-interface {v7, v9}, Lcom/lge/internal/telephony/ITelephonyEx;->mocaGetData(I)Lcom/lge/internal/telephony/MOCADataResponse;

    move-result-object v4

    .line 847
    if-nez v4, :cond_7

    .line 848
    const-string v9, "LGTelephonyManagerImpl"

    const-string v10, "Internal Start ERROR : mocaGetDataResp is NULL"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 851
    :cond_7
    if-nez v2, :cond_8

    .line 852
    const-string v9, "LGTelephonyManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "moca_get_data()-- getDataCurDataSize="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    const-string v9, "LGTelephonyManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "moca_get_data()-- getDataTotBufNum="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 856
    :cond_8
    array-length v9, v6

    if-ge v2, v9, :cond_9

    .line 857
    new-array v5, v2, [B

    .line 858
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v6, v9, v5, v10, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 859
    const-string v9, "LGTelephonyManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "moca_get_data()-- mocaGetDataResult.length="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, v5

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, v5

    .line 860
    goto/16 :goto_0

    .line 863
    :cond_9
    const-string v9, "LGTelephonyManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "moca_get_data()-- mocaLogData.length="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, v6

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v8, v6

    .line 864
    goto/16 :goto_0
.end method

.method public moca_get_misc(I)[B
    .locals 12
    .param p1, "kindOfData"    # I

    .prologue
    const/4 v8, 0x0

    .line 965
    const/4 v6, 0x0

    .line 966
    .local v6, "mocaMiscTemp":[B
    const/4 v5, 0x0

    .line 967
    .local v5, "mocaMiscResult":[B
    const/4 v4, 0x0

    .line 968
    .local v4, "mocaMiscResp":Lcom/lge/internal/telephony/MOCAMiscResponse;
    const/4 v3, 0x0

    .line 969
    .local v3, "getMiscTotBufNum":I
    const/4 v1, 0x0

    .line 970
    .local v1, "getMiscCurBufNum":I
    const/4 v2, 0x0

    .line 971
    .local v2, "getMiscCurDataSize":I
    const-string v9, "LGTelephonyManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "moca_get_misc()++, kindOfData = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    :try_start_0
    invoke-direct {p0}, Lcom/lge/telephony/LGTelephonyManagerImpl;->getITelephonyEx()Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v7

    .line 974
    .local v7, "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    if-nez v7, :cond_0

    .line 975
    const-string v9, "LGTelephonyManagerImpl"

    const-string/jumbo v10, "telephony is null"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    .end local v7    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :goto_0
    return-object v8

    .line 978
    .restart local v7    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :cond_0
    invoke-interface {v7, p1, v1}, Lcom/lge/internal/telephony/ITelephonyEx;->mocaGetMisc(II)Lcom/lge/internal/telephony/MOCAMiscResponse;

    move-result-object v4

    .line 979
    if-nez v4, :cond_1

    .line 980
    const-string v9, "LGTelephonyManagerImpl"

    const-string v10, "mocaMiscResp = telephony.mocaGetMisc(kindOfData, getMiscCurBufNum);"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    const-string v9, "LGTelephonyManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "kindOfData = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", getMiscCurBufNum = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ");"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    const-string v9, "LGTelephonyManagerImpl"

    const-string v10, "Internal Start ERROR : MOCAMiscResponse is NULL"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1043
    .end local v7    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :catch_0
    move-exception v0

    .line 1044
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 985
    .end local v0    # "ex":Landroid/os/RemoteException;
    .restart local v7    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :cond_1
    :try_start_1
    iget v3, v4, Lcom/lge/internal/telephony/MOCAMiscResponse;->send_buf_num:I

    .line 986
    if-lez v3, :cond_3

    const/16 v9, 0x1000

    if-ge v3, v9, :cond_3

    .line 987
    mul-int/lit16 v9, v3, 0x7f8

    new-array v6, v9, [B

    .line 988
    const-string v9, "LGTelephonyManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "local buffer size = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, v6

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    const-string v9, "LGTelephonyManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getMiscTotBufNum = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    :cond_2
    :goto_1
    if-ge v1, v3, :cond_6

    .line 1000
    add-int/lit8 v1, v1, 0x1

    .line 1001
    invoke-interface {v7, p1, v1}, Lcom/lge/internal/telephony/ITelephonyEx;->mocaGetMisc(II)Lcom/lge/internal/telephony/MOCAMiscResponse;

    move-result-object v4

    .line 1002
    if-nez v4, :cond_4

    .line 1003
    const-string v9, "LGTelephonyManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mocaMiscResp = (MOCAMiscResponse)telephony.mocaGetMisc("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ");"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    const-string v9, "LGTelephonyManagerImpl"

    const-string v10, "Internal Loop ERROR  : MOCAMiscResponse is NULL"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 1045
    .end local v7    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :catch_1
    move-exception v0

    .line 1046
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_0

    .line 992
    .end local v0    # "ex":Ljava/lang/NullPointerException;
    .restart local v7    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :cond_3
    :try_start_2
    const-string v9, "LGTelephonyManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getMiscTotBufNum = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " is Invalid"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    if-eqz v3, :cond_2

    .line 994
    const/4 v3, 0x0

    goto :goto_1

    .line 1007
    :cond_4
    iget v9, v4, Lcom/lge/internal/telephony/MOCAMiscResponse;->data_len:I

    add-int/2addr v9, v2

    array-length v10, v6

    if-le v9, v10, :cond_5

    .line 1008
    const-string v9, "LGTelephonyManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[getRFParam] mocaMiscTemp.length = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, v6

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    const-string v9, "LGTelephonyManagerImpl"

    const-string v10, "Internal Loop ERROR  : TOO Large data"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1012
    :cond_5
    iget-object v9, v4, Lcom/lge/internal/telephony/MOCAMiscResponse;->data:[B

    const/4 v10, 0x0

    iget v11, v4, Lcom/lge/internal/telephony/MOCAMiscResponse;->data_len:I

    invoke-static {v9, v10, v6, v2, v11}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1013
    iget v9, v4, Lcom/lge/internal/telephony/MOCAMiscResponse;->data_len:I

    add-int/2addr v2, v9

    .line 1014
    if-ne v1, v3, :cond_2

    .line 1015
    const-string v9, "LGTelephonyManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[getMisc] CurBufNum="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", CurDataSize="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", Resp.data_len="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v4, Lcom/lge/internal/telephony/MOCAMiscResponse;->data_len:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1019
    :cond_6
    const v9, 0xffff

    invoke-interface {v7, p1, v9}, Lcom/lge/internal/telephony/ITelephonyEx;->mocaGetMisc(II)Lcom/lge/internal/telephony/MOCAMiscResponse;

    move-result-object v4

    .line 1021
    if-nez v4, :cond_7

    .line 1022
    const-string v9, "LGTelephonyManagerImpl"

    const-string v10, "Internal Start ERROR : MOCAMiscResponse is NULL"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1025
    :cond_7
    if-nez v2, :cond_8

    .line 1026
    const-string v9, "LGTelephonyManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getMiscCurDataSize = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    const-string v9, "LGTelephonyManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[moca_get_misc] kindOfData = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    const-string v9, "LGTelephonyManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[moca_get_misc] getMiscTotBufNum = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1032
    :cond_8
    array-length v9, v6

    if-ge v2, v9, :cond_9

    .line 1033
    new-array v5, v2, [B

    .line 1034
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v6, v9, v5, v10, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1035
    const-string v9, "LGTelephonyManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[moca_get_misc] kindOfData = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mocaMiscResult.length="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, v5

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, v5

    .line 1036
    goto/16 :goto_0

    .line 1039
    :cond_9
    const-string v9, "LGTelephonyManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[moca_get_misc] kindOfData = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", logData.length="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, v6

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v8, v6

    .line 1040
    goto/16 :goto_0
.end method

.method public moca_set_event([B)[B
    .locals 7
    .param p1, "mask"    # [B

    .prologue
    const/4 v3, 0x0

    .line 696
    :try_start_0
    invoke-direct {p0}, Lcom/lge/telephony/LGTelephonyManagerImpl;->getITelephonyEx()Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v1

    .line 697
    .local v1, "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    if-nez v1, :cond_0

    .line 698
    const-string v4, "LGTelephonyManagerImpl"

    const-string/jumbo v5, "telephony is null"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    .end local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :goto_0
    return-object v3

    .line 702
    .restart local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :cond_0
    if-eqz p1, :cond_1

    .line 704
    const-string v4, "LGTelephonyManagerImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "moca_set_event:: mask.length="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    invoke-interface {v1, p1}, Lcom/lge/internal/telephony/ITelephonyEx;->mocaSetEvent([B)[B

    move-result-object v3

    goto :goto_0

    .line 710
    :cond_1
    const/4 v4, 0x1

    new-array v2, v4, [B

    .line 711
    .local v2, "unset":[B
    const/4 v4, 0x0

    const/4 v5, -0x1

    aput-byte v5, v2, v4

    .line 713
    invoke-interface {v1, v2}, Lcom/lge/internal/telephony/ITelephonyEx;->mocaSetEvent([B)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    goto :goto_0

    .line 715
    .end local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    .end local v2    # "unset":[B
    :catch_0
    move-exception v0

    .line 716
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 717
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 718
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public moca_set_log([B[B)[B
    .locals 7
    .param p1, "startcode"    # [B
    .param p2, "mask"    # [B

    .prologue
    const/4 v3, 0x0

    .line 667
    :try_start_0
    invoke-direct {p0}, Lcom/lge/telephony/LGTelephonyManagerImpl;->getITelephonyEx()Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v1

    .line 669
    .local v1, "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    if-nez v1, :cond_0

    .line 670
    const-string v4, "LGTelephonyManagerImpl"

    const-string/jumbo v5, "telephony is null"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    .end local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :goto_0
    return-object v3

    .line 674
    .restart local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :cond_0
    if-eqz p2, :cond_1

    .line 676
    const-string v4, "LGTelephonyManagerImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "moca_set_log:: mask.length="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, p2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    invoke-interface {v1, p1, p2}, Lcom/lge/internal/telephony/ITelephonyEx;->mocaSetLog([B[B)[B

    move-result-object v3

    goto :goto_0

    .line 681
    :cond_1
    const/4 v4, 0x1

    new-array v2, v4, [B

    .line 682
    .local v2, "unset":[B
    const/4 v4, 0x0

    const/4 v5, -0x1

    aput-byte v5, v2, v4

    .line 683
    invoke-interface {v1, p1, v2}, Lcom/lge/internal/telephony/ITelephonyEx;->mocaSetLog([B[B)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    goto :goto_0

    .line 685
    .end local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    .end local v2    # "unset":[B
    :catch_0
    move-exception v0

    .line 686
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 687
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 688
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public moca_set_mem(I)Z
    .locals 7
    .param p1, "percent"    # I

    .prologue
    const/4 v3, 0x0

    .line 1055
    :try_start_0
    invoke-direct {p0}, Lcom/lge/telephony/LGTelephonyManagerImpl;->getITelephonyEx()Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v1

    .line 1056
    .local v1, "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    if-nez v1, :cond_0

    .line 1076
    .end local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :goto_0
    return v3

    .line 1060
    .restart local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :cond_0
    const/4 v4, -0x1

    if-ne p1, v4, :cond_1

    .line 1061
    const/4 v2, 0x0

    .line 1062
    .local v2, "unset":I
    move v2, p1

    .line 1064
    invoke-interface {v1, v2}, Lcom/lge/internal/telephony/ITelephonyEx;->mocaSetMem(I)Z

    move-result v3

    goto :goto_0

    .line 1067
    .end local v2    # "unset":I
    :cond_1
    const-string v4, "LGTelephonyManagerImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "moca_set_mem:: percent="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    invoke-interface {v1, p1}, Lcom/lge/internal/telephony/ITelephonyEx;->mocaSetMem(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    goto :goto_0

    .line 1071
    .end local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :catch_0
    move-exception v0

    .line 1072
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1073
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1074
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public oem_ssa_alarm_event([B)[B
    .locals 7
    .param p1, "mask"    # [B

    .prologue
    const/4 v3, 0x0

    .line 514
    if-nez p1, :cond_2

    .line 515
    const/4 v4, 0x1

    :try_start_0
    new-array v2, v4, [B

    .line 516
    .local v2, "unset":[B
    const/4 v4, 0x0

    const/4 v5, -0x1

    aput-byte v5, v2, v4

    .line 517
    invoke-direct {p0}, Lcom/lge/telephony/LGTelephonyManagerImpl;->getITelephonyEx()Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v1

    .line 518
    .local v1, "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    if-nez v1, :cond_1

    .line 536
    .end local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    .end local v2    # "unset":[B
    :cond_0
    :goto_0
    return-object v3

    .line 521
    .restart local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    .restart local v2    # "unset":[B
    :cond_1
    invoke-interface {v1, v2}, Lcom/lge/internal/telephony/ITelephonyEx;->oemSsaAlarmEvent([B)[B

    move-result-object v3

    goto :goto_0

    .line 524
    .end local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    .end local v2    # "unset":[B
    :cond_2
    const-string v4, "LGTelephonyManagerImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "oem_ssa_alarm_event:: mask.length="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    invoke-direct {p0}, Lcom/lge/telephony/LGTelephonyManagerImpl;->getITelephonyEx()Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v1

    .line 526
    .restart local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    if-eqz v1, :cond_0

    .line 529
    invoke-interface {v1, p1}, Lcom/lge/internal/telephony/ITelephonyEx;->oemSsaAlarmEvent([B)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    goto :goto_0

    .line 531
    .end local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :catch_0
    move-exception v0

    .line 532
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 533
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 534
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public oem_ssa_check_mem()[I
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 645
    const-string v3, "LGTelephonyManagerImpl"

    const-string v4, "oem_ssa_check_mem"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    :try_start_0
    invoke-direct {p0}, Lcom/lge/telephony/LGTelephonyManagerImpl;->getITelephonyEx()Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v1

    .line 649
    .local v1, "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    if-nez v1, :cond_0

    .line 658
    .end local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :goto_0
    return-object v2

    .line 652
    .restart local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :cond_0
    invoke-interface {v1}, Lcom/lge/internal/telephony/ITelephonyEx;->oemSsaCheckMem()[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    goto :goto_0

    .line 653
    .end local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :catch_0
    move-exception v0

    .line 654
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 655
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 656
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public oem_ssa_get_data()[B
    .locals 12

    .prologue
    const/4 v8, 0x0

    .line 542
    const/4 v4, 0x0

    .line 543
    .local v4, "logDataTemp":[B
    const/4 v3, 0x0

    .line 544
    .local v3, "logDataResult":[B
    const/4 v5, 0x0

    .line 545
    .local v5, "oemSsaDataResp":Lcom/lge/internal/telephony/OEMSSADataResponse;
    const/4 v7, 0x0

    .line 546
    .local v7, "totBufNum":I
    const/4 v1, 0x0

    .line 547
    .local v1, "curBufNum":I
    const/4 v0, 0x0

    .line 548
    .local v0, "cumuDataSize":I
    const-string v9, "LGTelephonyManagerImpl"

    const-string v10, "oemSsaGetData()++"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    :try_start_0
    invoke-direct {p0}, Lcom/lge/telephony/LGTelephonyManagerImpl;->getITelephonyEx()Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v6

    .line 551
    .local v6, "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    if-nez v6, :cond_0

    .line 611
    .end local v6    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :goto_0
    return-object v8

    .line 554
    .restart local v6    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :cond_0
    invoke-interface {v6, v1}, Lcom/lge/internal/telephony/ITelephonyEx;->oemSsaGetData(I)Lcom/lge/internal/telephony/OEMSSADataResponse;

    move-result-object v5

    .line 555
    if-nez v5, :cond_1

    .line 556
    const-string v9, "LGTelephonyManagerImpl"

    const-string v10, "Internal Start ERROR : OEMSSADataResponse is NULL"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 606
    .end local v6    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :catch_0
    move-exception v2

    .line 607
    .local v2, "ex":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 559
    .end local v2    # "ex":Landroid/os/RemoteException;
    .restart local v6    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :cond_1
    :try_start_1
    iget v7, v5, Lcom/lge/internal/telephony/OEMSSADataResponse;->send_buf_num:I

    .line 560
    if-lez v7, :cond_3

    const/16 v9, 0x1000

    if-ge v7, v9, :cond_3

    .line 561
    mul-int/lit16 v9, v7, 0x7f8

    new-array v4, v9, [B

    .line 562
    const-string v9, "LGTelephonyManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "totBufNum="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", local buffer size = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, v4

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    :cond_2
    :goto_1
    if-ge v1, v7, :cond_6

    .line 571
    add-int/lit8 v1, v1, 0x1

    .line 572
    invoke-interface {v6, v1}, Lcom/lge/internal/telephony/ITelephonyEx;->oemSsaGetData(I)Lcom/lge/internal/telephony/OEMSSADataResponse;

    move-result-object v5

    .line 573
    if-nez v5, :cond_4

    .line 574
    const-string v9, "LGTelephonyManagerImpl"

    const-string v10, "Internal Loop ERROR  : OEMSSADataResponse is NULL"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 608
    .end local v6    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :catch_1
    move-exception v2

    .line 609
    .local v2, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 565
    .end local v2    # "ex":Ljava/lang/NullPointerException;
    .restart local v6    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :cond_3
    :try_start_2
    const-string v9, "LGTelephonyManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "totBufNum="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " is Invalid"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    if-eqz v7, :cond_2

    .line 567
    const/4 v7, 0x0

    goto :goto_1

    .line 577
    :cond_4
    iget v9, v5, Lcom/lge/internal/telephony/OEMSSADataResponse;->data_len:I

    add-int/2addr v9, v0

    array-length v10, v4

    if-le v9, v10, :cond_5

    .line 578
    const-string v9, "LGTelephonyManagerImpl"

    const-string v10, "Internal Loop ERROR  : TOO Large data"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 581
    :cond_5
    iget-object v9, v5, Lcom/lge/internal/telephony/OEMSSADataResponse;->data:[B

    const/4 v10, 0x0

    iget v11, v5, Lcom/lge/internal/telephony/OEMSSADataResponse;->data_len:I

    invoke-static {v9, v10, v4, v0, v11}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 582
    iget v9, v5, Lcom/lge/internal/telephony/OEMSSADataResponse;->data_len:I

    add-int/2addr v0, v9

    goto :goto_1

    .line 587
    :cond_6
    const v9, 0xffff

    invoke-interface {v6, v9}, Lcom/lge/internal/telephony/ITelephonyEx;->oemSsaGetData(I)Lcom/lge/internal/telephony/OEMSSADataResponse;

    move-result-object v5

    .line 588
    if-nez v5, :cond_7

    .line 589
    const-string v9, "LGTelephonyManagerImpl"

    const-string v10, "Internal Start ERROR : OEMSSADataResponse is NULL"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 592
    :cond_7
    if-nez v0, :cond_8

    .line 593
    const-string v9, "LGTelephonyManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "oemSsaGetData()-- cumuDataSize="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 596
    :cond_8
    array-length v9, v4

    if-ge v0, v9, :cond_9

    .line 597
    new-array v3, v0, [B

    .line 598
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v4, v9, v3, v10, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 599
    const-string v9, "LGTelephonyManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "oemSsaGetData()-- logDataResult.length="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, v3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, v3

    .line 600
    goto/16 :goto_0

    .line 603
    :cond_9
    const-string v9, "LGTelephonyManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "oemSsaGetData()-- logData.length="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, v4

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v8, v4

    .line 604
    goto/16 :goto_0
.end method

.method public oem_ssa_hdv_alarm_event([B)[B
    .locals 7
    .param p1, "mask"    # [B

    .prologue
    const/4 v3, 0x0

    .line 484
    if-nez p1, :cond_2

    .line 485
    const/4 v4, 0x1

    :try_start_0
    new-array v2, v4, [B

    .line 486
    .local v2, "unset":[B
    const/4 v4, 0x0

    const/4 v5, -0x1

    aput-byte v5, v2, v4

    .line 487
    invoke-direct {p0}, Lcom/lge/telephony/LGTelephonyManagerImpl;->getITelephonyEx()Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v1

    .line 488
    .local v1, "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    if-nez v1, :cond_1

    .line 506
    .end local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    .end local v2    # "unset":[B
    :cond_0
    :goto_0
    return-object v3

    .line 491
    .restart local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    .restart local v2    # "unset":[B
    :cond_1
    invoke-interface {v1, v2}, Lcom/lge/internal/telephony/ITelephonyEx;->oemSsaHdvAlarmEvent([B)[B

    move-result-object v3

    goto :goto_0

    .line 494
    .end local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    .end local v2    # "unset":[B
    :cond_2
    const-string v4, "LGTelephonyManagerImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "oem_ssa_hdv_alarm_event:: mask.length="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    invoke-direct {p0}, Lcom/lge/telephony/LGTelephonyManagerImpl;->getITelephonyEx()Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v1

    .line 496
    .restart local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    if-eqz v1, :cond_0

    .line 499
    invoke-interface {v1, p1}, Lcom/lge/internal/telephony/ITelephonyEx;->oemSsaHdvAlarmEvent([B)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    goto :goto_0

    .line 501
    .end local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :catch_0
    move-exception v0

    .line 502
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 503
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 504
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public oem_ssa_set_event([B)[B
    .locals 7
    .param p1, "mask"    # [B

    .prologue
    const/4 v3, 0x0

    .line 455
    if-nez p1, :cond_2

    .line 456
    const/4 v4, 0x1

    :try_start_0
    new-array v2, v4, [B

    .line 457
    .local v2, "unset":[B
    const/4 v4, 0x0

    const/4 v5, -0x1

    aput-byte v5, v2, v4

    .line 458
    invoke-direct {p0}, Lcom/lge/telephony/LGTelephonyManagerImpl;->getITelephonyEx()Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v1

    .line 459
    .local v1, "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    if-nez v1, :cond_1

    .line 477
    .end local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    .end local v2    # "unset":[B
    :cond_0
    :goto_0
    return-object v3

    .line 462
    .restart local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    .restart local v2    # "unset":[B
    :cond_1
    invoke-interface {v1, v2}, Lcom/lge/internal/telephony/ITelephonyEx;->oemSsaSetEvent([B)[B

    move-result-object v3

    goto :goto_0

    .line 465
    .end local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    .end local v2    # "unset":[B
    :cond_2
    const-string v4, "LGTelephonyManagerImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "oem_ssa_set_event:: mask.length="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    invoke-direct {p0}, Lcom/lge/telephony/LGTelephonyManagerImpl;->getITelephonyEx()Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v1

    .line 467
    .restart local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    if-eqz v1, :cond_0

    .line 470
    invoke-interface {v1, p1}, Lcom/lge/internal/telephony/ITelephonyEx;->oemSsaSetEvent([B)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    goto :goto_0

    .line 472
    .end local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :catch_0
    move-exception v0

    .line 473
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 474
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 475
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public oem_ssa_set_log([B[B)[B
    .locals 7
    .param p1, "startcode"    # [B
    .param p2, "mask"    # [B

    .prologue
    const/4 v3, 0x0

    .line 427
    if-nez p2, :cond_2

    .line 428
    const/4 v4, 0x1

    :try_start_0
    new-array v2, v4, [B

    .line 429
    .local v2, "unset":[B
    const/4 v4, 0x0

    const/4 v5, -0x1

    aput-byte v5, v2, v4

    .line 430
    invoke-direct {p0}, Lcom/lge/telephony/LGTelephonyManagerImpl;->getITelephonyEx()Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v1

    .line 431
    .local v1, "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    if-nez v1, :cond_1

    .line 449
    .end local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    .end local v2    # "unset":[B
    :cond_0
    :goto_0
    return-object v3

    .line 434
    .restart local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    .restart local v2    # "unset":[B
    :cond_1
    invoke-interface {v1, p1, v2}, Lcom/lge/internal/telephony/ITelephonyEx;->oemSsaSetLog([B[B)[B

    move-result-object v3

    goto :goto_0

    .line 437
    .end local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    .end local v2    # "unset":[B
    :cond_2
    const-string v4, "LGTelephonyManagerImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "oem_ssa_set_log:: mask.length="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, p2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    invoke-direct {p0}, Lcom/lge/telephony/LGTelephonyManagerImpl;->getITelephonyEx()Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v1

    .line 439
    .restart local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    if-eqz v1, :cond_0

    .line 442
    invoke-interface {v1, p1, p2}, Lcom/lge/internal/telephony/ITelephonyEx;->oemSsaSetLog([B[B)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    goto :goto_0

    .line 444
    .end local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :catch_0
    move-exception v0

    .line 445
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 446
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 447
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public oem_ssa_set_mem(I)Z
    .locals 7
    .param p1, "percent"    # I

    .prologue
    const/4 v3, 0x0

    .line 617
    const/4 v4, -0x1

    if-ne p1, v4, :cond_2

    .line 618
    const/4 v2, 0x0

    .line 619
    .local v2, "unset":I
    move v2, p1

    .line 620
    :try_start_0
    invoke-direct {p0}, Lcom/lge/telephony/LGTelephonyManagerImpl;->getITelephonyEx()Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v1

    .line 621
    .local v1, "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    if-nez v1, :cond_1

    .line 639
    .end local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    .end local v2    # "unset":I
    :cond_0
    :goto_0
    return v3

    .line 624
    .restart local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    .restart local v2    # "unset":I
    :cond_1
    invoke-interface {v1, v2}, Lcom/lge/internal/telephony/ITelephonyEx;->oemSsaSetMem(I)Z

    move-result v3

    goto :goto_0

    .line 627
    .end local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    .end local v2    # "unset":I
    :cond_2
    const-string v4, "LGTelephonyManagerImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "oem_ssa_set_mem:: percent="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    invoke-direct {p0}, Lcom/lge/telephony/LGTelephonyManagerImpl;->getITelephonyEx()Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v1

    .line 629
    .restart local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    if-eqz v1, :cond_0

    .line 632
    invoke-interface {v1, p1}, Lcom/lge/internal/telephony/ITelephonyEx;->oemSsaSetMem(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    goto :goto_0

    .line 634
    .end local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :catch_0
    move-exception v0

    .line 635
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 636
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 637
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public resetVoiceMessageCount()V
    .locals 2

    .prologue
    .line 410
    :try_start_0
    invoke-direct {p0}, Lcom/lge/telephony/LGTelephonyManagerImpl;->getITelephonyEx()Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v0

    .line 411
    .local v0, "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    if-eqz v0, :cond_0

    .line 412
    invoke-interface {v0}, Lcom/lge/internal/telephony/ITelephonyEx;->resetVoiceMessageCount()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 419
    .end local v0    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :cond_0
    :goto_0
    return-void

    .line 416
    :catch_0
    move-exception v1

    goto :goto_0

    .line 414
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public setNetworkBand(Ljava/lang/String;I)I
    .locals 3
    .param p1, "mode"    # Ljava/lang/String;
    .param p2, "band"    # I

    .prologue
    const/4 v1, -0x1

    .line 259
    :try_start_0
    invoke-direct {p0}, Lcom/lge/telephony/LGTelephonyManagerImpl;->getITelephonyEx()Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/lge/internal/telephony/ITelephonyEx;->setNetworkBand(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 263
    :goto_0
    return v1

    .line 260
    :catch_0
    move-exception v0

    .line 261
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 262
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 263
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public startMobileQualityInformation()V
    .locals 2

    .prologue
    .line 227
    :try_start_0
    invoke-direct {p0}, Lcom/lge/telephony/LGTelephonyManagerImpl;->getITelephonyEx()Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/internal/telephony/ITelephonyEx;->startMobileQualityInformation()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 233
    :goto_0
    return-void

    .line 228
    :catch_0
    move-exception v0

    .line 229
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 230
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 231
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public stopMobileQualityInformation()V
    .locals 2

    .prologue
    .line 238
    :try_start_0
    invoke-direct {p0}, Lcom/lge/telephony/LGTelephonyManagerImpl;->getITelephonyEx()Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/internal/telephony/ITelephonyEx;->stopMobileQualityInformation()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 244
    :goto_0
    return-void

    .line 239
    :catch_0
    move-exception v0

    .line 240
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 241
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 242
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public uknight_event_set([B)[B
    .locals 4
    .param p1, "mask"    # [B

    .prologue
    .line 79
    if-nez p1, :cond_0

    .line 80
    const/4 v2, 0x1

    :try_start_0
    new-array v1, v2, [B

    .line 81
    .local v1, "unset":[B
    const/4 v2, 0x0

    const/4 v3, -0x1

    aput-byte v3, v1, v2

    .line 82
    invoke-direct {p0}, Lcom/lge/telephony/LGTelephonyManagerImpl;->getITelephonyEx()Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/lge/internal/telephony/ITelephonyEx;->uknightEventSet([B)[B

    move-result-object v2

    .line 92
    .end local v1    # "unset":[B
    :goto_0
    return-object v2

    .line 85
    :cond_0
    invoke-direct {p0}, Lcom/lge/telephony/LGTelephonyManagerImpl;->getITelephonyEx()Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/lge/internal/telephony/ITelephonyEx;->uknightEventSet([B)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    goto :goto_0

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 92
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 89
    :catch_1
    move-exception v0

    .line 90
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1
.end method

.method public uknight_get_data()[B
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 118
    const/4 v5, 0x0

    .line 119
    .local v5, "logDataTemp":[B
    const/4 v4, 0x0

    .line 120
    .local v4, "logDataResult":[B
    const/4 v3, 0x0

    .line 121
    .local v3, "knDataResp":Lcom/lge/internal/telephony/KNDataResponse;
    const/4 v6, 0x0

    .line 122
    .local v6, "totBufNum":I
    const/4 v1, 0x0

    .line 123
    .local v1, "curBufNum":I
    const/4 v0, 0x0

    .line 125
    .local v0, "cumuDataSize":I
    const-string v8, "LGTelephonyManagerImpl"

    const-string/jumbo v9, "uknightGetData()++"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :try_start_0
    invoke-direct {p0}, Lcom/lge/telephony/LGTelephonyManagerImpl;->getITelephonyEx()Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v8

    invoke-interface {v8, v1}, Lcom/lge/internal/telephony/ITelephonyEx;->uknightGetData(I)Lcom/lge/internal/telephony/KNDataResponse;

    move-result-object v3

    .line 128
    if-nez v3, :cond_0

    .line 129
    const-string v8, "LGTelephonyManagerImpl"

    const-string v9, "Internal Start ERROR : KNDataResponse is NULL"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :goto_0
    return-object v7

    .line 133
    :cond_0
    iget v6, v3, Lcom/lge/internal/telephony/KNDataResponse;->send_buf_num:I

    .line 134
    if-lez v6, :cond_1

    const/16 v8, 0x1000

    if-ge v6, v8, :cond_1

    .line 136
    mul-int/lit16 v8, v6, 0x7f8

    new-array v5, v8, [B

    .line 137
    const-string v8, "LGTelephonyManagerImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "totBufNum="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", local buffer size="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, v5

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :goto_1
    if-ge v1, v6, :cond_4

    .line 144
    add-int/lit8 v1, v1, 0x1

    .line 145
    invoke-direct {p0}, Lcom/lge/telephony/LGTelephonyManagerImpl;->getITelephonyEx()Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v8

    invoke-interface {v8, v1}, Lcom/lge/internal/telephony/ITelephonyEx;->uknightGetData(I)Lcom/lge/internal/telephony/KNDataResponse;

    move-result-object v3

    .line 146
    if-nez v3, :cond_2

    .line 147
    const-string v8, "LGTelephonyManagerImpl"

    const-string v9, "Internal Loop ERROR  : KNDataResponse is NULL"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 164
    :catch_0
    move-exception v2

    .line 165
    .local v2, "ex":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_2
    move-object v7, v4

    .line 170
    goto :goto_0

    .line 139
    :cond_1
    :try_start_1
    const-string v8, "LGTelephonyManagerImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "totBufNum="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is Invalid"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const/4 v6, 0x0

    goto :goto_1

    .line 151
    :cond_2
    iget v8, v3, Lcom/lge/internal/telephony/KNDataResponse;->data_len:I

    add-int/2addr v8, v0

    array-length v9, v5

    if-le v8, v9, :cond_3

    .line 152
    const-string v8, "LGTelephonyManagerImpl"

    const-string v9, "Internal Loop ERROR  : TOO Large data"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 166
    :catch_1
    move-exception v2

    .line 167
    .local v2, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_2

    .line 157
    .end local v2    # "ex":Ljava/lang/NullPointerException;
    :cond_3
    :try_start_2
    iget-object v8, v3, Lcom/lge/internal/telephony/KNDataResponse;->data:[B

    const/4 v9, 0x0

    iget v10, v3, Lcom/lge/internal/telephony/KNDataResponse;->data_len:I

    invoke-static {v8, v9, v5, v0, v10}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 158
    iget v8, v3, Lcom/lge/internal/telephony/KNDataResponse;->data_len:I

    add-int/2addr v0, v8

    goto :goto_1

    .line 163
    :cond_4
    invoke-direct {p0, v0, v5}, Lcom/lge/telephony/LGTelephonyManagerImpl;->uknight_get_data_result(I[B)[B
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v4

    goto :goto_2
.end method

.method public uknight_log_set([B)[B
    .locals 5
    .param p1, "mask"    # [B

    .prologue
    .line 60
    if-nez p1, :cond_0

    .line 61
    const/4 v2, 0x1

    :try_start_0
    new-array v1, v2, [B

    .line 62
    .local v1, "unset":[B
    const/4 v2, 0x0

    const/4 v3, -0x1

    aput-byte v3, v1, v2

    .line 63
    invoke-direct {p0}, Lcom/lge/telephony/LGTelephonyManagerImpl;->getITelephonyEx()Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/lge/internal/telephony/ITelephonyEx;->uknightLogSet([B)[B

    move-result-object v2

    .line 74
    .end local v1    # "unset":[B
    :goto_0
    return-object v2

    .line 66
    :cond_0
    const-string v2, "LGTelephonyManagerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "uknight_log_set:: mask.length="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-direct {p0}, Lcom/lge/telephony/LGTelephonyManagerImpl;->getITelephonyEx()Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/lge/internal/telephony/ITelephonyEx;->uknightLogSet([B)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    goto :goto_0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 74
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 71
    :catch_1
    move-exception v0

    .line 72
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1
.end method

.method public uknight_mem_check()[I
    .locals 2

    .prologue
    .line 206
    :try_start_0
    invoke-direct {p0}, Lcom/lge/telephony/LGTelephonyManagerImpl;->getITelephonyEx()Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/internal/telephony/ITelephonyEx;->uknightMemCheck()[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 212
    :goto_0
    return-object v1

    .line 207
    :catch_0
    move-exception v0

    .line 208
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 212
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 209
    :catch_1
    move-exception v0

    .line 210
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1
.end method

.method public uknight_mem_set(I)Z
    .locals 2
    .param p1, "persent"    # I

    .prologue
    .line 108
    :try_start_0
    invoke-direct {p0}, Lcom/lge/telephony/LGTelephonyManagerImpl;->getITelephonyEx()Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/lge/internal/telephony/ITelephonyEx;->uknightMemSet(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 114
    :goto_0
    return v1

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 114
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 111
    :catch_1
    move-exception v0

    .line 112
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1
.end method

.method public uknight_state_change_set(I)Z
    .locals 2
    .param p1, "event"    # I

    .prologue
    .line 97
    :try_start_0
    invoke-direct {p0}, Lcom/lge/telephony/LGTelephonyManagerImpl;->getITelephonyEx()Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/lge/internal/telephony/ITelephonyEx;->uknightStateChangeSet(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 103
    :goto_0
    return v1

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 103
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 100
    :catch_1
    move-exception v0

    .line 101
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1
.end method
