.class public Lcom/lge/telephony/RAD/RADCarrierUtilFactory;
.super Ljava/lang/Object;
.source "RADCarrierUtilFactory.java"


# static fields
.field private static final TARGET_COUNTRY:Ljava/lang/String;

.field private static final TARGET_OPERATOR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    const-string v0, "ro.build.target_country"

    const-string v1, "none"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/telephony/RAD/RADCarrierUtilFactory;->TARGET_COUNTRY:Ljava/lang/String;

    .line 27
    const-string v0, "ro.build.target_operator"

    const-string v1, "none"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/telephony/RAD/RADCarrierUtilFactory;->TARGET_OPERATOR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultRADCarrierUtil()Lcom/lge/telephony/RAD/RADCarrierUtil;
    .locals 4

    .prologue
    .line 35
    const/4 v0, 0x0

    .line 37
    .local v0, "rcu":Lcom/lge/telephony/RAD/RADCarrierUtil;
    sget-object v2, Lcom/lge/telephony/RAD/RADCarrierUtilFactory;->TARGET_COUNTRY:Ljava/lang/String;

    const-string v3, "KR"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 39
    sget-object v2, Lcom/lge/telephony/RAD/RADCarrierUtilFactory;->TARGET_OPERATOR:Ljava/lang/String;

    const-string v3, "LGU"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 41
    invoke-static {}, Lcom/lge/telephony/RAD/RADCarrierUtilFactory;->getLGTRADCarrierUtil()Lcom/lge/telephony/RAD/RADCarrierUtil;

    move-result-object v0

    move-object v1, v0

    .line 55
    .end local v0    # "rcu":Lcom/lge/telephony/RAD/RADCarrierUtil;
    .local v1, "rcu":Lcom/lge/telephony/RAD/RADCarrierUtil;
    :goto_0
    if-eqz v1, :cond_2

    .line 56
    new-instance v0, Lcom/lge/telephony/RAD/RADCarrierUtilProxy;

    invoke-direct {v0, v1}, Lcom/lge/telephony/RAD/RADCarrierUtilProxy;-><init>(Lcom/lge/telephony/RAD/RADCarrierUtil;)V

    .line 58
    .end local v1    # "rcu":Lcom/lge/telephony/RAD/RADCarrierUtil;
    .restart local v0    # "rcu":Lcom/lge/telephony/RAD/RADCarrierUtil;
    :goto_1
    return-object v0

    .line 43
    :cond_0
    sget-object v2, Lcom/lge/telephony/RAD/RADCarrierUtilFactory;->TARGET_OPERATOR:Ljava/lang/String;

    const-string v3, "KT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 45
    invoke-static {}, Lcom/lge/telephony/RAD/RADCarrierUtilFactory;->getKTRADCarrierUtil()Lcom/lge/telephony/RAD/RADCarrierUtil;

    move-result-object v0

    move-object v1, v0

    .end local v0    # "rcu":Lcom/lge/telephony/RAD/RADCarrierUtil;
    .restart local v1    # "rcu":Lcom/lge/telephony/RAD/RADCarrierUtil;
    goto :goto_0

    .line 48
    .end local v1    # "rcu":Lcom/lge/telephony/RAD/RADCarrierUtil;
    .restart local v0    # "rcu":Lcom/lge/telephony/RAD/RADCarrierUtil;
    :cond_1
    sget-object v2, Lcom/lge/telephony/RAD/RADCarrierUtilFactory;->TARGET_OPERATOR:Ljava/lang/String;

    const-string v3, "SKT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 50
    invoke-static {}, Lcom/lge/telephony/RAD/RADCarrierUtilFactory;->getSKTRADCarrierUtil()Lcom/lge/telephony/RAD/RADCarrierUtil;

    move-result-object v0

    move-object v1, v0

    .end local v0    # "rcu":Lcom/lge/telephony/RAD/RADCarrierUtil;
    .restart local v1    # "rcu":Lcom/lge/telephony/RAD/RADCarrierUtil;
    goto :goto_0

    :cond_2
    move-object v0, v1

    .end local v1    # "rcu":Lcom/lge/telephony/RAD/RADCarrierUtil;
    .restart local v0    # "rcu":Lcom/lge/telephony/RAD/RADCarrierUtil;
    goto :goto_1

    :cond_3
    move-object v1, v0

    .end local v0    # "rcu":Lcom/lge/telephony/RAD/RADCarrierUtil;
    .restart local v1    # "rcu":Lcom/lge/telephony/RAD/RADCarrierUtil;
    goto :goto_0
.end method

.method private static getKTRADCarrierUtil()Lcom/lge/telephony/RAD/RADCarrierUtil;
    .locals 1

    .prologue
    .line 67
    invoke-static {}, Lcom/lge/telephony/RAD/KT/KTRADCarrierUtil;->getDefaultRADCarrierUtil()Lcom/lge/telephony/RAD/RADCarrierUtil;

    move-result-object v0

    return-object v0
.end method

.method private static getLGTRADCarrierUtil()Lcom/lge/telephony/RAD/RADCarrierUtil;
    .locals 1

    .prologue
    .line 71
    invoke-static {}, Lcom/lge/telephony/RAD/LGT/LGTRADCarrierUtil;->getDefaultRADCarrierUtil()Lcom/lge/telephony/RAD/RADCarrierUtil;

    move-result-object v0

    return-object v0
.end method

.method private static getSKTRADCarrierUtil()Lcom/lge/telephony/RAD/RADCarrierUtil;
    .locals 1

    .prologue
    .line 63
    invoke-static {}, Lcom/lge/telephony/RAD/SKT/SKTRADCarrierUtil;->getDefaultRADCarrierUtil()Lcom/lge/telephony/RAD/RADCarrierUtil;

    move-result-object v0

    return-object v0
.end method
