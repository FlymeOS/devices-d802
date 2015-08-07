.class Lcom/android/server/am/ActivityManagerServiceEx$2;
.super Landroid/content/BroadcastReceiver;
.source "ActivityManagerServiceEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerServiceEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerServiceEx;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerServiceEx;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerServiceEx$2;->this$0:Lcom/android/server/am/ActivityManagerServiceEx;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 160
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, "action":Ljava/lang/String;
    const/4 v5, 0x0

    .line 164
    .local v5, "infoDocUI":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    iget-object v10, p0, Lcom/android/server/am/ActivityManagerServiceEx$2;->this$0:Lcom/android/server/am/ActivityManagerServiceEx;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerServiceEx;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const-string v11, "com.android.documentsui"

    const/16 v12, 0x80

    invoke-virtual {v10, v11, v12}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 170
    :goto_0
    const-string v10, "com.lge.lockscreen.intent.action.START_KIDSHOME"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 171
    const-string v10, "ActivityManagerServiceEx"

    const-string v11, "Entering Guest Mode. App List need to be updated."

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    if-eqz v5, :cond_0

    .line 174
    iget-object v10, p0, Lcom/android/server/am/ActivityManagerServiceEx$2;->this$0:Lcom/android/server/am/ActivityManagerServiceEx;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerServiceEx;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const-string v11, "com.android.documentsui"

    const/4 v12, 0x2

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 179
    :cond_0
    const-string v10, "ro.build.target_operator"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 180
    .local v8, "operator":Ljava/lang/String;
    const-string v10, "ActivityManagerServiceEx"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "operator="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    if-eqz v8, :cond_2

    const-string v10, "LGU"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 182
    iget-object v10, p0, Lcom/android/server/am/ActivityManagerServiceEx$2;->this$0:Lcom/android/server/am/ActivityManagerServiceEx;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerServiceEx;->mContext:Landroid/content/Context;

    const-string v11, "activity"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 183
    .local v1, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v6

    .line 184
    .local v6, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v6, :cond_2

    .line 185
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 186
    .local v4, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v10, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v11, "com.uplus.onphone"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 187
    iget-object v10, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v1, v10}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 188
    const-string v10, "ActivityManagerServiceEx"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "kill process info = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    .end local v1    # "activityManager":Landroid/app/ActivityManager;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v6    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_2
    iget-object v10, p0, Lcom/android/server/am/ActivityManagerServiceEx$2;->this$0:Lcom/android/server/am/ActivityManagerServiceEx;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerServiceEx;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v10}, Lcom/android/server/am/ActivityStackSupervisor;->getSplitMngr()Lcom/android/server/am/SplitWindowManager;

    move-result-object v9

    .line 197
    .local v9, "splitMngr":Lcom/android/server/am/SplitWindowManager;
    const-string v10, "ActivityManagerServiceEx"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "splitMngr "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    if-eqz v9, :cond_3

    invoke-virtual {v9}, Lcom/android/server/am/SplitWindowManager;->isSplitMode()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 199
    invoke-virtual {v9}, Lcom/android/server/am/SplitWindowManager;->exitSplitWindow()V

    .line 200
    const-string v10, "ActivityManagerServiceEx"

    const-string v11, "splitMngr.exitSplitWindow"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_3
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v7

    .line 204
    .local v7, "msg":Landroid/os/Message;
    const/16 v10, 0x96

    iput v10, v7, Landroid/os/Message;->what:I

    .line 205
    iget-object v10, p0, Lcom/android/server/am/ActivityManagerServiceEx$2;->this$0:Lcom/android/server/am/ActivityManagerServiceEx;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerServiceEx;->mHandlerEx:Landroid/os/Handler;

    invoke-virtual {v10, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 215
    .end local v7    # "msg":Landroid/os/Message;
    .end local v8    # "operator":Ljava/lang/String;
    .end local v9    # "splitMngr":Lcom/android/server/am/SplitWindowManager;
    :cond_4
    :goto_1
    return-void

    .line 166
    :catch_0
    move-exception v2

    .line 167
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v10, "ActivityManagerServiceEx"

    const-string v11, "documentsui is not supported."

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 207
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_5
    const-string v10, "com.lge.lockscreen.intent.action.START_STANDARD_HOME"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 208
    const-string v10, "ActivityManagerServiceEx"

    const-string v11, "exit Guest Mode"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    if-eqz v5, :cond_4

    .line 210
    iget-object v10, p0, Lcom/android/server/am/ActivityManagerServiceEx$2;->this$0:Lcom/android/server/am/ActivityManagerServiceEx;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerServiceEx;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const-string v11, "com.android.documentsui"

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    goto :goto_1
.end method
