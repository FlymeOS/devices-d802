.class Lcom/android/nfc/LSmartCardService$1;
.super Ljava/lang/Object;
.source "LSmartCardService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/LSmartCardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/LSmartCardService;


# direct methods
.method constructor <init>(Lcom/android/nfc/LSmartCardService;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/nfc/LSmartCardService$1;->this$0:Lcom/android/nfc/LSmartCardService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 51
    monitor-enter p0

    :try_start_0
    # getter for: Lcom/android/nfc/LSmartCardService;->DBG:Z
    invoke-static {}, Lcom/android/nfc/LSmartCardService;->access$000()Z

    move-result v0

    const-string v1, "LSmartCardService"

    const-string v2, "[NfcService]Global Access Control onServiceConnected"

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->w(ZLjava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/android/nfc/LSmartCardService$1;->this$0:Lcom/android/nfc/LSmartCardService;

    invoke-static {p2}, Lorg/simalliance/openmobileapi/service/ISmartcardService$Stub;->asInterface(Landroid/os/IBinder;)Lorg/simalliance/openmobileapi/service/ISmartcardService;

    move-result-object v1

    iput-object v1, v0, Lcom/android/nfc/LSmartCardService;->mGpacAccessControlSvc:Lorg/simalliance/openmobileapi/service/ISmartcardService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    monitor-exit p0

    return-void

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 57
    # getter for: Lcom/android/nfc/LSmartCardService;->DBG:Z
    invoke-static {}, Lcom/android/nfc/LSmartCardService;->access$000()Z

    move-result v0

    const-string v1, "LSmartCardService"

    const-string v2, "[NfcService]Global Access Control onServiceDisconnected"

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->w(ZLjava/lang/String;Ljava/lang/String;)V

    .line 58
    return-void
.end method
