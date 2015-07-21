.class public final Lcom/lge/telephony/provider/TelephonyProxy$Carriers;
.super Ljava/lang/Object;
.source "TelephonyProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/telephony/provider/TelephonyProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Carriers"
.end annotation


# static fields
.field public static final DEFAULTSETTING:Ljava/lang/String; = "defaultsetting"

.field public static final DEFAULTSETTING_EDITABLE:I = 0x0

.field public static final DEFAULTSETTING_HIDDEN:I = 0x2

.field public static final DEFAULTSETTING_NOT_EDITABLE:I = 0x1

.field public static final PCSCF:Ljava/lang/String; = "pcscf"

.field public static final PCSCF_DISABLED:I = 0x0

.field public static final PCSCF_ENABLED:I = 0x1

.field public static final PPP_DIALING_NUMBER:Ljava/lang/String; = "ppp_dialing_number"

.field public static final PPP_DIALING_NUMBER_DEFAULT:Ljava/lang/String; = "0"

.field public static final SIM_SUBSCRIPTION:Ljava/lang/String; = "sim_subscription"

.field public static final SUBSCRIPTION_NONE:I = -0x1

.field public static final SUBSCRIPTION_SIM1:I = 0x0

.field public static final SUBSCRIPTION_SIM2:I = 0x1

.field public static final SUBSCRIPTION_SIM3:I = 0x2

.field public static final SUBSCRIPTION_SIM4:I = 0x3

.field public static final USERCREATESETTING:Ljava/lang/String; = "usercreatesetting"

.field public static final USERCREATESETTING_MANUAL:I = 0x1

.field public static final USERCREATESETTING_OTA:I = 0x2

.field public static final USERCREATESETTING_PRELOADED:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMvnoData(I)Ljava/lang/String;
    .locals 2
    .param p0, "subs"    # I

    .prologue
    .line 204
    const-string v0, "gsm.apn.sim.operator.mvno.data"

    const-string v1, ""

    invoke-static {v0, p0, v1}, Lcom/lge/telephony/provider/TelephonyProxy$Carriers;->getProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMvnoData(J)Ljava/lang/String;
    .locals 2
    .param p0, "subId"    # J

    .prologue
    .line 209
    const-string v0, "gsm.apn.sim.operator.mvno.data"

    const-string v1, ""

    invoke-static {v0, p0, p1, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMvnoType(I)Ljava/lang/String;
    .locals 2
    .param p0, "subs"    # I

    .prologue
    .line 187
    const-string v0, "gsm.apn.sim.operator.mvno.type"

    const-string v1, ""

    invoke-static {v0, p0, v1}, Lcom/lge/telephony/provider/TelephonyProxy$Carriers;->getProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMvnoType(J)Ljava/lang/String;
    .locals 2
    .param p0, "subId"    # J

    .prologue
    .line 192
    const-string v0, "gsm.apn.sim.operator.mvno.type"

    const-string v1, ""

    invoke-static {v0, p0, p1, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNumeric(I)Ljava/lang/String;
    .locals 2
    .param p0, "subs"    # I

    .prologue
    .line 166
    const-string v0, "gsm.sim.operator.numeric"

    const-string v1, ""

    invoke-static {v0, p0, v1}, Lcom/lge/telephony/provider/TelephonyProxy$Carriers;->getProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNumeric(J)Ljava/lang/String;
    .locals 2
    .param p0, "subId"    # J

    .prologue
    .line 175
    const-string v0, "gsm.sim.operator.numeric"

    const-string v1, ""

    invoke-static {v0, p0, p1, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPersisAutoProfileKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 220
    const-string v1, "persist.lg.data.autoprof.key"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, "key":Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v0, ""

    .end local v0    # "key":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public static getProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "index"    # I
    .param p2, "defaultVal"    # Ljava/lang/String;

    .prologue
    .line 134
    const/4 v1, 0x0

    .line 135
    .local v1, "propVal":Ljava/lang/String;
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "prop":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 138
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 139
    .local v2, "values":[Ljava/lang/String;
    if-ltz p1, :cond_0

    array-length v3, v2

    if-ge p1, v3, :cond_0

    aget-object v3, v2, p1

    if-eqz v3, :cond_0

    .line 140
    aget-object v1, v2, p1

    .line 143
    .end local v2    # "values":[Ljava/lang/String;
    :cond_0
    if-nez v1, :cond_1

    .end local p2    # "defaultVal":Ljava/lang/String;
    :goto_0
    return-object p2

    .restart local p2    # "defaultVal":Ljava/lang/String;
    :cond_1
    move-object p2, v1

    goto :goto_0
.end method

.method public static getProperty(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "subId"    # J
    .param p3, "defaultVal"    # Ljava/lang/String;

    .prologue
    .line 151
    invoke-static {p0, p1, p2, p3}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setProperty(Ljava/lang/String;ILjava/lang/String;)V
    .locals 7
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 87
    const-string v3, ""

    .line 88
    .local v3, "propVal":Ljava/lang/String;
    const/4 v1, 0x0

    .line 89
    .local v1, "p":[Ljava/lang/String;
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 91
    .local v2, "prop":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 92
    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 95
    :cond_0
    if-gez p1, :cond_1

    .line 114
    :goto_0
    return-void

    .line 99
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p1, :cond_3

    .line 100
    const-string v4, ""

    .line 101
    .local v4, "str":Ljava/lang/String;
    if-eqz v1, :cond_2

    array-length v5, v1

    if-ge v0, v5, :cond_2

    .line 102
    aget-object v4, v1, v0

    .line 104
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 99
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 107
    .end local v4    # "str":Ljava/lang/String;
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 108
    if-eqz v1, :cond_4

    .line 109
    add-int/lit8 v0, p1, 0x1

    :goto_2
    array-length v5, v1

    if-ge v0, v5, :cond_4

    .line 110
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 109
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 113
    :cond_4
    invoke-static {p0, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setProperty(Ljava/lang/String;JLjava/lang/String;)V
    .locals 1
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "subId"    # J
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 121
    invoke-static {p0, p1, p2, p3}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(Ljava/lang/String;JLjava/lang/String;)V

    .line 122
    return-void
.end method
