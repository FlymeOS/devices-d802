.class Lcom/vzw/location/VzwLocationManager$VzwGpsStatusListenerTransport;
.super Lcom/vzw/location/IVzwGpsStatusListener$Stub;
.source "VzwLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vzw/location/VzwLocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VzwGpsStatusListenerTransport"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VzwLocationManager.VzwGpsStatusListenerTransport"


# instance fields
.field private final mListener:Lcom/vzw/location/VzwGpsStatus$Listener;

.field private final mVzwGpsStatusListenerHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/vzw/location/VzwLocationManager;


# direct methods
.method constructor <init>(Lcom/vzw/location/VzwLocationManager;Lcom/vzw/location/VzwGpsStatus$Listener;)V
    .locals 1
    .param p2, "listener"    # Lcom/vzw/location/VzwGpsStatus$Listener;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/vzw/location/VzwLocationManager$VzwGpsStatusListenerTransport;->this$0:Lcom/vzw/location/VzwLocationManager;

    invoke-direct {p0}, Lcom/vzw/location/IVzwGpsStatusListener$Stub;-><init>()V

    .line 286
    new-instance v0, Lcom/vzw/location/VzwLocationManager$VzwGpsStatusListenerTransport$1;

    invoke-direct {v0, p0}, Lcom/vzw/location/VzwLocationManager$VzwGpsStatusListenerTransport$1;-><init>(Lcom/vzw/location/VzwLocationManager$VzwGpsStatusListenerTransport;)V

    iput-object v0, p0, Lcom/vzw/location/VzwLocationManager$VzwGpsStatusListenerTransport;->mVzwGpsStatusListenerHandler:Landroid/os/Handler;

    .line 226
    iput-object p2, p0, Lcom/vzw/location/VzwLocationManager$VzwGpsStatusListenerTransport;->mListener:Lcom/vzw/location/VzwGpsStatus$Listener;

    .line 227
    return-void
.end method

.method static synthetic access$300(Lcom/vzw/location/VzwLocationManager$VzwGpsStatusListenerTransport;)Lcom/vzw/location/VzwGpsStatus$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/vzw/location/VzwLocationManager$VzwGpsStatusListenerTransport;

    .prologue
    .line 221
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManager$VzwGpsStatusListenerTransport;->mListener:Lcom/vzw/location/VzwGpsStatus$Listener;

    return-object v0
.end method

.method private sendMessage(I)V
    .locals 4
    .param p1, "what"    # I

    .prologue
    .line 232
    invoke-static {p1}, Lcom/vzw/location/VzwGpsStatus;->getStringForStatus(I)Ljava/lang/String;

    move-result-object v0

    .line 233
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "VzwLocationManager.VzwGpsStatusListenerTransport"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[sendMessage] Sending message : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 237
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 238
    iget-object v1, p0, Lcom/vzw/location/VzwLocationManager$VzwGpsStatusListenerTransport;->mVzwGpsStatusListenerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 239
    return-void
.end method


# virtual methods
.method public onFirstFix(I)V
    .locals 1
    .param p1, "ttff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 242
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManager$VzwGpsStatusListenerTransport;->mListener:Lcom/vzw/location/VzwGpsStatus$Listener;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManager$VzwGpsStatusListenerTransport;->this$0:Lcom/vzw/location/VzwLocationManager;

    # getter for: Lcom/vzw/location/VzwLocationManager;->mVzwGpsStatus:Lcom/vzw/location/VzwGpsStatus;
    invoke-static {v0}, Lcom/vzw/location/VzwLocationManager;->access$100(Lcom/vzw/location/VzwLocationManager;)Lcom/vzw/location/VzwGpsStatus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/vzw/location/VzwGpsStatus;->setTimeToFirstFix(I)V

    .line 244
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/vzw/location/VzwLocationManager$VzwGpsStatusListenerTransport;->sendMessage(I)V

    .line 246
    :cond_0
    return-void
.end method

.method public onGpsDeviceStatusChanged(Lcom/vzw/location/VzwGpsDeviceStatus;)V
    .locals 1
    .param p1, "status"    # Lcom/vzw/location/VzwGpsDeviceStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 263
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManager$VzwGpsStatusListenerTransport;->mListener:Lcom/vzw/location/VzwGpsStatus$Listener;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManager$VzwGpsStatusListenerTransport;->this$0:Lcom/vzw/location/VzwLocationManager;

    # getter for: Lcom/vzw/location/VzwLocationManager;->mVzwGpsDeviceStatus:Lcom/vzw/location/VzwGpsDeviceStatus;
    invoke-static {v0}, Lcom/vzw/location/VzwLocationManager;->access$200(Lcom/vzw/location/VzwLocationManager;)Lcom/vzw/location/VzwGpsDeviceStatus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/vzw/location/VzwGpsDeviceStatus;->setStatus(Lcom/vzw/location/VzwGpsDeviceStatus;)V

    .line 265
    const/16 v0, 0x19

    invoke-direct {p0, v0}, Lcom/vzw/location/VzwLocationManager$VzwGpsStatusListenerTransport;->sendMessage(I)V

    .line 267
    :cond_0
    return-void
.end method

.method public onGpsStatusChanged(I)V
    .locals 1
    .param p1, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 281
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManager$VzwGpsStatusListenerTransport;->mListener:Lcom/vzw/location/VzwGpsStatus$Listener;

    if-eqz v0, :cond_0

    .line 282
    invoke-direct {p0, p1}, Lcom/vzw/location/VzwLocationManager$VzwGpsStatusListenerTransport;->sendMessage(I)V

    .line 284
    :cond_0
    return-void
.end method

.method public onSatStatusChanged(II[I[I[F[F[F)V
    .locals 8
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
    .line 273
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManager$VzwGpsStatusListenerTransport;->mListener:Lcom/vzw/location/VzwGpsStatus$Listener;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManager$VzwGpsStatusListenerTransport;->this$0:Lcom/vzw/location/VzwLocationManager;

    # getter for: Lcom/vzw/location/VzwLocationManager;->mVzwGpsStatus:Lcom/vzw/location/VzwGpsStatus;
    invoke-static {v0}, Lcom/vzw/location/VzwLocationManager;->access$100(Lcom/vzw/location/VzwLocationManager;)Lcom/vzw/location/VzwGpsStatus;

    move-result-object v0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/vzw/location/VzwGpsStatus;->setStatus(II[I[I[F[F[F)V

    .line 276
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/vzw/location/VzwLocationManager$VzwGpsStatusListenerTransport;->sendMessage(I)V

    .line 278
    :cond_0
    return-void
.end method

.method public onSvStatusChanged(II[I[I[F[F[F)V
    .locals 8
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
    .line 252
    const-string v0, "VzwLocationManager.VzwGpsStatusListenerTransport"

    const-string v1, "[onSvStatusChanged] Entering."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManager$VzwGpsStatusListenerTransport;->mListener:Lcom/vzw/location/VzwGpsStatus$Listener;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManager$VzwGpsStatusListenerTransport;->this$0:Lcom/vzw/location/VzwLocationManager;

    # getter for: Lcom/vzw/location/VzwLocationManager;->mVzwGpsStatus:Lcom/vzw/location/VzwGpsStatus;
    invoke-static {v0}, Lcom/vzw/location/VzwLocationManager;->access$100(Lcom/vzw/location/VzwLocationManager;)Lcom/vzw/location/VzwGpsStatus;

    move-result-object v0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/vzw/location/VzwGpsStatus;->setStatus(II[I[I[F[F[F)V

    .line 256
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/vzw/location/VzwLocationManager$VzwGpsStatusListenerTransport;->sendMessage(I)V

    .line 259
    :cond_0
    return-void
.end method
