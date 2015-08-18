.class public abstract Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase;
.super Ljava/lang/Object;
.source "LGMSimTelephonyManagerBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase$LGMultiSimVariants;
    }
.end annotation


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "LGMSimTelephonyManagerBase"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method private logUnexpectedCommonMSimMethodCall(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error !!: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " unimplemented method for common API"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "errorMessage":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method private logUnexpectedMTKMSimMethodCall(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error !!: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " unimplemented method for MTK API"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "errorMessage":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method private logUnexpectedMethodCall(Ljava/lang/String;)V
    .locals 1
    .param p1, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    const-string v0, "LGMSimTelephonyManagerBase"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    :cond_0
    return-void
.end method

.method private logUnexpectedQcomMSimMethodCall(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error !!: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " unimplemented method for QCOM API"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "errorMessage":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 57
    return-void
.end method


# virtual methods
.method public getCallState(I)I
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 156
    const-string v0, "getCallState"

    invoke-direct {p0, v0}, Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase;->logUnexpectedQcomMSimMethodCall(Ljava/lang/String;)V

    .line 157
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentPhoneType(I)I
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 88
    const-string v0, "getCurrentPhoneType"

    invoke-direct {p0, v0}, Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase;->logUnexpectedCommonMSimMethodCall(Ljava/lang/String;)V

    .line 89
    const/4 v0, 0x1

    return v0
.end method

.method public getDefaultSubscription()I
    .locals 1

    .prologue
    .line 170
    const-string v0, "getDefaultSubscription"

    invoke-direct {p0, v0}, Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase;->logUnexpectedQcomMSimMethodCall(Ljava/lang/String;)V

    .line 171
    const/4 v0, 0x0

    return v0
.end method

.method public getDeviceId(I)Ljava/lang/String;
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 83
    const-string v0, "getDeviceId"

    invoke-direct {p0, v0}, Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase;->logUnexpectedCommonMSimMethodCall(Ljava/lang/String;)V

    .line 84
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeviceSoftwareVersion(I)Ljava/lang/String;
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 78
    const-string v0, "getDeviceSoftwareVersion"

    invoke-direct {p0, v0}, Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase;->logUnexpectedCommonMSimMethodCall(Ljava/lang/String;)V

    .line 79
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGroupIdLevel1(I)Ljava/lang/String;
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 190
    const-string v0, "getGroupIdLevel1"

    invoke-direct {p0, v0}, Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase;->logUnexpectedQcomMSimMethodCall(Ljava/lang/String;)V

    .line 191
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLine1Number(I)Ljava/lang/String;
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 151
    const-string v0, "getLine1Number"

    invoke-direct {p0, v0}, Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase;->logUnexpectedQcomMSimMethodCall(Ljava/lang/String;)V

    .line 152
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMSIN(I)Ljava/lang/String;
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 185
    const-string v0, "getMSIN"

    invoke-direct {p0, v0}, Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase;->logUnexpectedQcomMSimMethodCall(Ljava/lang/String;)V

    .line 186
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMultiSimConfiguration()Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase$LGMultiSimVariants;
    .locals 1

    .prologue
    .line 73
    const-string v0, "getMultiSimConfiguration"

    invoke-direct {p0, v0}, Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase;->logUnexpectedCommonMSimMethodCall(Ljava/lang/String;)V

    .line 74
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNetworkOperator(I)Ljava/lang/String;
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 111
    const-string v0, "getNetworkOperator"

    invoke-direct {p0, v0}, Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase;->logUnexpectedQcomMSimMethodCall(Ljava/lang/String;)V

    .line 112
    const-string v0, ""

    return-object v0
.end method

.method public getNetworkOperatorName(I)Ljava/lang/String;
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 106
    const-string v0, "getNetworkOperatorName"

    invoke-direct {p0, v0}, Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase;->logUnexpectedQcomMSimMethodCall(Ljava/lang/String;)V

    .line 107
    const-string v0, ""

    return-object v0
.end method

.method public getNetworkType(I)I
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 121
    const-string v0, "getNetworkType"

    invoke-direct {p0, v0}, Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase;->logUnexpectedQcomMSimMethodCall(Ljava/lang/String;)V

    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public getNetworkTypeName(I)Ljava/lang/String;
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 126
    const-string v0, "getNetworkTypeName"

    invoke-direct {p0, v0}, Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase;->logUnexpectedQcomMSimMethodCall(Ljava/lang/String;)V

    .line 127
    const-string v0, "UNKNOWN"

    return-object v0
.end method

.method public getPhoneCount()I
    .locals 1

    .prologue
    .line 97
    const-string v0, "getPhoneCount"

    invoke-direct {p0, v0}, Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase;->logUnexpectedQcomMSimMethodCall(Ljava/lang/String;)V

    .line 98
    const/4 v0, 0x1

    return v0
.end method

.method public getPreferredDataSubscription()I
    .locals 1

    .prologue
    .line 175
    const-string v0, "getPreferredDataSubscription"

    invoke-direct {p0, v0}, Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase;->logUnexpectedQcomMSimMethodCall(Ljava/lang/String;)V

    .line 176
    const/4 v0, 0x0

    return v0
.end method

.method public getSimSerialNumber(I)Ljava/lang/String;
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 141
    const-string v0, "getSimSerialNumber"

    invoke-direct {p0, v0}, Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase;->logUnexpectedQcomMSimMethodCall(Ljava/lang/String;)V

    .line 142
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSimState(I)I
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 136
    const-string v0, "getSimState"

    invoke-direct {p0, v0}, Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase;->logUnexpectedQcomMSimMethodCall(Ljava/lang/String;)V

    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public getSubscriberId(I)Ljava/lang/String;
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 146
    const-string v0, "getSubscriberId"

    invoke-direct {p0, v0}, Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase;->logUnexpectedQcomMSimMethodCall(Ljava/lang/String;)V

    .line 147
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "defaultVal"    # Ljava/lang/String;

    .prologue
    .line 165
    const-string v0, "getTelephonyProperty"

    invoke-direct {p0, v0}, Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase;->logUnexpectedQcomMSimMethodCall(Ljava/lang/String;)V

    .line 166
    return-object p3
.end method

.method public hasIccCard(I)Z
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 131
    const-string v0, "hasIccCard"

    invoke-direct {p0, v0}, Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase;->logUnexpectedQcomMSimMethodCall(Ljava/lang/String;)V

    .line 132
    const/4 v0, 0x0

    return v0
.end method

.method public isMultiSimEnabled()Z
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public isNetworkRoaming(I)Z
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 116
    const-string v0, "isNetworkRoaming"

    invoke-direct {p0, v0}, Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase;->logUnexpectedQcomMSimMethodCall(Ljava/lang/String;)V

    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method public listen(Landroid/telephony/PhoneStateListener;I)V
    .locals 1
    .param p1, "listener"    # Landroid/telephony/PhoneStateListener;
    .param p2, "events"    # I

    .prologue
    .line 93
    const-string v0, "listen"

    invoke-direct {p0, v0}, Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase;->logUnexpectedCommonMSimMethodCall(Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public setPreferredDataSubscription(I)Z
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 180
    const-string v0, "setPreferredDataSubscription"

    invoke-direct {p0, v0}, Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase;->logUnexpectedQcomMSimMethodCall(Ljava/lang/String;)V

    .line 181
    const/4 v0, 0x0

    return v0
.end method

.method public setTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 102
    const-string v0, "setTelephonyProperty"

    invoke-direct {p0, v0}, Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase;->logUnexpectedQcomMSimMethodCall(Ljava/lang/String;)V

    .line 103
    return-void
.end method
