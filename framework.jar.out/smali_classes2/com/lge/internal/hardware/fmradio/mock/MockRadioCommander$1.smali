.class Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander$1;
.super Ljava/lang/Object;
.source "MockRadioCommander.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;->startAutoScan()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;


# direct methods
.method constructor <init>(Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander$1;->this$0:Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 170
    const/4 v2, 0x0

    .line 171
    .local v2, "index":I
    const/4 v1, 0x0

    .line 172
    .local v1, "freq":I
    :goto_0
    iget-object v4, p0, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander$1;->this$0:Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;

    # getter for: Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;->interrupt:Z
    invoke-static {v4}, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;->access$000(Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 173
    iget-object v4, p0, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander$1;->this$0:Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;

    # getter for: Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;->virtualRadioChannel:[I
    invoke-static {v4}, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;->access$100(Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;)[I

    move-result-object v4

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "index":I
    .local v3, "index":I
    aget v1, v4, v2

    .line 174
    const/16 v4, 0x1e

    if-ne v3, v4, :cond_0

    .line 175
    iget-object v4, p0, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander$1;->this$0:Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;

    # setter for: Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;->interrupt:Z
    invoke-static {v4, v7}, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;->access$002(Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;Z)Z

    .line 176
    iget-object v4, p0, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander$1;->this$0:Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;

    sget-object v5, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->SCAN_FINISHED:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {v4, v5, v1}, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;->sendMessageToActivity(Lcom/lge/internal/hardware/fmradio/FMRadioCommand;I)V

    .line 178
    :cond_0
    iget-object v4, p0, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander$1;->this$0:Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;

    sget-object v5, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->SCAN_ONGOING:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {v4, v5, v1}, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;->sendMessageToActivity(Lcom/lge/internal/hardware/fmradio/FMRadioCommand;I)V

    .line 180
    const-wide/16 v4, 0x3e8

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    .line 183
    .end local v3    # "index":I
    .restart local v2    # "index":I
    goto :goto_0

    .line 181
    .end local v2    # "index":I
    .restart local v3    # "index":I
    :catch_0
    move-exception v0

    .line 182
    .local v0, "e":Ljava/lang/InterruptedException;
    iget-object v4, p0, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander$1;->this$0:Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;

    # setter for: Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;->interrupt:Z
    invoke-static {v4, v7}, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;->access$002(Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;Z)Z

    move v2, v3

    .line 183
    .end local v3    # "index":I
    .restart local v2    # "index":I
    goto :goto_0

    .line 185
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_1
    iget-object v4, p0, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander$1;->this$0:Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;

    # setter for: Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;->interrupt:Z
    invoke-static {v4, v6}, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;->access$002(Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;Z)Z

    .line 186
    iget-object v4, p0, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander$1;->this$0:Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;

    iput-boolean v6, v4, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;->isOnAutoScan:Z

    .line 187
    return-void
.end method
