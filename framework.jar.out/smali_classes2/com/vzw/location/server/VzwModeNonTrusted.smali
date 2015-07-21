.class public Lcom/vzw/location/server/VzwModeNonTrusted;
.super Lcom/vzw/location/server/VzwModeOperator;
.source "VzwModeNonTrusted.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "VzwModeNonTrusted"


# direct methods
.method public constructor <init>(ILcom/vzw/location/VzwGpsConfigInit;)V
    .locals 2
    .param p1, "mode"    # I
    .param p2, "configInit"    # Lcom/vzw/location/VzwGpsConfigInit;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/vzw/location/server/VzwModeOperator;-><init>()V

    .line 23
    const-string v0, "VzwModeNonTrusted"

    const-string v1, "[VzwModeNonTrusted] Create Object."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    iput-object p2, p0, Lcom/vzw/location/server/VzwModeNonTrusted;->mConfigInit:Lcom/vzw/location/VzwGpsConfigInit;

    .line 25
    iget-object v0, p0, Lcom/vzw/location/server/VzwModeNonTrusted;->mConfigInit:Lcom/vzw/location/VzwGpsConfigInit;

    invoke-virtual {v0}, Lcom/vzw/location/VzwGpsConfigInit;->getMpcHost()Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/vzw/location/server/VzwModeNonTrusted;->mMpcHost:Ljava/net/InetAddress;

    .line 26
    iput p1, p0, Lcom/vzw/location/server/VzwModeNonTrusted;->mMode:I

    .line 27
    const-string v0, "VzwModeNonTrusted"

    const-string v1, "[VzwModeByPass] Create Object finished."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    return-void
.end method


# virtual methods
.method public verifyModeAccesibility()Z
    .locals 5

    .prologue
    .line 35
    const-string v2, "VzwModeNonTrusted"

    const-string v3, "[verifyModeAccesibility] Start verifyModeAccesibility()."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    const/4 v1, 0x0

    .line 38
    .local v1, "result":Z
    iget v2, p0, Lcom/vzw/location/server/VzwModeNonTrusted;->mMode:I

    packed-switch v2, :pswitch_data_0

    .line 120
    const-string v2, "VzwModeNonTrusted"

    const-string v3, "[verifyModeAccesibility] Error. Unknown Cases."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const/4 v1, 0x0

    .line 125
    :goto_0
    return v1

    .line 41
    :pswitch_0
    const-string v2, "VzwModeNonTrusted"

    const-string v3, "[verifyModeAccesibility] Commercial Non-Trusted"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iget-object v2, p0, Lcom/vzw/location/server/VzwModeNonTrusted;->mMpcHost:Ljava/net/InetAddress;

    if-nez v2, :cond_0

    .line 43
    const-string v2, "VzwModeNonTrusted"

    const-string v3, "[verifyModeAccesibility] Using Default FQDN/Port: Commercial Non-Trusted"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :try_start_0
    const-string v2, "lps.vzwlbs.net"

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    iput-object v2, p0, Lcom/vzw/location/server/VzwModeNonTrusted;->mMpcHost:Ljava/net/InetAddress;

    .line 46
    iget-object v2, p0, Lcom/vzw/location/server/VzwModeNonTrusted;->mMpcHost:Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vzw/location/server/VzwModeNonTrusted;->mMpcHostAddress:Ljava/lang/String;

    .line 47
    const/16 v2, 0x22b0

    iput v2, p0, Lcom/vzw/location/server/VzwModeNonTrusted;->mMpcHostPort:I

    .line 48
    const-string v2, "VzwModeNonTrusted"

    const-string v3, "[verifyModeAccesibility] FQDN/Port: lps.vzwlbs.net/8880"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :goto_1
    const/4 v1, 0x1

    .line 64
    goto :goto_0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Ljava/net/UnknownHostException;
    const-string v2, "VzwModeNonTrusted"

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

    .line 54
    .end local v0    # "e":Ljava/net/UnknownHostException;
    :cond_0
    const-string v2, "VzwModeNonTrusted"

    const-string v3, "[verifyModeAccesibility] Using User\'s FQDN/Port: Commercial Non-Trusted"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :try_start_1
    iget-object v2, p0, Lcom/vzw/location/server/VzwModeNonTrusted;->mConfigInit:Lcom/vzw/location/VzwGpsConfigInit;

    invoke-virtual {v2}, Lcom/vzw/location/VzwGpsConfigInit;->getMpcHost()Ljava/net/InetAddress;

    move-result-object v2

    iput-object v2, p0, Lcom/vzw/location/server/VzwModeNonTrusted;->mMpcHost:Ljava/net/InetAddress;

    .line 57
    iget-object v2, p0, Lcom/vzw/location/server/VzwModeNonTrusted;->mMpcHost:Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vzw/location/server/VzwModeNonTrusted;->mMpcHostAddress:Ljava/lang/String;

    .line 58
    iget-object v2, p0, Lcom/vzw/location/server/VzwModeNonTrusted;->mConfigInit:Lcom/vzw/location/VzwGpsConfigInit;

    invoke-virtual {v2}, Lcom/vzw/location/VzwGpsConfigInit;->getMpcHostPort()I

    move-result v2

    iput v2, p0, Lcom/vzw/location/server/VzwModeNonTrusted;->mMpcHostPort:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 59
    :catch_1
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "VzwModeNonTrusted"

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

    .line 68
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_1
    const-string v2, "VzwModeNonTrusted"

    const-string v3, "[verifyModeAccesibility] Test Non-Trusted"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v2, p0, Lcom/vzw/location/server/VzwModeNonTrusted;->mMpcHost:Ljava/net/InetAddress;

    if-nez v2, :cond_1

    .line 70
    const-string v2, "VzwModeNonTrusted"

    const-string v3, "[verifyModeAccesibility] Using Default FQDN/Port: Test Non-Trusted"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :try_start_2
    const-string/jumbo v2, "vzwlpsstg.telecomsys.com"

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    iput-object v2, p0, Lcom/vzw/location/server/VzwModeNonTrusted;->mMpcHost:Ljava/net/InetAddress;

    .line 73
    iget-object v2, p0, Lcom/vzw/location/server/VzwModeNonTrusted;->mMpcHost:Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vzw/location/server/VzwModeNonTrusted;->mMpcHostAddress:Ljava/lang/String;

    .line 74
    const/16 v2, 0x22b0

    iput v2, p0, Lcom/vzw/location/server/VzwModeNonTrusted;->mMpcHostPort:I

    .line 75
    const-string v2, "VzwModeNonTrusted"

    const-string v3, "[verifyModeAccesibility] FQDN/Port: vzwlpsstg.telecomsys.com/8880"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_2

    .line 90
    :goto_2
    const/4 v1, 0x1

    .line 91
    goto/16 :goto_0

    .line 76
    :catch_2
    move-exception v0

    .line 77
    .local v0, "e":Ljava/net/UnknownHostException;
    const-string v2, "VzwModeNonTrusted"

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

    .line 81
    .end local v0    # "e":Ljava/net/UnknownHostException;
    :cond_1
    const-string v2, "VzwModeNonTrusted"

    const-string v3, "[verifyModeAccesibility] Using User\'s FQDN/Port: Test Non-Trusted"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :try_start_3
    iget-object v2, p0, Lcom/vzw/location/server/VzwModeNonTrusted;->mConfigInit:Lcom/vzw/location/VzwGpsConfigInit;

    invoke-virtual {v2}, Lcom/vzw/location/VzwGpsConfigInit;->getMpcHost()Ljava/net/InetAddress;

    move-result-object v2

    iput-object v2, p0, Lcom/vzw/location/server/VzwModeNonTrusted;->mMpcHost:Ljava/net/InetAddress;

    .line 84
    iget-object v2, p0, Lcom/vzw/location/server/VzwModeNonTrusted;->mMpcHost:Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vzw/location/server/VzwModeNonTrusted;->mMpcHostAddress:Ljava/lang/String;

    .line 85
    iget-object v2, p0, Lcom/vzw/location/server/VzwModeNonTrusted;->mConfigInit:Lcom/vzw/location/VzwGpsConfigInit;

    invoke-virtual {v2}, Lcom/vzw/location/VzwGpsConfigInit;->getMpcHostPort()I

    move-result v2

    iput v2, p0, Lcom/vzw/location/server/VzwModeNonTrusted;->mMpcHostPort:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_2

    .line 86
    :catch_3
    move-exception v0

    .line 87
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "VzwModeNonTrusted"

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

    .line 95
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_2
    const-string v2, "VzwModeNonTrusted"

    const-string v3, "[verifyModeAccesibility] Legacy(Non-Trusted)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v2, p0, Lcom/vzw/location/server/VzwModeNonTrusted;->mMpcHost:Ljava/net/InetAddress;

    if-nez v2, :cond_2

    .line 98
    :try_start_4
    const-string v2, "lps.vzwlbs.net"

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    iput-object v2, p0, Lcom/vzw/location/server/VzwModeNonTrusted;->mMpcHost:Ljava/net/InetAddress;

    .line 99
    iget-object v2, p0, Lcom/vzw/location/server/VzwModeNonTrusted;->mMpcHost:Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vzw/location/server/VzwModeNonTrusted;->mMpcHostAddress:Ljava/lang/String;

    .line 100
    const/16 v2, 0x22b0

    iput v2, p0, Lcom/vzw/location/server/VzwModeNonTrusted;->mMpcHostPort:I

    .line 101
    const-string v2, "VzwModeNonTrusted"

    const-string v3, "[verifyModeAccesibility] FQDN/Port: lps.vzwlbs.net/8880"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_4

    .line 116
    :goto_3
    const/4 v1, 0x1

    .line 117
    goto/16 :goto_0

    .line 102
    :catch_4
    move-exception v0

    .line 103
    .local v0, "e":Ljava/net/UnknownHostException;
    const-string v2, "VzwModeNonTrusted"

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

    .line 107
    .end local v0    # "e":Ljava/net/UnknownHostException;
    :cond_2
    const-string v2, "VzwModeNonTrusted"

    const-string v3, "[verifyModeAccesibility] Using User\'s FQDN/Port: Legacy(Non-Trusted)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :try_start_5
    iget-object v2, p0, Lcom/vzw/location/server/VzwModeNonTrusted;->mConfigInit:Lcom/vzw/location/VzwGpsConfigInit;

    invoke-virtual {v2}, Lcom/vzw/location/VzwGpsConfigInit;->getMpcHost()Ljava/net/InetAddress;

    move-result-object v2

    iput-object v2, p0, Lcom/vzw/location/server/VzwModeNonTrusted;->mMpcHost:Ljava/net/InetAddress;

    .line 110
    iget-object v2, p0, Lcom/vzw/location/server/VzwModeNonTrusted;->mMpcHost:Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vzw/location/server/VzwModeNonTrusted;->mMpcHostAddress:Ljava/lang/String;

    .line 111
    iget-object v2, p0, Lcom/vzw/location/server/VzwModeNonTrusted;->mConfigInit:Lcom/vzw/location/VzwGpsConfigInit;

    invoke-virtual {v2}, Lcom/vzw/location/VzwGpsConfigInit;->getMpcHostPort()I

    move-result v2

    iput v2, p0, Lcom/vzw/location/server/VzwModeNonTrusted;->mMpcHostPort:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_3

    .line 112
    :catch_5
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "VzwModeNonTrusted"

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

    goto :goto_3

    .line 38
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
