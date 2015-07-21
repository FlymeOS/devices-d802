.class public Lcom/lge/telephony/msim/LGPhoneFactoryBase;
.super Ljava/lang/Object;
.source "LGPhoneFactoryBase.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "LGPhoneFactory"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static logUnexpectedCommonMSimMethodCall(Ljava/lang/String;)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error !!: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " unimplemented method for common API"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 23
    .local v0, "errorMessage":Ljava/lang/String;
    invoke-static {v0}, Lcom/lge/telephony/msim/LGPhoneFactoryBase;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method private static logUnexpectedMTKMSimMethodCall(Ljava/lang/String;)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error !!: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " unimplemented method for MTK API"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, "errorMessage":Ljava/lang/String;
    invoke-static {v0}, Lcom/lge/telephony/msim/LGPhoneFactoryBase;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method private static logUnexpectedMethodCall(Ljava/lang/String;)V
    .locals 1
    .param p0, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 14
    const-string v0, "LGPhoneFactory"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    return-void
.end method

.method private static logUnexpectedQcomMSimMethodCall(Ljava/lang/String;)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error !!: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " unimplemented method for QCOM API"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, "errorMessage":Ljava/lang/String;
    invoke-static {v0}, Lcom/lge/telephony/msim/LGPhoneFactoryBase;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 32
    return-void
.end method


# virtual methods
.method public getCdmaPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p1, "simID"    # I

    .prologue
    .line 52
    const-string v0, "getCdmaPhone"

    invoke-static {v0}, Lcom/lge/telephony/msim/LGPhoneFactoryBase;->logUnexpectedCommonMSimMethodCall(Ljava/lang/String;)V

    .line 53
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDataSubscription()I
    .locals 1

    .prologue
    .line 85
    const-string v0, "getDataSubscription"

    invoke-static {v0}, Lcom/lge/telephony/msim/LGPhoneFactoryBase;->logUnexpectedQcomMSimMethodCall(Ljava/lang/String;)V

    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public getDefaultPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 47
    const-string v0, "makeDefaultPhones"

    invoke-static {v0}, Lcom/lge/telephony/msim/LGPhoneFactoryBase;->logUnexpectedCommonMSimMethodCall(Ljava/lang/String;)V

    .line 48
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDefaultSubscription()I
    .locals 1

    .prologue
    .line 76
    const-string v0, "getDefaultSubscription"

    invoke-static {v0}, Lcom/lge/telephony/msim/LGPhoneFactoryBase;->logUnexpectedQcomMSimMethodCall(Ljava/lang/String;)V

    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public getGsmPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p1, "simID"    # I

    .prologue
    .line 57
    const-string v0, "getGsmPhone"

    invoke-static {v0}, Lcom/lge/telephony/msim/LGPhoneFactoryBase;->logUnexpectedCommonMSimMethodCall(Ljava/lang/String;)V

    .line 58
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p1, "simID"    # I

    .prologue
    .line 62
    const-string v0, "getPhone"

    invoke-static {v0}, Lcom/lge/telephony/msim/LGPhoneFactoryBase;->logUnexpectedCommonMSimMethodCall(Ljava/lang/String;)V

    .line 63
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSMSSubscription()I
    .locals 1

    .prologue
    .line 90
    const-string v0, "getSMSSubscription"

    invoke-static {v0}, Lcom/lge/telephony/msim/LGPhoneFactoryBase;->logUnexpectedQcomMSimMethodCall(Ljava/lang/String;)V

    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public isPromptEnabled()Z
    .locals 1

    .prologue
    .line 71
    const-string v0, "isPromptEnabled"

    invoke-static {v0}, Lcom/lge/telephony/msim/LGPhoneFactoryBase;->logUnexpectedQcomMSimMethodCall(Ljava/lang/String;)V

    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public makeDefaultPhone(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    const-string v0, "makeDefaultPhones"

    invoke-static {v0}, Lcom/lge/telephony/msim/LGPhoneFactoryBase;->logUnexpectedCommonMSimMethodCall(Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public makeSipPhone(Ljava/lang/String;)V
    .locals 1
    .param p1, "sipUri"    # Ljava/lang/String;

    .prologue
    .line 67
    const-string v0, "getPhone"

    invoke-static {v0}, Lcom/lge/telephony/msim/LGPhoneFactoryBase;->logUnexpectedCommonMSimMethodCall(Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public setDefaultSubscription(I)V
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 81
    const-string v0, "setDefaultSubscription"

    invoke-static {v0}, Lcom/lge/telephony/msim/LGPhoneFactoryBase;->logUnexpectedQcomMSimMethodCall(Ljava/lang/String;)V

    .line 82
    return-void
.end method
