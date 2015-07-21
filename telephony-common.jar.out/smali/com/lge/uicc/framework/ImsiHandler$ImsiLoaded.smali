.class Lcom/lge/uicc/framework/ImsiHandler$ImsiLoaded;
.super Lcom/lge/uicc/framework/IccHandler$RecordLoaded;
.source "ImsiHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/uicc/framework/ImsiHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImsiLoaded"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/uicc/framework/ImsiHandler;


# direct methods
.method private constructor <init>(Lcom/lge/uicc/framework/ImsiHandler;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/lge/uicc/framework/ImsiHandler$ImsiLoaded;->this$0:Lcom/lge/uicc/framework/ImsiHandler;

    invoke-direct {p0, p1}, Lcom/lge/uicc/framework/IccHandler$RecordLoaded;-><init>(Lcom/lge/uicc/framework/IccHandler;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/uicc/framework/ImsiHandler;Lcom/lge/uicc/framework/ImsiHandler$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lge/uicc/framework/ImsiHandler;
    .param p2, "x1"    # Lcom/lge/uicc/framework/ImsiHandler$1;

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/lge/uicc/framework/ImsiHandler$ImsiLoaded;-><init>(Lcom/lge/uicc/framework/ImsiHandler;)V

    return-void
.end method


# virtual methods
.method onLoadCompleted(Ljava/lang/Object;)V
    .locals 5
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 120
    iget-object v1, p0, Lcom/lge/uicc/framework/ImsiHandler$ImsiLoaded;->this$0:Lcom/lge/uicc/framework/ImsiHandler;

    const-string v2, "EF_IMSI loaded"

    invoke-virtual {v1, v2}, Lcom/lge/uicc/framework/ImsiHandler;->logd(Ljava/lang/String;)V

    .line 121
    iget-object v1, p0, Lcom/lge/uicc/framework/ImsiHandler$ImsiLoaded;->this$0:Lcom/lge/uicc/framework/ImsiHandler;

    check-cast p1, Ljava/lang/String;

    .end local p1    # "result":Ljava/lang/Object;
    # setter for: Lcom/lge/uicc/framework/ImsiHandler;->mImsi:Ljava/lang/String;
    invoke-static {v1, p1}, Lcom/lge/uicc/framework/ImsiHandler;->access$402(Lcom/lge/uicc/framework/ImsiHandler;Ljava/lang/String;)Ljava/lang/String;

    .line 122
    iget-object v1, p0, Lcom/lge/uicc/framework/ImsiHandler$ImsiLoaded;->this$0:Lcom/lge/uicc/framework/ImsiHandler;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IMSI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/uicc/framework/ImsiHandler$ImsiLoaded;->this$0:Lcom/lge/uicc/framework/ImsiHandler;

    # getter for: Lcom/lge/uicc/framework/ImsiHandler;->mImsi:Ljava/lang/String;
    invoke-static {v3}, Lcom/lge/uicc/framework/ImsiHandler;->access$400(Lcom/lge/uicc/framework/ImsiHandler;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lge/uicc/framework/ImsiHandler;->logp(Ljava/lang/String;)V

    .line 124
    iget-object v1, p0, Lcom/lge/uicc/framework/ImsiHandler$ImsiLoaded;->this$0:Lcom/lge/uicc/framework/ImsiHandler;

    # getter for: Lcom/lge/uicc/framework/ImsiHandler;->mImsi:Ljava/lang/String;
    invoke-static {v1}, Lcom/lge/uicc/framework/ImsiHandler;->access$400(Lcom/lge/uicc/framework/ImsiHandler;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/uicc/framework/ImsiHandler$ImsiLoaded;->this$0:Lcom/lge/uicc/framework/ImsiHandler;

    # getter for: Lcom/lge/uicc/framework/ImsiHandler;->mImsi:Ljava/lang/String;
    invoke-static {v1}, Lcom/lge/uicc/framework/ImsiHandler;->access$400(Lcom/lge/uicc/framework/ImsiHandler;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcom/lge/uicc/framework/ImsiHandler$ImsiLoaded;->this$0:Lcom/lge/uicc/framework/ImsiHandler;

    # getter for: Lcom/lge/uicc/framework/ImsiHandler;->mImsi:Ljava/lang/String;
    invoke-static {v1}, Lcom/lge/uicc/framework/ImsiHandler;->access$400(Lcom/lge/uicc/framework/ImsiHandler;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xf

    if-le v1, v2, :cond_2

    .line 125
    :cond_0
    iget-object v1, p0, Lcom/lge/uicc/framework/ImsiHandler$ImsiLoaded;->this$0:Lcom/lge/uicc/framework/ImsiHandler;

    # setter for: Lcom/lge/uicc/framework/ImsiHandler;->mImsi:Ljava/lang/String;
    invoke-static {v1, v4}, Lcom/lge/uicc/framework/ImsiHandler;->access$402(Lcom/lge/uicc/framework/ImsiHandler;Ljava/lang/String;)Ljava/lang/String;

    .line 126
    iget-object v1, p0, Lcom/lge/uicc/framework/ImsiHandler$ImsiLoaded;->this$0:Lcom/lge/uicc/framework/ImsiHandler;

    const-string v2, "invalid IMSI"

    invoke-virtual {v1, v2}, Lcom/lge/uicc/framework/ImsiHandler;->loge(Ljava/lang/String;)V

    .line 127
    iget-object v1, p0, Lcom/lge/uicc/framework/ImsiHandler$ImsiLoaded;->this$0:Lcom/lge/uicc/framework/ImsiHandler;

    # invokes: Lcom/lge/uicc/framework/ImsiHandler;->returnGetImsiForApp(Ljava/lang/Object;Ljava/lang/Throwable;)V
    invoke-static {v1, v4, v4}, Lcom/lge/uicc/framework/ImsiHandler;->access$500(Lcom/lge/uicc/framework/ImsiHandler;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 141
    :cond_1
    :goto_0
    return-void

    .line 132
    :cond_2
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "KDDI"

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/lge/uicc/framework/LGUICC;->targetOperator([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 134
    :try_start_0
    iget-object v1, p0, Lcom/lge/uicc/framework/ImsiHandler$ImsiLoaded;->this$0:Lcom/lge/uicc/framework/ImsiHandler;

    # getter for: Lcom/lge/uicc/framework/ImsiHandler;->mImsi:Ljava/lang/String;
    invoke-static {v1}, Lcom/lge/uicc/framework/ImsiHandler;->access$400(Lcom/lge/uicc/framework/ImsiHandler;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    iget-object v1, p0, Lcom/lge/uicc/framework/ImsiHandler$ImsiLoaded;->this$0:Lcom/lge/uicc/framework/ImsiHandler;

    # setter for: Lcom/lge/uicc/framework/ImsiHandler;->mImsi:Ljava/lang/String;
    invoke-static {v1, v4}, Lcom/lge/uicc/framework/ImsiHandler;->access$402(Lcom/lge/uicc/framework/ImsiHandler;Ljava/lang/String;)Ljava/lang/String;

    .line 137
    iget-object v1, p0, Lcom/lge/uicc/framework/ImsiHandler$ImsiLoaded;->this$0:Lcom/lge/uicc/framework/ImsiHandler;

    const-string v2, "corrupt IMSI"

    invoke-virtual {v1, v2}, Lcom/lge/uicc/framework/ImsiHandler;->loge(Ljava/lang/String;)V

    .line 138
    iget-object v1, p0, Lcom/lge/uicc/framework/ImsiHandler$ImsiLoaded;->this$0:Lcom/lge/uicc/framework/ImsiHandler;

    # invokes: Lcom/lge/uicc/framework/ImsiHandler;->returnGetImsiForApp(Ljava/lang/Object;Ljava/lang/Throwable;)V
    invoke-static {v1, v4, v0}, Lcom/lge/uicc/framework/ImsiHandler;->access$500(Lcom/lge/uicc/framework/ImsiHandler;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method onLoadException(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "exception"    # Ljava/lang/Throwable;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/lge/uicc/framework/ImsiHandler$ImsiLoaded;->this$0:Lcom/lge/uicc/framework/ImsiHandler;

    const/4 v1, 0x0

    # invokes: Lcom/lge/uicc/framework/ImsiHandler;->returnGetImsiForApp(Ljava/lang/Object;Ljava/lang/Throwable;)V
    invoke-static {v0, v1, p1}, Lcom/lge/uicc/framework/ImsiHandler;->access$500(Lcom/lge/uicc/framework/ImsiHandler;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 145
    return-void
.end method
