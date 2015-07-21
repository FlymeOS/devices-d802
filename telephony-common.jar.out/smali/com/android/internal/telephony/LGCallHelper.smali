.class public Lcom/android/internal/telephony/LGCallHelper;
.super Ljava/lang/Object;
.source "LGCallHelper.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "LGCallHelper"

.field private static mIsSupportedUsimMobilityWithVoLte:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/telephony/LGCallHelper;->mIsSupportedUsimMobilityWithVoLte:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isSupportedUsimMobilityWithVoLte()Z
    .locals 1

    .prologue
    .line 27
    const-string v0, "KR"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isCountry(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    sget-boolean v0, Lcom/android/internal/telephony/LGCallHelper;->mIsSupportedUsimMobilityWithVoLte:Z

    .line 31
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportedVoLteToCsRedial(IIZ)Z
    .locals 1
    .param p0, "reason"    # I
    .param p1, "extraCode"    # I
    .param p2, "isEmergency"    # Z

    .prologue
    .line 66
    const-string v0, "KR"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isCountry(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/LGCallHelper;->isSupportedVoLteToCsRedialKR(IIZ)Z

    move-result v0

    .line 77
    :goto_0
    return v0

    .line 73
    :cond_0
    const/16 v0, 0x92

    if-ne p0, v0, :cond_1

    .line 74
    const/4 v0, 0x1

    goto :goto_0

    .line 77
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSupportedVoLteToCsRedialKR(IIZ)Z
    .locals 2
    .param p0, "reason"    # I
    .param p1, "extraCode"    # I
    .param p2, "isEmergency"    # Z

    .prologue
    const/4 v0, 0x0

    .line 84
    sget-boolean v1, Lcom/android/internal/telephony/LGCallHelper;->mIsSupportedUsimMobilityWithVoLte:Z

    if-eqz v1, :cond_2

    .line 85
    const-string v1, "LGU"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSimOperator(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 99
    :cond_0
    :goto_0
    return v0

    .line 88
    :cond_1
    const/16 v1, 0x92

    if-ne p0, v1, :cond_0

    .line 89
    const/4 v0, 0x1

    goto :goto_0

    .line 91
    :cond_2
    const-string v1, "SKT"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 92
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/LGCallHelper;->isSupportedVoLteToCsRedialSKT(IIZ)Z

    move-result v0

    goto :goto_0

    .line 93
    :cond_3
    const-string v1, "KT"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 94
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/LGCallHelper;->isSupportedVoLteToCsRedialKT(IIZ)Z

    move-result v0

    goto :goto_0

    .line 95
    :cond_4
    const-string v1, "LGU"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/LGCallHelper;->isSupportedVoLteToCsRedialLGU(IIZ)Z

    move-result v0

    goto :goto_0
.end method

.method private static isSupportedVoLteToCsRedialKT(IIZ)Z
    .locals 1
    .param p0, "reason"    # I
    .param p1, "extraCode"    # I
    .param p2, "isEmergency"    # Z

    .prologue
    .line 122
    const/16 v0, 0x92

    if-eq p0, v0, :cond_0

    const/16 v0, 0x162

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7a

    if-ne p0, v0, :cond_1

    .line 126
    :cond_0
    const/4 v0, 0x1

    .line 129
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSupportedVoLteToCsRedialLGU(IIZ)Z
    .locals 5
    .param p0, "reason"    # I
    .param p1, "extraCode"    # I
    .param p2, "isEmergency"    # Z

    .prologue
    const/16 v4, 0x92

    const/4 v3, 0x2

    const/4 v0, 0x1

    .line 136
    const/4 v1, 0x0

    const-string v2, "lgu_lte_single_device"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 137
    if-ne p0, v4, :cond_3

    if-ne p1, v3, :cond_3

    .line 152
    :cond_0
    :goto_0
    return v0

    .line 142
    :cond_1
    if-ne p0, v4, :cond_2

    if-eq p1, v3, :cond_0

    :cond_2
    const/16 v1, 0x84

    if-eq p0, v1, :cond_0

    const/16 v1, 0x14e

    if-eq p0, v1, :cond_0

    const/16 v1, 0x83

    if-eq p0, v1, :cond_0

    const/16 v1, 0x191

    if-eq p0, v1, :cond_0

    .line 152
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSupportedVoLteToCsRedialSKT(IIZ)Z
    .locals 1
    .param p0, "reason"    # I
    .param p1, "extraCode"    # I
    .param p2, "isEmergency"    # Z

    .prologue
    .line 106
    const/16 v0, 0x92

    if-eq p0, v0, :cond_0

    const/16 v0, 0x150

    if-eq p0, v0, :cond_0

    const/16 v0, 0x154

    if-eq p0, v0, :cond_0

    const/16 v0, 0x155

    if-eq p0, v0, :cond_0

    const/16 v0, 0x14d

    if-ne p0, v0, :cond_1

    .line 112
    :cond_0
    const/4 v0, 0x1

    .line 115
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportedVoLteToVoLteRedial(I)Z
    .locals 4
    .param p0, "reason"    # I

    .prologue
    const/16 v3, 0x93

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 46
    const-string v2, "KR"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isCountry(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 47
    sget-boolean v2, Lcom/android/internal/telephony/LGCallHelper;->mIsSupportedUsimMobilityWithVoLte:Z

    if-eqz v2, :cond_1

    .line 48
    if-ne p0, v3, :cond_2

    .line 59
    :cond_0
    :goto_0
    return v0

    .line 51
    :cond_1
    const-string v2, "LGU"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 52
    if-eq p0, v3, :cond_0

    :cond_2
    move v0, v1

    .line 56
    goto :goto_0

    :cond_3
    move v0, v1

    .line 59
    goto :goto_0
.end method

.method public static setUsimMobilityWithVoLte(Z)V
    .locals 0
    .param p0, "isSupported"    # Z

    .prologue
    .line 39
    sput-boolean p0, Lcom/android/internal/telephony/LGCallHelper;->mIsSupportedUsimMobilityWithVoLte:Z

    .line 40
    return-void
.end method
