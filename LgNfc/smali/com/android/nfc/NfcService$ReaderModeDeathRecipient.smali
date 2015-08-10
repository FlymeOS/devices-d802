.class final Lcom/android/nfc/NfcService$ReaderModeDeathRecipient;
.super Ljava/lang/Object;
.source "NfcService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/NfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ReaderModeDeathRecipient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/NfcService;


# direct methods
.method constructor <init>(Lcom/android/nfc/NfcService;)V
    .locals 0

    .prologue
    .line 985
    iput-object p1, p0, Lcom/android/nfc/NfcService$ReaderModeDeathRecipient;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .prologue
    .line 988
    iget-object v1, p0, Lcom/android/nfc/NfcService$ReaderModeDeathRecipient;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v1

    .line 989
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService$ReaderModeDeathRecipient;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    if-eqz v0, :cond_0

    .line 990
    iget-object v0, p0, Lcom/android/nfc/NfcService$ReaderModeDeathRecipient;->this$0:Lcom/android/nfc/NfcService;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/nfc/NfcService;->mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    .line 991
    iget-object v0, p0, Lcom/android/nfc/NfcService$ReaderModeDeathRecipient;->this$0:Lcom/android/nfc/NfcService;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/nfc/NfcService;->applyRouting(Z)V

    .line 993
    :cond_0
    monitor-exit v1

    .line 994
    return-void

    .line 993
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
