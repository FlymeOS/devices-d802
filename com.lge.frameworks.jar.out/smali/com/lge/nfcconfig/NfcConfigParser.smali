.class public final Lcom/lge/nfcconfig/NfcConfigParser;
.super Ljava/lang/Object;
.source "NfcConfigParser.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "NfcConfigParser"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "operator"    # Ljava/lang/String;
    .param p2, "country"    # Ljava/lang/String;
    .param p3, "device"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-static {p3}, Lcom/lge/nfcconfig/NfcConfigParserUtil;->setCurrentDevice(Ljava/lang/String;)V

    .line 25
    invoke-static {p2}, Lcom/lge/nfcconfig/NfcConfigParserUtil;->setCurrentCountry(Ljava/lang/String;)V

    .line 26
    invoke-static {p1}, Lcom/lge/nfcconfig/NfcConfigParserUtil;->setCurrentOperator(Ljava/lang/String;)V

    .line 28
    const-string v0, "NfcConfigParser"

    const-string v1, "===================================="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    invoke-static {}, Lcom/lge/nfcconfig/NfcConfigGpriListParser;->getMatchedProfile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    const-string v0, "NfcConfigParser"

    const-string v1, "NfcConfigGpriListParser complete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    :cond_0
    const-string v0, "NfcConfigParser"

    const-string v1, "===================================="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-static {}, Lcom/lge/nfcconfig/NfcConfigTargetListParser;->getTargetListFile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    const-string v0, "NfcConfigParser"

    const-string v1, "NfcConfigTargetListParser complete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :cond_1
    const-string v0, "NfcConfigParser"

    const-string v1, "===================================="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-static {}, Lcom/lge/nfcconfig/NfcConfigListParser;->getConfigFile()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 45
    const-string v0, "NfcConfigParser"

    const-string v1, "NfcConfigListParser complete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :cond_2
    const-string v0, "NfcConfigParser"

    const-string v1, "===================================="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    return-void
.end method
