.class public abstract Lcom/android/internal/telephony/PhoneBaseEx;
.super Lcom/android/internal/telephony/PhoneBase;
.source "PhoneBaseEx.java"

# interfaces
.implements Lcom/android/internal/telephony/ILGPhone;


# static fields
.field public static final ALS_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.intent.action.ALS_STATE_CHANGED"

.field protected static final EVENT_CANCEL_MANUAL_SEARCHING:I = 0x40f

.field protected static final EVENT_RETRY_GET_DEVICE_IDENTITY:I = 0x420

.field protected static final EVENT_SET_ERI_VERSION:I = 0x416

.field protected static final EVENT_SET_LTE_ONLY_FOR_TDD:I = 0x423

.field protected static final EVENT_SET_NETWORK_MANUAL_PREVIOUS:I = 0x40e

.field protected static final EVENT_SET_VOLTE_E911_SCAN_LIST:I = 0x417

.field protected static final EVENT_SUBSCRIPTION_INFO_READY:I = 0x3a

.field protected static final LGE_EVENT_OFFSET:I = 0x3e8

.field private static final LOG_TAG:Ljava/lang/String; = "PhoneBase"

.field public static final NETWORK_SELECTION_FAIL_KEY:Ljava/lang/String; = "network_selection_fail_key"

.field public static final VM_PRIORITY:Ljava/lang/String; = "vm_priority_key"

.field protected static isUSimSmsDeleted:Z

.field static mEcmExitTime:J

.field private static sIsE911ForVolte:Z


# instance fields
.field protected mIsPhoneInEcmExitDelayState:Z

.field private mIsQCTPlatform:Z

.field protected mRD:Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;

.field protected final mReferredNetworkTypeRegistrants:Landroid/os/RegistrantList;

.field private mVmUrgent:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 106
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/internal/telephony/PhoneBaseEx;->mEcmExitTime:J

    .line 110
    sput-boolean v2, Lcom/android/internal/telephony/PhoneBaseEx;->sIsE911ForVolte:Z

    .line 130
    sput-boolean v2, Lcom/android/internal/telephony/PhoneBaseEx;->isUSimSmsDeleted:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/internal/telephony/PhoneNotifier;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Z)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "notifier"    # Lcom/android/internal/telephony/PhoneNotifier;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p5, "unitTestMode"    # Z

    .prologue
    .line 139
    const v6, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/PhoneBaseEx;-><init>(Ljava/lang/String;Lcom/android/internal/telephony/PhoneNotifier;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;ZI)V

    .line 140
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/internal/telephony/PhoneNotifier;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;ZI)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "notifier"    # Lcom/android/internal/telephony/PhoneNotifier;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p5, "unitTestMode"    # Z
    .param p6, "phoneId"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 145
    invoke-direct/range {p0 .. p6}, Lcom/android/internal/telephony/PhoneBase;-><init>(Ljava/lang/String;Lcom/android/internal/telephony/PhoneNotifier;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;ZI)V

    .line 114
    iput-boolean v7, p0, Lcom/android/internal/telephony/PhoneBaseEx;->mVmUrgent:Z

    .line 126
    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/PhoneBaseEx;->mReferredNetworkTypeRegistrants:Landroid/os/RegistrantList;

    .line 134
    iput-boolean v7, p0, Lcom/android/internal/telephony/PhoneBaseEx;->mIsQCTPlatform:Z

    .line 147
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBaseEx;->getPhoneType()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    .line 224
    :goto_0
    return-void

    .line 152
    :cond_0
    const-string v3, "KR"

    const-string v4, "LGU"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 153
    iget-object v3, p0, Lcom/android/internal/telephony/PhoneBaseEx;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/telephony/PhoneBaseEx;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v3, v4}, Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;->getRILEventDispatcher(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/PhoneBaseEx;->mRD:Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;

    .line 157
    :cond_1
    const-string v3, "KR"

    invoke-static {v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isCountry(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 158
    invoke-static {p3}, Lcom/android/internal/telephony/TelephonyUtils;->parseKrTelephonyStringXML(Landroid/content/Context;)V

    .line 163
    :cond_2
    const-string v3, "KR"

    const-string v4, "LGU"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 164
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBaseEx;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "mcc_change"

    invoke-virtual {v3, v4, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 165
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "mcc"

    const-string v4, ""

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 166
    .local v1, "savedMcc":Ljava/lang/String;
    const-string v3, "PhoneBase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SharedPreference(mcc_change) saved mcc = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "000"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 171
    :cond_3
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "mcc"

    const-string v5, "450"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 172
    const-string v3, "PhoneBase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Init SharedPreference(mcc_change) new mcc = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "mcc"

    const-string v6, ""

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    .end local v0    # "prefs":Landroid/content/SharedPreferences;
    .end local v1    # "savedMcc":Ljava/lang/String;
    :cond_4
    const-string v3, "KR"

    invoke-static {v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isCountry(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 176
    const-string v3, "persist.radio.camped_mccmnc"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 178
    .local v2, "savedPropertyCamped_MccMnc":Ljava/lang/String;
    const-string v3, "PhoneBase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "savedPropertyCamped_MccMnc = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 181
    const-string v3, "KR"

    const-string v4, "SKT"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 182
    const-string v3, "persist.radio.camped_mccmnc"

    const-string v4, "45005"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    .end local v2    # "savedPropertyCamped_MccMnc":Ljava/lang/String;
    :cond_5
    :goto_1
    const-string v3, "KR"

    invoke-static {v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isCountry(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 196
    iget-object v3, p0, Lcom/android/internal/telephony/PhoneBaseEx;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/telephony/PhoneBaseEx;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v3, v4, p6}, Lcom/android/internal/telephony/kr/KrRoamingEventDispatcher;->getInstance(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;I)Lcom/android/internal/telephony/kr/KrRoamingEventDispatcher;

    .line 201
    :cond_6
    const-string v3, "VZW"

    invoke-static {v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "LRA"

    invoke-static {v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 202
    :cond_7
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBaseEx;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "apn2_disable"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v3, v4, :cond_8

    .line 203
    const-string v3, "VZW"

    invoke-static {v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 204
    const-string v3, "gsm.sim.operator.numeric"

    const-string v4, "311480"

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/PhoneBaseEx;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    :cond_8
    :goto_2
    const-string v3, "support_assisted_dialing"

    invoke-static {v8, v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "support_smart_dialing"

    invoke-static {v8, v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 216
    :cond_9
    invoke-static {p3}, Lcom/lge/telephony/utils/AssistedDialUtils;->getInstance(Landroid/content/Context;)Lcom/lge/telephony/utils/AssistedDialUtils;

    .line 222
    :cond_a
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneBaseEx;->isQCTPlatform()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/telephony/PhoneBaseEx;->mIsQCTPlatform:Z

    goto/16 :goto_0

    .line 183
    .restart local v2    # "savedPropertyCamped_MccMnc":Ljava/lang/String;
    :cond_b
    const-string v3, "KR"

    const-string v4, "KT"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 184
    const-string v3, "persist.radio.camped_mccmnc"

    const-string v4, "45008"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 185
    :cond_c
    const-string v3, "KR"

    const-string v4, "LGU"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 186
    const-string v3, "persist.radio.camped_mccmnc"

    const-string v4, "45006"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 188
    :cond_d
    const-string v3, "persist.radio.camped_mccmnc"

    const-string v4, "45006"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 205
    .end local v2    # "savedPropertyCamped_MccMnc":Ljava/lang/String;
    :cond_e
    const-string v3, "LRA"

    invoke-static {v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 206
    const-string v3, "gsm.apn.sim.operator.numeric"

    const-string v4, "311480"

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/PhoneBaseEx;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static getEndTimeForEcm()J
    .locals 8

    .prologue
    const-wide/16 v4, 0x0

    .line 551
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 552
    .local v0, "currentTime":J
    sget-wide v6, Lcom/android/internal/telephony/PhoneBaseEx;->mEcmExitTime:J

    sub-long v2, v6, v0

    .line 554
    .local v2, "relatvieEcmExitTime":J
    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    .line 555
    const-string v4, "PhoneBase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getEndTimeForEcm() : relative ecmExitTime = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    .end local v2    # "relatvieEcmExitTime":J
    :goto_0
    return-wide v2

    .line 558
    .restart local v2    # "relatvieEcmExitTime":J
    :cond_0
    const-string v6, "PhoneBase"

    const-string v7, "getEndTimeForEcm() : wrong case"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v2, v4

    .line 559
    goto :goto_0
.end method

.method private getLGImsPhone()Lcom/android/internal/telephony/ILGPhone;
    .locals 1

    .prologue
    .line 1037
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBaseEx;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    return-object v0
.end method

.method private getLteBand(I)J
    .locals 2
    .param p1, "tddStatus"    # I

    .prologue
    .line 789
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 790
    const-wide v0, 0x10000000000L

    .line 792
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x5

    goto :goto_0
.end method

.method private isQCTPlatform()Z
    .locals 5

    .prologue
    .line 1024
    const-string v1, "msm, mdm, apq"

    .line 1025
    .local v1, "qct":Ljava/lang/String;
    const-string v2, "ro.baseband"

    const-string v3, "null"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 1026
    .local v0, "baseband":Ljava/lang/String;
    const-string v2, "PhoneBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isQCTPlatform baseband = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    return v2
.end method

.method public static resetEcmExitTime()V
    .locals 2

    .prologue
    .line 563
    const-string v0, "PhoneBase"

    const-string v1, "resetEcmExitTime()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/internal/telephony/PhoneBaseEx;->mEcmExitTime:J

    .line 565
    return-void
.end method

.method public static setCurrentTimeForEcm(J)V
    .locals 4
    .param p0, "delayMillis"    # J

    .prologue
    .line 542
    const/4 v0, 0x0

    const-string v1, "support_emergency_callback_mode_for_gsm"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 543
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p0

    sput-wide v0, Lcom/android/internal/telephony/PhoneBaseEx;->mEcmExitTime:J

    .line 544
    const-string v0, "PhoneBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCurrentTimeForEcm() : mEcmExitTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/android/internal/telephony/PhoneBaseEx;->mEcmExitTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    :cond_0
    return-void
.end method


# virtual methods
.method public PlayVZWERISound()V
    .locals 1

    .prologue
    .line 402
    const-string v0, "PlayVZWERISound"

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBaseEx;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    .line 403
    return-void
.end method

.method public StopVZWERISound()V
    .locals 1

    .prologue
    .line 407
    const-string v0, "StopVZWERISound"

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBaseEx;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    .line 408
    return-void
.end method

.method public acceptCall(Lcom/android/internal/telephony/LGCallProfile;)V
    .locals 4
    .param p1, "callProfile"    # Lcom/android/internal/telephony/LGCallProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1096
    const-string v1, "PhoneBase"

    const-string v2, "acceptCall w/ callProfile"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneBaseEx;->getLGImsPhone()Lcom/android/internal/telephony/ILGPhone;

    move-result-object v0

    .line 1099
    .local v0, "lgImsPhone":Lcom/android/internal/telephony/ILGPhone;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/LGCallProfile;->isCallDomainCS()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1100
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/PhoneBaseEx;->acceptCall(I)V

    .line 1107
    :goto_0
    return-void

    .line 1101
    :cond_1
    if-eqz v0, :cond_2

    .line 1102
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ILGPhone;->acceptCall(Lcom/android/internal/telephony/LGCallProfile;)V

    goto :goto_0

    .line 1104
    :cond_2
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "acceptCall with callProfile is not supported in this phone: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public cancelManualSearchingRequest()V
    .locals 2

    .prologue
    .line 968
    const-string v0, "PhoneBase"

    const-string v1, "cancelManualSearchingRequest: not possible in CDMA"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    return-void
.end method

.method public changePlmnNameForESAME(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "Operator_numeric"    # Ljava/lang/String;

    .prologue
    .line 1017
    const-string v0, "changePlmnNameForESAME"

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBaseEx;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    .line 1018
    const/4 v0, 0x0

    return-object v0
.end method

.method public changePlmnNameForMVNO(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "SpnMvno"    # Ljava/lang/String;
    .param p2, "operator"    # Ljava/lang/String;

    .prologue
    .line 1005
    const-string v0, "changePlmnNameForMVNO"

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBaseEx;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    .line 1006
    const/4 v0, 0x1

    return v0
.end method

.method public changePlmnNameForSwedish(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "opLong"    # Ljava/lang/String;
    .param p2, "opShort"    # Ljava/lang/String;
    .param p3, "opNumeric"    # Ljava/lang/String;

    .prologue
    .line 1011
    const-string v0, "changePlmnNameForSwedish"

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBaseEx;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    .line 1012
    const/4 v0, 0x0

    return-object v0
.end method

.method public closeImsPdn(I)V
    .locals 2
    .param p1, "reason"    # I

    .prologue
    .line 838
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBaseEx;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->closeImsPdn(ILandroid/os/Message;)V

    .line 839
    return-void
.end method

.method public createCallProfile(II)Lcom/android/internal/telephony/LGCallProfile;
    .locals 2
    .param p1, "serviceType"    # I
    .param p2, "callType"    # I

    .prologue
    .line 1138
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneBaseEx;->getLGImsPhone()Lcom/android/internal/telephony/ILGPhone;

    move-result-object v0

    .line 1139
    .local v0, "lgImsPhone":Lcom/android/internal/telephony/ILGPhone;
    if-eqz v0, :cond_0

    .line 1140
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ILGPhone;->createCallProfile(II)Lcom/android/internal/telephony/LGCallProfile;

    .line 1143
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public dial([Ljava/lang/String;Lcom/android/internal/telephony/LGCallProfile;)Lcom/android/internal/telephony/Connection;
    .locals 8
    .param p1, "recipients"    # [Ljava/lang/String;
    .param p2, "callProfile"    # Lcom/android/internal/telephony/LGCallProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 1053
    const-string v4, "PhoneBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dial "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez p2, :cond_2

    const-string v3, "w/o"

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " callProfile, recipients.length="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p1, :cond_3

    array-length v3, p1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    if-eqz p2, :cond_0

    .line 1058
    const-string v3, "PhoneBase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dial mCallDomain="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p2, Lcom/android/internal/telephony/LGCallProfile;->mCallDomain:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    :cond_0
    array-length v3, p1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 1062
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/android/internal/telephony/LGCallProfile;->isCallDomainCS()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1063
    :cond_1
    aget-object v3, p1, v6

    invoke-virtual {p0, v3, v7, v6}, Lcom/android/internal/telephony/PhoneBaseEx;->dialInternal(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;I)Lcom/android/internal/telephony/Connection;

    move-result-object v3

    .line 1083
    :goto_2
    return-object v3

    .line 1053
    :cond_2
    const-string v3, "w/"

    goto :goto_0

    :cond_3
    const-string v3, "null"

    goto :goto_1

    .line 1067
    :cond_4
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneBaseEx;->getLGImsPhone()Lcom/android/internal/telephony/ILGPhone;

    move-result-object v2

    .line 1068
    .local v2, "lgImsPhone":Lcom/android/internal/telephony/ILGPhone;
    if-eqz v2, :cond_6

    .line 1070
    :try_start_0
    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/ILGPhone;->dial([Ljava/lang/String;Lcom/android/internal/telephony/LGCallProfile;)Lcom/android/internal/telephony/Connection;
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_2

    .line 1071
    :catch_0
    move-exception v1

    .line 1072
    .local v1, "e":Lcom/android/internal/telephony/CallStateException;
    invoke-virtual {p2}, Lcom/android/internal/telephony/LGCallProfile;->isCallDomainAutomatic()Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "cs_fallback"

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallStateException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 1074
    :cond_5
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallStateException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    .line 1075
    .local v0, "ce":Lcom/android/internal/telephony/CallStateException;
    invoke-virtual {v1}, Lcom/android/internal/telephony/CallStateException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/CallStateException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 1076
    throw v0

    .line 1083
    .end local v0    # "ce":Lcom/android/internal/telephony/CallStateException;
    .end local v1    # "e":Lcom/android/internal/telephony/CallStateException;
    :cond_6
    aget-object v3, p1, v6

    invoke-virtual {p0, v3, v7, v6}, Lcom/android/internal/telephony/PhoneBaseEx;->dialInternal(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;I)Lcom/android/internal/telephony/Connection;

    move-result-object v3

    goto :goto_2
.end method

.method public dialForVolte(Ljava/lang/String;)Z
    .locals 2
    .param p1, "dialString"    # Ljava/lang/String;

    .prologue
    .line 353
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBaseEx;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "SUPPORT_E911_FOR_VOLTE"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBaseEx;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallTracker;->dialForVolte(Ljava/lang/String;)Z

    move-result v0

    .line 356
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispose()V
    .locals 3

    .prologue
    .line 228
    invoke-super {p0}, Lcom/android/internal/telephony/PhoneBase;->dispose()V

    .line 231
    const-string v0, "KR"

    const-string v1, "LGU"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    const-string v0, "PhoneBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRD = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBaseEx;->mRD:Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBaseEx;->mRD:Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBaseEx;->mRD:Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;

    invoke-virtual {v0}, Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;->dispose()V

    .line 236
    :cond_0
    return-void
.end method

.method public emptySIMMessageDB()V
    .locals 6

    .prologue
    .line 736
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 737
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBaseEx;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBaseEx;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/uicc/ILGSmsSimUtils;->ALL_ICC_DS_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 742
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBaseEx;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBaseEx;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/uicc/ILGSmsSimUtils;->SMS_CONCAT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 750
    :goto_1
    return-void

    .line 739
    :cond_0
    const-string v1, "PhoneBase"

    const-string v2, "[PhoneBase] emptySIMMessageDB() - Delete ILGSmsSimUtils.ICC_URI"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBaseEx;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBaseEx;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/uicc/ILGSmsSimUtils;->ICC_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 743
    :catch_0
    move-exception v0

    .line 744
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "PhoneBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "emptySIMMessageDB :: NullPointerException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 745
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 746
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "PhoneBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "emptySIMMessageDB :: IllegalArgumentException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 747
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 748
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    const-string v1, "PhoneBase"

    const-string v2, "[TEL-SMS] sql exception"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public exitVolteE911EmergencyMode()V
    .locals 2

    .prologue
    .line 390
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBaseEx;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->exitVolteE911EmergencyMode(Landroid/os/Message;)V

    .line 391
    return-void
.end method

.method public getAlertId()I
    .locals 1

    .prologue
    .line 412
    const-string v0, "getAlertId"

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBaseEx;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    .line 413
    const/4 v0, 0x0

    return v0
.end method

.method public getCallBarringOption(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "commandInterfaceCBReason"    # Ljava/lang/String;
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 335
    const-string v0, "getCallBarringOption"

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBaseEx;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    .line 336
    return-void
.end method

.method public getCdmaEriHomeSystems()Ljava/lang/String;
    .locals 1

    .prologue
    .line 424
    const-string v0, "getCdmaEriHomeSystems"

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBaseEx;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    .line 425
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCdmaInfo()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 518
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBaseEx;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    .line 520
    .local v0, "sst":Lcom/android/internal/telephony/ServiceStateTracker;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->getEhrpdInfo()[Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCdmaLteEhrpdForced()Ljava/lang/String;
    .locals 2

    .prologue
    .line 505
    const-string v0, "PhoneBase"

    const-string v1, "Error! getCdmaLteEhrpdForced() in PhoneBase should not be called, GSMPhone & CDMAPhone inactive."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDebugInfoValue(Landroid/os/Message;)V
    .locals 2
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 941
    const-string v0, "PhoneBase"

    const-string v1, "getDebugInfoValue"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBaseEx;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getDebugInfoValue(Landroid/os/Message;)V

    .line 943
    return-void
.end method

.method public getDmNodeHandlerDiagMonNetwork(ZII)Ljava/lang/String;
    .locals 7
    .param p1, "setpreferrednetworktype"    # Z
    .param p2, "preferrednetworktype"    # I
    .param p3, "networksignal"    # I

    .prologue
    .line 628
    const-string v3, ""

    .line 629
    .local v3, "result":Ljava/lang/String;
    const/4 v0, 0x1

    .line 630
    .local v0, "m1xSignal":I
    const/4 v1, 0x2

    .line 631
    .local v1, "m3GSignal":I
    const/4 v2, 0x3

    .line 633
    .local v2, "m4GSignal":I
    if-eqz p1, :cond_0

    .line 634
    const/4 v4, 0x0

    invoke-virtual {p0, p2, v4}, Lcom/android/internal/telephony/PhoneBaseEx;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 635
    const-string v4, "PhoneBase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "preferrednetworktype = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    :goto_0
    return-object v3

    .line 636
    :cond_0
    if-lez p3, :cond_4

    .line 637
    if-ne p3, v0, :cond_2

    .line 638
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBaseEx;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 644
    :cond_1
    :goto_1
    const-string v4, "PhoneBase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "preferred network = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", signalstrength = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 639
    :cond_2
    if-ne p3, v1, :cond_3

    .line 640
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBaseEx;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 641
    :cond_3
    if-ne p3, v2, :cond_1

    .line 642
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBaseEx;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/SignalStrength;->getLteRsrp()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 646
    :cond_4
    const-string v4, "PhoneBase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UNKNOWN network signal : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getEriFileVersion()I
    .locals 1

    .prologue
    .line 418
    const-string v0, "getEriFileVersion"

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBaseEx;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    .line 419
    const/4 v0, 0x0

    return v0
.end method

.method public getHDRRoamingIndicator()I
    .locals 2

    .prologue
    .line 487
    const-string v0, "PhoneBase"

    const-string v1, "Error! getHDRRoamingIndicator() in PhoneBase should not be called, GSMPhone & CDMAPhone inactive."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    const/4 v0, 0x0

    return v0
.end method

.method public getIsE911ForVolte()Z
    .locals 3

    .prologue
    .line 375
    const-string v0, "PhoneBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIsE911ForVolte() - sIsE911ForVolte = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/internal/telephony/PhoneBaseEx;->sIsE911ForVolte:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    sget-boolean v0, Lcom/android/internal/telephony/PhoneBaseEx;->sIsE911ForVolte:Z

    return v0
.end method

.method public getIsQCT()Z
    .locals 1

    .prologue
    .line 1031
    iget-boolean v0, p0, Lcom/android/internal/telephony/PhoneBaseEx;->mIsQCTPlatform:Z

    return v0
.end method

.method public getLTERoamingIndicator()I
    .locals 2

    .prologue
    .line 496
    const-string v0, "PhoneBase"

    const-string v1, "Error! getLTERoamingIndicator() in PhoneBase should not be called, GSMPhone & CDMAPhone inactive."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    const/4 v0, 0x0

    return v0
.end method

.method public getLteInfo()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 513
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBaseEx;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    .line 515
    .local v0, "sst":Lcom/android/internal/telephony/ServiceStateTracker;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->getLteInfo()[Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMSIN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 314
    const-string v0, "getMSIN"

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBaseEx;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    .line 315
    const/4 v0, 0x0

    return-object v0
.end method

.method public getModemIntegerItem(ILandroid/os/Message;)V
    .locals 3
    .param p1, "item_index"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 467
    const-string v0, "PhoneBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PhoneBase getModemIntegerItem item_index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBaseEx;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->getModemIntegerItem(ILandroid/os/Message;)V

    .line 469
    return-void
.end method

.method public getModemStringItem(ILandroid/os/Message;)V
    .locals 3
    .param p1, "item_index"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 479
    const-string v0, "PhoneBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PhoneBase getModemStringItem item_index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBaseEx;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->getModemStringItem(ILandroid/os/Message;)V

    .line 481
    return-void
.end method

.method public getSearchStatus(Landroid/os/Message;)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 975
    const-string v0, "PhoneBase"

    const-string v1, "getSearchStatus: not possible in CDMA"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    return-void
.end method

.method public getStatusId()I
    .locals 1

    .prologue
    .line 441
    const-string v0, "getStatusId"

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBaseEx;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    .line 442
    const/4 v0, 0x0

    return v0
.end method

.method public getTimeFromSIB16String()[J
    .locals 2

    .prologue
    .line 659
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBaseEx;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    .line 660
    .local v0, "sst":Lcom/android/internal/telephony/ServiceStateTracker;
    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->getTimeFromSIB16String()[J

    move-result-object v1

    return-object v1
.end method

.method public getValueFromSIB16String()[I
    .locals 2

    .prologue
    .line 655
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBaseEx;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    .line 656
    .local v0, "sst":Lcom/android/internal/telephony/ServiceStateTracker;
    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->getValueFromSIB16String()[I

    move-result-object v1

    return-object v1
.end method

.method public getVoiceMessageUrgent()Z
    .locals 1

    .prologue
    .line 770
    iget-boolean v0, p0, Lcom/android/internal/telephony/PhoneBaseEx;->mVmUrgent:Z

    return v0
.end method

.method public getVolteE911NetworkType()V
    .locals 2

    .prologue
    .line 386
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBaseEx;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getVolteE911NetworkType(Landroid/os/Message;)V

    .line 387
    return-void
.end method

.method protected handleEnterEmergencyCallbackMode(J)V
    .locals 0
    .param p1, "delayInMillis"    # J

    .prologue
    .line 596
    return-void
.end method

.method protected handleExitEmergencyCallbackModeEx()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 689
    iput-boolean v1, p0, Lcom/android/internal/telephony/PhoneBaseEx;->mIsPhoneInEcmExitDelayState:Z

    .line 694
    const/4 v2, 0x0

    const-string v3, "support_network_change_auto_retry"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 695
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBaseEx;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "network_change_auto_retry"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 702
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBaseEx;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "support_emergency_callback_mode_for_gsm"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 703
    invoke-static {}, Lcom/android/internal/telephony/PhoneBaseEx;->resetEcmExitTime()V

    .line 708
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBaseEx;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "SUPPORT_E911_FOR_VOLTE"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 709
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/PhoneBaseEx;->setIsE911ForVolte(Z)V

    .line 714
    :cond_2
    const-string v2, "VZW"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "LRA"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 715
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBaseEx;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "apn2_disable"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_6

    .line 718
    .local v0, "apn2Disabled":Z
    :goto_0
    if-eqz v0, :cond_5

    .line 723
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBaseEx;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v2, v3, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBaseEx;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v2, v3, :cond_5

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBaseEx;->isInEmergencyCall()Z

    move-result v2

    if-nez v2, :cond_5

    .line 725
    :cond_4
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/PhoneBaseEx;->setRadioPower(Z)V

    .line 730
    .end local v0    # "apn2Disabled":Z
    :cond_5
    return-void

    :cond_6
    move v0, v1

    .line 715
    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 241
    iget-boolean v3, p0, Lcom/android/internal/telephony/PhoneBaseEx;->mIsTheCurrentActivePhone:Z

    if-nez v3, :cond_1

    .line 242
    const-string v3, "PhoneBase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received message "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] while being destroyed. Ignoring."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 246
    :cond_1
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 283
    invoke-super {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 249
    :sswitch_1
    const-string v3, "PhoneBase"

    const-string v4, "Event EVENT_SET_VOLTE_E911_SCAN_LIST Received Broadcast(change) "

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 251
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_0

    .line 252
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.lge.intent.action.VOLTE_E911_SCAN_LIST_COMPLETE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 253
    .local v1, "intent_i":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/internal/telephony/PhoneBaseEx;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 260
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "intent_i":Landroid/content/Intent;
    :sswitch_2
    const-string v3, "PhoneBase"

    const-string v4, "CTC : Event EVENT_SET_LTE_ONLY_FOR_TDD"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 262
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v3, :cond_2

    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v3, v3, Landroid/os/Message;

    if-nez v3, :cond_2

    .line 263
    const-string v3, "PhoneBase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CTC : ar.userObj is not Message type  ar.userObj = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 266
    :cond_2
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    .line 267
    .local v2, "message":Landroid/os/Message;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_3

    .line 268
    if-eqz v2, :cond_0

    .line 269
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v2, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 270
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 274
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/PhoneBaseEx;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/PhoneBaseEx;->getLteBand(I)J

    move-result-wide v4

    invoke-interface {v3, v4, v5, v2}, Lcom/android/internal/telephony/CommandsInterface;->setLteBandMode(JLandroid/os/Message;)V

    goto :goto_0

    .line 246
    nop

    :sswitch_data_0
    .sparse-switch
        0x40f -> :sswitch_0
        0x417 -> :sswitch_1
        0x423 -> :sswitch_2
    .end sparse-switch
.end method

.method public hangUpForVolte(Z)Z
    .locals 2
    .param p1, "isE911WithEcbm"    # Z

    .prologue
    .line 361
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBaseEx;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "SUPPORT_E911_FOR_VOLTE"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/PhoneBaseEx;->setIsE911ForVolte(Z)V

    .line 363
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBaseEx;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallTracker;->hangUpForVolte(Z)Z

    move-result v0

    .line 365
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initForSupportedEcmOnGsm(Landroid/content/Context;)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v6, 0x1a

    .line 568
    const-string v1, "support_emergency_callback_mode_for_gsm"

    invoke-static {p1, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 569
    invoke-static {}, Lcom/android/internal/telephony/PhoneBaseEx;->getEndTimeForEcm()J

    move-result-wide v2

    .line 570
    .local v2, "mEcmTimeout":J
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 571
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/PhoneBaseEx;->handleEnterEmergencyCallbackMode(J)V

    .line 590
    :goto_0
    const/4 v1, 0x1

    .line 592
    .end local v2    # "mEcmTimeout":J
    :goto_1
    return v1

    .line 574
    .restart local v2    # "mEcmTimeout":J
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBaseEx;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "SUPPORT_E911_FOR_VOLTE"

    invoke-static {v1, v4}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 575
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBaseEx;->getIsE911ForVolte()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 577
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.intent.action.ACTION_ECBM_EXIT_FOR_VOLTE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 578
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBaseEx;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 579
    const-string v1, "PhoneBase"

    const-string v4, "GSMPhone - ACTION_ECBM_EXIT_FOR_VOLTE"

    invoke-static {v1, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 582
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBaseEx;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/PhoneBaseEx;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/android/internal/telephony/CommandsInterface;->exitEmergencyCallbackMode(Landroid/os/Message;)V

    goto :goto_0

    .line 587
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBaseEx;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/PhoneBaseEx;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/android/internal/telephony/CommandsInterface;->exitEmergencyCallbackMode(Landroid/os/Message;)V

    goto :goto_0

    .line 592
    .end local v2    # "mEcmTimeout":J
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public isInEcmExitDelay()Z
    .locals 1

    .prologue
    .line 683
    iget-boolean v0, p0, Lcom/android/internal/telephony/PhoneBaseEx;->mIsPhoneInEcmExitDelayState:Z

    return v0
.end method

.method public isUtAvailable()Z
    .locals 2

    .prologue
    .line 1162
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneBaseEx;->getLGImsPhone()Lcom/android/internal/telephony/ILGPhone;

    move-result-object v0

    .line 1163
    .local v0, "imsPhone":Lcom/android/internal/telephony/ILGPhone;
    if-eqz v0, :cond_0

    .line 1164
    invoke-interface {v0}, Lcom/android/internal/telephony/ILGPhone;->isUtAvailable()Z

    move-result v1

    .line 1167
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public lgeResetEPSLOCI(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 992
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBaseEx;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->lgeResetEPSLOCI(Landroid/os/Message;)V

    .line 993
    return-void
.end method

.method public loadVolteE911ScanList(II)V
    .locals 2
    .param p1, "airplaneModeState"    # I
    .param p2, "imsRegiState"    # I

    .prologue
    .line 382
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBaseEx;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x417

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/PhoneBaseEx;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Lcom/android/internal/telephony/CommandsInterface;->loadVolteE911ScanList(IILandroid/os/Message;)V

    .line 383
    return-void
.end method

.method public mocaAlarmEvent([BLandroid/os/Message;)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 898
    const-string v0, "PhoneBase"

    const-string v1, "phonebase-mocaAlarmEvent"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBaseEx;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->mocaAlarmEvent([BLandroid/os/Message;)V

    .line 900
    return-void
.end method

.method public mocaAlarmEventReg(ILandroid/os/Message;)V
    .locals 2
    .param p1, "event"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 893
    const-string v0, "PhoneBase"

    const-string v1, "phonebase-mocaAlarmEventReg"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBaseEx;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->mocaAlarmEventReg(ILandroid/os/Message;)V

    .line 895
    return-void
.end method

.method public mocaCheckMem(Landroid/os/Message;)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 929
    const-string v0, "PhoneBase"

    const-string v1, "phonebase-mocaCheckMem"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBaseEx;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->mocaCheckMem(Landroid/os/Message;)V

    .line 931
    return-void
.end method

.method public mocaGetData(ILandroid/os/Message;)V
    .locals 2
    .param p1, "buf_num"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 908
    if-eqz p1, :cond_0

    const v0, 0xffff

    if-ne p1, v0, :cond_1

    .line 909
    :cond_0
    const-string v0, "PhoneBase"

    const-string v1, "phonebase-mocaGetData"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBaseEx;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->mocaGetData(ILandroid/os/Message;)V

    .line 912
    return-void
.end method

.method public mocaGetMisc(IILandroid/os/Message;)V
    .locals 2
    .param p1, "kindOfData"    # I
    .param p2, "buf_num"    # I
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 922
    if-eqz p2, :cond_0

    const v0, 0xffff

    if-ne p2, v0, :cond_1

    .line 923
    :cond_0
    const-string v0, "PhoneBase"

    const-string v1, "phonebase-mocaGetMisc"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBaseEx;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->mocaGetMisc(IILandroid/os/Message;)V

    .line 926
    return-void
.end method

.method public mocaGetRFParameter(IILandroid/os/Message;)V
    .locals 2
    .param p1, "kindOfData"    # I
    .param p2, "buf_num"    # I
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 915
    if-eqz p2, :cond_0

    const v0, 0xffff

    if-ne p2, v0, :cond_1

    .line 916
    :cond_0
    const-string v0, "PhoneBase"

    const-string v1, "phonebase-mocaGetRFParameter"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBaseEx;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->mocaGetRFParameter(IILandroid/os/Message;)V

    .line 919
    return-void
.end method

.method public mocaSetEvent([BLandroid/os/Message;)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 888
    const-string v0, "PhoneBase"

    const-string v1, "phonebase-mocaSetEvent"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBaseEx;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->mocaSetEvent([BLandroid/os/Message;)V

    .line 890
    return-void
.end method

.method public mocaSetLog([BLandroid/os/Message;)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 884
    const-string v0, "PhoneBase"

    const-string v1, "phonebase-mocaSetLog"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBaseEx;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->mocaSetLog([BLandroid/os/Message;)V

    .line 886
    return-void
.end method

.method public mocaSetMem(ILandroid/os/Message;)V
    .locals 2
    .param p1, "percent"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 903
    const-string v0, "PhoneBase"

    const-string v1, "phonebase-mocaSetMem"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBaseEx;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->mocaSetMem(ILandroid/os/Message;)V

    .line 905
    return-void
.end method

.method public oemSsaAlarmEvent([BLandroid/os/Message;)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 859
    const-string v0, "PhoneBase"

    const-string v1, "phonebase-oemSsaAlarmEvent"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBaseEx;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->oemSsaAlarmEvent([BLandroid/os/Message;)V

    .line 861
    return-void
.end method

.method public oemSsaCheckMem(Landroid/os/Message;)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 878
    const-string v0, "PhoneBase"

    const-string v1, "phonebase-oemSsaCheckMem"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBaseEx;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->oemSsaCheckMem(Landroid/os/Message;)V

    .line 880
    return-void
.end method

.method public oemSsaGetData(ILandroid/os/Message;)V
    .locals 2
    .param p1, "buf_num"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 874
    const-string v0, "PhoneBase"

    const-string v1, "phonebase-oemSsaGetData"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBaseEx;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->oemSsaGetData(ILandroid/os/Message;)V

    .line 876
    return-void
.end method

.method public oemSsaHdvAlarmEvent([BLandroid/os/Message;)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 864
    const-string v0, "PhoneBase"

    const-string v1, "phonebase-oemSsaHdvAlarmEvent"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBaseEx;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->oemSsaHdvAlarmEvent([BLandroid/os/Message;)V

    .line 866
    return-void
.end method

.method public oemSsaSetEvent([BLandroid/os/Message;)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 854
    const-string v0, "PhoneBase"

    const-string v1, "phonebase-oemSsaSetEvent"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBaseEx;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->oemSsaSetEvent([BLandroid/os/Message;)V

    .line 856
    return-void
.end method

.method public oemSsaSetLog([BLandroid/os/Message;)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 850
    const-string v0, "PhoneBase"

    const-string v1, "phonebase-oemSsaSetLog"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBaseEx;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->oemSsaSetLog([BLandroid/os/Message;)V

    .line 852
    return-void
.end method

.method public oemSsaSetMem(ILandroid/os/Message;)V
    .locals 2
    .param p1, "percent"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 869
    const-string v0, "PhoneBase"

    const-string v1, "phonebase-oemSsaSetMem"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBaseEx;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->oemSsaSetMem(ILandroid/os/Message;)V

    .line 871
    return-void
.end method

.method public prepareEri()V
    .locals 1

    .prologue
    .line 397
    const-string v0, "prepareEri"

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBaseEx;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    .line 398
    return-void
.end method

.method public registerForImsPhoneStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1151
    return-void
.end method

.method public registerForSetPreferredNetworkType(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBaseEx;->mReferredNetworkTypeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 291
    return-void
.end method

.method public registerLGECipheringInd(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 532
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBaseEx;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerLGECipheringInd(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 533
    return-void
.end method

.method public registerLGERACInd(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 997
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBaseEx;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerLGERACInd(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 998
    return-void
.end method

.method public registerLGEUnsol(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 447
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBaseEx;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerLGEUnsol(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 448
    return-void
.end method

.method public rejectCall(I)V
    .locals 4
    .param p1, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1120
    const-string v1, "PhoneBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rejectCall reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneBaseEx;->getLGImsPhone()Lcom/android/internal/telephony/ILGPhone;

    move-result-object v0

    .line 1123
    .local v0, "lgImsPhone":Lcom/android/internal/telephony/ILGPhone;
    if-gtz p1, :cond_0

    .line 1124
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBaseEx;->rejectCall()V

    .line 1131
    :goto_0
    return-void

    .line 1125
    :cond_0
    if-eqz v0, :cond_1

    .line 1126
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ILGPhone;->rejectCall(I)V

    goto :goto_0

    .line 1128
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rejectCall with reason is not supported in this phone: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public resetVoiceMessageCount()V
    .locals 1

    .prologue
    .line 756
    const-string v0, "resetVoiceMessageCount"

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBaseEx;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    .line 757
    return-void
.end method

.method public selectPreviousNetworkManually(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)V
    .locals 2
    .param p1, "network"    # Lcom/android/internal/telephony/OperatorInfo;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 981
    const-string v0, "PhoneBase"

    const-string v1, "selectPreviousNetworkManually: not possible in CDMA"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    return-void
.end method

.method public sendIMSRegistate(I)V
    .locals 2
    .param p1, "regiState"    # I

    .prologue
    .line 526
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBaseEx;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->sendIMSRegistate(ILandroid/os/Message;)V

    .line 527
    return-void
.end method

.method public setCSGSelectionManual(ILandroid/os/Message;)V
    .locals 2
    .param p1, "data"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 986
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBaseEx;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setCSGSelectionManual(ILandroid/os/Message;)V

    .line 987
    const-string v0, "PhoneBase"

    const-string v1, "setCSGSelectionManualt "

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    return-void
.end method

.method public setCallBarringOption(ILjava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "commandInterfaceCBAction"    # I
    .param p2, "commandInterfaceCBReason"    # Ljava/lang/String;
    .param p3, "serviceClass"    # I
    .param p4, "password"    # Ljava/lang/String;
    .param p5, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 343
    const-string v0, "setCallBarringOption"

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBaseEx;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    .line 344
    return-void
.end method

.method public setCallBarringPass(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "oldPwd"    # Ljava/lang/String;
    .param p2, "newPwd"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 347
    const-string v0, "setCallBarringPass"

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBaseEx;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    .line 348
    return-void
.end method

.method public setCallForwardingOption(IILjava/lang/String;IILandroid/os/Message;)V
    .locals 1
    .param p1, "commandInterfaceCFAction"    # I
    .param p2, "commandInterfaceCFReason"    # I
    .param p3, "dialingNumber"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "timerSeconds"    # I
    .param p6, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 330
    const-string v0, "setCallForwardingOption"

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBaseEx;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    .line 331
    return-void
.end method

.method public setCdmaEriVersion(ILandroid/os/Message;)V
    .locals 1
    .param p1, "value"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 429
    const-string v0, "setCdmaEriVersion"

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBaseEx;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    .line 430
    return-void
.end method

.method public setCdmaFactoryReset(Landroid/os/Message;)V
    .locals 2
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 434
    const-string v0, "PhoneBase"

    const-string v1, "setCdmaFactoryReset"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBaseEx;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->setCdmaFactoryReset(Landroid/os/Message;)V

    .line 436
    return-void
.end method

.method public setDebugInfoValue(ILandroid/os/Message;)V
    .locals 3
    .param p1, "param"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 936
    const-string v0, "PhoneBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDebugInfoValue param = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBaseEx;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setDebugInfoValue(ILandroid/os/Message;)V

    .line 938
    return-void
.end method

.method public setImsStatusForDan(ILandroid/os/Message;)V
    .locals 1
    .param p1, "ims_status"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 602
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBaseEx;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setImsStatusForDan(ILandroid/os/Message;)V

    .line 603
    return-void
.end method

.method public setIsE911ForVolte(Z)V
    .locals 3
    .param p1, "isE911ForVolte"    # Z

    .prologue
    .line 370
    const-string v0, "PhoneBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIsE911ForVolte() - isE911ForVolte = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    sput-boolean p1, Lcom/android/internal/telephony/PhoneBaseEx;->sIsE911ForVolte:Z

    .line 372
    return-void
.end method

.method public setLteACarrierAggregation(ILandroid/os/Message;)V
    .locals 1
    .param p1, "param"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 948
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBaseEx;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setLteACarrierAggregation(ILandroid/os/Message;)V

    .line 949
    return-void
.end method

.method public setMiMoAntennaControlTest(Landroid/os/Message;I)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "mask"    # I

    .prologue
    .line 666
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/telephony/PhoneBaseEx;->setMiMoAntennaControlTest(Landroid/os/Message;II)V

    .line 667
    return-void
.end method

.method public setMiMoAntennaControlTest(Landroid/os/Message;II)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "sys_mode"    # I
    .param p3, "mask"    # I

    .prologue
    .line 669
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBaseEx;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->setMiMoAntennaControlTest(Landroid/os/Message;II)V

    .line 670
    return-void
.end method

.method public setModemIntegerItem(IILandroid/os/Message;)V
    .locals 3
    .param p1, "item_index"    # I
    .param p2, "data"    # I
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 461
    const-string v0, "PhoneBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PhoneBase setModemIntegerItem data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBaseEx;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->setModemIntegerItem(IILandroid/os/Message;)V

    .line 463
    return-void
.end method

.method public setModemStringItem(ILjava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "item_index"    # I
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 473
    const-string v0, "PhoneBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PhoneBase setModemStringItem data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBaseEx;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->setModemStringItem(ILjava/lang/String;Landroid/os/Message;)V

    .line 475
    return-void
.end method

.method public setPreferredNetworkType(ILandroid/os/Message;)V
    .locals 2
    .param p1, "networkType"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 302
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/PhoneBase;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 305
    const/4 v0, 0x0

    const-string v1, "vzw_gfit"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBaseEx;->mReferredNetworkTypeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 309
    :cond_0
    return-void
.end method

.method public setPttDrxMode(I)Z
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 675
    const-string v0, "PhoneBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPttDrxMode(mode) : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBaseEx;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->setPttDrxMode(ILandroid/os/Message;)V

    .line 677
    const/4 v0, 0x1

    return v0
.end method

.method public setRmnetAutoconnect(ILandroid/os/Message;)V
    .locals 1
    .param p1, "param"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBaseEx;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setRmnetAutoconnect(ILandroid/os/Message;)V

    .line 321
    return-void
.end method

.method public setTddStatus(ILandroid/os/Message;)V
    .locals 10
    .param p1, "status"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    const/16 v9, 0x423

    const/4 v8, 0x2

    const/16 v7, 0xb

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 797
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBaseEx;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preferred_network_mode"

    sget v4, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 799
    .local v1, "nwMode":I
    const-string v2, "PhoneBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CTC : setTddStatus status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " PREFERRED_NETWORK_MODE = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    const/16 v2, 0x8

    if-ge v1, v2, :cond_1

    if-ne p1, v6, :cond_1

    .line 801
    const-string v2, "PhoneBase"

    const-string v3, "CTC : can not call setTddStatus(1) at LTE off"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    if-eqz p2, :cond_0

    .line 804
    invoke-static {v8}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 805
    .local v0, "ex":Lcom/android/internal/telephony/CommandException;
    const/4 v2, 0x0

    invoke-static {p2, v2, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 806
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 833
    .end local v0    # "ex":Lcom/android/internal/telephony/CommandException;
    :cond_0
    :goto_0
    return-void

    .line 810
    :cond_1
    if-ne p1, v6, :cond_2

    .line 811
    if-eq v1, v7, :cond_4

    .line 812
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBaseEx;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v9, v6, v5, p2}, Lcom/android/internal/telephony/PhoneBaseEx;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v7, v3}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_0

    .line 816
    :cond_2
    if-nez p1, :cond_3

    .line 817
    if-eq v1, v7, :cond_4

    .line 818
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBaseEx;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v9, v5, v5, p2}, Lcom/android/internal/telephony/PhoneBaseEx;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_0

    .line 823
    :cond_3
    const-string v2, "PhoneBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CTC : setTddStatus status something wrong !! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    if-eqz p2, :cond_0

    .line 826
    invoke-static {v8}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 827
    .restart local v0    # "ex":Lcom/android/internal/telephony/CommandException;
    const/4 v2, 0x0

    invoke-static {p2, v2, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 828
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 832
    .end local v0    # "ex":Lcom/android/internal/telephony/CommandException;
    :cond_4
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBaseEx;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneBaseEx;->getLteBand(I)J

    move-result-wide v4

    invoke-interface {v2, v4, v5, p2}, Lcom/android/internal/telephony/CommandsInterface;->setLteBandMode(JLandroid/os/Message;)V

    goto :goto_0
.end method

.method public setUeMode(ILandroid/os/Message;)V
    .locals 1
    .param p1, "uemode"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 961
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBaseEx;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setUeMode(ILandroid/os/Message;)V

    .line 962
    return-void
.end method

.method public setVoLTERoaming(ILandroid/os/Message;)V
    .locals 1
    .param p1, "status"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 844
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBaseEx;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setVoLTERoaming(ILandroid/os/Message;)V

    .line 845
    return-void
.end method

.method public setVoiceMessageUrgent(Z)V
    .locals 0
    .param p1, "urgent"    # Z

    .prologue
    .line 764
    iput-boolean p1, p0, Lcom/android/internal/telephony/PhoneBaseEx;->mVmUrgent:Z

    .line 765
    return-void
.end method

.method public setVoiceMessageWaiting(II)V
    .locals 2
    .param p1, "line"    # I
    .param p2, "countWaiting"    # I

    .prologue
    .line 777
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBaseEx;->mContext:Landroid/content/Context;

    const-string v1, "KRVMSType"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 785
    :goto_0
    return-void

    .line 784
    :cond_0
    const-string v0, "PhoneBase"

    const-string v1, "Error! This function should never be executed, inactive Phone."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public uknightEventSet([BLandroid/os/Message;)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 610
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBaseEx;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->uknightEventSet([BLandroid/os/Message;)V

    .line 611
    return-void
.end method

.method public uknightGetData(ILandroid/os/Message;)V
    .locals 1
    .param p1, "buf_num"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 619
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBaseEx;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->uknightGetData(ILandroid/os/Message;)V

    .line 620
    return-void
.end method

.method public uknightLogSet([BLandroid/os/Message;)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 607
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBaseEx;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->uknightLogSet([BLandroid/os/Message;)V

    .line 608
    return-void
.end method

.method public uknightMemCheck(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 622
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBaseEx;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->uknightMemCheck(Landroid/os/Message;)V

    .line 623
    return-void
.end method

.method public uknightMemSet(ILandroid/os/Message;)V
    .locals 1
    .param p1, "percent"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 616
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBaseEx;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->uknightMemSet(ILandroid/os/Message;)V

    .line 617
    return-void
.end method

.method public uknightStateChangeSet(ILandroid/os/Message;)V
    .locals 1
    .param p1, "event"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 613
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBaseEx;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->uknightStateChangeSet(ILandroid/os/Message;)V

    .line 614
    return-void
.end method

.method public unregisterForImsPhoneStateChanged(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1158
    return-void
.end method

.method public unregisterForSetPreferredNetworkType(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBaseEx;->mReferredNetworkTypeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 295
    return-void
.end method

.method public unregisterLGECipheringInd(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 536
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBaseEx;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterLGECipheringInd(Landroid/os/Handler;)V

    .line 537
    return-void
.end method

.method public unregisterLGERACInd(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1000
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBaseEx;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterLGERACInd(Landroid/os/Handler;)V

    .line 1001
    return-void
.end method

.method public unregisterLGEUnsol(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 454
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBaseEx;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterLGEUnsol(Landroid/os/Handler;)V

    .line 455
    return-void
.end method
