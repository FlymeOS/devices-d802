.class final Lcom/vzw/location/server/VzwClient$VzwGpsStatusListener;
.super Ljava/lang/Object;
.source "VzwClient.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vzw/location/server/VzwClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "VzwGpsStatusListener"
.end annotation


# instance fields
.field final mListener:Lcom/vzw/location/IVzwGpsStatusListener;

.field final synthetic this$0:Lcom/vzw/location/server/VzwClient;


# direct methods
.method constructor <init>(Lcom/vzw/location/server/VzwClient;Lcom/vzw/location/IVzwGpsStatusListener;)V
    .locals 2
    .param p2, "listener"    # Lcom/vzw/location/IVzwGpsStatusListener;

    .prologue
    .line 327
    iput-object p1, p0, Lcom/vzw/location/server/VzwClient$VzwGpsStatusListener;->this$0:Lcom/vzw/location/server/VzwClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 328
    # getter for: Lcom/vzw/location/server/VzwClient;->DEBUG:Z
    invoke-static {p1}, Lcom/vzw/location/server/VzwClient;->access$500(Lcom/vzw/location/server/VzwClient;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "VzwClient"

    const-string v1, "[VzwGpsStatusListener] This VzwGpsStatusListener is member of VzwGpsStatusListeners[]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :cond_0
    iput-object p2, p0, Lcom/vzw/location/server/VzwClient$VzwGpsStatusListener;->mListener:Lcom/vzw/location/IVzwGpsStatusListener;

    .line 330
    return-void
.end method

.method static synthetic access$000(Lcom/vzw/location/server/VzwClient$VzwGpsStatusListener;I)V
    .locals 0
    .param p0, "x0"    # Lcom/vzw/location/server/VzwClient$VzwGpsStatusListener;
    .param p1, "x1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 323
    invoke-direct {p0, p1}, Lcom/vzw/location/server/VzwClient$VzwGpsStatusListener;->callonGpsStatusChanged(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/vzw/location/server/VzwClient$VzwGpsStatusListener;Lcom/vzw/location/VzwGpsDeviceStatus;)V
    .locals 0
    .param p0, "x0"    # Lcom/vzw/location/server/VzwClient$VzwGpsStatusListener;
    .param p1, "x1"    # Lcom/vzw/location/VzwGpsDeviceStatus;

    .prologue
    .line 323
    invoke-direct {p0, p1}, Lcom/vzw/location/server/VzwClient$VzwGpsStatusListener;->callonGpsDeviceStatusChanged(Lcom/vzw/location/VzwGpsDeviceStatus;)V

    return-void
.end method

.method static synthetic access$200(Lcom/vzw/location/server/VzwClient$VzwGpsStatusListener;II[I[I[F[F[F)V
    .locals 0
    .param p0, "x0"    # Lcom/vzw/location/server/VzwClient$VzwGpsStatusListener;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # [I
    .param p4, "x4"    # [I
    .param p5, "x5"    # [F
    .param p6, "x6"    # [F
    .param p7, "x7"    # [F

    .prologue
    .line 323
    invoke-direct/range {p0 .. p7}, Lcom/vzw/location/server/VzwClient$VzwGpsStatusListener;->callonSvStatusChanged(II[I[I[F[F[F)V

    return-void
.end method

.method static synthetic access$300(Lcom/vzw/location/server/VzwClient$VzwGpsStatusListener;I)V
    .locals 0
    .param p0, "x0"    # Lcom/vzw/location/server/VzwClient$VzwGpsStatusListener;
    .param p1, "x1"    # I

    .prologue
    .line 323
    invoke-direct {p0, p1}, Lcom/vzw/location/server/VzwClient$VzwGpsStatusListener;->callonFirstFix(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/vzw/location/server/VzwClient$VzwGpsStatusListener;II[I[I[F[F[F)V
    .locals 0
    .param p0, "x0"    # Lcom/vzw/location/server/VzwClient$VzwGpsStatusListener;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # [I
    .param p4, "x4"    # [I
    .param p5, "x5"    # [F
    .param p6, "x6"    # [F
    .param p7, "x7"    # [F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 323
    invoke-direct/range {p0 .. p7}, Lcom/vzw/location/server/VzwClient$VzwGpsStatusListener;->callonSatStatusChanged(II[I[I[F[F[F)V

    return-void
.end method

.method private callonFirstFix(I)V
    .locals 3
    .param p1, "ttff"    # I

    .prologue
    .line 339
    :try_start_0
    iget-object v1, p0, Lcom/vzw/location/server/VzwClient$VzwGpsStatusListener;->this$0:Lcom/vzw/location/server/VzwClient;

    # getter for: Lcom/vzw/location/server/VzwClient;->DEBUG:Z
    invoke-static {v1}, Lcom/vzw/location/server/VzwClient;->access$500(Lcom/vzw/location/server/VzwClient;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "VzwClient"

    const-string v2, "[VzwGpsStatusListener] callonFirstFix()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :cond_0
    iget-object v1, p0, Lcom/vzw/location/server/VzwClient$VzwGpsStatusListener;->mListener:Lcom/vzw/location/IVzwGpsStatusListener;

    invoke-interface {v1, p1}, Lcom/vzw/location/IVzwGpsStatusListener;->onFirstFix(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    :cond_1
    :goto_0
    return-void

    .line 341
    :catch_0
    move-exception v0

    .line 342
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/vzw/location/server/VzwClient$VzwGpsStatusListener;->this$0:Lcom/vzw/location/server/VzwClient;

    # getter for: Lcom/vzw/location/server/VzwClient;->DEBUG:Z
    invoke-static {v1}, Lcom/vzw/location/server/VzwClient;->access$500(Lcom/vzw/location/server/VzwClient;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "VzwClient"

    const-string v2, "[VzwGpsStatusListener] Error. callonFirstFix - remote ex"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private callonGpsDeviceStatusChanged(Lcom/vzw/location/VzwGpsDeviceStatus;)V
    .locals 3
    .param p1, "status"    # Lcom/vzw/location/VzwGpsDeviceStatus;

    .prologue
    .line 360
    :try_start_0
    iget-object v1, p0, Lcom/vzw/location/server/VzwClient$VzwGpsStatusListener;->this$0:Lcom/vzw/location/server/VzwClient;

    # getter for: Lcom/vzw/location/server/VzwClient;->DEBUG:Z
    invoke-static {v1}, Lcom/vzw/location/server/VzwClient;->access$500(Lcom/vzw/location/server/VzwClient;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "VzwClient"

    const-string v2, "[VzwGpsStatusListener] callonGpsDeviceStatusChanged()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :cond_0
    iget-object v1, p0, Lcom/vzw/location/server/VzwClient$VzwGpsStatusListener;->mListener:Lcom/vzw/location/IVzwGpsStatusListener;

    invoke-interface {v1, p1}, Lcom/vzw/location/IVzwGpsStatusListener;->onGpsDeviceStatusChanged(Lcom/vzw/location/VzwGpsDeviceStatus;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    :cond_1
    :goto_0
    return-void

    .line 362
    :catch_0
    move-exception v0

    .line 363
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/vzw/location/server/VzwClient$VzwGpsStatusListener;->this$0:Lcom/vzw/location/server/VzwClient;

    # getter for: Lcom/vzw/location/server/VzwClient;->DEBUG:Z
    invoke-static {v1}, Lcom/vzw/location/server/VzwClient;->access$500(Lcom/vzw/location/server/VzwClient;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "VzwClient"

    const-string v2, "[VzwGpsStatusListener] Error. callonGpsDeviceStatusChanged - remote ex"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private callonGpsStatusChanged(I)V
    .locals 3
    .param p1, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 369
    :try_start_0
    iget-object v1, p0, Lcom/vzw/location/server/VzwClient$VzwGpsStatusListener;->this$0:Lcom/vzw/location/server/VzwClient;

    # getter for: Lcom/vzw/location/server/VzwClient;->DEBUG:Z
    invoke-static {v1}, Lcom/vzw/location/server/VzwClient;->access$500(Lcom/vzw/location/server/VzwClient;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "VzwClient"

    const-string v2, "[VzwGpsStatusListener] callonGpsStatusChanged()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :cond_0
    iget-object v1, p0, Lcom/vzw/location/server/VzwClient$VzwGpsStatusListener;->mListener:Lcom/vzw/location/IVzwGpsStatusListener;

    invoke-interface {v1, p1}, Lcom/vzw/location/IVzwGpsStatusListener;->onGpsStatusChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    :cond_1
    :goto_0
    return-void

    .line 371
    :catch_0
    move-exception v0

    .line 372
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/vzw/location/server/VzwClient$VzwGpsStatusListener;->this$0:Lcom/vzw/location/server/VzwClient;

    # getter for: Lcom/vzw/location/server/VzwClient;->DEBUG:Z
    invoke-static {v1}, Lcom/vzw/location/server/VzwClient;->access$500(Lcom/vzw/location/server/VzwClient;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "VzwClient"

    const-string v2, "[VzwGpsStatusListener] Error. callonGpsStatusChanged - remote ex"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private callonSatStatusChanged(II[I[I[F[F[F)V
    .locals 9
    .param p1, "svCount"    # I
    .param p2, "svInViewCount"    # I
    .param p3, "prn"    # [I
    .param p4, "prnInView"    # [I
    .param p5, "elevInView"    # [F
    .param p6, "azimInView"    # [F
    .param p7, "snrInView"    # [F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 380
    :try_start_0
    iget-object v0, p0, Lcom/vzw/location/server/VzwClient$VzwGpsStatusListener;->this$0:Lcom/vzw/location/server/VzwClient;

    # getter for: Lcom/vzw/location/server/VzwClient;->DEBUG:Z
    invoke-static {v0}, Lcom/vzw/location/server/VzwClient;->access$500(Lcom/vzw/location/server/VzwClient;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "VzwClient"

    const-string v1, "[VzwGpsStatusListener] callonSatStatusChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/vzw/location/server/VzwClient$VzwGpsStatusListener;->mListener:Lcom/vzw/location/IVzwGpsStatusListener;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/vzw/location/IVzwGpsStatusListener;->onSatStatusChanged(II[I[I[F[F[F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 386
    :cond_1
    :goto_0
    return-void

    .line 383
    :catch_0
    move-exception v8

    .line 384
    .local v8, "e":Landroid/os/RemoteException;
    iget-object v0, p0, Lcom/vzw/location/server/VzwClient$VzwGpsStatusListener;->this$0:Lcom/vzw/location/server/VzwClient;

    # getter for: Lcom/vzw/location/server/VzwClient;->DEBUG:Z
    invoke-static {v0}, Lcom/vzw/location/server/VzwClient;->access$500(Lcom/vzw/location/server/VzwClient;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "VzwClient"

    const-string v1, "[VzwGpsStatusListener] Error. callonSatStatusChanged - remote ex"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private callonSvStatusChanged(II[I[I[F[F[F)V
    .locals 9
    .param p1, "svCount"    # I
    .param p2, "svInViewCount"    # I
    .param p3, "prn"    # [I
    .param p4, "prnInView"    # [I
    .param p5, "elevInView"    # [F
    .param p6, "azimInView"    # [F
    .param p7, "snrInView"    # [F

    .prologue
    .line 350
    :try_start_0
    iget-object v0, p0, Lcom/vzw/location/server/VzwClient$VzwGpsStatusListener;->this$0:Lcom/vzw/location/server/VzwClient;

    # getter for: Lcom/vzw/location/server/VzwClient;->DEBUG:Z
    invoke-static {v0}, Lcom/vzw/location/server/VzwClient;->access$500(Lcom/vzw/location/server/VzwClient;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "VzwClient"

    const-string v1, "[VzwGpsStatusListener] callonSvStatusChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/vzw/location/server/VzwClient$VzwGpsStatusListener;->mListener:Lcom/vzw/location/IVzwGpsStatusListener;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/vzw/location/IVzwGpsStatusListener;->onSvStatusChanged(II[I[I[F[F[F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    :cond_1
    :goto_0
    return-void

    .line 353
    :catch_0
    move-exception v8

    .line 354
    .local v8, "e":Landroid/os/RemoteException;
    iget-object v0, p0, Lcom/vzw/location/server/VzwClient$VzwGpsStatusListener;->this$0:Lcom/vzw/location/server/VzwClient;

    # getter for: Lcom/vzw/location/server/VzwClient;->DEBUG:Z
    invoke-static {v0}, Lcom/vzw/location/server/VzwClient;->access$500(Lcom/vzw/location/server/VzwClient;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "VzwClient"

    const-string v1, "[VzwGpsStatusListener] Error. callonSvStatusChanged - remote ex"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    .line 333
    iget-object v0, p0, Lcom/vzw/location/server/VzwClient$VzwGpsStatusListener;->this$0:Lcom/vzw/location/server/VzwClient;

    # getter for: Lcom/vzw/location/server/VzwClient;->DEBUG:Z
    invoke-static {v0}, Lcom/vzw/location/server/VzwClient;->access$500(Lcom/vzw/location/server/VzwClient;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "VzwClient"

    const-string v1, "[VzwGpsStatusListener] VzwGPS status listener died"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/vzw/location/server/VzwClient$VzwGpsStatusListener;->this$0:Lcom/vzw/location/server/VzwClient;

    iget-object v1, p0, Lcom/vzw/location/server/VzwClient$VzwGpsStatusListener;->mListener:Lcom/vzw/location/IVzwGpsStatusListener;

    invoke-virtual {v0, v1}, Lcom/vzw/location/server/VzwClient;->removeVzwGpsStatusListener(Lcom/vzw/location/IVzwGpsStatusListener;)V

    .line 335
    return-void
.end method
