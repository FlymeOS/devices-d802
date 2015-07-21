.class public Lcom/vzw/location/VzwGpsConfigInit;
.super Ljava/lang/Object;
.source "VzwGpsConfigInit.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/vzw/location/VzwGpsConfigInit;",
            ">;"
        }
    .end annotation
.end field

.field static final DEBUG:Z = true

.field static final MPC_HOST_INVALID:I = -0x1

.field static final MPC_HOST_PORT_INVALID:I = -0x1

.field static final TAG:Ljava/lang/String; = "VzwGpsConfigInit"


# instance fields
.field private mApplicationId:J

.field private mApplicationName:Ljava/lang/String;

.field private mApplicationPassword:Ljava/lang/String;

.field private mMpcHost:Ljava/net/InetAddress;

.field private mMpcHostAddress:Ljava/lang/String;

.field private mMpcHostPort:I

.field private mSmsPrefix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 314
    new-instance v0, Lcom/vzw/location/VzwGpsConfigInit$1;

    invoke-direct {v0}, Lcom/vzw/location/VzwGpsConfigInit$1;-><init>()V

    sput-object v0, Lcom/vzw/location/VzwGpsConfigInit;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-string v1, "VzwGpsConfigInit"

    const-string v2, "[VzwGpsConfigInit] Create new VzwGpsConfigInit object."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    const-wide/16 v2, -0x1

    invoke-virtual {p0, v2, v3, v0}, Lcom/vzw/location/VzwGpsConfigInit;->setCredentials(JLjava/lang/String;)V

    .line 54
    invoke-virtual {p0, v0, v0}, Lcom/vzw/location/VzwGpsConfigInit;->setSmsPrefixInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    check-cast v0, Ljava/net/InetAddress;

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/vzw/location/VzwGpsConfigInit;->setMpc(Ljava/net/InetAddress;I)V

    .line 57
    return-void
.end method


# virtual methods
.method public ResetLocSrv()V
    .locals 2

    .prologue
    .line 462
    const-string v0, "VzwGpsConfigInit"

    const-string v1, "ResetLocSrv()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    invoke-virtual {p0}, Lcom/vzw/location/VzwGpsConfigInit;->resetLocSrv()V

    .line 464
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 293
    const/4 v0, 0x0

    return v0
.end method

.method public getApplicationID()J
    .locals 2

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/vzw/location/VzwGpsConfigInit;->mApplicationId:J

    return-wide v0
.end method

.method public getApplicationId()J
    .locals 2

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/vzw/location/VzwGpsConfigInit;->getApplicationID()J

    move-result-wide v0

    return-wide v0
.end method

.method public getApplicationPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/vzw/location/VzwGpsConfigInit;->mApplicationPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getFullyQualifiedAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/vzw/location/VzwGpsConfigInit;->mApplicationName:Ljava/lang/String;

    return-object v0
.end method

.method public getMpcHost()Ljava/net/InetAddress;
    .locals 2

    .prologue
    .line 269
    const-string v0, "VzwGpsConfigInit"

    const-string v1, "[getMpcHost] return InetAddress"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget-object v0, p0, Lcom/vzw/location/VzwGpsConfigInit;->mMpcHost:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getMpcHostPort()I
    .locals 3

    .prologue
    .line 275
    const-string v0, "VzwGpsConfigInit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getMpcHostPort] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/vzw/location/VzwGpsConfigInit;->mMpcHostPort:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget v0, p0, Lcom/vzw/location/VzwGpsConfigInit;->mMpcHostPort:I

    return v0
.end method

.method public getMpcPort()I
    .locals 3

    .prologue
    .line 240
    const-string v0, "VzwGpsConfigInit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getMpcPort] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/vzw/location/VzwGpsConfigInit;->mMpcHostPort:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget v0, p0, Lcom/vzw/location/VzwGpsConfigInit;->mMpcHostPort:I

    return v0
.end method

.method public getSmsPrefixInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/vzw/location/VzwGpsConfigInit;->mSmsPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public log()Ljava/lang/String;
    .locals 4

    .prologue
    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 281
    .local v0, "log":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Credential Info] ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/vzw/location/VzwGpsConfigInit;->mApplicationId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | PW="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vzw/location/VzwGpsConfigInit;->mApplicationPassword:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SMS Wakeup Info] Prefix="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vzw/location/VzwGpsConfigInit;->mSmsPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | App Name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vzw/location/VzwGpsConfigInit;->mApplicationName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Host Info] Host Address="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vzw/location/VzwGpsConfigInit;->mMpcHostAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | Port="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/vzw/location/VzwGpsConfigInit;->mMpcHostPort:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public resetLocSrv()V
    .locals 2

    .prologue
    .line 456
    const-string v0, "VzwGpsConfigInit"

    const-string v1, "resetLocSrv()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    invoke-virtual {p0}, Lcom/vzw/location/VzwGpsConfigInit;->resetMpc()V

    .line 458
    return-void
.end method

.method public resetMpc()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 261
    const-string v0, "VzwGpsConfigInit"

    const-string v1, "[resetMpc] resetMpc. mMpcHost=null, mMpcHostAddress=null, mMpcHostPort=-1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iput-object v2, p0, Lcom/vzw/location/VzwGpsConfigInit;->mMpcHost:Ljava/net/InetAddress;

    .line 263
    iput-object v2, p0, Lcom/vzw/location/VzwGpsConfigInit;->mMpcHostAddress:Ljava/lang/String;

    .line 264
    const/4 v0, -0x1

    iput v0, p0, Lcom/vzw/location/VzwGpsConfigInit;->mMpcHostPort:I

    .line 265
    return-void
.end method

.method public setCredentials(JLjava/lang/String;)V
    .locals 5
    .param p1, "applicationId"    # J
    .param p3, "applicationPassword"    # Ljava/lang/String;

    .prologue
    .line 102
    if-nez p3, :cond_0

    .line 103
    const-string v1, "VzwGpsConfigInit"

    const-string v2, "[setCredentials] Application password is null."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 105
    .local v0, "appPasswd":Ljava/lang/String;
    iput-object v0, p0, Lcom/vzw/location/VzwGpsConfigInit;->mApplicationPassword:Ljava/lang/String;

    .line 110
    .end local v0    # "appPasswd":Ljava/lang/String;
    :goto_0
    const-string v1, "VzwGpsConfigInit"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setCredentials] Application ID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " | Application Password="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iput-wide p1, p0, Lcom/vzw/location/VzwGpsConfigInit;->mApplicationId:J

    .line 112
    return-void

    .line 108
    :cond_0
    iput-object p3, p0, Lcom/vzw/location/VzwGpsConfigInit;->mApplicationPassword:Ljava/lang/String;

    goto :goto_0
.end method

.method public setLocSrv(Ljava/lang/String;I)V
    .locals 2
    .param p1, "LocSrvHost"    # Ljava/lang/String;
    .param p2, "LocSrvPort"    # I

    .prologue
    .line 404
    const-string v0, "VzwGpsConfigInit"

    const-string/jumbo v1, "setLocSrv(String LocSrvHost, int LocSrvPort)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    invoke-virtual {p0, p1, p2}, Lcom/vzw/location/VzwGpsConfigInit;->setMpc(Ljava/lang/String;I)V

    .line 406
    return-void
.end method

.method public setLocSrv(Ljava/net/InetAddress;I)V
    .locals 2
    .param p1, "LocSrvHost"    # Ljava/net/InetAddress;
    .param p2, "LocSrvPort"    # I

    .prologue
    .line 386
    const-string v0, "VzwGpsConfigInit"

    const-string/jumbo v1, "setLocSrv(InetAddress LocSrvHost, int LocSrvPort)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    invoke-virtual {p0, p1, p2}, Lcom/vzw/location/VzwGpsConfigInit;->setMpc(Ljava/net/InetAddress;I)V

    .line 388
    return-void
.end method

.method public setLocSrvHost(Ljava/lang/String;)V
    .locals 2
    .param p1, "LocSrvHost"    # Ljava/lang/String;

    .prologue
    .line 420
    const-string v0, "VzwGpsConfigInit"

    const-string/jumbo v1, "setLocSrvHost(String LocSrvHost)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    invoke-virtual {p0, p1}, Lcom/vzw/location/VzwGpsConfigInit;->setMpcHost(Ljava/lang/String;)V

    .line 422
    return-void
.end method

.method public setLocSrvHost(Ljava/net/InetAddress;)V
    .locals 2
    .param p1, "LocSrvHost"    # Ljava/net/InetAddress;

    .prologue
    .line 433
    const-string v0, "VzwGpsConfigInit"

    const-string/jumbo v1, "setLocSrvHost(InetAddress LocSrvHost)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    invoke-virtual {p0, p1}, Lcom/vzw/location/VzwGpsConfigInit;->setMpcHost(Ljava/net/InetAddress;)V

    .line 435
    return-void
.end method

.method public setLocSrvPort(I)V
    .locals 2
    .param p1, "LocSrvPort"    # I

    .prologue
    .line 445
    const-string v0, "VzwGpsConfigInit"

    const-string/jumbo v1, "setLocSrvPort(int LocSrvPort)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    invoke-virtual {p0, p1}, Lcom/vzw/location/VzwGpsConfigInit;->setMpcPort(I)V

    .line 447
    return-void
.end method

.method public setMpc(Ljava/lang/String;I)V
    .locals 4
    .param p1, "mpcHost"    # Ljava/lang/String;
    .param p2, "mpcPort"    # I

    .prologue
    .line 187
    const-string v1, "VzwGpsConfigInit"

    const-string v2, "[setMpc] overloaded with String"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/vzw/location/VzwGpsConfigInit;->setMpcHost(Ljava/net/InetAddress;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :goto_0
    invoke-virtual {p0, p2}, Lcom/vzw/location/VzwGpsConfigInit;->setMpcPort(I)V

    .line 195
    return-void

    .line 190
    :catch_0
    move-exception v0

    .line 191
    .local v0, "e":Ljava/net/UnknownHostException;
    const-string v1, "VzwGpsConfigInit"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setMpc] host name ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]can\'t be resolved"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setMpc(Ljava/net/InetAddress;I)V
    .locals 3
    .param p1, "mpcHost"    # Ljava/net/InetAddress;
    .param p2, "mpcPort"    # I

    .prologue
    .line 170
    const-string v0, "VzwGpsConfigInit"

    const-string v1, "[setMpc] overloaded with InetAddress."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const-string v0, "VzwGpsConfigInit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setMpc] setMpcHost will be called. mpcHost = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-virtual {p0, p1}, Lcom/vzw/location/VzwGpsConfigInit;->setMpcHost(Ljava/net/InetAddress;)V

    .line 173
    const-string v0, "VzwGpsConfigInit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setMpc] setMpcPort will be called. mpcPort = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-virtual {p0, p2}, Lcom/vzw/location/VzwGpsConfigInit;->setMpcPort(I)V

    .line 175
    return-void
.end method

.method public setMpcHost(Ljava/lang/String;)V
    .locals 4
    .param p1, "mpcHost"    # Ljava/lang/String;

    .prologue
    .line 226
    const-string v1, "VzwGpsConfigInit"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setMpcHost(String mpcHost)] mMpcHost = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    iput-object v1, p0, Lcom/vzw/location/VzwGpsConfigInit;->mMpcHost:Ljava/net/InetAddress;

    .line 229
    const-string v1, "VzwGpsConfigInit"

    const-string v2, "[setMpcHost(String mpcHost)] Create mMpsHost by InetAddress.getByName(mpcHost)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const-string v1, "VzwGpsConfigInit"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setMpcHost(String mpcHost)] mMpcHost = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vzw/location/VzwGpsConfigInit;->mMpcHost:Ljava/net/InetAddress;

    invoke-virtual {v3}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    :goto_0
    iput-object p1, p0, Lcom/vzw/location/VzwGpsConfigInit;->mMpcHostAddress:Ljava/lang/String;

    .line 236
    const-string v1, "VzwGpsConfigInit"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setMpcHost(String mpcHost)] mMpcHostAddress = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vzw/location/VzwGpsConfigInit;->mMpcHostAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    return-void

    .line 231
    :catch_0
    move-exception v0

    .line 232
    .local v0, "e":Ljava/net/UnknownHostException;
    const-string v1, "VzwGpsConfigInit"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setMpcHost(String mpcHost)] host name ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]can\'t be resolved"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setMpcHost(Ljava/net/InetAddress;)V
    .locals 3
    .param p1, "mpcHost"    # Ljava/net/InetAddress;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/vzw/location/VzwGpsConfigInit;->mMpcHost:Ljava/net/InetAddress;

    .line 207
    iget-object v0, p0, Lcom/vzw/location/VzwGpsConfigInit;->mMpcHost:Ljava/net/InetAddress;

    if-nez v0, :cond_0

    .line 208
    const-string v0, "VzwGpsConfigInit"

    const-string v1, "[setMpcHost(InetAddress mpcHost)] mMpcHost=null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vzw/location/VzwGpsConfigInit;->mMpcHostAddress:Ljava/lang/String;

    .line 215
    :goto_0
    return-void

    .line 211
    :cond_0
    const-string v0, "VzwGpsConfigInit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setMpcHost(InetAddress mpcHost)] mMpcHost = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vzw/location/VzwGpsConfigInit;->mMpcHost:Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vzw/location/VzwGpsConfigInit;->mMpcHostAddress:Ljava/lang/String;

    .line 213
    const-string v0, "VzwGpsConfigInit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setMpcHost(InetAddress mpcHost)] mMpcHostAddress = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vzw/location/VzwGpsConfigInit;->mMpcHostAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setMpcPort(I)V
    .locals 3
    .param p1, "mpcPort"    # I

    .prologue
    .line 252
    iput p1, p0, Lcom/vzw/location/VzwGpsConfigInit;->mMpcHostPort:I

    .line 253
    const-string v0, "VzwGpsConfigInit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setMpcPort] mMpcHostPort = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/vzw/location/VzwGpsConfigInit;->mMpcHostPort:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    return-void
.end method

.method public setSlp(Ljava/lang/String;I)V
    .locals 2
    .param p1, "SlpHost"    # Ljava/lang/String;
    .param p2, "SlpPort"    # I

    .prologue
    .line 372
    const-string v0, "VzwGpsConfigInit"

    const-string/jumbo v1, "setSlp(String SlpHost, int SlpPort)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    invoke-virtual {p0, p1, p2}, Lcom/vzw/location/VzwGpsConfigInit;->setLocSrv(Ljava/lang/String;I)V

    .line 374
    return-void
.end method

.method public setSmsPrefixInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "appPrefix"    # Ljava/lang/String;
    .param p2, "fullyQualifiedName"    # Ljava/lang/String;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/vzw/location/VzwGpsConfigInit;->mSmsPrefix:Ljava/lang/String;

    .line 137
    iput-object p2, p0, Lcom/vzw/location/VzwGpsConfigInit;->mApplicationName:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mMpcHostName=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vzw/location/VzwGpsConfigInit;->mMpcHostAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], mMpcPort=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vzw/location/VzwGpsConfigInit;->mMpcHostPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], mSmsPrefix=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vzw/location/VzwGpsConfigInit;->mSmsPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], mAppName=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vzw/location/VzwGpsConfigInit;->mApplicationName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "i"    # I

    .prologue
    .line 298
    iget-wide v2, p0, Lcom/vzw/location/VzwGpsConfigInit;->mApplicationId:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 299
    iget-object v1, p0, Lcom/vzw/location/VzwGpsConfigInit;->mApplicationPassword:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 300
    iget-object v1, p0, Lcom/vzw/location/VzwGpsConfigInit;->mSmsPrefix:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 301
    iget-object v1, p0, Lcom/vzw/location/VzwGpsConfigInit;->mApplicationName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 302
    iget-object v1, p0, Lcom/vzw/location/VzwGpsConfigInit;->mMpcHost:Ljava/net/InetAddress;

    if-nez v1, :cond_0

    .line 304
    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 310
    :goto_0
    iget v1, p0, Lcom/vzw/location/VzwGpsConfigInit;->mMpcHostPort:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 311
    return-void

    .line 306
    :cond_0
    iget-object v1, p0, Lcom/vzw/location/VzwGpsConfigInit;->mMpcHost:Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 307
    .local v0, "mpcHostAsByteArray":[B
    array-length v1, v0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 308
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0
.end method
