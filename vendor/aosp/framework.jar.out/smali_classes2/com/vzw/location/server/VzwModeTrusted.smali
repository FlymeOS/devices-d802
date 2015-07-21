.class public Lcom/vzw/location/server/VzwModeTrusted;
.super Lcom/vzw/location/server/VzwModeOperator;
.source "VzwModeTrusted.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "VzwModeTrusted"


# direct methods
.method public constructor <init>(ILcom/vzw/location/VzwGpsConfigInit;)V
    .locals 2
    .param p1, "mode"    # I
    .param p2, "configInit"    # Lcom/vzw/location/VzwGpsConfigInit;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/vzw/location/server/VzwModeOperator;-><init>()V

    .line 25
    const-string v0, "VzwModeTrusted"

    const-string v1, "[VzwModeTrusted] Create Object."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    iput-object p2, p0, Lcom/vzw/location/server/VzwModeTrusted;->mConfigInit:Lcom/vzw/location/VzwGpsConfigInit;

    .line 27
    iget-object v0, p0, Lcom/vzw/location/server/VzwModeTrusted;->mConfigInit:Lcom/vzw/location/VzwGpsConfigInit;

    invoke-virtual {v0}, Lcom/vzw/location/VzwGpsConfigInit;->getMpcHost()Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/vzw/location/server/VzwModeTrusted;->mMpcHost:Ljava/net/InetAddress;

    .line 28
    iput p1, p0, Lcom/vzw/location/server/VzwModeTrusted;->mMode:I

    .line 29
    const-string v0, "VzwModeTrusted"

    const-string v1, "[VzwModeByPass] Create Object finished."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    return-void
.end method


# virtual methods
.method public verifyModeAccesibility()Z
    .locals 5

    .prologue
    .line 37
    const-string v2, "VzwModeTrusted"

    const-string v3, "[verifyModeAccesibility] Start verifyModeAccesibility()."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    const/4 v1, 0x0

    .line 39
    .local v1, "result":Z
    iget v2, p0, Lcom/vzw/location/server/VzwModeTrusted;->mMode:I

    packed-switch v2, :pswitch_data_0

    .line 110
    const-string v2, "VzwModeTrusted"

    const-string v3, "[verifyModeAccesibility] Error. Unknown Cases."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const/4 v1, 0x0

    .line 114
    :goto_0
    return v1

    .line 43
    :pswitch_0
    const-string v2, "VzwModeTrusted"

    const-string v3, "[verifyModeAccesibility] Commercial Trusted"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iget-object v2, p0, Lcom/vzw/location/server/VzwModeTrusted;->mMpcHost:Ljava/net/InetAddress;

    if-nez v2, :cond_0

    .line 45
    const-string v2, "VzwModeTrusted"

    const-string v3, "[verifyModeAccesibility] Using Default FQDN/Port: Commercial Trusted"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :try_start_0
    const-string v2, "mpc0.myvzw.com"

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    iput-object v2, p0, Lcom/vzw/location/server/VzwModeTrusted;->mMpcHost:Ljava/net/InetAddress;

    .line 48
    iget-object v2, p0, Lcom/vzw/location/server/VzwModeTrusted;->mMpcHost:Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vzw/location/server/VzwModeTrusted;->mMpcHostAddress:Ljava/lang/String;

    .line 49
    const/16 v2, 0x22b1

    iput v2, p0, Lcom/vzw/location/server/VzwModeTrusted;->mMpcHostPort:I

    .line 50
    const-string v2, "VzwModeTrusted"

    const-string v3, "[verifyModeAccesibility] FQDN/Port: mpc0.myvzw.com/8881"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_1
    const/4 v1, 0x1

    .line 66
    goto :goto_0

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Ljava/net/UnknownHostException;
    const-string v2, "VzwModeTrusted"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[verifyModeAccesibility] UnknownHostException occured. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 56
    .end local v0    # "e":Ljava/net/UnknownHostException;
    :cond_0
    const-string v2, "VzwModeTrusted"

    const-string v3, "[verifyModeAccesibility] Using User\'s FQDN/Port: Commercial Trusted"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :try_start_1
    iget-object v2, p0, Lcom/vzw/location/server/VzwModeTrusted;->mConfigInit:Lcom/vzw/location/VzwGpsConfigInit;

    invoke-virtual {v2}, Lcom/vzw/location/VzwGpsConfigInit;->getMpcHost()Ljava/net/InetAddress;

    move-result-object v2

    iput-object v2, p0, Lcom/vzw/location/server/VzwModeTrusted;->mMpcHost:Ljava/net/InetAddress;

    .line 59
    iget-object v2, p0, Lcom/vzw/location/server/VzwModeTrusted;->mMpcHost:Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vzw/location/server/VzwModeTrusted;->mMpcHostAddress:Ljava/lang/String;

    .line 60
    iget-object v2, p0, Lcom/vzw/location/server/VzwModeTrusted;->mConfigInit:Lcom/vzw/location/VzwGpsConfigInit;

    invoke-virtual {v2}, Lcom/vzw/location/VzwGpsConfigInit;->getMpcHostPort()I

    move-result v2

    iput v2, p0, Lcom/vzw/location/server/VzwModeTrusted;->mMpcHostPort:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 61
    :catch_1
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "VzwModeTrusted"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[verifyModeAccesibility] Exception occured. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 70
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_1
    const-string v2, "VzwModeTrusted"

    const-string v3, "[verifyModeAccesibility] Test Trusted"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v2, p0, Lcom/vzw/location/server/VzwModeTrusted;->mMpcHost:Ljava/net/InetAddress;

    if-nez v2, :cond_1

    .line 72
    const-string v2, "VzwModeTrusted"

    const-string v3, "[verifyModeAccesibility] Using Default FQDN/Port: Test Trusted"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :try_start_2
    const-string v2, "pdeis801.vzwtest.com"

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    iput-object v2, p0, Lcom/vzw/location/server/VzwModeTrusted;->mMpcHost:Ljava/net/InetAddress;

    .line 75
    iget-object v2, p0, Lcom/vzw/location/server/VzwModeTrusted;->mMpcHost:Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vzw/location/server/VzwModeTrusted;->mMpcHostAddress:Ljava/lang/String;

    .line 76
    const/16 v2, 0x22b1

    iput v2, p0, Lcom/vzw/location/server/VzwModeTrusted;->mMpcHostPort:I

    .line 77
    const-string v2, "VzwModeTrusted"

    const-string v3, "[verifyModeAccesibility] FQDN/Port: pdeis801.vzwtest.com/8881"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_2

    .line 92
    :goto_2
    const/4 v1, 0x1

    .line 93
    goto/16 :goto_0

    .line 78
    :catch_2
    move-exception v0

    .line 79
    .local v0, "e":Ljava/net/UnknownHostException;
    const-string v2, "VzwModeTrusted"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[verifyModeAccesibility] UnknownHostException occured. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 83
    .end local v0    # "e":Ljava/net/UnknownHostException;
    :cond_1
    const-string v2, "VzwModeTrusted"

    const-string v3, "[verifyModeAccesibility] Using User\'s FQDN/Port: Test Trusted"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :try_start_3
    iget-object v2, p0, Lcom/vzw/location/server/VzwModeTrusted;->mConfigInit:Lcom/vzw/location/VzwGpsConfigInit;

    invoke-virtual {v2}, Lcom/vzw/location/VzwGpsConfigInit;->getMpcHost()Ljava/net/InetAddress;

    move-result-object v2

    iput-object v2, p0, Lcom/vzw/location/server/VzwModeTrusted;->mMpcHost:Ljava/net/InetAddress;

    .line 86
    iget-object v2, p0, Lcom/vzw/location/server/VzwModeTrusted;->mMpcHost:Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vzw/location/server/VzwModeTrusted;->mMpcHostAddress:Ljava/lang/String;

    .line 87
    iget-object v2, p0, Lcom/vzw/location/server/VzwModeTrusted;->mConfigInit:Lcom/vzw/location/VzwGpsConfigInit;

    invoke-virtual {v2}, Lcom/vzw/location/VzwGpsConfigInit;->getMpcHostPort()I

    move-result v2

    iput v2, p0, Lcom/vzw/location/server/VzwModeTrusted;->mMpcHostPort:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_2

    .line 88
    :catch_3
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "VzwModeTrusted"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[verifyModeAccesibility] Exception occured. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 97
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_2
    const-string v2, "VzwModeTrusted"

    const-string v3, "[verifyModeAccesibility] Trusted Default"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :try_start_4
    const-string v2, "mpc0.myvzw.com"

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    iput-object v2, p0, Lcom/vzw/location/server/VzwModeTrusted;->mMpcHost:Ljava/net/InetAddress;

    .line 100
    iget-object v2, p0, Lcom/vzw/location/server/VzwModeTrusted;->mMpcHost:Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vzw/location/server/VzwModeTrusted;->mMpcHostAddress:Ljava/lang/String;

    .line 101
    const/16 v2, 0x22b1

    iput v2, p0, Lcom/vzw/location/server/VzwModeTrusted;->mMpcHostPort:I

    .line 102
    const-string v2, "VzwModeTrusted"

    const-string v3, "[verifyModeAccesibility] FQDN/Port: mpc0.myvzw.com/8881"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_4

    .line 106
    :goto_3
    const/4 v1, 0x1

    .line 107
    goto/16 :goto_0

    .line 103
    :catch_4
    move-exception v0

    .line 104
    .local v0, "e":Ljava/net/UnknownHostException;
    const-string v2, "VzwModeTrusted"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[verifyModeAccesibility] UnknownHostException occured. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 39
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
