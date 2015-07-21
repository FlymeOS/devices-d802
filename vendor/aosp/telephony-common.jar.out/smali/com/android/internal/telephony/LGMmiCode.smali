.class public Lcom/android/internal/telephony/LGMmiCode;
.super Ljava/lang/Object;
.source "LGMmiCode.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "LGMmiCode"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isSupportedOverUtInterface(I)Z
    .locals 3
    .param p0, "serviceCode"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 47
    const-string v1, "ut_interface"

    invoke-static {v2, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    if-ne p0, v0, :cond_0

    const-string v1, "cf_over_ut"

    invoke-static {v2, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    const/4 v1, 0x2

    if-ne p0, v1, :cond_1

    const-string v1, "cw_over_ut"

    invoke-static {v2, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const/4 v1, 0x3

    if-ne p0, v1, :cond_3

    const-string v1, "cb_over_ut"

    invoke-static {v2, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 54
    :cond_2
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportedOverUtInterface(Lcom/android/internal/telephony/MmiCode;)Z
    .locals 1
    .param p0, "mmi"    # Lcom/android/internal/telephony/MmiCode;

    .prologue
    .line 35
    instance-of v0, p0, Lcom/android/internal/telephony/ILGMmiCode;

    if-eqz v0, :cond_0

    .line 36
    check-cast p0, Lcom/android/internal/telephony/ILGMmiCode;

    .end local p0    # "mmi":Lcom/android/internal/telephony/MmiCode;
    invoke-static {p0}, Lcom/android/internal/telephony/LGMmiCode;->isSupportedOverUtInterfaceInternal(Lcom/android/internal/telephony/ILGMmiCode;)Z

    move-result v0

    .line 38
    :goto_0
    return v0

    .restart local p0    # "mmi":Lcom/android/internal/telephony/MmiCode;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSupportedOverUtInterfaceInternal(Lcom/android/internal/telephony/ILGMmiCode;)Z
    .locals 2
    .param p0, "mmi"    # Lcom/android/internal/telephony/ILGMmiCode;

    .prologue
    .line 42
    invoke-interface {p0}, Lcom/android/internal/telephony/ILGMmiCode;->getLgeService()I

    move-result v0

    .line 43
    .local v0, "serviceCode":I
    invoke-static {v0}, Lcom/android/internal/telephony/LGMmiCode;->isSupportedOverUtInterface(I)Z

    move-result v1

    return v1
.end method

.method public static shouldRouteToImsPhoneWhenAvailable(Lcom/android/internal/telephony/ILGPhone;I)Z
    .locals 3
    .param p0, "imsPhone"    # Lcom/android/internal/telephony/ILGPhone;
    .param p1, "serviceCode"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 15
    if-nez p0, :cond_1

    .line 26
    :cond_0
    :goto_0
    return v0

    .line 19
    :cond_1
    const-string v1, "ut_interface"

    invoke-static {v2, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    const-string v1, "cf_over_ut"

    invoke-static {v2, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_2
    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    const-string v1, "cw_over_ut"

    invoke-static {v2, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    const-string v1, "cb_over_ut"

    invoke-static {v2, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 23
    :cond_4
    invoke-interface {p0}, Lcom/android/internal/telephony/ILGPhone;->isUtAvailable()Z

    move-result v0

    goto :goto_0
.end method
