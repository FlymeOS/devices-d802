.class final Lcom/android/internal/telephony/soi/AlarmTimerManager$AlarmTimerReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmTimerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/soi/AlarmTimerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AlarmTimerReceiver"
.end annotation


# instance fields
.field private mIntentFilter:Landroid/content/IntentFilter;

.field final synthetic this$0:Lcom/android/internal/telephony/soi/AlarmTimerManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/soi/AlarmTimerManager;)V
    .locals 2

    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/internal/telephony/soi/AlarmTimerManager$AlarmTimerReceiver;->this$0:Lcom/android/internal/telephony/soi/AlarmTimerManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 171
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/soi/AlarmTimerManager$AlarmTimerReceiver;->mIntentFilter:Landroid/content/IntentFilter;

    .line 174
    iget-object v0, p0, Lcom/android/internal/telephony/soi/AlarmTimerManager$AlarmTimerReceiver;->mIntentFilter:Landroid/content/IntentFilter;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/android/internal/telephony/soi/AlarmTimerManager$AlarmTimerReceiver;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.lge.sms.soi.action.ALARM_TIMER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 177
    :cond_0
    return-void
.end method


# virtual methods
.method public getFilter()Landroid/content/IntentFilter;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/internal/telephony/soi/AlarmTimerManager$AlarmTimerReceiver;->mIntentFilter:Landroid/content/IntentFilter;

    return-object v0
.end method

.method public declared-synchronized onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 185
    monitor-enter p0

    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 186
    .local v1, "action":Ljava/lang/String;
    const-string v4, "timerId"

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 187
    .local v3, "timerId":I
    const-string v4, "AlarmTimerManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AlarmTimerReceiver() - Action: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", timerId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/soi/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-string v4, "com.lge.sms.soi.action.ALARM_TIMER"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 189
    const/4 v2, 0x0

    .line 191
    .local v2, "registrant":Landroid/os/Registrant;
    iget-object v4, p0, Lcom/android/internal/telephony/soi/AlarmTimerManager$AlarmTimerReceiver;->this$0:Lcom/android/internal/telephony/soi/AlarmTimerManager;

    # getter for: Lcom/android/internal/telephony/soi/AlarmTimerManager;->mTimerExpiredListeners:Ljava/util/Hashtable;
    invoke-static {v4}, Lcom/android/internal/telephony/soi/AlarmTimerManager;->access$000(Lcom/android/internal/telephony/soi/AlarmTimerManager;)Ljava/util/Hashtable;

    move-result-object v5

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 192
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/telephony/soi/AlarmTimerManager$AlarmTimerReceiver;->this$0:Lcom/android/internal/telephony/soi/AlarmTimerManager;

    # getter for: Lcom/android/internal/telephony/soi/AlarmTimerManager;->mTimerExpiredListeners:Ljava/util/Hashtable;
    invoke-static {v4}, Lcom/android/internal/telephony/soi/AlarmTimerManager;->access$000(Lcom/android/internal/telephony/soi/AlarmTimerManager;)Ljava/util/Hashtable;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/os/Registrant;

    move-object v2, v0

    .line 193
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 194
    if-eqz v2, :cond_1

    .line 195
    const/16 v4, 0x1f4

    :try_start_2
    invoke-static {v4}, Lcom/android/internal/telephony/soi/WakeLockManager;->acquire(I)V

    .line 196
    invoke-virtual {v2}, Landroid/os/Registrant;->notifyRegistrant()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 202
    .end local v2    # "registrant":Landroid/os/Registrant;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 193
    .restart local v2    # "registrant":Landroid/os/Registrant;
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 185
    .end local v1    # "action":Ljava/lang/String;
    .end local v2    # "registrant":Landroid/os/Registrant;
    .end local v3    # "timerId":I
    :catchall_1
    move-exception v4

    monitor-exit p0

    throw v4

    .line 199
    .restart local v1    # "action":Ljava/lang/String;
    .restart local v2    # "registrant":Landroid/os/Registrant;
    .restart local v3    # "timerId":I
    :cond_1
    :try_start_5
    const-string v4, "AlarmTimerManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No listener for timerId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/soi/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0
.end method
