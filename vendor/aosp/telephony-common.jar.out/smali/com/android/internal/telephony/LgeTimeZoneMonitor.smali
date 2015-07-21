.class public Lcom/android/internal/telephony/LgeTimeZoneMonitor;
.super Landroid/os/Handler;
.source "LgeTimeZoneMonitor.java"


# static fields
.field public static final EVENT_CHECK_LOST_NITZ_INFO:I = 0xb

.field public static final EVENT_CHECK_NITZ_RECEIVED:I = 0x4

.field public static final EVENT_CLEAR_NITZ_RECEIVED:I = 0x5

.field public static final EVENT_NETWORK_ATTACHED:I = 0x1

.field public static final EVENT_NETWORK_TIMEZONE_SETTING:I = 0x3

.field public static final EVENT_NITZ_RECEIVED:I = 0x2

.field public static final EVENT_REVERT_TO_NITZ_TIMEZONE:I = 0x6

.field private static final LOG_TAG:Ljava/lang/String; = "LgeTimeZoneMonitor"

.field private static final NITZ_VALIDITY_DURATION:I = 0xafc8

.field private static final OPERATOR_NUMERIC:Ljava/lang/String; = "operator_numeric"

.field private static final SHAREDPREF_KEY_LAST_CHECKED:Ljava/lang/String; = "last_checked"

.field private static final SHAREDPREF_KEY_LAST_MCC:Ljava/lang/String; = "last_mcc"

.field private static final SHAREDPREF_KEY_LAST_NITZMCC:Ljava/lang/String; = "last_nitzmcc"

.field private static final SHAREDPREF_KEY_POPUP_SHOWN:Ljava/lang/String; = "popup_shown"

.field private static final SHAREDPREF_SAVED_OPERATOR_NUMERIC:Ljava/lang/String; = "saved_operator_numeric"

.field private static final SHAREDPREF_TIMEZONEMONITOR:Ljava/lang/String; = "timezone_mon"

.field private static mLostNitzInfo:Landroid/os/AsyncResult;

.field private static mWaitingTimeout:I

.field private static sInstance:Lcom/android/internal/telephony/LgeTimeZoneMonitor;

.field private static sLastUniqueCountry:Ljava/lang/String;

.field private static final sLastUniqueLockObj:Ljava/lang/Object;

.field private static sLastUniqueZoneOffsets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/TimeZone;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAutoTimeZoneObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field mGuideAutomaticTimeSettingDialog:Landroid/app/AlertDialog;

.field private mHasShownManualTimeZoneSettingPopup:Z

.field private mInitialized:Z

.field private mLastChecked:Z

.field private mLastMcc:Ljava/lang/String;

.field private mLastMccChanged:Z

.field private mLastNitzMcc:Ljava/lang/String;

.field private mLocalAreas:[Ljava/lang/String;

.field mManualTimeZoneSettingDialog:Landroid/app/AlertDialog;

.field private mNetworkTimeZoneReceived:Z

.field private mNitzReceived:Z

.field private mNitzReceiver:Landroid/content/BroadcastReceiver;

.field private mSST:Lcom/android/internal/telephony/ServiceStateTracker;

.field private mSupportGuideAutomaticTimeSetting:Z

.field private mSupportManagedTimeSetting:Z

.field private mSupportManualSettingPopup:Z

.field onGuideAutomaticTimeSettingDialogClick:Landroid/content/DialogInterface$OnClickListener;

.field onManualTimeZoneSettingDialogClick:Landroid/content/DialogInterface$OnClickListener;

.field private typicalCityMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 75
    const/16 v0, 0x3a98

    sput v0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mWaitingTimeout:I

    .line 105
    sput-object v1, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mLostNitzInfo:Landroid/os/AsyncResult;

    .line 114
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->sLastUniqueLockObj:Ljava/lang/Object;

    .line 115
    sput-object v1, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->sLastUniqueZoneOffsets:Ljava/util/ArrayList;

    .line 116
    sput-object v1, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->sLastUniqueCountry:Ljava/lang/String;

    .line 169
    new-instance v0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;

    invoke-direct {v0}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->sInstance:Lcom/android/internal/telephony/LgeTimeZoneMonitor;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 146
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 83
    iput-object v2, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mContext:Landroid/content/Context;

    .line 84
    iput-boolean v1, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mInitialized:Z

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mLastMcc:Ljava/lang/String;

    .line 86
    iput-boolean v1, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mLastChecked:Z

    .line 87
    iput-boolean v1, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mHasShownManualTimeZoneSettingPopup:Z

    .line 88
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mLastNitzMcc:Ljava/lang/String;

    .line 89
    iput-object v2, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    .line 91
    iput-boolean v3, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mSupportManagedTimeSetting:Z

    .line 92
    iput-boolean v3, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mSupportManualSettingPopup:Z

    .line 94
    iput-boolean v3, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mSupportGuideAutomaticTimeSetting:Z

    .line 97
    iput-boolean v1, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mNitzReceived:Z

    .line 98
    iput-boolean v1, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mNetworkTimeZoneReceived:Z

    .line 99
    iput-object v2, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mLocalAreas:[Ljava/lang/String;

    .line 100
    iput-boolean v1, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mLastMccChanged:Z

    .line 102
    iput-object v2, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mManualTimeZoneSettingDialog:Landroid/app/AlertDialog;

    .line 111
    iput-object v2, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mGuideAutomaticTimeSettingDialog:Landroid/app/AlertDialog;

    .line 120
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->typicalCityMap:Ljava/util/Map;

    .line 123
    new-instance v0, Lcom/android/internal/telephony/LgeTimeZoneMonitor$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/LgeTimeZoneMonitor$1;-><init>(Lcom/android/internal/telephony/LgeTimeZoneMonitor;)V

    iput-object v0, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mNitzReceiver:Landroid/content/BroadcastReceiver;

    .line 137
    new-instance v0, Lcom/android/internal/telephony/LgeTimeZoneMonitor$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/LgeTimeZoneMonitor$2;-><init>(Lcom/android/internal/telephony/LgeTimeZoneMonitor;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mAutoTimeZoneObserver:Landroid/database/ContentObserver;

    .line 373
    new-instance v0, Lcom/android/internal/telephony/LgeTimeZoneMonitor$3;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/LgeTimeZoneMonitor$3;-><init>(Lcom/android/internal/telephony/LgeTimeZoneMonitor;)V

    iput-object v0, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->onManualTimeZoneSettingDialogClick:Landroid/content/DialogInterface$OnClickListener;

    .line 420
    new-instance v0, Lcom/android/internal/telephony/LgeTimeZoneMonitor$4;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/LgeTimeZoneMonitor$4;-><init>(Lcom/android/internal/telephony/LgeTimeZoneMonitor;)V

    iput-object v0, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->onGuideAutomaticTimeSettingDialogClick:Landroid/content/DialogInterface$OnClickListener;

    .line 148
    iget-object v0, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->typicalCityMap:Ljava/util/Map;

    const-string v1, "AU"

    const-string v2, "Sydney"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget-object v0, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->typicalCityMap:Ljava/util/Map;

    const-string v1, "BR"

    const-string v2, "Sao_Paulo"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    iget-object v0, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->typicalCityMap:Ljava/util/Map;

    const-string v1, "CA"

    const-string v2, "Toronto"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    iget-object v0, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->typicalCityMap:Ljava/util/Map;

    const-string v1, "CL"

    const-string v2, "Santiago"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget-object v0, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->typicalCityMap:Ljava/util/Map;

    const-string v1, "EC"

    const-string v2, "Guayaquil"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iget-object v0, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->typicalCityMap:Ljava/util/Map;

    const-string v1, "PF"

    const-string v2, "Tahiti"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    iget-object v0, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->typicalCityMap:Ljava/util/Map;

    const-string v1, "GL"

    const-string v2, "Godthab"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    iget-object v0, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->typicalCityMap:Ljava/util/Map;

    const-string v1, "ID"

    const-string v2, "Jakarta"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    iget-object v0, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->typicalCityMap:Ljava/util/Map;

    const-string v1, "KZ"

    const-string v2, "Almaty"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    iget-object v0, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->typicalCityMap:Ljava/util/Map;

    const-string v1, "KI"

    const-string v2, "Tarawa"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    iget-object v0, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->typicalCityMap:Ljava/util/Map;

    const-string v1, "MX"

    const-string v2, "Mexico_City"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    iget-object v0, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->typicalCityMap:Ljava/util/Map;

    const-string v1, "FM"

    const-string v2, "Ponape"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    iget-object v0, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->typicalCityMap:Ljava/util/Map;

    const-string v1, "MN"

    const-string v2, "Ulaanbaatar"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    iget-object v0, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->typicalCityMap:Ljava/util/Map;

    const-string v1, "NZ"

    const-string v2, "Auckland"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    iget-object v0, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->typicalCityMap:Ljava/util/Map;

    const-string v1, "PT"

    const-string v2, "Lisbon"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    iget-object v0, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->typicalCityMap:Ljava/util/Map;

    const-string v1, "RU"

    const-string v2, "Moscow"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    iget-object v0, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->typicalCityMap:Ljava/util/Map;

    const-string v1, "ES"

    const-string v2, "Barcelona"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    iget-object v0, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->typicalCityMap:Ljava/util/Map;

    const-string v1, "US"

    const-string v2, "New_York"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/LgeTimeZoneMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/LgeTimeZoneMonitor;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->receivedNetworkSetting()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/LgeTimeZoneMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/LgeTimeZoneMonitor;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->showTimeZonePickerWithCountry()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/LgeTimeZoneMonitor;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/LgeTimeZoneMonitor;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private changeLocalTimeForMcc(Landroid/content/Context;Ljava/lang/String;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mcc"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 586
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "changeLocalTimeForMcc(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->log(Ljava/lang/String;)V

    .line 588
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->getIsoFromMcc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 589
    .local v0, "iso":Ljava/lang/String;
    const/4 v4, 0x0

    .line 591
    .local v4, "zone":Ljava/util/TimeZone;
    const-string v5, "000"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "001"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 592
    invoke-static {v0}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->getTimeZonesWithUniqueOffsetsDstConsidered(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 593
    .local v3, "uniqueZones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/TimeZone;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 594
    const-string v5, "Zero timezones!! Impossible!! DO NOTHING"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->log(Ljava/lang/String;)V

    .line 625
    .end local v3    # "uniqueZones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/TimeZone;>;"
    :cond_0
    :goto_0
    return-void

    .line 595
    .restart local v3    # "uniqueZones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/TimeZone;>;"
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v5, v8, :cond_2

    .line 596
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "zone":Ljava/util/TimeZone;
    check-cast v4, Ljava/util/TimeZone;

    .line 597
    .restart local v4    # "zone":Ljava/util/TimeZone;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "one TZ for iso-cc = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " with zone.getID = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->log(Ljava/lang/String;)V

    .line 598
    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p1, v5}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->setTimezone(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 600
    :cond_2
    const-string v5, "cn"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "KR"

    invoke-static {v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isCountry(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 601
    const-string v5, "Asia/Shanghai"

    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    .line 602
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "one TZ for iso-cc = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " with zone.getID = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->log(Ljava/lang/String;)V

    .line 603
    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p1, v5}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->setTimezone(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 604
    :cond_3
    const-string v5, "ua"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "KR"

    invoke-static {v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isCountry(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 605
    const-string v5, "Europe/Kiev"

    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    .line 606
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "one TZ for iso-cc = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " with zone.getID = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->log(Ljava/lang/String;)V

    .line 607
    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p1, v5}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->setTimezone(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 610
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "There are "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " timezones."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->log(Ljava/lang/String;)V

    .line 612
    iget-boolean v5, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mSupportManualSettingPopup:Z

    if-eqz v5, :cond_5

    .line 613
    const-string v5, "changeLocalTimeForMcc : Show manual timezone setting toast"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->log(Ljava/lang/String;)V

    .line 614
    invoke-direct {p0}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->showTimeZonePickerWithCountry()V

    .line 615
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-direct {p0, p2, v5}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->getMessageForManualTimeZoneSetting(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 616
    .local v1, "message":Ljava/lang/String;
    invoke-static {p1, v1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 617
    .local v2, "toast":Landroid/widget/Toast;
    const/16 v5, 0x50

    invoke-virtual {v2, v5, v7, v7}, Landroid/widget/Toast;->setGravity(III)V

    .line 618
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 620
    .end local v1    # "message":Ljava/lang/String;
    .end local v2    # "toast":Landroid/widget/Toast;
    :cond_5
    const-string v5, "manual timezone setting is not supported, do nothing"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private clearPopupIfAny()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 335
    iget-object v0, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mManualTimeZoneSettingDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 336
    const-string v0, "Clear manual timezone setting popup"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->log(Ljava/lang/String;)V

    .line 337
    iget-object v0, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mManualTimeZoneSettingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 338
    iput-object v1, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mManualTimeZoneSettingDialog:Landroid/app/AlertDialog;

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mGuideAutomaticTimeSettingDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 342
    const-string v0, "Clear automatic time setting guide popup"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->log(Ljava/lang/String;)V

    .line 343
    iget-object v0, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mGuideAutomaticTimeSettingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 344
    iput-object v1, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mGuideAutomaticTimeSettingDialog:Landroid/app/AlertDialog;

    .line 347
    :cond_1
    return-void
.end method

.method private static getArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 250
    if-nez p0, :cond_1

    const/4 v3, 0x0

    .line 266
    :cond_0
    return-object v3

    .line 252
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 254
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v4, ","

    invoke-direct {v2, p0, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    .local v2, "st":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 257
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 260
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    new-array v3, v4, [Ljava/lang/String;

    .line 262
    .local v3, "strArray":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 263
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v3, v0

    .line 262
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private getAutoTime()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 235
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "auto_time"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    .line 237
    :goto_0
    return v1

    .line 235
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 236
    :catch_0
    move-exception v0

    .line 237
    .local v0, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_0
.end method

.method private getAutoTimeZone()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 243
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "auto_time_zone"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    .line 245
    :goto_0
    return v1

    .line 243
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 244
    :catch_0
    move-exception v0

    .line 245
    .local v0, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_0
.end method

.method public static getDefault()Lcom/android/internal/telephony/LgeTimeZoneMonitor;
    .locals 1

    .prologue
    .line 172
    sget-object v0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->sInstance:Lcom/android/internal/telephony/LgeTimeZoneMonitor;

    return-object v0
.end method

.method private getIsoFromMcc(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "mcc"    # Ljava/lang/String;

    .prologue
    .line 628
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIsoFromMcc() : mcc = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->log(Ljava/lang/String;)V

    .line 629
    const-string v1, ""

    .line 631
    .local v1, "iso":Ljava/lang/String;
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v1

    .line 632
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIsoFromMcc() : iso = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    .line 638
    :goto_0
    return-object v1

    .line 633
    :catch_0
    move-exception v0

    .line 634
    .local v0, "ex":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "countryCodeForMcc error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 635
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v0

    .line 636
    .local v0, "ex":Ljava/lang/StringIndexOutOfBoundsException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "countryCodeForMcc error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getMessageForManualTimeZoneSetting(Ljava/lang/String;I)Ljava/lang/String;
    .locals 10
    .param p1, "mcc"    # Ljava/lang/String;
    .param p2, "numberOfTimezones"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 747
    const-string v2, ""

    .line 748
    .local v2, "message":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->getIsoFromMcc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 749
    .local v1, "iso":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 750
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 752
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/util/Locale;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 753
    .local v0, "countryName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->typicalCityMap:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 754
    .local v3, "typicalCityName":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getMessageForManualTimezoneSetting: mcc = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", iso = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", timezones = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", city = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->log(Ljava/lang/String;)V

    .line 756
    const-string v4, "content_manual_timezone_setting_popup_combined"

    invoke-static {v4}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v9

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 759
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 760
    const-string v4, "new string is not available, use old string"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->log(Ljava/lang/String;)V

    .line 761
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "content_manual_timezone_setting_popup_1"

    invoke-static {v5}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "content_manual_timezone_setting_popup_2"

    invoke-static {v5}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "content_manual_timezone_setting_popup_3"

    invoke-static {v5}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 772
    :cond_1
    :goto_0
    return-object v2

    .line 768
    :cond_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 769
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "content_manual_timezone_setting_popup_with_default_city"

    invoke-static {v5}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getTimeZonesWithUniqueOffsetsDstConsidered(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 12
    .param p0, "country"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/TimeZone;",
            ">;"
        }
    .end annotation

    .prologue
    .line 709
    sget-object v9, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->sLastUniqueLockObj:Ljava/lang/Object;

    monitor-enter v9

    .line 710
    if-eqz p0, :cond_0

    :try_start_0
    sget-object v8, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->sLastUniqueCountry:Ljava/lang/String;

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 711
    const-string v8, "LgeTimeZoneMonitor"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getTimeZonesWithUniqueOffsetsDstConsidered("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "): return cached version"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    sget-object v8, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->sLastUniqueZoneOffsets:Ljava/util/ArrayList;

    monitor-exit v9

    .line 742
    :goto_0
    return-object v8

    .line 714
    :cond_0
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 716
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 718
    .local v0, "ct":J
    invoke-static {p0}, Landroid/util/TimeUtils;->getTimeZones(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 719
    .local v7, "zones":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/TimeZone;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 720
    .local v5, "uniqueTimeZones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/TimeZone;>;"
    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/TimeZone;

    .line 723
    .local v6, "zone":Ljava/util/TimeZone;
    const/4 v2, 0x0

    .line 724
    .local v2, "found":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v3, v8, :cond_2

    .line 725
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/TimeZone;

    invoke-virtual {v8, v0, v1}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v8

    invoke-virtual {v6, v0, v1}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v9

    if-ne v8, v9, :cond_3

    .line 726
    const/4 v2, 0x1

    .line 730
    :cond_2
    if-nez v2, :cond_1

    .line 731
    const-string v8, "LgeTimeZoneMonitor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getTimeZonesWithUniqueOffsetsDstConsidered: add unique offset="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " zone.getID="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 714
    .end local v0    # "ct":J
    .end local v2    # "found":Z
    .end local v3    # "i":I
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "uniqueTimeZones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/TimeZone;>;"
    .end local v6    # "zone":Ljava/util/TimeZone;
    .end local v7    # "zones":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/TimeZone;>;"
    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    .line 724
    .restart local v0    # "ct":J
    .restart local v2    # "found":Z
    .restart local v3    # "i":I
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v5    # "uniqueTimeZones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/TimeZone;>;"
    .restart local v6    # "zone":Ljava/util/TimeZone;
    .restart local v7    # "zones":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/TimeZone;>;"
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 737
    .end local v2    # "found":Z
    .end local v3    # "i":I
    .end local v6    # "zone":Ljava/util/TimeZone;
    :cond_4
    sget-object v9, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->sLastUniqueLockObj:Ljava/lang/Object;

    monitor-enter v9

    .line 739
    :try_start_2
    sput-object v5, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->sLastUniqueZoneOffsets:Ljava/util/ArrayList;

    .line 740
    sput-object p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->sLastUniqueCountry:Ljava/lang/String;

    .line 742
    sget-object v8, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->sLastUniqueZoneOffsets:Ljava/util/ArrayList;

    monitor-exit v9

    goto :goto_0

    .line 743
    :catchall_1
    move-exception v8

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v8
.end method

.method private isLocalArea(Ljava/lang/String;)Z
    .locals 6
    .param p1, "cur_mcc"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 270
    iget-object v5, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mLocalAreas:[Ljava/lang/String;

    if-nez v5, :cond_1

    .line 279
    :cond_0
    :goto_0
    return v4

    .line 272
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mLocalAreas:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 273
    .local v1, "el":Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 274
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mLocalAreas = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mLocalAreas:[Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", el = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", cur_mcc = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->log(Ljava/lang/String;)V

    .line 275
    const/4 v4, 0x1

    goto :goto_0

    .line 272
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private receivedNetworkSetting()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 296
    iget-boolean v0, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mSupportManagedTimeSetting:Z

    if-nez v0, :cond_0

    .line 297
    const-string v0, "[receivedNetworkSetting()] Auto timezone setting is not set"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->log(Ljava/lang/String;)V

    .line 305
    :goto_0
    return-void

    .line 300
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->removeMessages(I)V

    .line 301
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->removeMessages(I)V

    .line 303
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->sendEmptyMessage(I)Z

    .line 304
    invoke-direct {p0}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->clearPopupIfAny()V

    goto :goto_0
.end method

.method private registerForTelephonyIntents()V
    .locals 3

    .prologue
    .line 225
    iget-object v1, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 231
    :goto_0
    return-void

    .line 227
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 229
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.NETWORK_SET_TIMEZONE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 230
    iget-object v1, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mNitzReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private revertToNitzTimeZone()V
    .locals 4

    .prologue
    .line 308
    iget-boolean v2, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mSupportManagedTimeSetting:Z

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->getAutoTimeZone()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    if-nez v2, :cond_1

    .line 321
    :cond_0
    :goto_0
    return-void

    .line 310
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reverting to NITZ TimeZone: mLastMcc = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mLastMcc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mNitzReceived = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mNitzReceived:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->log(Ljava/lang/String;)V

    .line 312
    iget-object v2, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    .line 313
    .local v1, "opnum":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-le v2, v3, :cond_0

    .line 314
    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 315
    .local v0, "mcc":Ljava/lang/String;
    const-string v2, "450"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "000"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "001"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->isLocalArea(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 316
    iget-object v2, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mLastMcc:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mLastMcc:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mLastMcc:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mLastNitzMcc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 317
    iget-object v2, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mLastMcc:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->changeLocalTimeForMcc(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private saveOperatorNumericAndCheckChanged(Ljava/lang/String;)Z
    .locals 6
    .param p1, "currentOperatorNumeric"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 666
    iget-object v4, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mContext:Landroid/content/Context;

    const-string v5, "saved_operator_numeric"

    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 667
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const-string v4, "operator_numeric"

    const-string v5, ""

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 668
    .local v1, "oldOperatorNumeric":Ljava/lang/String;
    move-object v0, p1

    .line 669
    .local v0, "newOperatorNumeric":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "saveOperatorNumericAndCheckChanged : prefs get = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->log(Ljava/lang/String;)V

    .line 670
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "saveOperatorNumericAndCheckChanged : current operator numeric = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->log(Ljava/lang/String;)V

    .line 671
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 672
    const-string v4, "000"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "001"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 673
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 674
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "operator_numeric"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 675
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveOperatorNumericAndCheckChanged : prefs put = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "operator_numeric"

    const-string v5, ""

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->log(Ljava/lang/String;)V

    .line 676
    const/4 v3, 0x1

    .line 680
    :cond_0
    return v3
.end method

.method public static setLostNitzInfo(Landroid/os/AsyncResult;)V
    .locals 1
    .param p0, "lostNitzInfo"    # Landroid/os/AsyncResult;

    .prologue
    .line 653
    sget-object v0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mLostNitzInfo:Landroid/os/AsyncResult;

    if-eq v0, p0, :cond_0

    sput-object p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mLostNitzInfo:Landroid/os/AsyncResult;

    .line 654
    :cond_0
    return-void
.end method

.method private setTimezone(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "zoneId"    # Ljava/lang/String;

    .prologue
    .line 643
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTimezone zoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->log(Ljava/lang/String;)V

    .line 645
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 646
    const-string v1, "alarm"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 647
    .local v0, "alarm":Landroid/app/AlarmManager;
    invoke-virtual {v0, p2}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    .line 648
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "timezone set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->log(Ljava/lang/String;)V

    .line 650
    .end local v0    # "alarm":Landroid/app/AlarmManager;
    :cond_0
    return-void
.end method

.method private showGuideAutomaticTimeSettingPopup(Ljava/lang/String;)V
    .locals 4
    .param p1, "currentOperatorNumeric"    # Ljava/lang/String;

    .prologue
    .line 395
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->saveOperatorNumericAndCheckChanged(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 418
    :cond_0
    :goto_0
    return-void

    .line 398
    :cond_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mContext:Landroid/content/Context;

    sget v3, Lcom/lge/internal/R$style;->Theme_LGE_White_Dialog_Alert:I

    invoke-direct {v1, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const-string v2, "title_time_setting_notice"

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "content_guide_automatic_time_setting_popup"

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "button_yes"

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->onGuideAutomaticTimeSettingDialogClick:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "button_no"

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->onGuideAutomaticTimeSettingDialogClick:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 410
    .local v0, "guideAutomaticTimeSettingDialog":Landroid/app/AlertDialog;
    if-eqz v0, :cond_0

    .line 411
    const-string v1, "Show popup to lead to be automatic time setting enabled"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->log(Ljava/lang/String;)V

    .line 412
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 413
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 414
    invoke-static {v0}, Lcom/android/internal/telephony/LGTelephonyUtils;->makePublic(Landroid/app/Dialog;)V

    .line 415
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 416
    iput-object v0, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mGuideAutomaticTimeSettingDialog:Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private showManualTimeZoneSettingPopup(Ljava/lang/String;I)V
    .locals 5
    .param p1, "mcc"    # Ljava/lang/String;
    .param p2, "numberOfTimezones"    # I

    .prologue
    .line 350
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->getMessageForManualTimeZoneSetting(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 353
    .local v1, "message":Ljava/lang/String;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mContext:Landroid/content/Context;

    sget v4, Lcom/lge/internal/R$style;->Theme_LGE_White_Dialog_Alert:I

    invoke-direct {v2, v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const-string v3, "title_time_setting_notice"

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    iget-object v4, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->onManualTimeZoneSettingDialogClick:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1010355

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 363
    .local v0, "manualTimeZoneSettingDialog":Landroid/app/AlertDialog;
    if-eqz v0, :cond_0

    .line 364
    const-string v2, "Show manual timezone setting popup"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->log(Ljava/lang/String;)V

    .line 365
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 366
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 367
    invoke-static {v0}, Lcom/android/internal/telephony/LGTelephonyUtils;->makePublic(Landroid/app/Dialog;)V

    .line 368
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 369
    iput-object v0, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mManualTimeZoneSettingDialog:Landroid/app/AlertDialog;

    .line 371
    :cond_0
    return-void
.end method

.method private showTimeZonePickerWithCountry()V
    .locals 5

    .prologue
    .line 686
    const-string v2, "gsm.operator.iso-country"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 687
    .local v0, "iso":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 688
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 689
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 690
    .local v1, "zoneListIntent":Landroid/content/Intent;
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.Settings$ZonePickerActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 691
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 692
    const-string v2, "country"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 693
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Show a list of timezones in \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/util/Locale;

    const-string v4, ""

    invoke-direct {v3, v4, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/util/Locale;->getDisplayCountry(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->log(Ljava/lang/String;)V

    .line 694
    iget-object v2, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 698
    .end local v1    # "zoneListIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 696
    :cond_0
    const-string v2, "iso is null"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private triggerFakeNitzEvent(Landroid/os/AsyncResult;)V
    .locals 1
    .param p1, "lostNitzInfo"    # Landroid/os/AsyncResult;

    .prologue
    .line 657
    iget-object v0, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    if-eqz v0, :cond_0

    .line 658
    iget-object v0, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->sendNitzEvent(Landroid/os/AsyncResult;)V

    .line 659
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->setLostNitzInfo(Landroid/os/AsyncResult;)V

    .line 661
    :cond_0
    return-void
.end method

.method private updateLastNitzMcc()V
    .locals 5

    .prologue
    .line 324
    iget-object v2, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mLastMcc:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mLastMcc:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_0

    .line 325
    iget-object v2, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mContext:Landroid/content/Context;

    const-string v3, "timezone_mon"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 326
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 327
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "last_nitzmcc"

    iget-object v3, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mLastMcc:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 328
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 329
    iget-object v2, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mLastMcc:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mLastNitzMcc:Ljava/lang/String;

    .line 331
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 440
    iget v8, p1, Landroid/os/Message;->what:I

    packed-switch v8, :pswitch_data_0

    .line 583
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 444
    :pswitch_1
    const-string v8, "Network attached"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->log(Ljava/lang/String;)V

    .line 446
    iget-object v8, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    if-eqz v8, :cond_0

    .line 448
    iget-boolean v8, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mSupportManagedTimeSetting:Z

    if-nez v8, :cond_1

    .line 449
    const-string v8, "Auto timezone setting is not set"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 453
    :cond_1
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mLastMccChanged:Z

    .line 454
    iget-object v8, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v8, v8, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    .line 456
    .local v4, "opnum":Ljava/lang/String;
    if-nez v4, :cond_2

    .line 457
    const-string v8, "KR"

    invoke-static {v8}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isCountry(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 458
    const-string v8, "persist.radio.camped_mccmnc"

    const-string v9, ""

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 459
    .local v6, "propCampedMccMnc":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x3

    if-lt v8, v9, :cond_2

    .line 460
    const-string v8, "operator numeric is revised by camped mcc/mnc property"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->log(Ljava/lang/String;)V

    .line 461
    move-object v4, v6

    .line 467
    .end local v6    # "propCampedMccMnc":Ljava/lang/String;
    :cond_2
    iget-boolean v8, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mSupportGuideAutomaticTimeSetting:Z

    if-eqz v8, :cond_4

    .line 468
    invoke-direct {p0}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->getAutoTime()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-direct {p0}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->getAutoTimeZone()Z

    move-result v8

    if-nez v8, :cond_4

    .line 470
    :cond_3
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->showGuideAutomaticTimeSettingPopup(Ljava/lang/String;)V

    .line 475
    :cond_4
    if-eqz v4, :cond_8

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x4

    if-le v8, v9, :cond_8

    .line 476
    const/4 v8, 0x0

    const/4 v9, 0x3

    invoke-virtual {v4, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 477
    .local v2, "mcc":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Current mcc = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->log(Ljava/lang/String;)V

    .line 478
    const-string v8, "000"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    const-string v8, "001"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 479
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mLastMcc = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mLastMcc:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mLastChecked = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mLastChecked:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->log(Ljava/lang/String;)V

    .line 480
    iget-object v8, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mLastMcc:Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    iget-boolean v8, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mLastChecked:Z

    if-eqz v8, :cond_5

    iget-boolean v8, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mHasShownManualTimeZoneSettingPopup:Z

    if-nez v8, :cond_8

    .line 481
    :cond_5
    iput-object v2, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mLastMcc:Ljava/lang/String;

    .line 482
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mLastChecked:Z

    .line 483
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mLastMccChanged:Z

    .line 484
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mHasShownManualTimeZoneSettingPopup:Z

    .line 486
    iget-object v8, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mContext:Landroid/content/Context;

    const-string v9, "timezone_mon"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 487
    .local v5, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 488
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v8, "last_mcc"

    iget-object v9, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mLastMcc:Ljava/lang/String;

    invoke-interface {v0, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 490
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mNitzReceived = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mNitzReceived:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mNetworkTimeZoneReceived = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mNetworkTimeZoneReceived:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->log(Ljava/lang/String;)V

    .line 491
    iget-boolean v8, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mNitzReceived:Z

    if-nez v8, :cond_6

    iget-boolean v8, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mNetworkTimeZoneReceived:Z

    if-eqz v8, :cond_9

    .line 492
    :cond_6
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mLastChecked:Z

    .line 493
    iget-boolean v8, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mNitzReceived:Z

    if-eqz v8, :cond_7

    .line 494
    const-string v8, "last_nitzmcc"

    iget-object v9, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mLastMcc:Ljava/lang/String;

    invoke-interface {v0, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 495
    iget-object v8, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mLastMcc:Ljava/lang/String;

    iput-object v8, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mLastNitzMcc:Ljava/lang/String;

    .line 496
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mLastMccChanged:Z

    .line 503
    :cond_7
    :goto_1
    const-string v9, "last_checked"

    iget-boolean v8, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mLastChecked:Z

    if-eqz v8, :cond_a

    const-string v8, "true"

    :goto_2
    invoke-interface {v0, v9, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 504
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 508
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "mcc":Ljava/lang/String;
    .end local v5    # "prefs":Landroid/content/SharedPreferences;
    :cond_8
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mLastChecked = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mLastChecked:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->log(Ljava/lang/String;)V

    .line 509
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mNitzReceived:Z

    .line 510
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mNetworkTimeZoneReceived:Z

    goto/16 :goto_0

    .line 498
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v2    # "mcc":Ljava/lang/String;
    .restart local v5    # "prefs":Landroid/content/SharedPreferences;
    :cond_9
    iget-object v8, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mLastMcc:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->isLocalArea(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_7

    invoke-direct {p0}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->getAutoTimeZone()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 499
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mLastChecked:Z

    .line 500
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Waiting NITZ from attached network for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mWaitingTimeout:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " msec."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->log(Ljava/lang/String;)V

    .line 501
    const/4 v8, 0x4

    sget v9, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mWaitingTimeout:I

    int-to-long v10, v9

    invoke-virtual {p0, v8, v10, v11}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 503
    :cond_a
    const-string v8, "false"

    goto :goto_2

    .line 514
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "mcc":Ljava/lang/String;
    .end local v4    # "opnum":Ljava/lang/String;
    .end local v5    # "prefs":Landroid/content/SharedPreferences;
    :pswitch_2
    const-string v8, "NITZ is received from network."

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->log(Ljava/lang/String;)V

    .line 515
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mNitzReceived:Z

    .line 519
    new-instance v3, Landroid/content/Intent;

    const-string v8, "com.lge.intent.action.NITZ_RECEIVED"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 520
    .local v3, "nitzReceivedIntent":Landroid/content/Intent;
    iget-object v8, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mContext:Landroid/content/Context;

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v8, v3, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 523
    const/4 v8, 0x5

    const-wide/32 v10, 0xafc8

    invoke-virtual {p0, v8, v10, v11}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 527
    .end local v3    # "nitzReceivedIntent":Landroid/content/Intent;
    :pswitch_3
    const-string v8, "Network time or timezone setting intent received"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->log(Ljava/lang/String;)V

    .line 528
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mNetworkTimeZoneReceived:Z

    .line 529
    const/4 v8, 0x5

    const-wide/32 v10, 0xafc8

    invoke-virtual {p0, v8, v10, v11}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 533
    :pswitch_4
    iget-boolean v8, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mNitzReceived:Z

    if-nez v8, :cond_e

    iget-boolean v8, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mNetworkTimeZoneReceived:Z

    if-nez v8, :cond_e

    .line 534
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "NITZ is not received even waiting for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mWaitingTimeout:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " msecs."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->log(Ljava/lang/String;)V

    .line 535
    iget-object v8, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mLastMcc:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_b

    .line 536
    iget-object v8, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mLastMcc:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->getIsoFromMcc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 537
    .local v1, "iso":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->getTimeZonesWithUniqueOffsetsDstConsidered(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 538
    .local v7, "uniqueZones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/TimeZone;>;"
    iget-boolean v8, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mSupportManualSettingPopup:Z

    if-eqz v8, :cond_d

    .line 539
    iget-object v8, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mLastMcc:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-direct {p0, v8, v9}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->showManualTimeZoneSettingPopup(Ljava/lang/String;I)V

    .line 540
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mHasShownManualTimeZoneSettingPopup:Z

    .line 541
    iget-object v8, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mContext:Landroid/content/Context;

    const-string v9, "timezone_mon"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 542
    .restart local v5    # "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 543
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v9, "popup_shown"

    iget-boolean v8, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mHasShownManualTimeZoneSettingPopup:Z

    if-eqz v8, :cond_c

    const-string v8, "true"

    :goto_3
    invoke-interface {v0, v9, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 552
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "iso":Ljava/lang/String;
    .end local v5    # "prefs":Landroid/content/SharedPreferences;
    .end local v7    # "uniqueZones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/TimeZone;>;"
    :cond_b
    :goto_4
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mNitzReceived:Z

    .line 553
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mNetworkTimeZoneReceived:Z

    goto/16 :goto_0

    .line 543
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v1    # "iso":Ljava/lang/String;
    .restart local v5    # "prefs":Landroid/content/SharedPreferences;
    .restart local v7    # "uniqueZones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/TimeZone;>;"
    :cond_c
    const-string v8, "false"

    goto :goto_3

    .line 545
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v5    # "prefs":Landroid/content/SharedPreferences;
    :cond_d
    const-string v8, "manual timezone setting popup is not supported"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->log(Ljava/lang/String;)V

    goto :goto_4

    .line 548
    .end local v1    # "iso":Ljava/lang/String;
    .end local v7    # "uniqueZones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/TimeZone;>;"
    :cond_e
    iget-boolean v8, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mNitzReceived:Z

    if-eqz v8, :cond_b

    .line 549
    const-string v8, "EVENT_CHECK_NITZ_RECEIVED: NITZ received, updateLastNitzMcc()"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->log(Ljava/lang/String;)V

    .line 550
    invoke-direct {p0}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->updateLastNitzMcc()V

    goto :goto_4

    .line 557
    :pswitch_5
    const-string v8, "Expire current NITZ info. 45000 msec elapsed since it received."

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->log(Ljava/lang/String;)V

    .line 558
    iget-boolean v8, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mNitzReceived:Z

    if-eqz v8, :cond_f

    iget-boolean v8, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mLastMccChanged:Z

    if-eqz v8, :cond_f

    .line 559
    const-string v8, "EVENT_CLEAR_NITZ_RECEIVED: updateLastNitzMcc()"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->log(Ljava/lang/String;)V

    .line 560
    invoke-direct {p0}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->updateLastNitzMcc()V

    .line 562
    :cond_f
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mLastMccChanged:Z

    .line 563
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mNitzReceived:Z

    .line 564
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mNetworkTimeZoneReceived:Z

    goto/16 :goto_0

    .line 568
    :pswitch_6
    invoke-direct {p0}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->revertToNitzTimeZone()V

    goto/16 :goto_0

    .line 573
    :pswitch_7
    sget-object v8, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mLostNitzInfo:Landroid/os/AsyncResult;

    if-eqz v8, :cond_0

    .line 574
    const-string v8, "There is lost NITZ info. Trigger fake NITZ reception event."

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->log(Ljava/lang/String;)V

    .line 575
    sget-object v8, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mLostNitzInfo:Landroid/os/AsyncResult;

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->triggerFakeNitzEvent(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 440
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 781
    const-string v0, "LgeTimeZoneMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[LgeTimeZoneMonitor] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    return-void
.end method

.method public makeNetworkAttachedEvent()V
    .locals 1

    .prologue
    .line 777
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->sendEmptyMessage(I)Z

    .line 778
    return-void
.end method

.method public receivedNitz()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 283
    iget-boolean v0, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mSupportManagedTimeSetting:Z

    if-nez v0, :cond_0

    .line 284
    const-string v0, "[receivedNitz()] Auto timezone setting is not set"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->log(Ljava/lang/String;)V

    .line 293
    :goto_0
    return-void

    .line 287
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->removeMessages(I)V

    .line 288
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->removeMessages(I)V

    .line 289
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->removeMessages(I)V

    .line 291
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->sendEmptyMessage(I)Z

    .line 292
    invoke-direct {p0}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->clearPopupIfAny()V

    goto :goto_0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 176
    iget-object v3, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mContext:Landroid/content/Context;

    if-eq p1, v3, :cond_1

    .line 177
    iput-object p1, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mContext:Landroid/content/Context;

    .line 178
    invoke-direct {p0}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->registerForTelephonyIntents()V

    .line 179
    iget-object v3, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 181
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v3, "CTC"

    invoke-static {v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 183
    const/4 v0, 0x0

    .line 186
    :cond_0
    if-eqz v0, :cond_1

    const-string v3, "auto_time_zone"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mAutoTimeZoneObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3, v6, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 190
    .end local v0    # "cr":Landroid/content/ContentResolver;
    :cond_1
    const/4 v3, 0x0

    :try_start_0
    const-string v4, "NITZ_WAITING_TIMEOUT"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->getFeatureInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 191
    .local v2, "timeout":I
    const/16 v3, 0x3e7

    if-le v2, v3, :cond_2

    sput v2, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mWaitingTimeout:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    .end local v2    # "timeout":I
    :cond_2
    :goto_0
    const-string v3, "MANAGED_TIME_SETTING"

    invoke-static {v5, v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mSupportManagedTimeSetting:Z

    .line 195
    const-string v3, "MAUNAL_TIMEZONE_SETTING_POPUP"

    invoke-static {v5, v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mSupportManualSettingPopup:Z

    .line 196
    const-string v3, "MANAGED_TIME_LOCAL_AREAS"

    invoke-static {v5, v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->getFeatureInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->getArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mLocalAreas:[Ljava/lang/String;

    .line 198
    const-string v3, "guide_automatic_time_setting"

    invoke-static {v5, v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mSupportGuideAutomaticTimeSetting:Z

    .line 201
    iget-boolean v3, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mInitialized:Z

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_3

    .line 202
    iget-object v3, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mContext:Landroid/content/Context;

    const-string v4, "timezone_mon"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 203
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "last_mcc"

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mLastMcc:Ljava/lang/String;

    .line 204
    const-string v3, "last_checked"

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mLastChecked:Z

    .line 205
    const-string v3, "popup_shown"

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mHasShownManualTimeZoneSettingPopup:Z

    .line 206
    const-string v3, "last_nitzmcc"

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mLastNitzMcc:Ljava/lang/String;

    .line 207
    iput-boolean v6, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mInitialized:Z

    .line 209
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    :cond_3
    return-void

    .line 192
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public setServiceStateTracker(Lcom/android/internal/telephony/ServiceStateTracker;)V
    .locals 4
    .param p1, "sst"    # Lcom/android/internal/telephony/ServiceStateTracker;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    .line 213
    invoke-direct {p0}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->clearPopupIfAny()V

    .line 215
    const/16 v0, 0xb

    const-wide/16 v2, 0xfa0

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->sendEmptyMessageDelayed(IJ)Z

    .line 217
    return-void
.end method

.method public unsetServiceStateTracker()V
    .locals 1

    .prologue
    .line 220
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    .line 221
    invoke-direct {p0}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->clearPopupIfAny()V

    .line 222
    return-void
.end method
