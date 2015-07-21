.class public abstract Lcom/android/internal/telephony/ServiceStateTrackerEx;
.super Lcom/android/internal/telephony/ServiceStateTracker;
.source "ServiceStateTrackerEx.java"


# static fields
.field protected static final DBG_CALL:Z

.field protected static final EVENT_APN_CHANGED:I = 0x34

.field protected static final EVENT_DELAYED_RAC_IND:I = 0x8fe

.field protected static final EVENT_DELAYED_RADIO_POWER_OFF:I = 0x66

.field protected static final EVENT_DELAY_TEST_ASSIST_DIAL:I = 0x79

.field protected static final EVENT_GET_EHRPD_INFO_DONE:I = 0x65

.field protected static final EVENT_GET_LTE_INFO_DONE:I = 0x64

.field protected static final EVENT_HDR_ROAMING_INDICATOR:I = 0x69

.field protected static final EVENT_LOG_RADIO_INFO_RECEIVED:I = 0x3fb

.field protected static final EVENT_LTE_EHRPD_FORCED_CHANGED:I = 0x6a

.field protected static final EVENT_LTE_NETWORK_INFO:I = 0x70

.field protected static final EVENT_LTE_ROAMING_INDICATOR:I = 0x6b

.field protected static final EVENT_RAC_UPDATE_IND:I = 0x8ff

.field protected static final EVENT_SIB16_TIME:I = 0x6f

.field private static mBackUpSavedAtTime:J

.field private static mBackUpSavedTime:J

.field private static mPlmnMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mSavedNeedFixZone:Z

.field private static mSavedZoneDst:Z

.field private static mSavedZoneOffset:I

.field private static mSavedZoneTime:J


# instance fields
.field protected absTime:J

.field protected isValidSIB16Time:Z

.field protected mAfterDialNumber:Ljava/lang/String;

.field protected mBeforeDialNumber:Ljava/lang/String;

.field private mCr:Landroid/content/ContentResolver;

.field mCurrentCountry:Lcom/lge/telephony/LGReferenceCountry;

.field protected mDataRoamingOffRegistrants:Landroid/os/RegistrantList;

.field protected mDataRoamingOnRegistrants:Landroid/os/RegistrantList;

.field protected mEhrpdInfo:[Ljava/lang/String;

.field protected mFakeMCC:Ljava/lang/String;

.field protected mFakePhoneType:I

.field protected mFakeRI:I

.field protected mFakeRoaming:I

.field protected mFakeSID:Ljava/lang/String;

.field protected mFromContact:I

.field protected mIsVzwTestOn:Z

.field protected mLgDataRoaming:Z

.field protected mLgVoiceRoaming:Z

.field protected mLteBand:I

.field protected mNeedToUpdateSpnForSubId:Z

.field protected mNoServiceChangedRegistrants:Landroid/os/RegistrantList;

.field protected mPowerOffDelayedForLgeIms:Z

.field protected mRefCountry:Ljava/lang/String;

.field mSetLteBandInfoOnMethod:Ljava/lang/reflect/Method;

.field protected mTelephonyApnObserver:Landroid/database/ContentObserver;

.field protected mlteInfo:[Ljava/lang/String;

.field setDataRadioTechnologyOnMethod:Ljava/lang/reflect/Method;

.field protected sib16ReceiveTime:J

.field protected sib16dst:I

.field protected sib16tzOffset:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    .line 69
    const-string v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->DBG_CALL:Z

    .line 156
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mPlmnMap:Ljava/util/HashMap;

    .line 776
    sput-boolean v1, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mSavedNeedFixZone:Z

    .line 777
    sput v1, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mSavedZoneOffset:I

    .line 778
    sput-boolean v1, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mSavedZoneDst:Z

    .line 779
    sput-wide v4, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mSavedZoneTime:J

    .line 780
    sput-wide v4, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mBackUpSavedTime:J

    .line 781
    sput-wide v4, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mBackUpSavedAtTime:J

    return-void

    :cond_0
    move v0, v1

    .line 69
    goto :goto_0
.end method

.method protected constructor <init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/CommandsInterface;Landroid/telephony/CellInfo;)V
    .locals 12
    .param p1, "phoneBase"    # Lcom/android/internal/telephony/PhoneBase;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "cellInfo"    # Landroid/telephony/CellInfo;

    .prologue
    const-wide/16 v10, 0x0

    const/4 v8, 0x1

    const/4 v5, -0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 179
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/ServiceStateTracker;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/CommandsInterface;Landroid/telephony/CellInfo;)V

    .line 73
    new-instance v4, Landroid/os/RegistrantList;

    invoke-direct {v4}, Landroid/os/RegistrantList;-><init>()V

    iput-object v4, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mNoServiceChangedRegistrants:Landroid/os/RegistrantList;

    .line 77
    new-instance v4, Landroid/os/RegistrantList;

    invoke-direct {v4}, Landroid/os/RegistrantList;-><init>()V

    iput-object v4, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mDataRoamingOnRegistrants:Landroid/os/RegistrantList;

    .line 78
    new-instance v4, Landroid/os/RegistrantList;

    invoke-direct {v4}, Landroid/os/RegistrantList;-><init>()V

    iput-object v4, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mDataRoamingOffRegistrants:Landroid/os/RegistrantList;

    .line 82
    iput v6, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->sib16tzOffset:I

    .line 83
    iput v6, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->sib16dst:I

    .line 84
    iput-wide v10, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->absTime:J

    .line 85
    iput-wide v10, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->sib16ReceiveTime:J

    .line 86
    iput-boolean v6, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->isValidSIB16Time:Z

    .line 90
    iput-boolean v6, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mIsVzwTestOn:Z

    .line 91
    iput v5, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mFakePhoneType:I

    .line 92
    const-string v4, ""

    iput-object v4, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mFakeMCC:Ljava/lang/String;

    .line 93
    const-string v4, ""

    iput-object v4, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mFakeSID:Ljava/lang/String;

    .line 94
    iput v6, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mFakeRoaming:I

    .line 95
    iput v6, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mFromContact:I

    .line 96
    iput v5, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mFakeRI:I

    .line 97
    const-string v4, "0"

    iput-object v4, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mRefCountry:Ljava/lang/String;

    .line 98
    const-string v4, ""

    iput-object v4, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mBeforeDialNumber:Ljava/lang/String;

    .line 99
    const-string v4, ""

    iput-object v4, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mAfterDialNumber:Ljava/lang/String;

    .line 111
    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mlteInfo:[Ljava/lang/String;

    .line 112
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mEhrpdInfo:[Ljava/lang/String;

    .line 116
    iput v6, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mLteBand:I

    .line 160
    iput-boolean v6, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mNeedToUpdateSpnForSubId:Z

    .line 164
    iput-boolean v6, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mLgDataRoaming:Z

    .line 165
    iput-boolean v6, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mLgVoiceRoaming:Z

    .line 580
    new-instance v4, Lcom/android/internal/telephony/ServiceStateTrackerEx$1;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v4, p0, v5}, Lcom/android/internal/telephony/ServiceStateTrackerEx$1;-><init>(Lcom/android/internal/telephony/ServiceStateTrackerEx;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mTelephonyApnObserver:Landroid/database/ContentObserver;

    .line 1131
    iput-boolean v6, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mPowerOffDelayedForLgeIms:Z

    .line 183
    new-array v1, v8, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v1, v6

    .line 185
    .local v1, "paramTypeFrom":[Ljava/lang/Class;
    :try_start_0
    const-class v4, Landroid/telephony/SignalStrength;

    const-string v5, "setDataRadioTechnology"

    invoke-virtual {v4, v5, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->setDataRadioTechnologyOnMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 194
    :goto_0
    const-string v4, "SUPPORT_LTE_BAND_INFO"

    invoke-static {v7, v4}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 195
    new-array v2, v8, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v6

    .line 197
    .local v2, "paramTypeFrom2":[Ljava/lang/Class;
    :try_start_1
    const-class v4, Landroid/telephony/SignalStrength;

    const-string v5, "setLteBandInfo"

    invoke-virtual {v4, v5, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mSetLteBandInfoOnMethod:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    .line 207
    .end local v2    # "paramTypeFrom2":[Ljava/lang/Class;
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0x6f

    invoke-interface {v4, p0, v5, v7}, Lcom/android/internal/telephony/CommandsInterface;->setOnSIB16Time(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 211
    const-string v4, "SUPPORT_LTE_BAND_INFO"

    invoke-static {v7, v4}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 212
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0x70

    invoke-interface {v4, p0, v5, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForLteNetworkInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 217
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mCr:Landroid/content/ContentResolver;

    .line 221
    const-string v4, "CTC"

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 222
    sget-object v4, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mPlmnMap:Ljava/util/HashMap;

    const-string v5, "45429"

    const-string v6, "PCCW"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    sget-object v4, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mPlmnMap:Ljava/util/HashMap;

    const-string v5, "45502"

    const-string v6, "CT Macao"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    sget-object v4, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mPlmnMap:Ljava/util/HashMap;

    const-string v5, "45005"

    const-string v6, "SK"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    sget-object v4, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mPlmnMap:Ljava/util/HashMap;

    const-string v5, "44007"

    const-string v6, "KDDI"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    sget-object v4, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mPlmnMap:Ljava/util/HashMap;

    const-string v5, "44008"

    const-string v6, "KDDI"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    sget-object v4, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mPlmnMap:Ljava/util/HashMap;

    const-string v5, "46605"

    const-string v6, "APBW"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    sget-object v4, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mPlmnMap:Ljava/util/HashMap;

    const-string v5, "40400"

    const-string v6, "Reliance"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    sget-object v4, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mPlmnMap:Ljava/util/HashMap;

    const-string v5, "30286"

    const-string v6, "Telus"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    sget-object v4, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mPlmnMap:Ljava/util/HashMap;

    const-string v5, "310410"

    const-string v6, "AT&T"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    sget-object v4, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mPlmnMap:Ljava/util/HashMap;

    const-string v5, "20801"

    const-string v6, "Orange"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    sget-object v4, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mPlmnMap:Ljava/util/HashMap;

    const-string v5, "26201"

    const-string v6, "T-Mobile"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    sget-object v4, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mPlmnMap:Ljava/util/HashMap;

    const-string v5, "45404"

    const-string v6, "Hutchison"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    sget-object v4, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mPlmnMap:Ljava/util/HashMap;

    const-string v5, "45406"

    const-string v6, "Smartone"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    :cond_2
    return-void

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v4, "ServiceStateTrackerEx:Unable to connect to SignalStrength !!!!!"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 188
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v3

    .line 189
    .local v3, "t":Ljava/lang/Throwable;
    const-string v4, "ServiceStateTrackerEx:Unable to connect to SignalStrength *****"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 198
    .end local v3    # "t":Ljava/lang/Throwable;
    .restart local v2    # "paramTypeFrom2":[Ljava/lang/Class;
    :catch_2
    move-exception v0

    .line 199
    .restart local v0    # "e":Ljava/lang/NoSuchMethodException;
    const-string v4, "ServiceStateTrackerEx:Unable to connect to SignalStrength !!!!!"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 200
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_3
    move-exception v3

    .line 201
    .restart local v3    # "t":Ljava/lang/Throwable;
    const-string v4, "ServiceStateTrackerEx:Unable to connect to SignalStrength *****"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->log(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method protected static getSavedAtTime()J
    .locals 2

    .prologue
    .line 819
    sget-wide v0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mBackUpSavedAtTime:J

    return-wide v0
.end method

.method protected static getSavedNeedFixZone()Z
    .locals 1

    .prologue
    .line 787
    sget-boolean v0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mSavedNeedFixZone:Z

    return v0
.end method

.method protected static getSavedTime()J
    .locals 2

    .prologue
    .line 812
    sget-wide v0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mBackUpSavedTime:J

    return-wide v0
.end method

.method protected static getSavedZoneDst()Z
    .locals 1

    .prologue
    .line 799
    sget-boolean v0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mSavedZoneDst:Z

    return v0
.end method

.method protected static getSavedZoneOffset()I
    .locals 1

    .prologue
    .line 793
    sget v0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mSavedZoneOffset:I

    return v0
.end method

.method protected static getSavedZoneTime()J
    .locals 2

    .prologue
    .line 805
    sget-wide v0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mSavedZoneTime:J

    return-wide v0
.end method

.method private handleApnChanged()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 589
    const-string v0, "VZW"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "LRA"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 590
    :cond_0
    const-string v0, "handleApnChanged()"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->log(Ljava/lang/String;)V

    .line 591
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->isVZWAdminDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 592
    const-string v0, "VZW APN Disabled"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->log(Ljava/lang/String;)V

    .line 593
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mCr:Landroid/content/ContentResolver;

    const-string v1, "apn2_disable"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 594
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->setRadioPower(Z)V

    .line 596
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->isVZWAdminEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 597
    const-string v0, "VZW APN Enabled"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->log(Ljava/lang/String;)V

    .line 598
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mCr:Landroid/content/ContentResolver;

    const-string v1, "apn2_disable"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 599
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->setRadioPower(Z)V

    .line 604
    :cond_2
    :goto_0
    return-void

    .line 602
    :cond_3
    const-string v0, "Igone handleApnChanged()..."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isOemRadTestSettingTrue()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 974
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "oem_rad_test"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 976
    .local v0, "oemRadSettingValue":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isOemRadTestSettingTrue : SettingsConstants.Secure.OEM_RAD_TEST="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mPhoneBase.getPhoneType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->log(Ljava/lang/String;)V

    .line 980
    if-lez v0, :cond_0

    .line 981
    const/4 v1, 0x1

    .line 984
    :cond_0
    return v1
.end method

.method private isVZWAdminDisabled()Z
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 607
    const/4 v7, 0x0

    .line 608
    .local v7, "isDisabled":Z
    const/4 v3, 0x0

    .line 609
    .local v3, "selection":Ljava/lang/String;
    const-string v0, "gsm.sim.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 611
    .local v8, "operator":Ljava/lang/String;
    const-string v0, "VZW"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 612
    const-string v0, "gsm.sim.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 617
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isVZWAdminDisabled() operator = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->log(Ljava/lang/String;)V

    .line 619
    const-string v0, "311480"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 620
    const/4 v0, 0x0

    .line 639
    :goto_1
    return v0

    .line 613
    :cond_1
    const-string v0, "LRA"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 614
    const-string v0, "gsm.apn.sim.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 623
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "numeric = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and type = \'admin\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 624
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and carrier_enabled = 1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 626
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 629
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 630
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 631
    const/4 v7, 0x0

    .line 635
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 638
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isVZWAdminDisabled() isDisabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->log(Ljava/lang/String;)V

    move v0, v7

    .line 639
    goto :goto_1

    .line 633
    :cond_4
    const/4 v7, 0x1

    goto :goto_2
.end method

.method private isVZWAdminEnabled()Z
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 643
    const/4 v7, 0x0

    .line 644
    .local v7, "isEnabled":Z
    const/4 v3, 0x0

    .line 645
    .local v3, "selection":Ljava/lang/String;
    const-string v0, "gsm.sim.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 647
    .local v8, "operator":Ljava/lang/String;
    const-string v0, "VZW"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 648
    const-string v0, "gsm.sim.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 653
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isVZWAdminEnabled() operator = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->log(Ljava/lang/String;)V

    .line 655
    const-string v0, "311480"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 656
    const/4 v0, 0x0

    .line 675
    :goto_1
    return v0

    .line 649
    :cond_1
    const-string v0, "LRA"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 650
    const-string v0, "gsm.apn.sim.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 659
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "numeric = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and type = \'admin\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 660
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and carrier_enabled = 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 662
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 665
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 666
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 667
    const/4 v7, 0x0

    .line 671
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 674
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isVZWAdminEnabled() isEnabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->log(Ljava/lang/String;)V

    move v0, v7

    .line 675
    goto :goto_1

    .line 669
    :cond_4
    const/4 v7, 0x1

    goto :goto_2
.end method

.method protected static setSavedAtTime(J)V
    .locals 0
    .param p0, "saveAtTime"    # J

    .prologue
    .line 816
    sput-wide p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mBackUpSavedAtTime:J

    .line 817
    return-void
.end method

.method protected static setSavedNeedFixZone(Z)V
    .locals 0
    .param p0, "needFixZone"    # Z

    .prologue
    .line 784
    sput-boolean p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mSavedNeedFixZone:Z

    .line 785
    return-void
.end method

.method protected static setSavedTime(J)V
    .locals 0
    .param p0, "saveTime"    # J

    .prologue
    .line 809
    sput-wide p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mBackUpSavedTime:J

    .line 810
    return-void
.end method

.method protected static setSavedZoneDst(Z)V
    .locals 0
    .param p0, "zoneDst"    # Z

    .prologue
    .line 796
    sput-boolean p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mSavedZoneDst:Z

    .line 797
    return-void
.end method

.method protected static setSavedZoneOffset(I)V
    .locals 0
    .param p0, "zoneOffset"    # I

    .prologue
    .line 790
    sput p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mSavedZoneOffset:I

    .line 791
    return-void
.end method

.method protected static setSavedZoneTime(J)V
    .locals 0
    .param p0, "zoneTime"    # J

    .prologue
    .line 802
    sput-wide p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mSavedZoneTime:J

    .line 803
    return-void
.end method


# virtual methods
.method protected broadcastNetworkTimeInfoForDrm(Ljava/util/Calendar;Ljava/lang/String;J)V
    .locals 11
    .param p1, "c"    # Ljava/util/Calendar;
    .param p2, "nitz"    # Ljava/lang/String;
    .param p3, "nitzReceiveTime"    # J

    .prologue
    .line 925
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v2, v6, p3

    .line 928
    .local v2, "millisSinceNitzReceived":J
    const-wide/16 v6, 0x0

    cmp-long v1, v2, v6

    if-gez v1, :cond_0

    .line 931
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NITZ: not setting time, clock has rolled backwards since NITZ time was received, "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->log(Ljava/lang/String;)V

    .line 969
    :goto_0
    return-void

    .line 938
    :cond_0
    const-wide/32 v6, 0x7fffffff

    cmp-long v1, v2, v6

    if-lez v1, :cond_1

    .line 941
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NITZ: not setting time, processing has taken "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-wide/32 v6, 0x5265c00

    div-long v6, v2, v6

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " days"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 949
    :cond_1
    const/16 v1, 0xe

    long-to-int v6, v2

    invoke-virtual {p1, v1, v6}, Ljava/util/Calendar;->add(II)V

    .line 952
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NITZ: Setting time of day to "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " NITZ receive delay(ms): "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " gained(ms): "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " from "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->log(Ljava/lang/String;)V

    .line 959
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 962
    .local v4, "time":J
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BroadcastNetworkSetTimeNotAuto: time="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "ms"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->log(Ljava/lang/String;)V

    .line 965
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.android.intent.NETWORK_SET_TIME_NOT_AUTO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 966
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 967
    const-string v1, "not_auto_time"

    invoke-virtual {v0, v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 968
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v6}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_0
.end method

.method protected checkMissingPhoneForLGU()V
    .locals 4

    .prologue
    .line 828
    const-string v2, "KR"

    const-string v3, "LGU"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 829
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v2

    const/16 v3, 0xe

    if-ne v2, v3, :cond_0

    .line 831
    const-string v2, "persist.radio.missing_phone"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 832
    .local v1, "lastMissingPhone":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lastMissingPhone : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->log(Ljava/lang/String;)V

    .line 834
    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 836
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.lge.intent.action.LTE_MISSING_PHONE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 837
    .local v0, "intentMissingPhone":Landroid/content/Intent;
    const-string v2, "rejectCode"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 838
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 839
    const-string v2, "persist.radio.missing_phone"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    const-string v2, "send intent LTE_MISSING_PHONE rejectCode 0 for LTE in-srv"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->log(Ljava/lang/String;)V

    .line 845
    .end local v0    # "intentMissingPhone":Landroid/content/Intent;
    .end local v1    # "lastMissingPhone":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected checkNotiStateChanged()Z
    .locals 1

    .prologue
    .line 1006
    const/4 v0, 0x0

    return v0
.end method

.method protected checkRoamingState(I)V
    .locals 2
    .param p1, "mFakeRoaming"    # I

    .prologue
    const/4 v1, 0x1

    .line 530
    if-ne p1, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setRoaming(Z)V

    .line 531
    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mNewSS:Landroid/telephony/ServiceState;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setRoaming(Z)V

    .line 533
    :cond_1
    return-void
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnSIB16Time(Landroid/os/Handler;)V

    .line 245
    const-string v0, "VZW"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "LRA"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mTelephonyApnObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_1

    .line 247
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mCr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mTelephonyApnObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 253
    :cond_1
    const/4 v0, 0x0

    const-string v1, "SUPPORT_LTE_BAND_INFO"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 254
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForLteNetworkInfo(Landroid/os/Handler;)V

    .line 258
    :cond_2
    invoke-super {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->dispose()V

    .line 259
    return-void
.end method

.method protected firstUpdateSpnDisplyKR()V
    .locals 0

    .prologue
    .line 1000
    return-void
.end method

.method public getEhrpdInfo()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 695
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mEhrpdInfo:[Ljava/lang/String;

    return-object v0
.end method

.method protected getLteBandInfo()I
    .locals 1

    .prologue
    .line 293
    iget v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mLteBand:I

    return v0
.end method

.method public getLteInfo()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 691
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mlteInfo:[Ljava/lang/String;

    return-object v0
.end method

.method protected getPlmnforCTC()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v6, 0x3

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 871
    const-string v2, ""

    .line 872
    .local v2, "plmn":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    .line 874
    .local v1, "operatorNumeric":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_a

    .line 875
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getSystemId()I

    move-result v3

    .line 876
    .local v3, "sid":I
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v6, :cond_1

    .line 877
    const-string v4, "46003"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "46005"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "46011"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 878
    :cond_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/lge/internal/R$string;->lockscreen_china_telecom:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 882
    :goto_0
    invoke-virtual {v1, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 883
    .local v0, "mcc":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 884
    const-string v4, "310"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v4, 0x4

    if-ne v3, v4, :cond_7

    .line 885
    const-string v2, "Verizon"

    .line 893
    .end local v0    # "mcc":Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 894
    const/16 v4, 0x100b

    if-ne v3, v4, :cond_9

    .line 895
    const-string v2, "Sprint"

    .line 900
    :cond_2
    :goto_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v3, :cond_3

    .line 901
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/lge/internal/R$string;->lockscreen_sid:I

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 903
    :cond_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 904
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/lge/internal/R$string;->lockscreen_unknown_network:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 906
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPlmnforCTC in CDMA:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->log(Ljava/lang/String;)V

    .line 919
    .end local v3    # "sid":I
    :cond_5
    :goto_3
    return-object v2

    .line 880
    .restart local v3    # "sid":I
    :cond_6
    sget-object v4, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mPlmnMap:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "plmn":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .restart local v2    # "plmn":Ljava/lang/String;
    goto :goto_0

    .line 886
    .restart local v0    # "mcc":Ljava/lang/String;
    :cond_7
    const-string v4, "450"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 887
    const-string v2, "SK"

    goto :goto_1

    .line 888
    :cond_8
    const-string v4, "440"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 889
    const-string v2, "KDDI"

    goto :goto_1

    .line 896
    .end local v0    # "mcc":Ljava/lang/String;
    :cond_9
    if-eqz v1, :cond_2

    .line 897
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/lge/internal/R$string;->lockscreen_mccmnc:I

    new-array v6, v7, [Ljava/lang/Object;

    aput-object v1, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 907
    .end local v3    # "sid":I
    :cond_a
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v4

    if-ne v4, v7, :cond_5

    .line 908
    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v6, :cond_b

    .line 909
    sget-object v4, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mPlmnMap:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "plmn":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 911
    .restart local v2    # "plmn":Ljava/lang/String;
    :cond_b
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_c

    if-eqz v1, :cond_c

    .line 912
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/lge/internal/R$string;->lockscreen_mccmnc:I

    new-array v6, v7, [Ljava/lang/Object;

    aput-object v1, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 914
    :cond_c
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 915
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/lge/internal/R$string;->lockscreen_unknown_network:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 917
    :cond_d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPlmnforCTC in GSM:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->log(Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method public getRegisteredCellMccMncInEmergencyMode()Ljava/lang/String;
    .locals 18

    .prologue
    .line 1088
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v13}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v12

    .line 1089
    .local v12, "plmnName":Ljava/lang/String;
    const-string v10, ""

    .line 1091
    .local v10, "mccMnc":Ljava/lang/String;
    if-eqz v12, :cond_0

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 1092
    :cond_0
    const-string v12, ""

    .line 1093
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mLastCellInfoList:Ljava/util/List;

    .line 1094
    .local v7, "cellList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    if-eqz v7, :cond_9

    .line 1095
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/CellInfo;

    .line 1096
    .local v8, "ci":Landroid/telephony/CellInfo;
    invoke-virtual {v8}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 1097
    instance-of v13, v8, Landroid/telephony/CellInfoGsm;

    if-eqz v13, :cond_4

    move-object v4, v8

    .line 1098
    check-cast v4, Landroid/telephony/CellInfoGsm;

    .line 1099
    .local v4, "cellInfoGsm":Landroid/telephony/CellInfoGsm;
    invoke-virtual {v4}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v1

    .line 1100
    .local v1, "cellIdentityGsm":Landroid/telephony/CellIdentityGsm;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/telephony/CellIdentityGsm;->getMcc()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v1}, Landroid/telephony/CellIdentityGsm;->getMnc()I

    move-result v13

    const/16 v15, 0xa

    if-ge v13, v15, :cond_3

    const-string v13, "%02d"

    :goto_1
    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-virtual {v1}, Landroid/telephony/CellIdentityGsm;->getMnc()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v13, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1114
    .end local v1    # "cellIdentityGsm":Landroid/telephony/CellIdentityGsm;
    .end local v4    # "cellInfoGsm":Landroid/telephony/CellInfoGsm;
    :cond_2
    :goto_2
    if-eqz v10, :cond_1

    const-string v13, ""

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 1115
    invoke-static {}, Lcom/android/internal/telephony/PlmnListParser;->getInstance()Lcom/android/internal/telephony/PlmnListParser;

    move-result-object v11

    .line 1116
    .local v11, "plmnListParser":Lcom/android/internal/telephony/PlmnListParser;
    invoke-virtual {v11, v10}, Lcom/android/internal/telephony/PlmnListParser;->isPlmnAvailable(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 1117
    invoke-virtual {v11, v10}, Lcom/android/internal/telephony/PlmnListParser;->getShortName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto :goto_0

    .line 1100
    .end local v11    # "plmnListParser":Lcom/android/internal/telephony/PlmnListParser;
    .restart local v1    # "cellIdentityGsm":Landroid/telephony/CellIdentityGsm;
    .restart local v4    # "cellInfoGsm":Landroid/telephony/CellInfoGsm;
    :cond_3
    const-string v13, "%d"

    goto :goto_1

    .line 1102
    .end local v1    # "cellIdentityGsm":Landroid/telephony/CellIdentityGsm;
    .end local v4    # "cellInfoGsm":Landroid/telephony/CellInfoGsm;
    :cond_4
    instance-of v13, v8, Landroid/telephony/CellInfoWcdma;

    if-eqz v13, :cond_6

    move-object v6, v8

    .line 1103
    check-cast v6, Landroid/telephony/CellInfoWcdma;

    .line 1104
    .local v6, "cellInfoWcdma":Landroid/telephony/CellInfoWcdma;
    invoke-virtual {v6}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v3

    .line 1105
    .local v3, "cellIdentityWcdma":Landroid/telephony/CellIdentityWcdma;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/telephony/CellIdentityWcdma;->getMcc()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v3}, Landroid/telephony/CellIdentityWcdma;->getMnc()I

    move-result v13

    const/16 v15, 0xa

    if-ge v13, v15, :cond_5

    const-string v13, "%02d"

    :goto_3
    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-virtual {v3}, Landroid/telephony/CellIdentityWcdma;->getMnc()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v13, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1107
    goto :goto_2

    .line 1105
    :cond_5
    const-string v13, "%d"

    goto :goto_3

    .line 1107
    .end local v3    # "cellIdentityWcdma":Landroid/telephony/CellIdentityWcdma;
    .end local v6    # "cellInfoWcdma":Landroid/telephony/CellInfoWcdma;
    :cond_6
    instance-of v13, v8, Landroid/telephony/CellInfoLte;

    if-eqz v13, :cond_2

    move-object v5, v8

    .line 1108
    check-cast v5, Landroid/telephony/CellInfoLte;

    .line 1109
    .local v5, "cellInfoLte":Landroid/telephony/CellInfoLte;
    invoke-virtual {v5}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v2

    .line 1110
    .local v2, "cellIdentityLte":Landroid/telephony/CellIdentityLte;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/telephony/CellIdentityLte;->getMcc()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v2}, Landroid/telephony/CellIdentityLte;->getMnc()I

    move-result v13

    const/16 v15, 0xa

    if-ge v13, v15, :cond_7

    const-string v13, "%02d"

    :goto_4
    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-virtual {v2}, Landroid/telephony/CellIdentityLte;->getMnc()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v13, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_2

    :cond_7
    const-string v13, "%d"

    goto :goto_4

    .line 1119
    .end local v2    # "cellIdentityLte":Landroid/telephony/CellIdentityLte;
    .end local v5    # "cellInfoLte":Landroid/telephony/CellInfoLte;
    .restart local v11    # "plmnListParser":Lcom/android/internal/telephony/PlmnListParser;
    :cond_8
    move-object v12, v10

    goto/16 :goto_0

    .line 1126
    .end local v7    # "cellList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    .end local v8    # "ci":Landroid/telephony/CellInfo;
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v11    # "plmnListParser":Lcom/android/internal/telephony/PlmnListParser;
    :cond_9
    return-object v12
.end method

.method public getTimeFromSIB16String()[J
    .locals 4

    .prologue
    .line 753
    const/4 v1, 0x2

    new-array v0, v1, [J

    .line 754
    .local v0, "value":[J
    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->sib16ReceiveTime:J

    aput-wide v2, v0, v1

    .line 755
    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->absTime:J

    aput-wide v2, v0, v1

    .line 756
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getTimeFromSIB16String] sib16ReceiveTime =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->sib16ReceiveTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , absTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->absTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->log(Ljava/lang/String;)V

    .line 757
    return-object v0
.end method

.method public getUpdateSpnForSubId()Z
    .locals 1

    .prologue
    .line 1178
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mNeedToUpdateSpnForSubId:Z

    return v0
.end method

.method public getValueFromSIB16String()[I
    .locals 3

    .prologue
    .line 745
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 746
    .local v0, "value":[I
    const/4 v1, 0x0

    iget v2, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->sib16tzOffset:I

    aput v2, v0, v1

    .line 747
    const/4 v1, 0x1

    iget v2, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->sib16dst:I

    aput v2, v0, v1

    .line 748
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getValueFromSIB16String] sib16tzOffset = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->sib16tzOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , sib16dst = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->sib16dst:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->log(Ljava/lang/String;)V

    .line 749
    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1012
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 1062
    invoke-super {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->handleMessage(Landroid/os/Message;)V

    .line 1064
    :goto_0
    return-void

    .line 1015
    :sswitch_0
    const-string v1, "[IMS_AFW] EVENT_GET_LTE_INFO_DONE"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->log(Ljava/lang/String;)V

    .line 1016
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->onSetLteInfo(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 1020
    :sswitch_1
    const-string v1, "[IMS_AFW] EVENT_GET_EHRPD_INFO_DONE"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->log(Ljava/lang/String;)V

    .line 1021
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->onSetEhrpdInfo(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 1027
    :sswitch_2
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->handleApnChanged()V

    goto :goto_0

    .line 1032
    :sswitch_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->sendAssistedDialTestNumber()V

    goto :goto_0

    .line 1037
    :sswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1038
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->absTime:J

    .line 1040
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->isValidSIB16Time:Z

    goto :goto_0

    .line 1047
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_5
    const-string v1, "EVENT_LTE_NETWORK_INFO"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->log(Ljava/lang/String;)V

    .line 1049
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->onSetLteNetworkInfo(Landroid/os/AsyncResult;)V

    .line 1055
    :sswitch_6
    const-string v1, "EVENT_DELAYED_RADIO_POWER_OFF"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->log(Ljava/lang/String;)V

    .line 1057
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->processDelayedRadioPowerOffForImsDereg()V

    goto :goto_0

    .line 1012
    :sswitch_data_0
    .sparse-switch
        0x34 -> :sswitch_2
        0x64 -> :sswitch_0
        0x65 -> :sswitch_1
        0x66 -> :sswitch_6
        0x6f -> :sswitch_4
        0x70 -> :sswitch_5
        0x79 -> :sswitch_3
    .end sparse-switch
.end method

.method protected handleRadioStateChangedForApn2Disable()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 571
    const-string v2, "VZW"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "LRA"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 572
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mCr:Landroid/content/ContentResolver;

    const-string v3, "apn2_disable"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_1

    move v0, v1

    .line 573
    .local v0, "apn2_disable_Mode":Z
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "apn2_disable_Mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->log(Ljava/lang/String;)V

    .line 574
    if-eqz v0, :cond_2

    .line 575
    iput-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mDesiredPowerState:Z

    .line 578
    .end local v0    # "apn2_disable_Mode":Z
    :cond_2
    return-void
.end method

.method public isIccIdChanged()Z
    .locals 2

    .prologue
    .line 395
    const-string v0, "persist.radio.iccid-changed"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 396
    const/4 v0, 0x0

    .line 398
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected needToFixTimeZoneByMcc(ZIIZ)Z
    .locals 2
    .param p1, "needToFixTimeZone"    # Z
    .param p2, "mcc"    # I
    .param p3, "prevMcc"    # I
    .param p4, "retVal"    # Z

    .prologue
    .line 682
    const/4 v0, 0x0

    const-string v1, "fix_timezone_by_mcc"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 683
    if-ne p2, p3, :cond_0

    if-eqz p1, :cond_2

    :cond_0
    const/4 p4, 0x1

    .line 685
    :cond_1
    :goto_0
    return p4

    .line 683
    :cond_2
    const/4 p4, 0x0

    goto :goto_0
.end method

.method protected notifyDataRoamingOnOff(ZZ)V
    .locals 1
    .param p1, "hasDataRoamingOn"    # Z
    .param p2, "hasDataRoamingOff"    # Z

    .prologue
    .line 364
    if-eqz p1, :cond_0

    .line 365
    const-string v0, "notify data roaming on"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->log(Ljava/lang/String;)V

    .line 366
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mDataRoamingOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 369
    :cond_0
    if-eqz p2, :cond_1

    .line 370
    const-string v0, "notify data roaming off"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->log(Ljava/lang/String;)V

    .line 371
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mDataRoamingOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 373
    :cond_1
    return-void
.end method

.method protected notifyNoServiceState(Z)V
    .locals 2
    .param p1, "hasDeregistered"    # Z

    .prologue
    .line 309
    const/4 v0, 0x0

    const-string v1, "vzw_gfit"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    if-eqz p1, :cond_0

    .line 311
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mNoServiceChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 314
    :cond_0
    return-void
.end method

.method protected onSetEhrpdInfo(Landroid/os/AsyncResult;)V
    .locals 5
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 715
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    .line 716
    const-string v2, "onEhrpdInfoReceived, there is Exception"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->log(Ljava/lang/String;)V

    .line 727
    :goto_0
    return-void

    .line 719
    :cond_0
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    .line 720
    .local v1, "result":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[IMS_AFW] GET EHRPD Info: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->log(Ljava/lang/String;)V

    .line 722
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 723
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mEhrpdInfo:[Ljava/lang/String;

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v0

    aput-object v3, v2, v0

    .line 722
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 725
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[IMS_AFW] Sector ID : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mEhrpdInfo:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Subnet length : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mEhrpdInfo:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onSetLteInfo(Landroid/os/AsyncResult;)V
    .locals 5
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 699
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    .line 700
    const-string v2, "onLteInfoReceived, there is Exception"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->log(Ljava/lang/String;)V

    .line 712
    :goto_0
    return-void

    .line 703
    :cond_0
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    .line 704
    .local v1, "result":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[IMS_AFW] GET LTE Info: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->log(Ljava/lang/String;)V

    .line 706
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 707
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mlteInfo:[Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v0

    aput-object v3, v2, v0

    .line 706
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 709
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[IMS_AFW] MCC : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mlteInfo:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", MNC : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mlteInfo:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Cell ID : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mlteInfo:[Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", TAC : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mlteInfo:[Ljava/lang/String;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Cell Type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mlteInfo:[Ljava/lang/String;

    const/4 v4, 0x4

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected onSetLteNetworkInfo(Landroid/os/AsyncResult;)V
    .locals 3
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 319
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 321
    const-string v1, "EVENT_LTE_NETWORK_INFO, there is Exception"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->log(Ljava/lang/String;)V

    .line 333
    :goto_0
    return-void

    .line 325
    :cond_0
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    move-object v0, v1

    check-cast v0, [I

    .line 327
    .local v0, "lteInfo":[I
    const/4 v1, 0x0

    aget v1, v0, v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->setLteBandInfo(I)V

    .line 330
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSetLteNetworkInfo() mLteBand =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->getLteBandInfo()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected postProcessEventNetworkStateChanged()V
    .locals 0

    .prologue
    .line 1068
    return-void
.end method

.method protected postProcessEventPollStateGprs(III)V
    .locals 0
    .param p1, "regState"    # I
    .param p2, "dataRegState"    # I
    .param p3, "type"    # I

    .prologue
    .line 1077
    return-void
.end method

.method protected postProcessEventPollStateRegistration(II)V
    .locals 0
    .param p1, "regState"    # I
    .param p2, "type"    # I

    .prologue
    .line 1074
    return-void
.end method

.method protected postProcessPollStateDone(ZZZ)V
    .locals 0
    .param p1, "hasChanged"    # Z
    .param p2, "hasGprsAttached"    # Z
    .param p3, "hasNotiStateChnaged"    # Z

    .prologue
    .line 1083
    return-void
.end method

.method protected preProcessEventNitzTime(Ljava/lang/String;J)V
    .locals 0
    .param p1, "nitzString"    # Ljava/lang/String;
    .param p2, "nitzReceiveTime"    # J

    .prologue
    .line 1071
    return-void
.end method

.method protected preProcessPollStateDone()V
    .locals 0

    .prologue
    .line 1080
    return-void
.end method

.method protected processDelayedRadioPowerOffForImsDereg()V
    .locals 5

    .prologue
    const/16 v4, 0x66

    const/4 v3, 0x0

    .line 1155
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processDelayedRadioPowerOffForImsDereg mPowerOffDelayedForLgeIms="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mPowerOffDelayedForLgeIms:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->log(Ljava/lang/String;)V

    .line 1158
    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mPowerOffDelayedForLgeIms:Z

    if-nez v1, :cond_0

    .line 1172
    :goto_0
    return-void

    .line 1162
    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1163
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->removeMessages(I)V

    .line 1166
    :cond_1
    iput-boolean v3, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mPowerOffDelayedForLgeIms:Z

    .line 1168
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mPowerOffDelayNeed:Z

    .line 1169
    .local v0, "powerOffDelayNeed":Z
    iput-boolean v3, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mPowerOffDelayNeed:Z

    .line 1170
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->setPowerStateToDesired()V

    .line 1171
    iput-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mPowerOffDelayNeed:Z

    goto :goto_0
.end method

.method protected queryInfoForIms()V
    .locals 2

    .prologue
    .line 730
    const/4 v0, 0x0

    const-string v1, "SUPPORT_INFO_FOR_IMS"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 731
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    const/16 v1, 0xe

    if-ne v0, v1, :cond_1

    .line 732
    const-string v0, "[IMS_AFW] Radio Tech is LTE, Get LTE Info from modem"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->log(Ljava/lang/String;)V

    .line 733
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x64

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getLteInfoForIms(Landroid/os/Message;)V

    .line 740
    :cond_0
    :goto_0
    return-void

    .line 735
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    .line 736
    const-string v0, "[IMS_AFW] Radio Tech is EHRPD, Get CDMA Info from modem"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->log(Ljava/lang/String;)V

    .line 737
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x65

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getEhrpdInfoForIms(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public registerForDataRoamingOff(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 351
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 352
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mDataRoamingOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 354
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mSS:Landroid/telephony/ServiceState;

    invoke-static {v1}, Lcom/lge/telephony/LGServiceState;->getDefault(Landroid/telephony/ServiceState;)Lcom/lge/telephony/LGServiceState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/telephony/LGServiceState;->getDataRoaming()Z

    move-result v1

    if-nez v1, :cond_0

    .line 355
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 357
    :cond_0
    return-void
.end method

.method public registerForDataRoamingOn(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 338
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 339
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mDataRoamingOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 341
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mSS:Landroid/telephony/ServiceState;

    invoke-static {v1}, Lcom/lge/telephony/LGServiceState;->getDefault(Landroid/telephony/ServiceState;)Lcom/lge/telephony/LGServiceState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/telephony/LGServiceState;->getDataRoaming()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 342
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 344
    :cond_0
    return-void
.end method

.method public registerForNoServiceChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 300
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 301
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mNoServiceChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 302
    return-void
.end method

.method protected sendAssistedDialTestNumber()V
    .locals 4

    .prologue
    .line 491
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/telephony/utils/AssistedDialUtils;->getInstance(Landroid/content/Context;)Lcom/lge/telephony/utils/AssistedDialUtils;

    invoke-static {}, Lcom/lge/telephony/utils/AssistedDialUtils;->getAssistedDialCurrentCountry()Lcom/lge/telephony/LGReferenceCountry;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mCurrentCountry:Lcom/lge/telephony/LGReferenceCountry;

    .line 492
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mCurrentCountry:Lcom/lge/telephony/LGReferenceCountry;

    if-nez v1, :cond_0

    .line 504
    :goto_0
    return-void

    .line 495
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/telephony/utils/AssistedDialUtils;->getInstance(Landroid/content/Context;)Lcom/lge/telephony/utils/AssistedDialUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mBeforeDialNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/lge/telephony/utils/AssistedDialUtils;->getAssistedDialNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mAfterDialNumber:Ljava/lang/String;

    .line 496
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.vzwnetworktest.afternumber"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 497
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "currentcountry"

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mCurrentCountry:Lcom/lge/telephony/LGReferenceCountry;

    invoke-virtual {v2}, Lcom/lge/telephony/LGReferenceCountry;->getCountryName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 498
    const-string v1, "afternumber"

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mAfterDialNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 499
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 500
    sget-boolean v1, Lcom/android/internal/telephony/ServiceStateTrackerEx;->DBG_CALL:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "modified number is sent...mDialNumber = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mAfterDialNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->log(Ljava/lang/String;)V

    .line 501
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "assist_dial_from_contact"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public sendNitzEvent(Landroid/os/AsyncResult;)V
    .locals 1
    .param p1, "nitzInfo"    # Landroid/os/AsyncResult;

    .prologue
    .line 822
    const/16 v0, 0xb

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->sendMessage(Landroid/os/Message;)Z

    .line 823
    return-void
.end method

.method protected setAssistedDialMcc(Ljava/lang/String;)V
    .locals 4
    .param p1, "operatorNumeric"    # Ljava/lang/String;

    .prologue
    .line 438
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "support_assisted_dialing"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "support_smart_dialing"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 440
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 443
    const/4 v2, 0x0

    const/4 v3, 0x3

    :try_start_0
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 444
    .local v0, "assistedDialingMcc":Ljava/lang/String;
    const-string v2, " ***** put System.ASSIST_DIAL_OTA_MCC "

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->log(Ljava/lang/String;)V

    .line 445
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "assist_dial_ota_mcc"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 449
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ***** MCC  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 455
    .end local v0    # "assistedDialingMcc":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 450
    :catch_0
    move-exception v1

    .line 451
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v2, "NumberFormatException"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected setDataRadioTechnology(I)V
    .locals 6
    .param p1, "dataRadioTechnology"    # I

    .prologue
    .line 263
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->setDataRadioTechnologyOnMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 265
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->setDataRadioTechnologyOnMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mSignalStrength:Landroid/telephony/SignalStrength;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    :goto_0
    return-void

    .line 266
    :catch_0
    move-exception v0

    .line 267
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ServiceStateTrackerEx:setDataRadioTechnologyOnMethod invoke fail !!!!!!!"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 270
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const-string v1, "ServiceStateTrackerEx:setDataRadioTechnologyOnMethod not exist !!!!!!!"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected setDelayedRadioPowerOffForImsDereg()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1136
    const-string v1, "setDelayedRadioPowerOffForImsDereg"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->log(Ljava/lang/String;)V

    .line 1142
    const/16 v1, 0x66

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xfa0

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1144
    iput-boolean v4, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mPowerOffDelayedForLgeIms:Z

    .line 1146
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.intent.action.radio_off"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1147
    .local v0, "imsIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1149
    return v4
.end method

.method protected setDesiredPowerStateByApn2Disable()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 554
    const-string v3, "VZW"

    invoke-static {v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "LRA"

    invoke-static {v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 555
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mCr:Landroid/content/ContentResolver;

    const-string v4, "apn2_disable"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 556
    .local v0, "apn2_disable_Mode":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "apn2_disable_Mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,mDesiredPowerState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mDesiredPowerState:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->log(Ljava/lang/String;)V

    .line 557
    iget-boolean v3, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mDesiredPowerState:Z

    if-eqz v3, :cond_1

    if-gtz v0, :cond_1

    move v1, v2

    :cond_1
    iput-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mDesiredPowerState:Z

    .line 558
    if-lez v0, :cond_3

    .line 559
    const-string v1, "lge.data.apn2-disable"

    const-string v3, "1"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[APN2 Disable] lge.data.apn2-disable : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "lge.data.apn2-disable"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->log(Ljava/lang/String;)V

    .line 566
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mCr:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mTelephonyApnObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 568
    .end local v0    # "apn2_disable_Mode":I
    :cond_2
    return-void

    .line 562
    .restart local v0    # "apn2_disable_Mode":I
    :cond_3
    const-string v1, "lge.data.apn2-disable"

    const-string v3, "0"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[APN2 Disable] lge.data.apn2-disable : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "lge.data.apn2-disable"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected setDesiredPowerStateByPCO5()V
    .locals 2

    .prologue
    .line 538
    const-string v0, "VZW"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 540
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "persist.lg.data.ims_pco = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "persist.lg.data.ims_pco"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->log(Ljava/lang/String;)V

    .line 542
    const-string v0, "persist.lg.data.ims_pco"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 544
    const-string v0, "persist.lg.data.ims_pco = 5"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->log(Ljava/lang/String;)V

    .line 546
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mDesiredPowerState:Z

    .line 549
    :cond_0
    return-void
.end method

.method protected setFakeNetworkValues(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    .line 507
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "roaming => "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "roaming"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->log(Ljava/lang/String;)V

    .line 509
    iput-boolean v3, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mIsVzwTestOn:Z

    .line 510
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "roaming"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mFakeRoaming:I

    .line 511
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "fromcontact"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mFromContact:I

    .line 512
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "refcountry"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mRefCountry:Ljava/lang/String;

    .line 513
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "dialnumber"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mBeforeDialNumber:Ljava/lang/String;

    .line 514
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 515
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "sid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mFakeSID:Ljava/lang/String;

    .line 516
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ri"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mFakeRI:I

    .line 517
    iget v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mFakeRI:I

    if-lez v0, :cond_0

    .line 527
    :goto_0
    return-void

    .line 520
    :cond_0
    sget-boolean v0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->DBG_CALL:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mFakeSID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mFakeSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   mFakeRI = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mFakeRI:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   mBeforeDialNumber = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mBeforeDialNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   mFromContact = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mFromContact:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mRefCountry = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mRefCountry:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->log(Ljava/lang/String;)V

    .line 526
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->startAssistedDiaiTest()V

    goto :goto_0

    .line 522
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 523
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "mcc"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mFakeMCC:Ljava/lang/String;

    .line 524
    sget-boolean v0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->DBG_CALL:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mFakeMCC = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mFakeMCC:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  mBeforeDialNumber = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mBeforeDialNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   mFromContact = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mFromContact:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected setLteBandInfo(I)V
    .locals 0
    .param p1, "lteBand"    # I

    .prologue
    .line 289
    iput p1, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mLteBand:I

    .line 290
    return-void
.end method

.method protected setLteBandInfoforRssi(I)V
    .locals 6
    .param p1, "lteBand"    # I

    .prologue
    .line 277
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mSetLteBandInfoOnMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 279
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mSetLteBandInfoOnMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mSignalStrength:Landroid/telephony/SignalStrength;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    :goto_0
    return-void

    .line 280
    :catch_0
    move-exception v0

    .line 281
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ServiceStateTrackerEx:setDataRadioTechnologyOnMethod invoke fail !!!!!!!"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 284
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const-string v1, "ServiceStateTrackerEx:setDataRadioTechnologyOnMethod not exist !!!!!!!"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected setRoamingForOemRadTestKR()V
    .locals 2

    .prologue
    .line 988
    const/4 v0, 0x0

    const-string v1, "KR_RAD_TEST"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 989
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->isOemRadTestSettingTrue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 992
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mNewSS:Landroid/telephony/ServiceState;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setRoaming(Z)V

    .line 995
    :cond_0
    return-void
.end method

.method public setTimeZoneMonitor()V
    .locals 0

    .prologue
    .line 379
    return-void
.end method

.method protected setUTCTimeFromSIB16(IIJ)V
    .locals 5
    .param p1, "tzOffset"    # I
    .param p2, "dst"    # I
    .param p3, "nitzReceiveTime"    # J

    .prologue
    .line 761
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->isValidSIB16Time:Z

    if-nez v0, :cond_0

    .line 772
    :goto_0
    return-void

    .line 764
    :cond_0
    iput p1, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->sib16tzOffset:I

    .line 765
    iput p2, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->sib16dst:I

    .line 766
    iput-wide p3, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->sib16ReceiveTime:J

    .line 767
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->isValidSIB16Time:Z

    .line 769
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set sib16tzOffset : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->sib16tzOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " sib16dst : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->sib16dst:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " sib16ReceiveTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->sib16ReceiveTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setUpdateSpnForSubId(Z)V
    .locals 0
    .param p1, "enforced"    # Z

    .prologue
    .line 1183
    iput-boolean p1, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mNeedToUpdateSpnForSubId:Z

    .line 1184
    return-void
.end method

.method protected startAssistedDiaiTest()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 461
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mIsVzwTestOn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mBeforeDialNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mRefCountry:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 462
    :cond_0
    iput-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mIsVzwTestOn:Z

    .line 488
    :goto_0
    return-void

    .line 466
    :cond_1
    iput-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mIsVzwTestOn:Z

    .line 468
    iget v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mFakeRoaming:I

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->checkRoamingState(I)V

    .line 470
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "assist_dial_from_contact"

    iget v2, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mFromContact:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 472
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "assist_dial_reference_country"

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mRefCountry:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 475
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mFakeSID:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 476
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "assist_dial_ota_sid"

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mFakeSID:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 479
    sget-boolean v0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->DBG_CALL:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fake ASSIST_DIAL_OTA_SID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mFakeSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->log(Ljava/lang/String;)V

    .line 487
    :cond_2
    :goto_1
    const/16 v0, 0x79

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 480
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mFakeMCC:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 481
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "assist_dial_ota_mcc"

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mFakeMCC:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 484
    sget-boolean v0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->DBG_CALL:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fake ASSIST_DIAL_OTA_MCC = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mFakeMCC:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public unregisterForDataRoamingOff(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 360
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mDataRoamingOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 361
    return-void
.end method

.method public unregisterForDataRoamingOn(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mDataRoamingOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 348
    return-void
.end method

.method public unregisterForNoServiceChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mNoServiceChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 306
    return-void
.end method

.method protected updateAssistDialDbByMdn(Ljava/lang/String;I)V
    .locals 7
    .param p1, "mMdn"    # Ljava/lang/String;
    .param p2, "eventEnum"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x3

    .line 402
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "support_assisted_dialing"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 403
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "msg.what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mdn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->log(Ljava/lang/String;)V

    .line 405
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->isIccIdChanged()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 406
    const-string v1, "isIccIdChanged = true, Area/Length Update"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->log(Ljava/lang/String;)V

    .line 408
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v4, :cond_0

    .line 409
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "area"

    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 413
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 414
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "area"

    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    const-string v1, "length"

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 416
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/lge/telephony/SettingsForAssistDial$AssistDial;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 422
    .end local v0    # "values":Landroid/content/ContentValues;
    :cond_0
    return-void
.end method

.method protected updateAssistedDialSid()V
    .locals 3

    .prologue
    .line 428
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "support_assisted_dialing"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "support_smart_dialing"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 430
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "assist_dial_ota_sid"

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getSystemId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 435
    :cond_1
    return-void
.end method

.method protected updateOperatorAlphaLongCTC()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x5

    .line 850
    const-string v2, "CTC"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-nez v2, :cond_2

    .line 851
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v1

    .line 852
    .local v1, "plmn":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 853
    .local v0, "CToperatorNumeric":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v4, :cond_1

    .line 854
    const-string v2, "46001"

    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "46006"

    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 855
    :cond_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/lge/internal/R$string;->sp_spn_china_unicom_summary:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 856
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2, v1}, Landroid/telephony/ServiceState;->setOperatorAlphaLong(Ljava/lang/String;)V

    .line 864
    :cond_1
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 865
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->getPlmnforCTC()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/telephony/ServiceState;->setOperatorAlphaLong(Ljava/lang/String;)V

    .line 868
    .end local v0    # "CToperatorNumeric":Ljava/lang/String;
    .end local v1    # "plmn":Ljava/lang/String;
    :cond_2
    return-void

    .line 858
    .restart local v0    # "CToperatorNumeric":Ljava/lang/String;
    .restart local v1    # "plmn":Ljava/lang/String;
    :cond_3
    const-string v2, "46000"

    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "46002"

    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "46007"

    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "46008"

    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 860
    :cond_4
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/lge/internal/R$string;->sp_spn_china_mobile_summary:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 861
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2, v1}, Landroid/telephony/ServiceState;->setOperatorAlphaLong(Ljava/lang/String;)V

    goto :goto_0
.end method
