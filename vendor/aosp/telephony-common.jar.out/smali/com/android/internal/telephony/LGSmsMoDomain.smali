.class public Lcom/android/internal/telephony/LGSmsMoDomain;
.super Ljava/lang/Object;
.source "LGSmsMoDomain.java"


# static fields
.field public static final LGE_MODE_SMMA:I = 0x1

.field public static final LGE_MODE_SMS:I

.field private static sInstance:Lcom/android/internal/telephony/LGSmsMoDomain;


# instance fields
.field private final LGE_SMS_MO_CS_ONLY:I

.field private final LGE_SMS_MO_CS_PREFERRED:I

.field private final LGE_SMS_MO_PS_ONLY:I

.field private final LGE_SMS_MO_PS_PREFERRED:I

.field private final mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private final mContext:Landroid/content/Context;

.field private mPhone:Lcom/android/internal/telephony/PhoneBase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/LGSmsMoDomain;->sInstance:Lcom/android/internal/telephony/LGSmsMoDomain;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/LGSmsMoDomain;->LGE_SMS_MO_PS_ONLY:I

    .line 17
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/LGSmsMoDomain;->LGE_SMS_MO_CS_ONLY:I

    .line 18
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/telephony/LGSmsMoDomain;->LGE_SMS_MO_PS_PREFERRED:I

    .line 19
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/telephony/LGSmsMoDomain;->LGE_SMS_MO_CS_PREFERRED:I

    .line 31
    iput-object p1, p0, Lcom/android/internal/telephony/LGSmsMoDomain;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 32
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/LGSmsMoDomain;->mContext:Landroid/content/Context;

    .line 33
    iget-object v0, p1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v0, p0, Lcom/android/internal/telephony/LGSmsMoDomain;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 34
    return-void
.end method

.method public static declared-synchronized getDefault(Lcom/android/internal/telephony/PhoneBase;)Lcom/android/internal/telephony/LGSmsMoDomain;
    .locals 2
    .param p0, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 37
    const-class v1, Lcom/android/internal/telephony/LGSmsMoDomain;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/LGSmsMoDomain;->sInstance:Lcom/android/internal/telephony/LGSmsMoDomain;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/android/internal/telephony/LGSmsMoDomain;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/LGSmsMoDomain;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    sput-object v0, Lcom/android/internal/telephony/LGSmsMoDomain;->sInstance:Lcom/android/internal/telephony/LGSmsMoDomain;

    .line 40
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/LGSmsMoDomain;->sInstance:Lcom/android/internal/telephony/LGSmsMoDomain;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 37
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getValueOfSmsMoDomain(ZI)I
    .locals 4
    .param p1, "isRoaming"    # Z
    .param p2, "defaultDomain"    # I

    .prologue
    const/4 v3, 0x1

    .line 125
    move v1, p2

    .line 126
    .local v1, "nSMSMoDomain":I
    const-string v0, "smsmo_domain_mode"

    .line 127
    .local v0, "domainMode":Ljava/lang/String;
    if-ne p1, v3, :cond_0

    .line 128
    const-string v0, "smsmo_domain_roaming"

    .line 131
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/LGSmsMoDomain;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v0, p2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 134
    if-ne p1, v3, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    .line 135
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[4-1] KT Roaming :  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I

    .line 136
    const/4 v1, 0x3

    .line 141
    :cond_1
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[4-2] SMS Mo Domain :    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I

    .line 142
    return v1

    .line 137
    :cond_2
    if-ltz v1, :cond_3

    const/4 v2, 0x3

    if-le v1, v2, :cond_1

    .line 138
    :cond_3
    move v1, p2

    goto :goto_0
.end method

.method private isRoaming()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 96
    const/4 v1, 0x0

    .line 97
    .local v1, "isUsimRoaming":Z
    const/4 v0, 0x0

    .line 99
    .local v0, "isNetworkRoaming":Z
    const-string v4, "persist.radio.camped_mccmnc"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 101
    .local v2, "usimMccMnc":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "usimMccMnc ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I

    .line 103
    if-eqz v2, :cond_0

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 104
    :cond_0
    const/4 v1, 0x1

    .line 112
    :cond_1
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    .line 115
    if-nez v0, :cond_2

    if-eqz v1, :cond_3

    .line 116
    :cond_2
    const/4 v3, 0x1

    .line 119
    :cond_3
    return v3

    .line 105
    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 106
    const-string v4, "KR"

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isCountry(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "450"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 107
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private lgeKRSetSMSMoDomain(IZ)I
    .locals 5
    .param p1, "nMode"    # I
    .param p2, "IsRoaming"    # Z

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    .line 61
    const/4 v0, 0x3

    .line 63
    .local v0, "nSMSMoDomain":I
    iget-object v1, p0, Lcom/android/internal/telephony/LGSmsMoDomain;->mContext:Landroid/content/Context;

    const-string v2, "setSMSMoDomain_Intel"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v3, :cond_1

    .line 64
    if-eqz p2, :cond_3

    .line 66
    const-string v1, "KR"

    const-string v2, "LGU"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 67
    const/4 v0, 0x1

    .line 72
    :goto_0
    const-string v1, "KR"

    const-string v2, "KT"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    invoke-direct {p0, p2, v4}, Lcom/android/internal/telephony/LGSmsMoDomain;->getValueOfSmsMoDomain(ZI)I

    move-result v0

    .line 75
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[3] lgeKRSetSMSMoDomain Roaming > Is Roaming domain:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I

    .line 91
    :cond_1
    :goto_1
    return v0

    .line 69
    :cond_2
    const/4 v0, 0x3

    goto :goto_0

    .line 79
    :cond_3
    const-string v1, "KR"

    const-string v2, "KT"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 80
    const/4 v1, 0x2

    invoke-direct {p0, p2, v1}, Lcom/android/internal/telephony/LGSmsMoDomain;->getValueOfSmsMoDomain(ZI)I

    move-result v0

    .line 86
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[5] lgeKRSetSMSMoDomain Roaming > Is Domestic domain:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I

    goto :goto_1

    .line 81
    :cond_4
    const-string v1, "KR"

    const-string v2, "SKT"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 82
    invoke-direct {p0, p2, v4}, Lcom/android/internal/telephony/LGSmsMoDomain;->getValueOfSmsMoDomain(ZI)I

    move-result v0

    goto :goto_2

    .line 84
    :cond_5
    invoke-direct {p0, p2, v3}, Lcom/android/internal/telephony/LGSmsMoDomain;->getValueOfSmsMoDomain(ZI)I

    move-result v0

    goto :goto_2
.end method


# virtual methods
.method public lgeSetSMSMoDomain(I)V
    .locals 5
    .param p1, "nMode"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 44
    const/4 v0, 0x3

    .line 46
    .local v0, "nSMSMoDomain":I
    iget-object v1, p0, Lcom/android/internal/telephony/LGSmsMoDomain;->mContext:Landroid/content/Context;

    const-string v2, "setSMSMoDomain_Intel"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v3, :cond_0

    .line 47
    invoke-direct {p0}, Lcom/android/internal/telephony/LGSmsMoDomain;->isRoaming()Z

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/LGSmsMoDomain;->lgeKRSetSMSMoDomain(IZ)I

    move-result v0

    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[0] Start lgeSetSMSMoDomain > domain:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I

    .line 51
    :cond_0
    if-ne p1, v3, :cond_1

    .line 52
    iget-object v1, p0, Lcom/android/internal/telephony/LGSmsMoDomain;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, v0, v4}, Lcom/android/internal/telephony/CommandsInterface;->lgeSetMoSMMAService(ILandroid/os/Message;)V

    .line 56
    :goto_0
    const-string v1, "[7] End Of lgeSetSMSMoDomain"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I

    .line 57
    return-void

    .line 54
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/LGSmsMoDomain;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, v0, v4}, Lcom/android/internal/telephony/CommandsInterface;->lgeSetMoMessageService(ILandroid/os/Message;)V

    goto :goto_0
.end method
