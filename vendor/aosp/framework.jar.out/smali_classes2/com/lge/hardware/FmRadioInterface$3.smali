.class Lcom/lge/hardware/FmRadioInterface$3;
.super Ljava/lang/Object;
.source "FmRadioInterface.java"

# interfaces
.implements Lcom/lge/internal/hardware/fmradio/FMRadioCommand$OnPreExecuteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/hardware/FmRadioInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/hardware/FmRadioInterface;


# direct methods
.method constructor <init>(Lcom/lge/hardware/FmRadioInterface;)V
    .locals 0

    .prologue
    .line 316
    iput-object p1, p0, Lcom/lge/hardware/FmRadioInterface$3;->this$0:Lcom/lge/hardware/FmRadioInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreExecute(Lcom/lge/internal/hardware/fmradio/FMRadioCommand;Landroid/os/Message;)Z
    .locals 4
    .param p1, "cmd"    # Lcom/lge/internal/hardware/fmradio/FMRadioCommand;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    .line 318
    const-class v3, Lcom/lge/hardware/FmRadioInterface;

    monitor-enter v3

    .line 319
    :try_start_0
    iget-object v2, p0, Lcom/lge/hardware/FmRadioInterface$3;->this$0:Lcom/lge/hardware/FmRadioInterface;

    # getter for: Lcom/lge/hardware/FmRadioInterface;->mPreOperationListeners:Ljava/util/Set;
    invoke-static {v2}, Lcom/lge/hardware/FmRadioInterface;->access$100(Lcom/lge/hardware/FmRadioInterface;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand$OnPreExecuteListener;

    .line 320
    .local v1, "l":Lcom/lge/internal/hardware/fmradio/FMRadioCommand$OnPreExecuteListener;
    invoke-static {p2}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand$OnPreExecuteListener;->onPreExecute(Lcom/lge/internal/hardware/fmradio/FMRadioCommand;Landroid/os/Message;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 321
    const/4 v2, 0x0

    monitor-exit v3

    .line 324
    .end local v1    # "l":Lcom/lge/internal/hardware/fmradio/FMRadioCommand$OnPreExecuteListener;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    monitor-exit v3

    goto :goto_0

    .line 325
    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
