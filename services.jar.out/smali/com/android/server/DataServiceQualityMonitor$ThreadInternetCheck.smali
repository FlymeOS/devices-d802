.class public Lcom/android/server/DataServiceQualityMonitor$ThreadInternetCheck;
.super Ljava/lang/Thread;
.source "DataServiceQualityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DataServiceQualityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ThreadInternetCheck"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DataServiceQualityMonitor;


# direct methods
.method public constructor <init>(Lcom/android/server/DataServiceQualityMonitor;)V
    .locals 0

    .prologue
    .line 911
    iput-object p1, p0, Lcom/android/server/DataServiceQualityMonitor$ThreadInternetCheck;->this$0:Lcom/android/server/DataServiceQualityMonitor;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 913
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    .line 917
    const/4 v1, 0x0

    .line 918
    .local v1, "dcfSettingChangetoEnable":Z
    sget-boolean v3, Lcom/android/server/DataServiceQualityMonitor;->mDCFEnabled:Z

    if-nez v3, :cond_0

    .line 919
    sput-boolean v4, Lcom/android/server/DataServiceQualityMonitor;->mDCFEnabled:Z

    .line 920
    const/4 v1, 0x1

    .line 922
    :cond_0
    sget-boolean v3, Lcom/android/server/DataServiceQualityMonitor;->mInternetcheckProgress:Z

    if-ne v3, v4, :cond_1

    .line 923
    const-string v3, "internetcheck is progress"

    # invokes: Lcom/android/server/DataServiceQualityMonitor;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/server/DataServiceQualityMonitor;->access$000(Ljava/lang/String;)V

    .line 951
    :goto_0
    return-void

    .line 926
    :cond_1
    sput-boolean v4, Lcom/android/server/DataServiceQualityMonitor;->mInternetcheckProgress:Z

    .line 927
    new-instance v0, Lcom/android/server/DataServiceQualityMonitor$ThreadTCPConnectionCheck;

    iget-object v3, p0, Lcom/android/server/DataServiceQualityMonitor$ThreadInternetCheck;->this$0:Lcom/android/server/DataServiceQualityMonitor;

    invoke-direct {v0, v3}, Lcom/android/server/DataServiceQualityMonitor$ThreadTCPConnectionCheck;-><init>(Lcom/android/server/DataServiceQualityMonitor;)V

    .line 928
    .local v0, "checkthread":Lcom/android/server/DataServiceQualityMonitor$ThreadTCPConnectionCheck;
    invoke-virtual {v0}, Lcom/android/server/DataServiceQualityMonitor$ThreadTCPConnectionCheck;->start()V

    .line 930
    const-wide/16 v4, 0xfa0

    :try_start_0
    invoke-virtual {v0, v4, v5}, Lcom/android/server/DataServiceQualityMonitor$ThreadTCPConnectionCheck;->join(J)V

    .line 931
    invoke-virtual {v0}, Lcom/android/server/DataServiceQualityMonitor$ThreadTCPConnectionCheck;->getCheckResult()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 932
    const-string v3, "ThreadInternetCheck internet check OK "

    # invokes: Lcom/android/server/DataServiceQualityMonitor;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/server/DataServiceQualityMonitor;->access$000(Ljava/lang/String;)V

    .line 946
    :goto_1
    iget-object v3, p0, Lcom/android/server/DataServiceQualityMonitor$ThreadInternetCheck;->this$0:Lcom/android/server/DataServiceQualityMonitor;

    iget-object v4, p0, Lcom/android/server/DataServiceQualityMonitor$ThreadInternetCheck;->this$0:Lcom/android/server/DataServiceQualityMonitor;

    const/16 v5, 0x13c3

    invoke-virtual {v4, v5}, Lcom/android/server/DataServiceQualityMonitor;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v6, 0x3e8

    invoke-virtual {v3, v4, v6, v7}, Lcom/android/server/DataServiceQualityMonitor;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 948
    :catch_0
    move-exception v2

    .line 949
    .local v2, "e":Ljava/lang/InterruptedException;
    const-string v3, "checkthread.join interrupted"

    # invokes: Lcom/android/server/DataServiceQualityMonitor;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/server/DataServiceQualityMonitor;->access$000(Ljava/lang/String;)V

    goto :goto_0

    .line 934
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :cond_2
    :try_start_1
    const-string v3, "ThreadInternetCheck internet check NOK "

    # invokes: Lcom/android/server/DataServiceQualityMonitor;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/server/DataServiceQualityMonitor;->access$000(Ljava/lang/String;)V

    .line 935
    sget-boolean v3, Lcom/android/server/DataServiceQualityMonitor;->mInternetcheckProgress:Z

    if-nez v3, :cond_3

    .line 936
    const-string v3, "InternetcheckProgress is not set don\'t send DS quality intent"

    # invokes: Lcom/android/server/DataServiceQualityMonitor;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/server/DataServiceQualityMonitor;->access$000(Ljava/lang/String;)V

    goto :goto_1

    .line 938
    :cond_3
    if-nez v1, :cond_4

    .line 939
    iget-object v3, p0, Lcom/android/server/DataServiceQualityMonitor$ThreadInternetCheck;->this$0:Lcom/android/server/DataServiceQualityMonitor;

    const/4 v4, 0x0

    # invokes: Lcom/android/server/DataServiceQualityMonitor;->sendDSqualityIntent(I)V
    invoke-static {v3, v4}, Lcom/android/server/DataServiceQualityMonitor;->access$200(Lcom/android/server/DataServiceQualityMonitor;I)V

    goto :goto_1

    .line 941
    :cond_4
    const-string v3, "Internetcheck NOK after DCF setting enabled send DSQN intent with result3"

    # invokes: Lcom/android/server/DataServiceQualityMonitor;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/server/DataServiceQualityMonitor;->access$000(Ljava/lang/String;)V

    .line 942
    iget-object v3, p0, Lcom/android/server/DataServiceQualityMonitor$ThreadInternetCheck;->this$0:Lcom/android/server/DataServiceQualityMonitor;

    const/4 v4, 0x3

    # invokes: Lcom/android/server/DataServiceQualityMonitor;->sendDSqualityIntent(I)V
    invoke-static {v3, v4}, Lcom/android/server/DataServiceQualityMonitor;->access$200(Lcom/android/server/DataServiceQualityMonitor;I)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
