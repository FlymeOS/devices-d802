.class public Lcom/lge/telephony/RAD/KT/KTRADCarrierUtil;
.super Ljava/lang/Object;
.source "KTRADCarrierUtil.java"

# interfaces
.implements Lcom/lge/telephony/RAD/RADCarrierUtil;


# static fields
.field private static final DEBUGGABLE:Z

.field private static final LOG_TAG:Ljava/lang/String; = "KTRADCarrierUtil"

.field private static mDefaultRADCarrerUtil:Lcom/lge/telephony/RAD/KT/KTRADCarrierUtil;


# instance fields
.field private final roamingPrefixs:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 30
    const-string v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/lge/telephony/RAD/KT/KTRADCarrierUtil;->DEBUGGABLE:Z

    .line 42
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/telephony/RAD/KT/KTRADCarrierUtil;->mDefaultRADCarrerUtil:Lcom/lge/telephony/RAD/KT/KTRADCarrierUtil;

    return-void

    :cond_0
    move v0, v1

    .line 30
    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "+82"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "0082"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "+082"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "082"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "82"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/lge/telephony/RAD/KT/KTRADCarrierUtil;->roamingPrefixs:[Ljava/lang/String;

    .line 59
    return-void
.end method

.method public static getDefaultRADCarrierUtil()Lcom/lge/telephony/RAD/RADCarrierUtil;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/lge/telephony/RAD/KT/KTRADCarrierUtil;->mDefaultRADCarrerUtil:Lcom/lge/telephony/RAD/KT/KTRADCarrierUtil;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/lge/telephony/RAD/KT/KTRADCarrierUtil;

    invoke-direct {v0}, Lcom/lge/telephony/RAD/KT/KTRADCarrierUtil;-><init>()V

    sput-object v0, Lcom/lge/telephony/RAD/KT/KTRADCarrierUtil;->mDefaultRADCarrerUtil:Lcom/lge/telephony/RAD/KT/KTRADCarrierUtil;

    .line 52
    :cond_0
    sget-object v0, Lcom/lge/telephony/RAD/KT/KTRADCarrierUtil;->mDefaultRADCarrerUtil:Lcom/lge/telephony/RAD/KT/KTRADCarrierUtil;

    return-object v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 39
    const-string v0, "KTRADCarrierUtil"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    return-void
.end method


# virtual methods
.method public isRoamingPrefixAdded(Ljava/lang/String;)Z
    .locals 3
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 66
    sget-boolean v2, Lcom/lge/telephony/RAD/KT/KTRADCarrierUtil;->DEBUGGABLE:Z

    if-eqz v2, :cond_0

    .line 67
    const-string v2, "isRoamingPreixAdded(): empty number"

    invoke-static {v2}, Lcom/lge/telephony/RAD/KT/KTRADCarrierUtil;->log(Ljava/lang/String;)V

    .line 78
    :cond_0
    :goto_0
    return v1

    .line 72
    :cond_1
    const/4 v0, 0x0

    .local v0, "count":I
    :goto_1
    iget-object v2, p0, Lcom/lge/telephony/RAD/KT/KTRADCarrierUtil;->roamingPrefixs:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 73
    iget-object v2, p0, Lcom/lge/telephony/RAD/KT/KTRADCarrierUtil;->roamingPrefixs:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 74
    const/4 v1, 0x1

    goto :goto_0

    .line 72
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public removeRoamingPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 82
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    sget-boolean v0, Lcom/lge/telephony/RAD/KT/KTRADCarrierUtil;->DEBUGGABLE:Z

    if-eqz v0, :cond_0

    .line 84
    const-string v0, "removeRoamingPrefix(): empty number"

    invoke-static {v0}, Lcom/lge/telephony/RAD/KT/KTRADCarrierUtil;->log(Ljava/lang/String;)V

    .line 89
    :cond_0
    return-object p1
.end method
