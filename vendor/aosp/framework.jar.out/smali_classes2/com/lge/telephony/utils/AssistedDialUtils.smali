.class public Lcom/lge/telephony/utils/AssistedDialUtils;
.super Ljava/lang/Object;
.source "AssistedDialUtils.java"


# static fields
.field static msContext:Landroid/content/Context;

.field static msNumberParser:Lcom/lge/telephony/utils/AssistedDialNumberParser;

.field private static sInstance:Lcom/lge/telephony/utils/AssistedDialUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/telephony/utils/AssistedDialUtils;->sInstance:Lcom/lge/telephony/utils/AssistedDialUtils;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    sput-object p1, Lcom/lge/telephony/utils/AssistedDialUtils;->msContext:Landroid/content/Context;

    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".AssistedDialNumberParser"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ro.build.target_operator"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 49
    .local v1, "sCheckClassName":Ljava/lang/String;
    :try_start_0
    const-string v2, "AssistedDial"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Specific parser name : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/telephony/utils/AssistedDialNumberParser;

    sput-object v2, Lcom/lge/telephony/utils/AssistedDialUtils;->msNumberParser:Lcom/lge/telephony/utils/AssistedDialNumberParser;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    sget-object v2, Lcom/lge/telephony/utils/AssistedDialUtils;->msNumberParser:Lcom/lge/telephony/utils/AssistedDialNumberParser;

    if-nez v2, :cond_0

    .line 57
    const-string v2, "AssistedDial"

    const-string v3, "Using general parser."

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    new-instance v2, Lcom/lge/telephony/utils/AssistedDialNumberParser;

    invoke-direct {v2, p1}, Lcom/lge/telephony/utils/AssistedDialNumberParser;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/lge/telephony/utils/AssistedDialUtils;->msNumberParser:Lcom/lge/telephony/utils/AssistedDialNumberParser;

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 52
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    sget-object v2, Lcom/lge/telephony/utils/AssistedDialUtils;->msNumberParser:Lcom/lge/telephony/utils/AssistedDialNumberParser;

    if-nez v2, :cond_0

    .line 57
    const-string v2, "AssistedDial"

    const-string v3, "Using general parser."

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    new-instance v2, Lcom/lge/telephony/utils/AssistedDialNumberParser;

    invoke-direct {v2, p1}, Lcom/lge/telephony/utils/AssistedDialNumberParser;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/lge/telephony/utils/AssistedDialUtils;->msNumberParser:Lcom/lge/telephony/utils/AssistedDialNumberParser;

    goto :goto_0

    .line 56
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    sget-object v3, Lcom/lge/telephony/utils/AssistedDialUtils;->msNumberParser:Lcom/lge/telephony/utils/AssistedDialNumberParser;

    if-nez v3, :cond_1

    .line 57
    const-string v3, "AssistedDial"

    const-string v4, "Using general parser."

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    new-instance v3, Lcom/lge/telephony/utils/AssistedDialNumberParser;

    invoke-direct {v3, p1}, Lcom/lge/telephony/utils/AssistedDialNumberParser;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/lge/telephony/utils/AssistedDialUtils;->msNumberParser:Lcom/lge/telephony/utils/AssistedDialNumberParser;

    :cond_1
    throw v2
.end method

.method public static getAssistedDialCurrentCountry()Lcom/lge/telephony/LGReferenceCountry;
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getInstance(Landroid/content/Context;)Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getOtaCountry()Lcom/lge/telephony/LGReferenceCountry;

    move-result-object v0

    return-object v0
.end method

.method public static getAssistedDialCurrentCountry(Landroid/content/Context;)Lcom/lge/telephony/LGReferenceCountry;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    invoke-static {p0}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getInstance(Landroid/content/Context;)Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getOtaCountry()Lcom/lge/telephony/LGReferenceCountry;

    move-result-object v0

    return-object v0
.end method

.method private getAssistedDialNumberInternal(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .param p1, "dialStr"    # Ljava/lang/String;
    .param p2, "isGSM"    # Z

    .prologue
    .line 85
    const-string v1, "persist.radio.disable_ad"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    const-string v1, "AssistedDial"

    const-string v2, "AssistedDial turned off! Returning original string"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .end local p1    # "dialStr":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 90
    .restart local p1    # "dialStr":Ljava/lang/String;
    :cond_0
    sget-object v1, Lcom/lge/telephony/utils/AssistedDialUtils;->msNumberParser:Lcom/lge/telephony/utils/AssistedDialNumberParser;

    invoke-virtual {v1, p1}, Lcom/lge/telephony/utils/AssistedDialNumberParser;->parseNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "parsedNum":Ljava/lang/String;
    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/lge/telephony/utils/AssistedDialUtils;->msContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "assist_dial_from_contact"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 95
    sget-object v1, Lcom/lge/telephony/utils/AssistedDialUtils;->msContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "assist_dial_from_contact"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    move-object p1, v0

    .line 101
    goto :goto_0

    .line 97
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public static getInstance()Lcom/lge/telephony/utils/AssistedDialUtils;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/lge/telephony/utils/AssistedDialUtils;->sInstance:Lcom/lge/telephony/utils/AssistedDialUtils;

    if-eqz v0, :cond_0

    .line 21
    sget-object v0, Lcom/lge/telephony/utils/AssistedDialUtils;->sInstance:Lcom/lge/telephony/utils/AssistedDialUtils;

    .line 23
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/lge/telephony/utils/AssistedDialUtils;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    const-class v1, Lcom/lge/telephony/utils/AssistedDialUtils;

    monitor-enter v1

    .line 30
    :try_start_0
    sget-object v0, Lcom/lge/telephony/utils/AssistedDialUtils;->sInstance:Lcom/lge/telephony/utils/AssistedDialUtils;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 31
    new-instance v0, Lcom/lge/telephony/utils/AssistedDialUtils;

    invoke-direct {v0, p0}, Lcom/lge/telephony/utils/AssistedDialUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lge/telephony/utils/AssistedDialUtils;->sInstance:Lcom/lge/telephony/utils/AssistedDialUtils;

    .line 34
    :cond_0
    if-eqz p0, :cond_1

    sget-object v0, Lcom/lge/telephony/utils/AssistedDialUtils;->msContext:Landroid/content/Context;

    if-eq p0, v0, :cond_1

    .line 35
    sput-object p0, Lcom/lge/telephony/utils/AssistedDialUtils;->msContext:Landroid/content/Context;

    .line 36
    sget-object v0, Lcom/lge/telephony/utils/AssistedDialUtils;->msNumberParser:Lcom/lge/telephony/utils/AssistedDialNumberParser;

    sget-object v2, Lcom/lge/telephony/utils/AssistedDialUtils;->msContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/lge/telephony/utils/AssistedDialNumberParser;->setContext(Landroid/content/Context;)V

    .line 39
    :cond_1
    sget-object v0, Lcom/lge/telephony/utils/AssistedDialUtils;->sInstance:Lcom/lge/telephony/utils/AssistedDialUtils;

    monitor-exit v1

    return-object v0

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static isInCountry(Ljava/lang/String;)Z
    .locals 1
    .param p0, "country"    # Ljava/lang/String;

    .prologue
    .line 118
    invoke-static {}, Lcom/lge/telephony/utils/AssistedDialUtils;->getAssistedDialCurrentCountry()Lcom/lge/telephony/LGReferenceCountry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/telephony/LGReferenceCountry;->getCountryName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isNanpSimplified(Ljava/lang/String;)Z
    .locals 3
    .param p0, "dialStr"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 106
    :try_start_0
    const-string v2, "^[2-9]{1}[0-9]{2}[2-9]{1}[0-9]{6}$"

    invoke-virtual {p0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 107
    const/4 v1, 0x1

    .line 114
    :cond_0
    :goto_0
    return v1

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getAssistedDialFinalNumberForCDMA(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "dialStr"    # Ljava/lang/String;

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lge/telephony/utils/AssistedDialUtils;->getAssistedDialNumberInternal(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAssistedDialFinalNumberForGSM(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "dialStr"    # Ljava/lang/String;

    .prologue
    .line 76
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/lge/telephony/utils/AssistedDialUtils;->getAssistedDialNumberInternal(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAssistedDialNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "dialStr"    # Ljava/lang/String;

    .prologue
    .line 80
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/lge/telephony/utils/AssistedDialUtils;->getAssistedDialNumberInternal(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
