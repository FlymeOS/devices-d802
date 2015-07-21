.class Lcom/lge/wifi/impl/WifiServerServiceExt$15;
.super Ljava/lang/Object;
.source "WifiServerServiceExt.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/wifi/impl/WifiServerServiceExt;->handleCMCCEvent(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

.field final synthetic val$checkBox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/lge/wifi/impl/WifiServerServiceExt;Landroid/widget/CheckBox;)V
    .locals 0

    .prologue
    .line 8127
    iput-object p1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$15;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    iput-object p2, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$15;->val$checkBox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 8129
    const/4 v0, 0x0

    .line 8130
    .local v0, "value":I
    iget-object v1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$15;->val$checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8131
    const/4 v0, 0x2

    .line 8132
    :cond_0
    iget-object v1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$15;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$400(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_connect_select"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 8133
    const-string v1, "wlan.cmcc.connect.type"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 8134
    iget-object v1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$15;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;
    invoke-static {v1}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$300(Lcom/lge/wifi/impl/WifiServerServiceExt;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->setWifiAutoConnectValue(I)V

    .line 8136
    iget-object v1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$15;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;
    invoke-static {v1}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$300(Lcom/lge/wifi/impl/WifiServerServiceExt;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiStateMachine;->reassociateCommand()V

    .line 8137
    iget-object v1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$15;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v1}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$1000(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/app/AlarmManager;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$15;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->alarmSender:Landroid/app/PendingIntent;
    invoke-static {v2}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$9900(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 8138
    iget-object v1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$15;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mConfirmAutoConnectDlg:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$9800(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 8139
    iget-object v1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$15;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    const/4 v2, 0x0

    # setter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mConfirmAutoConnectDlg:Landroid/app/AlertDialog;
    invoke-static {v1, v2}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$9802(Lcom/lge/wifi/impl/WifiServerServiceExt;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 8140
    :cond_1
    return-void
.end method
