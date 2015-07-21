.class Lcom/android/internal/telephony/dataconnection/DctController$DataStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DctController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DctController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DctController;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/dataconnection/DctController;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DctController$DataStateReceiver;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/dataconnection/DctController;Lcom/android/internal/telephony/dataconnection/DctController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/dataconnection/DctController;
    .param p2, "x1"    # Lcom/android/internal/telephony/dataconnection/DctController$1;

    .prologue
    .line 170
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DctController$DataStateReceiver;-><init>(Lcom/android/internal/telephony/dataconnection/DctController;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 172
    monitor-enter p0

    .line 174
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 175
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DctController$DataStateReceiver;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # getter for: Lcom/android/internal/telephony/dataconnection/DctController;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DctController;->access$700(Lcom/android/internal/telephony/dataconnection/DctController;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "multi_sim_data_call_LOS"

    const/4 v10, -0x1

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_1

    const/4 v1, 0x1

    .line 177
    .local v1, "isFitstBootLOS":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 179
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DctController$DataStateReceiver;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # getter for: Lcom/android/internal/telephony/dataconnection/DctController;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DctController;->access$700(Lcom/android/internal/telephony/dataconnection/DctController;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "multi_sim_data_call_LOS"

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 182
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DctController$DataStateReceiver;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # getter for: Lcom/android/internal/telephony/dataconnection/DctController;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DctController;->access$700(Lcom/android/internal/telephony/dataconnection/DctController;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "multi_sim_data_call"

    const/4 v10, -0x1

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 184
    .local v0, "dds_slot":I
    sget-object v8, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_MSIM_SET_DDS_BASED_ON_PHONEID_ON_L_OSU:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v8}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v8

    if-eqz v8, :cond_0

    if-ltz v0, :cond_0

    .line 186
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubIdUsingPhoneId(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Landroid/telephony/SubscriptionManager;->setDefaultDataSubId(J)V

    .line 187
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "OS Upgraded. dds changed dds_slot:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " to PhoneID:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubIdUsingPhoneId(I)J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V
    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DctController;->access$100(Ljava/lang/String;)V

    .line 249
    .end local v0    # "dds_slot":I
    .end local v1    # "isFitstBootLOS":Z
    :cond_0
    :goto_1
    monitor-exit p0

    .line 250
    :goto_2
    return-void

    .line 175
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 192
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 193
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    invoke-static {v8}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v4

    .line 195
    .local v4, "ss":Landroid/telephony/ServiceState;
    const-string v8, "subscription"

    const-wide/16 v10, 0x0

    invoke-virtual {p2, v8, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 196
    .local v6, "subId":J
    invoke-static {v6, v7}, Landroid/telephony/SubscriptionManager;->getPhoneId(J)I

    move-result v2

    .line 198
    .local v2, "phoneId":I
    invoke-static {v6, v7}, Landroid/telephony/SubscriptionManager;->isValidSubId(J)Z

    move-result v8

    if-eqz v8, :cond_3

    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-ltz v8, :cond_3

    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DctController$DataStateReceiver;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    invoke-virtual {v8, v6, v7}, Lcom/android/internal/telephony/dataconnection/DctController;->isActiveSubId(J)Z

    move-result v8

    if-nez v8, :cond_4

    .line 201
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DataStateReceiver: ignore invalid subId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " phoneId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V
    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DctController;->access$100(Ljava/lang/String;)V

    .line 203
    monitor-exit p0

    goto :goto_2

    .line 249
    .end local v2    # "phoneId":I
    .end local v4    # "ss":Landroid/telephony/ServiceState;
    .end local v6    # "subId":J
    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 205
    .restart local v2    # "phoneId":I
    .restart local v4    # "ss":Landroid/telephony/ServiceState;
    .restart local v6    # "subId":J
    :cond_4
    :try_start_1
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v8

    if-nez v8, :cond_5

    .line 206
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DataStateReceiver: ignore invalid phoneId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V
    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DctController;->access$100(Ljava/lang/String;)V

    .line 207
    monitor-exit p0

    goto :goto_2

    .line 210
    :cond_5
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DctController$DataStateReceiver;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # getter for: Lcom/android/internal/telephony/dataconnection/DctController;->mServicePowerOffFlag:[Z
    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DctController;->access$500(Lcom/android/internal/telephony/dataconnection/DctController;)[Z

    move-result-object v8

    aget-boolean v3, v8, v2

    .line 211
    .local v3, "prevPowerOff":Z
    if-eqz v4, :cond_0

    .line 212
    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    .line 213
    .local v5, "state":I
    packed-switch v5, :pswitch_data_0

    .line 236
    const-string v8, "DataStateReceiver: SERVICE_STATE_CHANGED invalid state"

    # invokes: Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V
    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DctController;->access$100(Ljava/lang/String;)V

    .line 240
    :cond_6
    :goto_3
    if-eqz v3, :cond_0

    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DctController$DataStateReceiver;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # getter for: Lcom/android/internal/telephony/dataconnection/DctController;->mServicePowerOffFlag:[Z
    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DctController;->access$500(Lcom/android/internal/telephony/dataconnection/DctController;)[Z

    move-result-object v8

    aget-boolean v8, v8, v2

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DctController$DataStateReceiver;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # getter for: Lcom/android/internal/telephony/dataconnection/DctController;->mCurrentDataPhone:I
    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DctController;->access$200(Lcom/android/internal/telephony/dataconnection/DctController;)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_0

    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DctController$DataStateReceiver;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # invokes: Lcom/android/internal/telephony/dataconnection/DctController;->getDataConnectionFromSetting()I
    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DctController;->access$800(Lcom/android/internal/telephony/dataconnection/DctController;)I

    move-result v8

    if-ne v2, v8, :cond_0

    .line 243
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DataStateReceiver: Current Phone is none and default phoneId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", then enableApnType()"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V
    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DctController;->access$100(Ljava/lang/String;)V

    .line 245
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DctController$DataStateReceiver;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    const-string v9, "default"

    invoke-virtual {v8, v6, v7, v9}, Lcom/android/internal/telephony/dataconnection/DctController;->enableApnType(JLjava/lang/String;)I

    goto/16 :goto_1

    .line 215
    :pswitch_0
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DctController$DataStateReceiver;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # getter for: Lcom/android/internal/telephony/dataconnection/DctController;->mServicePowerOffFlag:[Z
    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DctController;->access$500(Lcom/android/internal/telephony/dataconnection/DctController;)[Z

    move-result-object v8

    const/4 v9, 0x1

    aput-boolean v9, v8, v2

    .line 216
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DataStateReceiver: STATE_POWER_OFF Intent from phoneId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V
    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DctController;->access$100(Ljava/lang/String;)V

    goto :goto_3

    .line 220
    :pswitch_1
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DctController$DataStateReceiver;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # getter for: Lcom/android/internal/telephony/dataconnection/DctController;->mServicePowerOffFlag:[Z
    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DctController;->access$500(Lcom/android/internal/telephony/dataconnection/DctController;)[Z

    move-result-object v8

    const/4 v9, 0x0

    aput-boolean v9, v8, v2

    .line 221
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DataStateReceiver: STATE_IN_SERVICE Intent from phoneId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V
    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DctController;->access$100(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 225
    :pswitch_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DataStateReceiver: STATE_OUT_OF_SERVICE Intent from phoneId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V
    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DctController;->access$100(Ljava/lang/String;)V

    .line 227
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DctController$DataStateReceiver;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # getter for: Lcom/android/internal/telephony/dataconnection/DctController;->mServicePowerOffFlag:[Z
    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DctController;->access$500(Lcom/android/internal/telephony/dataconnection/DctController;)[Z

    move-result-object v8

    aget-boolean v8, v8, v2

    if-eqz v8, :cond_6

    .line 228
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DctController$DataStateReceiver;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # getter for: Lcom/android/internal/telephony/dataconnection/DctController;->mServicePowerOffFlag:[Z
    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DctController;->access$500(Lcom/android/internal/telephony/dataconnection/DctController;)[Z

    move-result-object v8

    const/4 v9, 0x0

    aput-boolean v9, v8, v2

    goto/16 :goto_3

    .line 232
    :pswitch_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DataStateReceiver: STATE_EMERGENCY_ONLY Intent from phoneId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V
    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DctController;->access$100(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_3

    .line 213
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method
