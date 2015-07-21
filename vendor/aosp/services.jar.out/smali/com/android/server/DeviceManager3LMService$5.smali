.class Lcom/android/server/DeviceManager3LMService$5;
.super Landroid/content/BroadcastReceiver;
.source "DeviceManager3LMService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceManager3LMService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DeviceManager3LMService;


# direct methods
.method constructor <init>(Lcom/android/server/DeviceManager3LMService;)V
    .locals 0

    .prologue
    .line 3209
    iput-object p1, p0, Lcom/android/server/DeviceManager3LMService$5;->this$0:Lcom/android/server/DeviceManager3LMService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 3212
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3213
    .local v0, "action":Ljava/lang/String;
    const-string v4, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3214
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 3215
    .local v3, "uri":Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 3216
    .local v1, "path":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 3229
    .end local v1    # "path":Ljava/lang/String;
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_0
    :goto_0
    return-void

    .line 3218
    .restart local v1    # "path":Ljava/lang/String;
    .restart local v3    # "uri":Landroid/net/Uri;
    :cond_1
    const-wide/16 v4, 0x3e8

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3221
    :goto_1
    iget-object v4, p0, Lcom/android/server/DeviceManager3LMService$5;->this$0:Lcom/android/server/DeviceManager3LMService;

    const-string v5, "com.threelm.dm.app.docomo"

    invoke-virtual {v4, v5}, Lcom/android/server/DeviceManager3LMService;->isPackage3LM(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3222
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.threelm.action.RUN_KITTING"

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3223
    .local v2, "startIntent":Landroid/content/Intent;
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.threelm.dm.app.docomo"

    const-string v6, "com.threelm.dm.KittingStarterReceiver"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3225
    const-string v4, "sd_path"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3226
    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, v2, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 3219
    .end local v2    # "startIntent":Landroid/content/Intent;
    :catch_0
    move-exception v4

    goto :goto_1
.end method
