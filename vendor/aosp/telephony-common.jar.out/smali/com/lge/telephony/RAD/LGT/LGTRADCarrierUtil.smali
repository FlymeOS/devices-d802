.class public Lcom/lge/telephony/RAD/LGT/LGTRADCarrierUtil;
.super Ljava/lang/Object;
.source "LGTRADCarrierUtil.java"

# interfaces
.implements Lcom/lge/telephony/RAD/RADCarrierUtil;


# static fields
.field private static final DEBUGGABLE:Z

.field private static final LOG_TAG:Ljava/lang/String; = "LGTRADCarrierUtil"

.field private static mDefaultRADCarrerUtil:Lcom/lge/telephony/RAD/LGT/LGTRADCarrierUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 31
    const-string v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/lge/telephony/RAD/LGT/LGTRADCarrierUtil;->DEBUGGABLE:Z

    .line 43
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/telephony/RAD/LGT/LGTRADCarrierUtil;->mDefaultRADCarrerUtil:Lcom/lge/telephony/RAD/LGT/LGTRADCarrierUtil;

    return-void

    :cond_0
    move v0, v1

    .line 31
    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method

.method public static getDefaultRADCarrierUtil()Lcom/lge/telephony/RAD/RADCarrierUtil;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/lge/telephony/RAD/LGT/LGTRADCarrierUtil;->mDefaultRADCarrerUtil:Lcom/lge/telephony/RAD/LGT/LGTRADCarrierUtil;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/lge/telephony/RAD/LGT/LGTRADCarrierUtil;

    invoke-direct {v0}, Lcom/lge/telephony/RAD/LGT/LGTRADCarrierUtil;-><init>()V

    sput-object v0, Lcom/lge/telephony/RAD/LGT/LGTRADCarrierUtil;->mDefaultRADCarrerUtil:Lcom/lge/telephony/RAD/LGT/LGTRADCarrierUtil;

    .line 53
    :cond_0
    sget-object v0, Lcom/lge/telephony/RAD/LGT/LGTRADCarrierUtil;->mDefaultRADCarrerUtil:Lcom/lge/telephony/RAD/LGT/LGTRADCarrierUtil;

    return-object v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 39
    const-string v0, "LGTRADCarrierUtil"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    return-void
.end method


# virtual methods
.method public isRoamingPrefixAdded(Ljava/lang/String;)Z
    .locals 2
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    sget-boolean v0, Lcom/lge/telephony/RAD/LGT/LGTRADCarrierUtil;->DEBUGGABLE:Z

    if-eqz v0, :cond_0

    .line 65
    const-string v0, "isRoamingPreixAdded(): empty number"

    invoke-static {v0}, Lcom/lge/telephony/RAD/LGT/LGTRADCarrierUtil;->log(Ljava/lang/String;)V

    .line 70
    :cond_0
    return v1
.end method

.method public removeRoamingPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 74
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    sget-boolean v0, Lcom/lge/telephony/RAD/LGT/LGTRADCarrierUtil;->DEBUGGABLE:Z

    if-eqz v0, :cond_0

    .line 76
    const-string v0, "removeRoamingPrefix(): empty number"

    invoke-static {v0}, Lcom/lge/telephony/RAD/LGT/LGTRADCarrierUtil;->log(Ljava/lang/String;)V

    .line 81
    :cond_0
    return-object p1
.end method
