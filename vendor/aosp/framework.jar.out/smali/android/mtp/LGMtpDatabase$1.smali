.class Landroid/mtp/LGMtpDatabase$1;
.super Landroid/content/BroadcastReceiver;
.source "LGMtpDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/mtp/LGMtpDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/mtp/LGMtpDatabase;


# direct methods
.method constructor <init>(Landroid/mtp/LGMtpDatabase;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Landroid/mtp/LGMtpDatabase$1;->this$0:Landroid/mtp/LGMtpDatabase;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 160
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 162
    iget-object v2, p0, Landroid/mtp/LGMtpDatabase$1;->this$0:Landroid/mtp/LGMtpDatabase;

    const-string/jumbo v3, "scale"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    # setter for: Landroid/mtp/LGMtpDatabase;->mBatteryScale:I
    invoke-static {v2, v3}, Landroid/mtp/LGMtpDatabase;->access$002(Landroid/mtp/LGMtpDatabase;I)I

    .line 163
    const-string v2, "level"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 164
    .local v1, "newLevel":I
    iget-object v2, p0, Landroid/mtp/LGMtpDatabase$1;->this$0:Landroid/mtp/LGMtpDatabase;

    # getter for: Landroid/mtp/LGMtpDatabase;->mBatteryLevel:I
    invoke-static {v2}, Landroid/mtp/LGMtpDatabase;->access$100(Landroid/mtp/LGMtpDatabase;)I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 165
    iget-object v2, p0, Landroid/mtp/LGMtpDatabase$1;->this$0:Landroid/mtp/LGMtpDatabase;

    # setter for: Landroid/mtp/LGMtpDatabase;->mBatteryLevel:I
    invoke-static {v2, v1}, Landroid/mtp/LGMtpDatabase;->access$102(Landroid/mtp/LGMtpDatabase;I)I

    .line 166
    iget-object v2, p0, Landroid/mtp/LGMtpDatabase$1;->this$0:Landroid/mtp/LGMtpDatabase;

    # getter for: Landroid/mtp/LGMtpDatabase;->mServer:Landroid/mtp/LGMtpServer;
    invoke-static {v2}, Landroid/mtp/LGMtpDatabase;->access$200(Landroid/mtp/LGMtpDatabase;)Landroid/mtp/LGMtpServer;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 168
    iget-object v2, p0, Landroid/mtp/LGMtpDatabase$1;->this$0:Landroid/mtp/LGMtpDatabase;

    # getter for: Landroid/mtp/LGMtpDatabase;->mServer:Landroid/mtp/LGMtpServer;
    invoke-static {v2}, Landroid/mtp/LGMtpDatabase;->access$200(Landroid/mtp/LGMtpDatabase;)Landroid/mtp/LGMtpServer;

    move-result-object v2

    const/16 v3, 0x5001

    invoke-virtual {v2, v3}, Landroid/mtp/LGMtpServer;->sendDevicePropertyChanged(I)V

    .line 173
    .end local v1    # "newLevel":I
    :cond_0
    return-void
.end method
