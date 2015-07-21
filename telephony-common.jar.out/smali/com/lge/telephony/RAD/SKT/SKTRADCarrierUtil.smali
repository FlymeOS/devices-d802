.class public Lcom/lge/telephony/RAD/SKT/SKTRADCarrierUtil;
.super Ljava/lang/Object;
.source "SKTRADCarrierUtil.java"

# interfaces
.implements Lcom/lge/telephony/RAD/RADCarrierUtil;


# static fields
.field private static final DEBUGGABLE:Z

.field private static final LOG_TAG:Ljava/lang/String; = "SKTRADCarrierUtil"

.field private static mDefaultRADCarrerUtil:Lcom/lge/telephony/RAD/SKT/SKTRADCarrierUtil;


# instance fields
.field private final roamingPrefixs:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 33
    const-string v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/lge/telephony/RAD/SKT/SKTRADCarrierUtil;->DEBUGGABLE:Z

    .line 45
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/telephony/RAD/SKT/SKTRADCarrierUtil;->mDefaultRADCarrerUtil:Lcom/lge/telephony/RAD/SKT/SKTRADCarrierUtil;

    return-void

    :cond_0
    move v0, v1

    .line 33
    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
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

    iput-object v0, p0, Lcom/lge/telephony/RAD/SKT/SKTRADCarrierUtil;->roamingPrefixs:[Ljava/lang/String;

    .line 60
    return-void
.end method

.method public static getDefaultRADCarrierUtil()Lcom/lge/telephony/RAD/RADCarrierUtil;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/lge/telephony/RAD/SKT/SKTRADCarrierUtil;->mDefaultRADCarrerUtil:Lcom/lge/telephony/RAD/SKT/SKTRADCarrierUtil;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lcom/lge/telephony/RAD/SKT/SKTRADCarrierUtil;

    invoke-direct {v0}, Lcom/lge/telephony/RAD/SKT/SKTRADCarrierUtil;-><init>()V

    sput-object v0, Lcom/lge/telephony/RAD/SKT/SKTRADCarrierUtil;->mDefaultRADCarrerUtil:Lcom/lge/telephony/RAD/SKT/SKTRADCarrierUtil;

    .line 55
    :cond_0
    sget-object v0, Lcom/lge/telephony/RAD/SKT/SKTRADCarrierUtil;->mDefaultRADCarrerUtil:Lcom/lge/telephony/RAD/SKT/SKTRADCarrierUtil;

    return-object v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 41
    const-string v0, "SKTRADCarrierUtil"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
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
    sget-boolean v2, Lcom/lge/telephony/RAD/SKT/SKTRADCarrierUtil;->DEBUGGABLE:Z

    if-eqz v2, :cond_0

    .line 67
    const-string v2, "isRoamingPreixAdded(): empty number"

    invoke-static {v2}, Lcom/lge/telephony/RAD/SKT/SKTRADCarrierUtil;->log(Ljava/lang/String;)V

    .line 78
    :cond_0
    :goto_0
    return v1

    .line 72
    :cond_1
    const/4 v0, 0x0

    .local v0, "count":I
    :goto_1
    iget-object v2, p0, Lcom/lge/telephony/RAD/SKT/SKTRADCarrierUtil;->roamingPrefixs:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 73
    iget-object v2, p0, Lcom/lge/telephony/RAD/SKT/SKTRADCarrierUtil;->roamingPrefixs:[Ljava/lang/String;

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
    .locals 5
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 82
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 83
    sget-boolean v3, Lcom/lge/telephony/RAD/SKT/SKTRADCarrierUtil;->DEBUGGABLE:Z

    if-eqz v3, :cond_0

    .line 84
    const-string v3, "removeRoamingPrefix(): empty number"

    invoke-static {v3}, Lcom/lge/telephony/RAD/SKT/SKTRADCarrierUtil;->log(Ljava/lang/String;)V

    .line 105
    .end local p1    # "number":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 89
    .restart local p1    # "number":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    .line 90
    .local v2, "roamingPrefixLength":I
    const/4 v1, 0x0

    .line 92
    .local v1, "removedNumber":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "count":I
    :goto_1
    iget-object v3, p0, Lcom/lge/telephony/RAD/SKT/SKTRADCarrierUtil;->roamingPrefixs:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 93
    iget-object v3, p0, Lcom/lge/telephony/RAD/SKT/SKTRADCarrierUtil;->roamingPrefixs:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 94
    iget-object v3, p0, Lcom/lge/telephony/RAD/SKT/SKTRADCarrierUtil;->roamingPrefixs:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    .line 99
    :cond_2
    if-lez v2, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 100
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    move-object p1, v1

    .line 105
    goto :goto_0

    .line 92
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 102
    :cond_4
    move-object v1, p1

    goto :goto_2
.end method
