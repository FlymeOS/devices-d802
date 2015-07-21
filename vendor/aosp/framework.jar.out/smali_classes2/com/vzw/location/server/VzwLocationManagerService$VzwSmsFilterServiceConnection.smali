.class Lcom/vzw/location/server/VzwLocationManagerService$VzwSmsFilterServiceConnection;
.super Ljava/lang/Object;
.source "VzwLocationManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vzw/location/server/VzwLocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VzwSmsFilterServiceConnection"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VzwLocationManagerService.VzwSmsFilterServiceConnection"


# instance fields
.field final synthetic this$0:Lcom/vzw/location/server/VzwLocationManagerService;


# direct methods
.method private constructor <init>(Lcom/vzw/location/server/VzwLocationManagerService;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/vzw/location/server/VzwLocationManagerService$VzwSmsFilterServiceConnection;->this$0:Lcom/vzw/location/server/VzwLocationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vzw/location/server/VzwLocationManagerService;Lcom/vzw/location/server/VzwLocationManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vzw/location/server/VzwLocationManagerService;
    .param p2, "x1"    # Lcom/vzw/location/server/VzwLocationManagerService$1;

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/vzw/location/server/VzwLocationManagerService$VzwSmsFilterServiceConnection;-><init>(Lcom/vzw/location/server/VzwLocationManagerService;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 122
    const-string v0, "VzwLocationManagerService.VzwSmsFilterServiceConnection"

    const-string v1, "[onServiceConnected] SMS Filter service is started and bound to VzwLocationManagerService."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v0, p0, Lcom/vzw/location/server/VzwLocationManagerService$VzwSmsFilterServiceConnection;->this$0:Lcom/vzw/location/server/VzwLocationManagerService;

    invoke-static {p2}, Lcom/vzw/smsfilter/IVzwSmsReceiverServiceInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/vzw/smsfilter/IVzwSmsReceiverServiceInterface;

    move-result-object v1

    # setter for: Lcom/vzw/location/server/VzwLocationManagerService;->mVzwSmsReceiverService:Lcom/vzw/smsfilter/IVzwSmsReceiverServiceInterface;
    invoke-static {v0, v1}, Lcom/vzw/location/server/VzwLocationManagerService;->access$002(Lcom/vzw/location/server/VzwLocationManagerService;Lcom/vzw/smsfilter/IVzwSmsReceiverServiceInterface;)Lcom/vzw/smsfilter/IVzwSmsReceiverServiceInterface;

    .line 124
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 127
    const-string v0, "VzwLocationManagerService.VzwSmsFilterServiceConnection"

    const-string v1, "[onServiceDisconnected] SMS Filter service disconnected abnormally. Will rebind to the service."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v0, p0, Lcom/vzw/location/server/VzwLocationManagerService$VzwSmsFilterServiceConnection;->this$0:Lcom/vzw/location/server/VzwLocationManagerService;

    const/4 v1, 0x0

    # setter for: Lcom/vzw/location/server/VzwLocationManagerService;->mVzwSmsReceiverService:Lcom/vzw/smsfilter/IVzwSmsReceiverServiceInterface;
    invoke-static {v0, v1}, Lcom/vzw/location/server/VzwLocationManagerService;->access$002(Lcom/vzw/location/server/VzwLocationManagerService;Lcom/vzw/smsfilter/IVzwSmsReceiverServiceInterface;)Lcom/vzw/smsfilter/IVzwSmsReceiverServiceInterface;

    .line 129
    return-void
.end method
