.class Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsProvDiscFailData;
.super Ljava/lang/Object;
.source "WfdsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wfds/WfdsService$WfdsStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WfdsProvDiscFailData"
.end annotation


# instance fields
.field peerAddr:Ljava/lang/String;

.field reason:I

.field final synthetic this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;


# direct methods
.method public constructor <init>(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Ljava/lang/String;)V
    .locals 5
    .param p2, "eventStr"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 2913
    iput-object p1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsProvDiscFailData;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2914
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsProvDiscFailData;->peerAddr:Ljava/lang/String;

    .line 2915
    const/4 v2, -0x1

    iput v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsProvDiscFailData;->reason:I

    .line 2917
    if-nez p2, :cond_1

    .line 2934
    :cond_0
    :goto_0
    return-void

    .line 2921
    :cond_1
    const-string v2, " "

    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2923
    .local v1, "tokens":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 2927
    aget-object v2, v1, v4

    aget-object v3, v1, v4

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsProvDiscFailData;->peerAddr:Ljava/lang/String;

    .line 2930
    const/4 v2, 0x2

    :try_start_0
    aget-object v2, v1, v2

    const/4 v3, 0x2

    aget-object v3, v1, v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsProvDiscFailData;->reason:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2931
    :catch_0
    move-exception v0

    .line 2932
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v2, "WfdsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NumberFormatException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
