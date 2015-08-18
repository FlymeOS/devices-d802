.class public Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;
.super Ljava/lang/Object;
.source "AssistedDialPhoneStateManager.java"


# static fields
.field public static final ASSIST_OFF:Ljava/lang/String; = "assist_off"

.field public static final ASSIST_ON:Ljava/lang/String; = "assist_on"

.field public static final DIAL_FROM_CONTACT:Ljava/lang/String; = "contact"

.field public static final DIAL_FROM_IDLE:Ljava/lang/String; = "idle"

.field public static final RADIO_TECH_CDMA:Ljava/lang/String; = "cdma"

.field public static final RADIO_TECH_GSM:Ljava/lang/String; = "gsm"

.field public static final ROAMING_STATUS_HOME:Ljava/lang/String; = "home"

.field public static final ROAMING_STATUS_ROAMING:Ljava/lang/String; = "roaming"

.field private static sInstance:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentRadioTech:Ljava/lang/String;

.field private mCurrentRoamingStatus:Ljava/lang/String;

.field private mListener:Landroid/telephony/PhoneStateListener;

.field private mOtaCountry:Lcom/lge/telephony/LGReferenceCountry;

.field private mOtaMccObserver:Landroid/database/ContentObserver;

.field private mOtaSidObserver:Landroid/database/ContentObserver;

.field private mRefCountry:Lcom/lge/telephony/LGReferenceCountry;

.field private mRefCountryObserver:Landroid/database/ContentObserver;

.field private mRefSettingsObserver:Landroid/database/ContentObserver;

.field private mReloadNecessaryRegistrants:Landroid/os/RegistrantList;

.field private mSIDTable:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/telephony/utils/SIDRangeType;",
            ">;"
        }
    .end annotation
.end field

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->sInstance:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object v0, p0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->mRefCountry:Lcom/lge/telephony/LGReferenceCountry;

    .line 36
    iput-object v0, p0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->mOtaCountry:Lcom/lge/telephony/LGReferenceCountry;

    .line 38
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->mReloadNecessaryRegistrants:Landroid/os/RegistrantList;

    .line 49
    new-instance v0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager$1;-><init>(Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->mOtaMccObserver:Landroid/database/ContentObserver;

    .line 58
    new-instance v0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager$2;-><init>(Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->mOtaSidObserver:Landroid/database/ContentObserver;

    .line 67
    new-instance v0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager$3;-><init>(Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->mRefSettingsObserver:Landroid/database/ContentObserver;

    .line 76
    new-instance v0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager$4;-><init>(Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->mRefCountryObserver:Landroid/database/ContentObserver;

    .line 97
    iput-object p1, p0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->mContext:Landroid/content/Context;

    .line 98
    sput-object p0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->sInstance:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    invoke-direct {p0}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->init()V

    .line 99
    return-void
.end method

.method static synthetic access$000(Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;)Lcom/lge/telephony/LGReferenceCountry;
    .locals 1
    .param p0, "x0"    # Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getOtaCountryInternal()Lcom/lge/telephony/LGReferenceCountry;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;Lcom/lge/telephony/LGReferenceCountry;)Lcom/lge/telephony/LGReferenceCountry;
    .locals 1
    .param p0, "x0"    # Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;
    .param p1, "x1"    # Lcom/lge/telephony/LGReferenceCountry;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->updateOtaCountry(Lcom/lge/telephony/LGReferenceCountry;)Lcom/lge/telephony/LGReferenceCountry;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->notifyChangeForReload()V

    return-void
.end method

.method private fillReferenceCountry(Lcom/lge/telephony/LGReferenceCountry;Landroid/database/Cursor;)Lcom/lge/telephony/LGReferenceCountry;
    .locals 1
    .param p1, "refCountry"    # Lcom/lge/telephony/LGReferenceCountry;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 316
    const-string v0, "countryindex"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/lge/telephony/LGReferenceCountry;->setIndex(I)V

    .line 317
    const-string v0, "countryname"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/lge/telephony/LGReferenceCountry;->setCountryName(Ljava/lang/String;)V

    .line 318
    const-string v0, "mcc"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/lge/telephony/LGReferenceCountry;->setMccCode(Ljava/lang/String;)V

    .line 319
    const-string v0, "countrycode"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/lge/telephony/LGReferenceCountry;->setCountryCode(Ljava/lang/String;)V

    .line 320
    const-string v0, "iddprefix"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/lge/telephony/LGReferenceCountry;->setIddPrefix(Ljava/lang/String;)V

    .line 321
    const-string v0, "nddprefix"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/lge/telephony/LGReferenceCountry;->setNddPrefix(Ljava/lang/String;)V

    .line 322
    const-string v0, "nanp"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/lge/telephony/LGReferenceCountry;->setNanp(Ljava/lang/String;)V

    .line 323
    const-string v0, "area"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/lge/telephony/LGReferenceCountry;->setAreaCode(Ljava/lang/String;)V

    .line 324
    const-string v0, "length"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/lge/telephony/LGReferenceCountry;->setNumLength(Ljava/lang/String;)V

    .line 325
    return-object p1
.end method

.method private getCountryWithCondition(Ljava/lang/String;)Lcom/lge/telephony/LGReferenceCountry;
    .locals 9
    .param p1, "where"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 290
    const/4 v6, 0x0

    .line 291
    .local v6, "country":Lcom/lge/telephony/LGReferenceCountry;
    iget-object v1, p0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 292
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "AssistedDial"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCountryWithCondition WHERE : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    sget-object v1, Lcom/lge/telephony/SettingsForAssistDial$AssistDial;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/lge/constants/SettingsConstants$AssistDial;->PROJECTION:[Ljava/lang/String;

    move-object v3, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 295
    .local v8, "cursor":Landroid/database/Cursor;
    if-nez v8, :cond_0

    .line 296
    const-string v1, "AssistedDial"

    const-string v2, "Failed to query"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :goto_0
    return-object v4

    .line 300
    :cond_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 301
    new-instance v7, Lcom/lge/telephony/LGReferenceCountry;

    invoke-direct {v7}, Lcom/lge/telephony/LGReferenceCountry;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    .end local v6    # "country":Lcom/lge/telephony/LGReferenceCountry;
    .local v7, "country":Lcom/lge/telephony/LGReferenceCountry;
    :try_start_1
    invoke-direct {p0, v7, v8}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->fillReferenceCountry(Lcom/lge/telephony/LGReferenceCountry;Landroid/database/Cursor;)Lcom/lge/telephony/LGReferenceCountry;

    .line 303
    const-string v1, "AssistedDial"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCountryWithCondition is returning : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Lcom/lge/telephony/LGReferenceCountry;->getCountryName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v6, v7

    .line 308
    .end local v7    # "country":Lcom/lge/telephony/LGReferenceCountry;
    .restart local v6    # "country":Lcom/lge/telephony/LGReferenceCountry;
    :cond_1
    if-eqz v8, :cond_2

    .line 309
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    move-object v4, v6

    .line 312
    goto :goto_0

    .line 305
    :catch_0
    move-exception v1

    .line 308
    :goto_2
    if-eqz v8, :cond_2

    .line 309
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 308
    :catchall_0
    move-exception v1

    :goto_3
    if-eqz v8, :cond_3

    .line 309
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1

    .line 308
    .end local v6    # "country":Lcom/lge/telephony/LGReferenceCountry;
    .restart local v7    # "country":Lcom/lge/telephony/LGReferenceCountry;
    :catchall_1
    move-exception v1

    move-object v6, v7

    .end local v7    # "country":Lcom/lge/telephony/LGReferenceCountry;
    .restart local v6    # "country":Lcom/lge/telephony/LGReferenceCountry;
    goto :goto_3

    .line 305
    .end local v6    # "country":Lcom/lge/telephony/LGReferenceCountry;
    .restart local v7    # "country":Lcom/lge/telephony/LGReferenceCountry;
    :catch_1
    move-exception v1

    move-object v6, v7

    .end local v7    # "country":Lcom/lge/telephony/LGReferenceCountry;
    .restart local v6    # "country":Lcom/lge/telephony/LGReferenceCountry;
    goto :goto_2
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 86
    const-class v1, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    monitor-enter v1

    .line 87
    :try_start_0
    sget-object v0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->sInstance:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 88
    new-instance v0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    invoke-direct {v0, p0}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->sInstance:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    .line 91
    :cond_0
    sget-object v0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->sInstance:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    monitor-exit v1

    return-object v0

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getOtaCountryByMcc()Lcom/lge/telephony/LGReferenceCountry;
    .locals 6

    .prologue
    .line 188
    iget-object v3, p0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 189
    .local v1, "resolver":Landroid/content/ContentResolver;
    const/16 v0, 0x3ff

    .line 191
    .local v0, "otaMcc":I
    :try_start_0
    const-string v3, "assist_dial_ota_mcc"

    invoke-static {v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 195
    :goto_0
    const-string v3, "AssistedDial"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OTA Country MCC: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mcc LIKE \'%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 197
    .local v2, "sWhere":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getCountryWithCondition(Ljava/lang/String;)Lcom/lge/telephony/LGReferenceCountry;

    move-result-object v3

    return-object v3

    .line 192
    .end local v2    # "sWhere":Ljava/lang/String;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private getOtaCountryBySid()Lcom/lge/telephony/LGReferenceCountry;
    .locals 10

    .prologue
    .line 201
    const/4 v3, 0x0

    .line 202
    .local v3, "otaCountry":Lcom/lge/telephony/LGReferenceCountry;
    iget-object v7, p0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 203
    .local v5, "resolver":Landroid/content/ContentResolver;
    const/4 v4, 0x0

    .line 206
    .local v4, "otaSid":I
    :try_start_0
    const-string v7, "assist_dial_ota_sid"

    invoke-static {v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 211
    :goto_0
    if-nez v4, :cond_0

    .line 225
    .end local v3    # "otaCountry":Lcom/lge/telephony/LGReferenceCountry;
    :goto_1
    return-object v3

    .line 207
    .restart local v3    # "otaCountry":Lcom/lge/telephony/LGReferenceCountry;
    :catch_0
    move-exception v1

    .line 208
    .local v1, "ex":Landroid/provider/Settings$SettingNotFoundException;
    const-string v7, "AssistedDial"

    const-string v8, "assist_dial_ota_sid Setting Not Found!"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 214
    .end local v1    # "ex":Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    const-string v7, "AssistedDial"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "OTA Country SID: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_2
    iget-object v7, p0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->mSIDTable:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_2

    .line 217
    iget-object v7, p0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->mSIDTable:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lge/telephony/utils/SIDRangeType;

    invoke-virtual {v7}, Lcom/lge/telephony/utils/SIDRangeType;->getStart()I

    move-result v7

    if-gt v7, v4, :cond_1

    iget-object v7, p0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->mSIDTable:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lge/telephony/utils/SIDRangeType;

    invoke-virtual {v7}, Lcom/lge/telephony/utils/SIDRangeType;->getEnd()I

    move-result v7

    if-gt v4, v7, :cond_1

    .line 218
    iget-object v7, p0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->mSIDTable:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lge/telephony/utils/SIDRangeType;

    invoke-virtual {v7}, Lcom/lge/telephony/utils/SIDRangeType;->getCountryIndex()I

    move-result v0

    .line 219
    .local v0, "countryIndex":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "countryindex = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 220
    .local v6, "sWhere":Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getCountryWithCondition(Ljava/lang/String;)Lcom/lge/telephony/LGReferenceCountry;

    move-result-object v3

    goto :goto_1

    .line 216
    .end local v0    # "countryIndex":I
    .end local v6    # "sWhere":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 224
    :cond_2
    const-string v7, "AssistedDial"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getOtaCountryBySid for sid "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is returning null"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private getOtaCountryInternal()Lcom/lge/telephony/LGReferenceCountry;
    .locals 4

    .prologue
    .line 244
    const/4 v0, 0x0

    .line 246
    .local v0, "otaCountry":Lcom/lge/telephony/LGReferenceCountry;
    const-string v1, "gsm"

    invoke-virtual {p0}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getCurrentRadioTech()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 247
    invoke-direct {p0}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getOtaCountryByMcc()Lcom/lge/telephony/LGReferenceCountry;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, v0

    .line 264
    :goto_0
    return-object v1

    .line 250
    :cond_0
    invoke-direct {p0}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getOtaCountryBySid()Lcom/lge/telephony/LGReferenceCountry;

    move-result-object v1

    goto :goto_0

    .line 254
    :cond_1
    const-string v1, "cdma"

    invoke-virtual {p0}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getCurrentRadioTech()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 255
    const-string v1, "AssistedDial"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current radio tech is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getCurrentRadioTech()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    const-string v1, "AssistedDial"

    const-string v2, "getOtaCountry is returning null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    .line 257
    goto :goto_0

    .line 260
    :cond_2
    const-string v1, "AssistedDial"

    const-string v2, "tech is cdma"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    invoke-direct {p0}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getOtaCountryBySid()Lcom/lge/telephony/LGReferenceCountry;

    move-result-object v0

    if-eqz v0, :cond_3

    move-object v1, v0

    .line 262
    goto :goto_0

    .line 264
    :cond_3
    invoke-direct {p0}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getOtaCountryByMcc()Lcom/lge/telephony/LGReferenceCountry;

    move-result-object v1

    goto :goto_0
.end method

.method private init()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 106
    const-string v3, "AssistedDial"

    const-string v4, "Initializing"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v3, p0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 108
    new-instance v3, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager$5;

    invoke-direct {v3, p0}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager$5;-><init>(Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;)V

    iput-object v3, p0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->mListener:Landroid/telephony/PhoneStateListener;

    .line 114
    :try_start_0
    iget-object v3, p0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v2

    .line 115
    .local v2, "phoneType":I
    const/4 v3, 0x2

    if-ne v3, v2, :cond_1

    .line 116
    const-string v3, "cdma"

    iput-object v3, p0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->mCurrentRadioTech:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .end local v2    # "phoneType":I
    :cond_0
    :goto_0
    const-string v3, "home"

    iput-object v3, p0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->mCurrentRoamingStatus:Ljava/lang/String;

    .line 125
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->mSIDTable:Ljava/util/ArrayList;

    .line 126
    iget-object v3, p0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->mListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 129
    iget-object v3, p0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 130
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v3, "assist_dial_ota_mcc"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->mOtaMccObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 131
    const-string v3, "assist_dial_ota_sid"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->mOtaSidObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 132
    sget-object v3, Lcom/lge/telephony/SettingsForAssistDial$AssistDial;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->mRefSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 133
    const-string v3, "assist_dial_reference_country"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->mRefCountryObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 136
    invoke-virtual {p0}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getRefCountry()Lcom/lge/telephony/LGReferenceCountry;

    .line 137
    invoke-virtual {p0}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getOtaCountry()Lcom/lge/telephony/LGReferenceCountry;

    .line 138
    return-void

    .line 118
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .restart local v2    # "phoneType":I
    :cond_1
    if-ne v5, v2, :cond_0

    .line 119
    :try_start_1
    const-string v3, "gsm"

    iput-object v3, p0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->mCurrentRadioTech:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 121
    .end local v2    # "phoneType":I
    :catch_0
    move-exception v1

    .line 122
    .local v1, "ex":Ljava/lang/Exception;
    const-string v3, "AssistedDial"

    const-string v4, "AssistedDialPhoneStateManager :: Exception"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private notifyChangeForReload()V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->mReloadNecessaryRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 150
    return-void
.end method

.method private updateOtaCountry(Lcom/lge/telephony/LGReferenceCountry;)Lcom/lge/telephony/LGReferenceCountry;
    .locals 1
    .param p1, "newCountry"    # Lcom/lge/telephony/LGReferenceCountry;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->mOtaCountry:Lcom/lge/telephony/LGReferenceCountry;

    .line 230
    iget-object v0, p0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->mOtaCountry:Lcom/lge/telephony/LGReferenceCountry;

    return-object v0
.end method


# virtual methods
.method protected applyServiceState(Landroid/telephony/ServiceState;)V
    .locals 3
    .param p1, "state"    # Landroid/telephony/ServiceState;

    .prologue
    .line 157
    const-string v1, "AssistedDial"

    const-string v2, "Service State Changed"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :try_start_0
    iget-object v1, p0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    .line 161
    .local v0, "phoneType":I
    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    .line 162
    const-string v1, "cdma"

    iput-object v1, p0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->mCurrentRadioTech:Ljava/lang/String;

    .line 170
    :goto_0
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 171
    const-string v1, "roaming"

    iput-object v1, p0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->mCurrentRoamingStatus:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    .end local v0    # "phoneType":I
    :goto_1
    invoke-direct {p0}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getOtaCountryInternal()Lcom/lge/telephony/LGReferenceCountry;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->updateOtaCountry(Lcom/lge/telephony/LGReferenceCountry;)Lcom/lge/telephony/LGReferenceCountry;

    .line 181
    return-void

    .line 164
    .restart local v0    # "phoneType":I
    :cond_0
    const/4 v1, 0x1

    if-ne v1, v0, :cond_1

    .line 165
    :try_start_1
    const-string v1, "gsm"

    iput-object v1, p0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->mCurrentRadioTech:Ljava/lang/String;

    goto :goto_0

    .line 176
    .end local v0    # "phoneType":I
    :catch_0
    move-exception v1

    goto :goto_1

    .line 168
    .restart local v0    # "phoneType":I
    :cond_1
    const-string v1, "invalid"

    iput-object v1, p0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->mCurrentRadioTech:Ljava/lang/String;

    goto :goto_0

    .line 174
    :cond_2
    const-string v1, "home"

    iput-object v1, p0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->mCurrentRoamingStatus:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method getCurrentAssistDialProperty()Ljava/lang/String;
    .locals 4

    .prologue
    .line 377
    iget-object v1, p0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "assist_dial"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 380
    .local v0, "isAssistedDialChecked":I
    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    const-string v1, "assist_on"

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "assist_off"

    goto :goto_0
.end method

.method getCurrentDialingPoint()Ljava/lang/String;
    .locals 3

    .prologue
    .line 359
    const/4 v0, 0x0

    .line 361
    .local v0, "dialPoint":I
    :try_start_0
    iget-object v1, p0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "assist_dial_from_contact"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 367
    :goto_0
    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    const-string v1, "contact"

    :goto_1
    return-object v1

    :cond_0
    const-string v1, "idle"

    goto :goto_1

    .line 362
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method getCurrentRadioTech()Ljava/lang/String;
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->mCurrentRadioTech:Ljava/lang/String;

    return-object v0
.end method

.method getCurrentRoamingStatus()Ljava/lang/String;
    .locals 3

    .prologue
    .line 339
    const-string v0, "VZW"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 340
    const-string v0, "cdma"

    invoke-virtual {p0}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getCurrentRadioTech()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 341
    invoke-virtual {p0}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getOtaCountry()Lcom/lge/telephony/LGReferenceCountry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/telephony/LGReferenceCountry;->getNanp()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    const-string v0, "AssistedDial"

    const-string v1, "OTA is NANP, getCurrentRoamingStatus returning HOME"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    const-string v0, "home"

    .line 351
    :goto_0
    return-object v0

    .line 345
    :cond_0
    const-string v0, "AssistedDial"

    const-string v1, "OTA isn\'t NANP, getCurrentRoamingStatus returning ROAM"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    const-string v0, "roaming"

    goto :goto_0

    .line 350
    :cond_1
    const-string v0, "AssistedDial"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentRoamingStatus returning "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->mCurrentRoamingStatus:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iget-object v0, p0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->mCurrentRoamingStatus:Ljava/lang/String;

    goto :goto_0
.end method

.method getOperatorName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 392
    const-string v0, "ro.build.target_operator"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getOtaCountry()Lcom/lge/telephony/LGReferenceCountry;
    .locals 2

    .prologue
    .line 234
    const-string v0, "AssistedDial"

    const-string v1, "getOtaCountry is called"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v0, p0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->mOtaCountry:Lcom/lge/telephony/LGReferenceCountry;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->mOtaCountry:Lcom/lge/telephony/LGReferenceCountry;

    .line 240
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getOtaCountryInternal()Lcom/lge/telephony/LGReferenceCountry;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->updateOtaCountry(Lcom/lge/telephony/LGReferenceCountry;)Lcom/lge/telephony/LGReferenceCountry;

    move-result-object v0

    goto :goto_0
.end method

.method getOtaCountryCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 400
    invoke-virtual {p0}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getOtaCountry()Lcom/lge/telephony/LGReferenceCountry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/telephony/LGReferenceCountry;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getOtaIDDPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 408
    invoke-virtual {p0}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getOtaCountry()Lcom/lge/telephony/LGReferenceCountry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/telephony/LGReferenceCountry;->getIddPrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getOtaNDDPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 416
    invoke-virtual {p0}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getOtaCountry()Lcom/lge/telephony/LGReferenceCountry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/telephony/LGReferenceCountry;->getNddPrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getRefAreaCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 457
    invoke-virtual {p0}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getRefCountry()Lcom/lge/telephony/LGReferenceCountry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/telephony/LGReferenceCountry;->getAreaCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getRefCountry()Lcom/lge/telephony/LGReferenceCountry;
    .locals 1

    .prologue
    .line 268
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getRefCountry(Z)Lcom/lge/telephony/LGReferenceCountry;

    move-result-object v0

    return-object v0
.end method

.method getRefCountry(Z)Lcom/lge/telephony/LGReferenceCountry;
    .locals 5
    .param p1, "isUpdate"    # Z

    .prologue
    .line 272
    iget-object v2, p0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->mRefCountry:Lcom/lge/telephony/LGReferenceCountry;

    if-eqz v2, :cond_0

    if-nez p1, :cond_0

    .line 273
    iget-object v2, p0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->mRefCountry:Lcom/lge/telephony/LGReferenceCountry;

    .line 286
    :goto_0
    return-object v2

    .line 275
    :cond_0
    iget-object v2, p0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "assist_dial_reference_country"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 277
    .local v0, "refCountryIndex":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 279
    const-string v2, "AssistedDial"

    const-string v3, "Setting DB is not properly set"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    const-string v0, "0"

    .line 282
    :cond_1
    const-string v2, "AssistedDial"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRefCountry : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "countryindex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 284
    .local v1, "where":Ljava/lang/String;
    const-string v2, "AssistedDial"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WHERE : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    invoke-direct {p0, v1}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getCountryWithCondition(Ljava/lang/String;)Lcom/lge/telephony/LGReferenceCountry;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->mRefCountry:Lcom/lge/telephony/LGReferenceCountry;

    goto :goto_0
.end method

.method getRefCountryCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 424
    invoke-virtual {p0}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getRefCountry()Lcom/lge/telephony/LGReferenceCountry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/telephony/LGReferenceCountry;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getRefIDDPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 432
    invoke-virtual {p0}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getRefCountry()Lcom/lge/telephony/LGReferenceCountry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/telephony/LGReferenceCountry;->getIddPrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getRefNDDPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 441
    invoke-virtual {p0}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getRefCountry()Lcom/lge/telephony/LGReferenceCountry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/telephony/LGReferenceCountry;->getNddPrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getRefNumLength()Ljava/lang/Integer;
    .locals 3

    .prologue
    .line 445
    const-string v0, "AssistedDial"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "temp Rlog - ref Num Length : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getRefCountry()Lcom/lge/telephony/LGReferenceCountry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/telephony/LGReferenceCountry;->getNumLength()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    invoke-virtual {p0}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getRefCountry()Lcom/lge/telephony/LGReferenceCountry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/telephony/LGReferenceCountry;->getNumLength()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method getRefPNLength()Ljava/lang/Integer;
    .locals 4

    .prologue
    .line 452
    const-string v0, "AssistedDial"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "temp Rlog - ref pn length : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getRefCountry()Lcom/lge/telephony/LGReferenceCountry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/telephony/LGReferenceCountry;->getNumLength()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getRefCountry()Lcom/lge/telephony/LGReferenceCountry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/telephony/LGReferenceCountry;->getAreaCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    invoke-virtual {p0}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getRefCountry()Lcom/lge/telephony/LGReferenceCountry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/telephony/LGReferenceCountry;->getNumLength()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getRefCountry()Lcom/lge/telephony/LGReferenceCountry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/telephony/LGReferenceCountry;->getAreaCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method isAssistDialPropertyChanged(Ljava/lang/String;)Z
    .locals 1
    .param p1, "mLastAssistDialProperty"    # Ljava/lang/String;

    .prologue
    .line 491
    invoke-virtual {p0}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getCurrentAssistDialProperty()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isDialingPointChanged(Ljava/lang/String;)Z
    .locals 1
    .param p1, "mLastDialingPoint"    # Ljava/lang/String;

    .prologue
    .line 487
    invoke-virtual {p0}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getCurrentDialingPoint()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isInitialized()Z
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x1

    return v0
.end method

.method isRadioTechChanged(Ljava/lang/String;)Z
    .locals 1
    .param p1, "mLastRadioTech"    # Ljava/lang/String;

    .prologue
    .line 479
    invoke-virtual {p0}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getCurrentRadioTech()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isRoamingStatusChanged(Ljava/lang/String;)Z
    .locals 1
    .param p1, "mLastRoamingStatus"    # Ljava/lang/String;

    .prologue
    .line 483
    invoke-virtual {p0}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getCurrentRoamingStatus()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerForReloadNecessary(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->mReloadNecessaryRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 142
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->mContext:Landroid/content/Context;

    .line 103
    return-void
.end method

.method public setSIDTable(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/telephony/utils/SIDRangeType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 153
    .local p1, "table":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/telephony/utils/SIDRangeType;>;"
    iput-object p1, p0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->mSIDTable:Ljava/util/ArrayList;

    .line 154
    return-void
.end method

.method public unRegisterForReloadNecessary(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->mReloadNecessaryRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 146
    return-void
.end method
