.class public Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;
.super Ljava/lang/Object;
.source "LgeAutoProfiling.java"

# interfaces
.implements Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfilingConstants;
.implements Lcom/android/internal/telephony/lgeautoprofiling/LgeKeyProfiling;


# static fields
.field private static final DBG:Z = false

.field private static final EDBG:Z = true

.field private static final VDBG:Z = true

.field private static sCardOperator:Ljava/lang/String;

.field private static sIsCardOperatorCached:Z

.field private static sIsDebugMode:Z

.field private static sIsEnabled:Z

.field private static sLogDialstring:I

.field private static sLogFeatureLoaded:Z

.field private static sLogIdentity:I

.field private static sLogUssd:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 41
    sput v1, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->sLogUssd:I

    .line 42
    sput v1, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->sLogDialstring:I

    .line 43
    sput v1, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->sLogIdentity:I

    .line 44
    sput-boolean v1, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->sLogFeatureLoaded:Z

    .line 45
    const-string v0, "1"

    const-string v2, "ro.debuggable"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->sIsDebugMode:Z

    .line 46
    const-string v0, "persist.service.plog.enable"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "persist.service.privacy.enable"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->sIsDebugMode:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->sIsEnabled:Z

    .line 430
    const-string v0, ""

    sput-object v0, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->sCardOperator:Ljava/lang/String;

    .line 431
    sput-boolean v1, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->sIsCardOperatorCached:Z

    return-void

    :cond_1
    move v0, v1

    .line 46
    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method public static checkEccIdleMode(Ljava/lang/String;I)Z
    .locals 9
    .param p0, "dialNumber"    # Ljava/lang/String;
    .param p1, "phoneId"    # I

    .prologue
    const/4 v6, 0x0

    .line 201
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 217
    :cond_0
    :goto_0
    return v6

    .line 203
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;->getDefaultPhoneId()I

    move-result v1

    .line 204
    .local v1, "defaultPhoneId":I
    const/4 v7, 0x0

    const-string v8, "ECC_IdleMode"

    invoke-static {v7, v8, p1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->getProfileInfo(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 206
    .local v2, "eccIdleModeList":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 208
    const-string v7, ","

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_0

    aget-object v5, v0, v3

    .line 209
    .local v5, "token":Ljava/lang/String;
    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 211
    const-string v6, "TelephonyAutoProfiling"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[checkEccIdleMode] Ecc_IdleMode : true - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x10

    invoke-static {p0, v8}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->privateLogHandler(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    const/4 v6, 0x1

    goto :goto_0

    .line 208
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public static checkShortCodeCall(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 242
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 260
    :cond_0
    :goto_0
    return v6

    .line 246
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;->getDefaultPhoneId()I

    move-result v1

    .line 248
    .local v1, "defaultPhoneId":I
    const-string v7, "ShortCodeCall"

    invoke-static {p0, v7, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->getProfileInfo(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 250
    .local v4, "shortCode":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 251
    const-string v7, ","

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v5, v0, v2

    .line 252
    .local v5, "token":Ljava/lang/String;
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 255
    const/4 v6, 0x1

    goto :goto_0

    .line 251
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static getAutoProfileEcclistPropName(I)Ljava/lang/String;
    .locals 2
    .param p0, "phoneId"    # I

    .prologue
    .line 462
    if-gtz p0, :cond_0

    const-string v0, "ril.ecclist.autoprofile"

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ril.ecclist.autoprofile"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getClirSettingValue(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 119
    invoke-static {}, Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;->getDefaultPhoneId()I

    move-result v1

    .line 120
    .local v1, "defaultPhoneId":I
    invoke-static {p0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->getClirSettingValue(Landroid/content/Context;I)I

    move-result v0

    .line 122
    .local v0, "clirSettingValue":I
    return v0
.end method

.method public static getClirSettingValue(Landroid/content/Context;I)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I

    .prologue
    .line 126
    const-string v4, "SendMyNumberInformation"

    invoke-static {p0, v4, p1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->getProfileInfo(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 127
    .local v1, "clirSetting":Ljava/lang/String;
    invoke-static {p1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;->getSimChangedInfo(I)Ljava/lang/String;

    move-result-object v3

    .line 128
    .local v3, "simChangedInfo":Ljava/lang/String;
    const-string v4, "gsm.call.clir.init"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "clirInit":Ljava/lang/String;
    const/4 v2, -0x1

    .line 131
    .local v2, "clirSettingValue":I
    const-string v4, "0"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 132
    const-string v4, "gsm.call.clir.init"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    :cond_0
    const-string v4, "0"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    add-int/lit8 v4, p1, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 136
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 138
    const-string v4, "gsm.call.clir.init"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, p1, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v4, "TelephonyAutoProfiling"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[getClirSettingValue] This is First time after SIM change :: gsm.call.clir.init = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_1
    return v2
.end method

.method public static getECCList(Landroid/content/Context;)[Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 326
    invoke-static {}, Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;->getDefaultPhoneId()I

    move-result v2

    .line 327
    .local v2, "defaultPhoneId":I
    const-string v6, "ECC_list"

    invoke-static {p0, v6, v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->getProfileInfo(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 329
    .local v0, "NumberString":Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 331
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/StringTokenizer;

    const-string v6, ","

    invoke-direct {v5, v0, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    .local v5, "st":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 334
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 336
    :cond_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    new-array v1, v6, [Ljava/lang/String;

    .line 338
    .local v1, "StrArray":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_1

    .line 339
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v1, v3

    .line 338
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 342
    :cond_1
    return-object v1
.end method

.method public static getEccListMerged(Ljava/lang/String;I)Ljava/lang/String;
    .locals 11
    .param p0, "eccList"    # Ljava/lang/String;
    .param p1, "phoneId"    # I

    .prologue
    .line 221
    invoke-static {p1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->getAutoProfileEcclistPropName(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 222
    .local v3, "eccListAutoProfile":Ljava/lang/String;
    const-string v8, ""

    .line 224
    .local v8, "tempEcclist":Ljava/lang/String;
    const-string v10, ","

    invoke-virtual {v3, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    move v5, v4

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v6    # "len$":I
    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_3

    aget-object v9, v0, v5

    .line 225
    .local v9, "token":Ljava/lang/String;
    const-string v10, ","

    invoke-virtual {p0, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .local v1, "arr$":[Ljava/lang/String;
    array-length v7, v1

    .local v7, "len$":I
    const/4 v4, 0x0

    .end local v5    # "i$":I
    .restart local v4    # "i$":I
    :goto_1
    if-ge v4, v7, :cond_2

    aget-object v2, v1, v4

    .line 226
    .local v2, "ecc":Ljava/lang/String;
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 227
    const-string v10, ","

    invoke-virtual {p0, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 228
    const-string v10, ","

    invoke-virtual {v8, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 230
    :cond_0
    invoke-virtual {v8, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 225
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 224
    .end local v2    # "ecc":Ljava/lang/String;
    :cond_2
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    .end local v4    # "i$":I
    .restart local v5    # "i$":I
    goto :goto_0

    .line 234
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v7    # "len$":I
    .end local v9    # "token":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 238
    return-object p0
.end method

.method public static getFeatureInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 89
    invoke-static {p0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeFeature;->getInstance(Landroid/content/Context;)Lcom/android/internal/telephony/lgeautoprofiling/LgeFeature;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeFeature;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getHomeNetworks(Landroid/content/Context;)[Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 181
    invoke-static {}, Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;->getDefaultPhoneId()I

    move-result v0

    .line 182
    .local v0, "defaultPhoneId":I
    const-string v3, "HOME_NETWORK"

    invoke-static {v2, v3, v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->getProfileInfo(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 183
    .local v1, "homeNetworks":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 184
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 186
    :cond_0
    return-object v2
.end method

.method public static getHomeNetworks(Landroid/content/Context;I)[Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I

    .prologue
    const/4 v1, 0x0

    .line 150
    const-string v2, "HOME_NETWORK"

    invoke-static {v1, v2, p1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->getProfileInfo(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, "homeNetworks":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 153
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 156
    :cond_0
    return-object v1
.end method

.method public static getNotRoamingCountry(Landroid/content/Context;I)[Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I

    .prologue
    const/4 v1, 0x0

    .line 171
    const-string v2, "not_roaming_country"

    invoke-static {v1, v2, p1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->getProfileInfo(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "notRoamingCountry":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 174
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 176
    :cond_0
    return-object v1
.end method

.method public static getProfileInfo(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "phoneId"    # I

    .prologue
    .line 84
    invoke-static {p0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->getInstance(Landroid/content/Context;)Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->getValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRVMS(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 285
    invoke-static {}, Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;->getDefaultPhoneId()I

    move-result v0

    .line 287
    .local v0, "defaultPhoneId":I
    invoke-static {p0, v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->getRVMS(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getRVMS(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I

    .prologue
    .line 291
    const-string v0, "RVMS"

    invoke-static {p0, v0, p1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->getProfileInfo(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRoamingNetworks(Landroid/content/Context;I)[Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I

    .prologue
    const/4 v1, 0x0

    .line 162
    const-string v2, "roaming_network"

    invoke-static {v1, v2, p1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->getProfileInfo(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, "roamingNetworks":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 165
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 167
    :cond_0
    return-object v1
.end method

.method public static getVMS(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 275
    invoke-static {}, Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;->getDefaultPhoneId()I

    move-result v0

    .line 277
    .local v0, "defaultPhoneId":I
    invoke-static {p0, v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->getVMS(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getVMS(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I

    .prologue
    .line 281
    const-string v0, "VMS"

    invoke-static {p0, v0, p1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->getProfileInfo(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneType"    # I

    .prologue
    .line 56
    const-string v1, "TelephonyAutoProfiling"

    const-string v2, "[init] ******** Telephony Auto Profiling *******"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    if-nez p0, :cond_1

    .line 59
    const-string v1, "TelephonyAutoProfiling"

    const-string v2, "[init] context is null, return"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    invoke-static {p0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeFeature;->getInstance(Landroid/content/Context;)Lcom/android/internal/telephony/lgeautoprofiling/LgeFeature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeFeature;->loadFeature()V

    .line 66
    invoke-static {}, Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;->getDefaultPhoneId()I

    move-result v0

    .line 68
    .local v0, "defaultPhoneId":I
    invoke-static {p0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->getInstance(Landroid/content/Context;)Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->loadProfile(I)V

    .line 70
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const-string v1, "KR"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isCountry(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 71
    const-string v1, "ril.ecclist.autoprofile"

    const-string v2, "ECC_list"

    invoke-static {p0, v2, v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->getProfileInfo(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isCountry(Ljava/lang/String;)Z
    .locals 1
    .param p0, "country"    # Ljava/lang/String;

    .prologue
    .line 304
    sget-object v0, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->COUNTRY:Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isLogBlocked(I)Z
    .locals 3
    .param p0, "level"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 385
    sget-boolean v2, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->sLogFeatureLoaded:Z

    if-nez v2, :cond_0

    .line 386
    invoke-static {}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->privateLogFeatureLoad()V

    .line 387
    sput-boolean v1, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->sLogFeatureLoaded:Z

    .line 390
    :cond_0
    sget-boolean v2, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->sIsEnabled:Z

    if-eqz v2, :cond_2

    .line 410
    :cond_1
    :goto_0
    return v0

    .line 393
    :cond_2
    sparse-switch p0, :sswitch_data_0

    goto :goto_0

    .line 395
    :sswitch_0
    sget v2, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->sLogUssd:I

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_0

    .line 399
    :sswitch_1
    sget v2, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->sLogDialstring:I

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_0

    .line 403
    :sswitch_2
    sget v2, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->sLogIdentity:I

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_0

    .line 393
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x10 -> :sswitch_1
        0x100 -> :sswitch_2
    .end sparse-switch
.end method

.method public static isOperator(Ljava/lang/String;)Z
    .locals 2
    .param p0, "operator"    # Ljava/lang/String;

    .prologue
    .line 309
    const-string v0, "CTC"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "CTC"

    sget-object v1, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->OPERATOR:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CTO"

    sget-object v1, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->OPERATOR:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 310
    :cond_0
    sget-object p0, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->OPERATOR:Ljava/lang/String;

    .line 313
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->OPERATOR:Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "Country"    # Ljava/lang/String;
    .param p1, "Operator"    # Ljava/lang/String;

    .prologue
    .line 296
    const-string v0, "CTC"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "CTC"

    sget-object v1, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->OPERATOR:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CTO"

    sget-object v1, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->OPERATOR:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 297
    :cond_0
    sget-object p1, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->OPERATOR:Ljava/lang/String;

    .line 300
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->COUNTRY:Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->OPERATOR:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSimOperator(Ljava/lang/String;)Z
    .locals 3
    .param p0, "operator"    # Ljava/lang/String;

    .prologue
    .line 434
    sget-boolean v1, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->sIsCardOperatorCached:Z

    if-nez v1, :cond_1

    .line 435
    const-string v1, "ril.card_operator"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 436
    .local v0, "cardOperator":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 437
    invoke-static {p0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v1

    .line 443
    .end local v0    # "cardOperator":Ljava/lang/String;
    :goto_0
    return v1

    .line 439
    .restart local v0    # "cardOperator":Ljava/lang/String;
    :cond_0
    sput-object v0, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->sCardOperator:Ljava/lang/String;

    .line 440
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->sIsCardOperatorCached:Z

    .line 443
    .end local v0    # "cardOperator":Ljava/lang/String;
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->sCardOperator:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public static isSimOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "country"    # Ljava/lang/String;
    .param p1, "operator"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 447
    sget-boolean v2, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->sIsCardOperatorCached:Z

    if-nez v2, :cond_2

    .line 448
    const-string v2, "ril.card_operator"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 449
    .local v0, "cardOperator":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 450
    invoke-static {p0, p1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 456
    .end local v0    # "cardOperator":Ljava/lang/String;
    :cond_0
    :goto_0
    return v1

    .line 452
    .restart local v0    # "cardOperator":Ljava/lang/String;
    :cond_1
    sput-object v0, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->sCardOperator:Ljava/lang/String;

    .line 453
    sput-boolean v1, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->sIsCardOperatorCached:Z

    .line 456
    .end local v0    # "cardOperator":Ljava/lang/String;
    :cond_2
    sget-object v2, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->COUNTRY:Ljava/lang/String;

    invoke-static {p0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->sCardOperator:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 191
    const/4 v0, 0x0

    .line 194
    .local v0, "result":Z
    invoke-static {p0, p1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->getFeatureInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 197
    return v0
.end method

.method private static privateLogFeatureLoad()V
    .locals 5

    .prologue
    .line 351
    const/4 v2, 0x0

    const-string v3, "block_private_log_level"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->getFeatureInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 355
    .local v0, "feature":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 356
    const-string v2, "TelephonyAutoProfiling"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sIsEnabled : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->sIsEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    const/4 v1, 0x0

    .line 359
    .local v1, "loglevel":I
    sget-boolean v2, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->sIsEnabled:Z

    if-nez v2, :cond_0

    .line 361
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 366
    :goto_0
    and-int/lit8 v2, v1, 0x1

    sput v2, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->sLogUssd:I

    .line 367
    and-int/lit8 v2, v1, 0x10

    sput v2, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->sLogDialstring:I

    .line 368
    and-int/lit16 v2, v1, 0x100

    sput v2, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->sLogIdentity:I

    .line 376
    .end local v1    # "loglevel":I
    :cond_0
    return-void

    .line 362
    .restart local v1    # "loglevel":I
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static privateLogHandler(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "level"    # I

    .prologue
    .line 416
    sget-boolean v0, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->sIsEnabled:Z

    if-eqz v0, :cond_1

    .line 424
    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 421
    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    invoke-static {p1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isLogBlocked(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    const-string p0, ""

    goto :goto_0
.end method

.method public static supportSRVCC(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 265
    const/4 v0, 0x0

    .line 268
    .local v0, "result":Z
    invoke-static {p0, p1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->getFeatureInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "ro.lge.supportvolte"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 271
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 268
    goto :goto_0
.end method

.method public static syncClearCodes(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 94
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 95
    const-string v1, "ss"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "simState":Ljava/lang/String;
    const-string v1, "LOADED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    invoke-static {}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->updateClearCodes()V

    .line 103
    .end local v0    # "simState":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    const-string v1, "android.intent.action.ACTION_DEFAULT_SUBSCRIPTION_CHANGED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    invoke-static {}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->updateClearCodes()V

    goto :goto_0
.end method

.method private static updateClearCodes()V
    .locals 4

    .prologue
    .line 106
    invoke-static {}, Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;->getDefaultPhoneId()I

    move-result v1

    .line 107
    .local v1, "defaultPhoneId":I
    const/4 v2, 0x0

    const-string v3, "custom_clear_codes"

    invoke-static {v2, v3, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->getProfileInfo(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "clearCodes":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 109
    const-string v2, "gsm.call.clear_codes"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :goto_0
    return-void

    .line 112
    :cond_0
    const-string v2, "gsm.call.clear_codes"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static updateProfile(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 76
    invoke-static {p0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->getInstance(Landroid/content/Context;)Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->updateProfile(Landroid/content/Intent;)V

    .line 79
    invoke-static {p0, p1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->syncClearCodes(Landroid/content/Context;Landroid/content/Intent;)V

    .line 81
    return-void
.end method


# virtual methods
.method public getTargetCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 321
    sget-object v0, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->COUNTRY:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetOperator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 317
    sget-object v0, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->OPERATOR:Ljava/lang/String;

    return-object v0
.end method
