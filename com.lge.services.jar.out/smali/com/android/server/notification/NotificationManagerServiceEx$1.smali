.class Lcom/android/server/notification/NotificationManagerServiceEx$1;
.super Landroid/content/BroadcastReceiver;
.source "NotificationManagerServiceEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerServiceEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerServiceEx;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerServiceEx;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerServiceEx$1;->this$0:Lcom/android/server/notification/NotificationManagerServiceEx;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 194
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, "action":Ljava/lang/String;
    const-string v4, "com.lge.media.STOP_NOTIFICATION"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 198
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 200
    .local v2, "identity":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerServiceEx$1;->this$0:Lcom/android/server/notification/NotificationManagerServiceEx;

    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerServiceEx;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v1

    .line 201
    .local v1, "player":Landroid/media/IRingtonePlayer;
    if-eqz v1, :cond_0

    .line 202
    invoke-interface {v1}, Landroid/media/IRingtonePlayer;->stopAsync()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 223
    .end local v1    # "player":Landroid/media/IRingtonePlayer;
    .end local v2    # "identity":J
    :cond_1
    :goto_0
    return-void

    .line 204
    .restart local v2    # "identity":J
    :catch_0
    move-exception v4

    .line 206
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 208
    .end local v2    # "identity":J
    :cond_2
    const-string v4, "com.lge.android.intent.action.EXCESS_SPC_FAIL_EVENT"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 209
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerServiceEx$1;->this$0:Lcom/android/server/notification/NotificationManagerServiceEx;

    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerServiceEx$1;->this$0:Lcom/android/server/notification/NotificationManagerServiceEx;

    # getter for: Lcom/android/server/notification/NotificationManagerServiceEx;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/notification/NotificationManagerServiceEx;->access$200(Lcom/android/server/notification/NotificationManagerServiceEx;)Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v6, Lcom/lge/internal/R$string;->spcExcessFailTitle:I

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    sget v6, Lcom/lge/internal/R$string;->spcExcessFail:I

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    # setter for: Lcom/android/server/notification/NotificationManagerServiceEx;->dialog:Landroid/app/AlertDialog;
    invoke-static {v4, v5}, Lcom/android/server/notification/NotificationManagerServiceEx;->access$502(Lcom/android/server/notification/NotificationManagerServiceEx;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 214
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerServiceEx$1;->this$0:Lcom/android/server/notification/NotificationManagerServiceEx;

    # getter for: Lcom/android/server/notification/NotificationManagerServiceEx;->dialog:Landroid/app/AlertDialog;
    invoke-static {v4}, Lcom/android/server/notification/NotificationManagerServiceEx;->access$500(Lcom/android/server/notification/NotificationManagerServiceEx;)Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7da

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 215
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerServiceEx$1;->this$0:Lcom/android/server/notification/NotificationManagerServiceEx;

    # getter for: Lcom/android/server/notification/NotificationManagerServiceEx;->dialog:Landroid/app/AlertDialog;
    invoke-static {v4}, Lcom/android/server/notification/NotificationManagerServiceEx;->access$500(Lcom/android/server/notification/NotificationManagerServiceEx;)Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 216
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerServiceEx$1;->this$0:Lcom/android/server/notification/NotificationManagerServiceEx;

    # getter for: Lcom/android/server/notification/NotificationManagerServiceEx;->dialog:Landroid/app/AlertDialog;
    invoke-static {v4}, Lcom/android/server/notification/NotificationManagerServiceEx;->access$500(Lcom/android/server/notification/NotificationManagerServiceEx;)Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 218
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerServiceEx$1;->this$0:Lcom/android/server/notification/NotificationManagerServiceEx;

    # getter for: Lcom/android/server/notification/NotificationManagerServiceEx;->mHandler:Lcom/android/server/notification/NotificationManagerServiceEx$WorkerHandlerEx;
    invoke-static {v4}, Lcom/android/server/notification/NotificationManagerServiceEx;->access$600(Lcom/android/server/notification/NotificationManagerServiceEx;)Lcom/android/server/notification/NotificationManagerServiceEx$WorkerHandlerEx;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerServiceEx$1;->this$0:Lcom/android/server/notification/NotificationManagerServiceEx;

    # getter for: Lcom/android/server/notification/NotificationManagerServiceEx;->mHandler:Lcom/android/server/notification/NotificationManagerServiceEx$WorkerHandlerEx;
    invoke-static {v5}, Lcom/android/server/notification/NotificationManagerServiceEx;->access$600(Lcom/android/server/notification/NotificationManagerServiceEx;)Lcom/android/server/notification/NotificationManagerServiceEx$WorkerHandlerEx;

    move-result-object v5

    const/4 v6, 0x7

    invoke-virtual {v5, v6}, Lcom/android/server/notification/NotificationManagerServiceEx$WorkerHandlerEx;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    const-wide/32 v6, 0xea60

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/notification/NotificationManagerServiceEx$WorkerHandlerEx;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 219
    :cond_3
    const-string v4, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 221
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerServiceEx$1;->this$0:Lcom/android/server/notification/NotificationManagerServiceEx;

    # getter for: Lcom/android/server/notification/NotificationManagerServiceEx;->mSettingsObserverEx:Lcom/android/server/notification/NotificationManagerServiceEx$SettingsObserver;
    invoke-static {v4}, Lcom/android/server/notification/NotificationManagerServiceEx;->access$700(Lcom/android/server/notification/NotificationManagerServiceEx;)Lcom/android/server/notification/NotificationManagerServiceEx$SettingsObserver;

    move-result-object v4

    # invokes: Lcom/android/server/notification/NotificationManagerServiceEx$SettingsObserver;->updateBackPulseEnabled()V
    invoke-static {v4}, Lcom/android/server/notification/NotificationManagerServiceEx$SettingsObserver;->access$800(Lcom/android/server/notification/NotificationManagerServiceEx$SettingsObserver;)V

    goto/16 :goto_0
.end method
