.class public Lcom/vzw/location/server/VzwModeByPass;
.super Lcom/vzw/location/server/VzwModeOperator;
.source "VzwModeByPass.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "VzwModeByPass"


# direct methods
.method public constructor <init>(ILcom/vzw/location/VzwGpsConfigInit;)V
    .locals 2
    .param p1, "mode"    # I
    .param p2, "configInit"    # Lcom/vzw/location/VzwGpsConfigInit;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/vzw/location/server/VzwModeOperator;-><init>()V

    .line 26
    const-string v0, "VzwModeByPass"

    const-string v1, "[VzwModeByPass] Create Object."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    iput-object p2, p0, Lcom/vzw/location/server/VzwModeByPass;->mConfigInit:Lcom/vzw/location/VzwGpsConfigInit;

    .line 28
    iput p1, p0, Lcom/vzw/location/server/VzwModeByPass;->mMode:I

    .line 29
    iget-object v0, p0, Lcom/vzw/location/server/VzwModeByPass;->mConfigInit:Lcom/vzw/location/VzwGpsConfigInit;

    invoke-virtual {v0}, Lcom/vzw/location/VzwGpsConfigInit;->getMpcHost()Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/vzw/location/server/VzwModeByPass;->mMpcHost:Ljava/net/InetAddress;

    .line 30
    const-string v0, "VzwModeByPass"

    const-string v1, "[VzwModeByPass] Create Object done."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    return-void
.end method


# virtual methods
.method public verifyModeAccesibility()Z
    .locals 5

    .prologue
    .line 38
    const-string v2, "VzwModeByPass"

    const-string v3, "[verifyModeAccesibility] Start verifyModeAccesibility()."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    const/4 v1, 0x0

    .line 40
    .local v1, "result":Z
    iget v2, p0, Lcom/vzw/location/server/VzwModeByPass;->mMode:I

    packed-switch v2, :pswitch_data_0

    .line 97
    const-string v2, "VzwModeByPass"

    const-string v3, "[verifyModeAccesibility] Error. Unknown Cases."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const/4 v1, 0x0

    .line 101
    :goto_0
    return v1

    .line 44
    :pswitch_0
    const-string v2, "VzwModeByPass"

    const-string v3, "[verifyModeAccesibility] ByPass R3 (staging server)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iget-object v2, p0, Lcom/vzw/location/server/VzwModeByPass;->mMpcHost:Ljava/net/InetAddress;

    if-nez v2, :cond_0

    .line 47
    :try_start_0
    const-string v2, "pdeis801.vzwtest.com"

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    iput-object v2, p0, Lcom/vzw/location/server/VzwModeByPass;->mMpcHost:Ljava/net/InetAddress;

    .line 48
    iget-object v2, p0, Lcom/vzw/location/server/VzwModeByPass;->mMpcHost:Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vzw/location/server/VzwModeByPass;->mMpcHostAddress:Ljava/lang/String;

    .line 50
    const/16 v2, 0x22b8

    iput v2, p0, Lcom/vzw/location/server/VzwModeByPass;->mMpcHostPort:I

    .line 51
    const-string v2, "VzwModeByPass"

    const-string v3, "[verifyModeAccesibility] FQDN/Port: pdeis801.vzwtest.com/8888"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :goto_1
    const/4 v1, 0x1

    .line 67
    goto :goto_0

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Ljava/net/UnknownHostException;
    const-string v2, "VzwModeByPass"

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

    .line 57
    .end local v0    # "e":Ljava/net/UnknownHostException;
    :cond_0
    const-string v2, "VzwModeByPass"

    const-string v3, "[verifyModeAccesibility] Using User\'s FQDN/Port: ByPass R3 (staging server)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :try_start_1
    iget-object v2, p0, Lcom/vzw/location/server/VzwModeByPass;->mConfigInit:Lcom/vzw/location/VzwGpsConfigInit;

    invoke-virtual {v2}, Lcom/vzw/location/VzwGpsConfigInit;->getMpcHost()Ljava/net/InetAddress;

    move-result-object v2

    iput-object v2, p0, Lcom/vzw/location/server/VzwModeByPass;->mMpcHost:Ljava/net/InetAddress;

    .line 60
    iget-object v2, p0, Lcom/vzw/location/server/VzwModeByPass;->mMpcHost:Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vzw/location/server/VzwModeByPass;->mMpcHostAddress:Ljava/lang/String;

    .line 61
    iget-object v2, p0, Lcom/vzw/location/server/VzwModeByPass;->mConfigInit:Lcom/vzw/location/VzwGpsConfigInit;

    invoke-virtual {v2}, Lcom/vzw/location/VzwGpsConfigInit;->getMpcHostPort()I

    move-result v2

    iput v2, p0, Lcom/vzw/location/server/VzwModeByPass;->mMpcHostPort:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 62
    :catch_1
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "VzwModeByPass"

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

    .line 71
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_1
    const-string v2, "VzwModeByPass"

    const-string v3, "[verifyModeAccesibility] ByPass R3 (production server)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v2, p0, Lcom/vzw/location/server/VzwModeByPass;->mMpcHost:Ljava/net/InetAddress;

    if-nez v2, :cond_1

    .line 74
    :try_start_2
    const-string v2, "mpc0.myvzw.com"

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    iput-object v2, p0, Lcom/vzw/location/server/VzwModeByPass;->mMpcHost:Ljava/net/InetAddress;

    .line 75
    iget-object v2, p0, Lcom/vzw/location/server/VzwModeByPass;->mMpcHost:Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vzw/location/server/VzwModeByPass;->mMpcHostAddress:Ljava/lang/String;

    .line 77
    const/16 v2, 0x22b0

    iput v2, p0, Lcom/vzw/location/server/VzwModeByPass;->mMpcHostPort:I

    .line 78
    const-string v2, "VzwModeByPass"

    const-string v3, "[verifyModeAccesibility] FQDN/Port: mpc0.myvzw.com/8880"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_2

    .line 93
    :goto_2
    const/4 v1, 0x1

    .line 94
    goto/16 :goto_0

    .line 79
    :catch_2
    move-exception v0

    .line 80
    .local v0, "e":Ljava/net/UnknownHostException;
    const-string v2, "VzwModeByPass"

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

    .line 84
    .end local v0    # "e":Ljava/net/UnknownHostException;
    :cond_1
    const-string v2, "VzwModeByPass"

    const-string v3, "[verifyModeAccesibility] Using User\'s FQDN/Port: ByPass R3 (production server)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :try_start_3
    iget-object v2, p0, Lcom/vzw/location/server/VzwModeByPass;->mConfigInit:Lcom/vzw/location/VzwGpsConfigInit;

    invoke-virtual {v2}, Lcom/vzw/location/VzwGpsConfigInit;->getMpcHost()Ljava/net/InetAddress;

    move-result-object v2

    iput-object v2, p0, Lcom/vzw/location/server/VzwModeByPass;->mMpcHost:Ljava/net/InetAddress;

    .line 87
    iget-object v2, p0, Lcom/vzw/location/server/VzwModeByPass;->mMpcHost:Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vzw/location/server/VzwModeByPass;->mMpcHostAddress:Ljava/lang/String;

    .line 88
    iget-object v2, p0, Lcom/vzw/location/server/VzwModeByPass;->mConfigInit:Lcom/vzw/location/VzwGpsConfigInit;

    invoke-virtual {v2}, Lcom/vzw/location/VzwGpsConfigInit;->getMpcHostPort()I

    move-result v2

    iput v2, p0, Lcom/vzw/location/server/VzwModeByPass;->mMpcHostPort:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_2

    .line 89
    :catch_3
    move-exception v0

    .line 90
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "VzwModeByPass"

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

    .line 40
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
