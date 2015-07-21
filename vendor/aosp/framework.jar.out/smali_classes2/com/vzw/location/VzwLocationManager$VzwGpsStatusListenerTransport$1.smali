.class Lcom/vzw/location/VzwLocationManager$VzwGpsStatusListenerTransport$1;
.super Landroid/os/Handler;
.source "VzwLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vzw/location/VzwLocationManager$VzwGpsStatusListenerTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "mVzwGpsStatusListenerHandler"


# instance fields
.field final synthetic this$1:Lcom/vzw/location/VzwLocationManager$VzwGpsStatusListenerTransport;


# direct methods
.method constructor <init>(Lcom/vzw/location/VzwLocationManager$VzwGpsStatusListenerTransport;)V
    .locals 0

    .prologue
    .line 286
    iput-object p1, p0, Lcom/vzw/location/VzwLocationManager$VzwGpsStatusListenerTransport$1;->this$1:Lcom/vzw/location/VzwLocationManager$VzwGpsStatusListenerTransport;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 291
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManager$VzwGpsStatusListenerTransport$1;->this$1:Lcom/vzw/location/VzwLocationManager$VzwGpsStatusListenerTransport;

    iget-object v0, v0, Lcom/vzw/location/VzwLocationManager$VzwGpsStatusListenerTransport;->this$0:Lcom/vzw/location/VzwLocationManager;

    # getter for: Lcom/vzw/location/VzwLocationManager;->mVzwGpsStatus:Lcom/vzw/location/VzwGpsStatus;
    invoke-static {v0}, Lcom/vzw/location/VzwLocationManager;->access$100(Lcom/vzw/location/VzwLocationManager;)Lcom/vzw/location/VzwGpsStatus;

    move-result-object v1

    monitor-enter v1

    .line 292
    :try_start_0
    const-string v0, "mVzwGpsStatusListenerHandler"

    const-string v2, "[handleMessage] Sending messnage to VzwGpsStatus.Listener"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManager$VzwGpsStatusListenerTransport$1;->this$1:Lcom/vzw/location/VzwLocationManager$VzwGpsStatusListenerTransport;

    # getter for: Lcom/vzw/location/VzwLocationManager$VzwGpsStatusListenerTransport;->mListener:Lcom/vzw/location/VzwGpsStatus$Listener;
    invoke-static {v0}, Lcom/vzw/location/VzwLocationManager$VzwGpsStatusListenerTransport;->access$300(Lcom/vzw/location/VzwLocationManager$VzwGpsStatusListenerTransport;)Lcom/vzw/location/VzwGpsStatus$Listener;

    move-result-object v0

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-interface {v0, v2}, Lcom/vzw/location/VzwGpsStatus$Listener;->onGpsStatusChanged(I)V

    .line 294
    monitor-exit v1

    .line 295
    return-void

    .line 294
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
