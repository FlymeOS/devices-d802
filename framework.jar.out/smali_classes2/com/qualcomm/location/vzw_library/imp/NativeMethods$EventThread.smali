.class Lcom/qualcomm/location/vzw_library/imp/NativeMethods$EventThread;
.super Ljava/lang/Thread;
.source "NativeMethods.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/location/vzw_library/imp/NativeMethods;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventThread"
.end annotation


# instance fields
.field public fgTerminate:Z

.field final synthetic this$0:Lcom/qualcomm/location/vzw_library/imp/NativeMethods;


# direct methods
.method private constructor <init>(Lcom/qualcomm/location/vzw_library/imp/NativeMethods;)V
    .locals 1

    .prologue
    .line 75
    iput-object p1, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods$EventThread;->this$0:Lcom/qualcomm/location/vzw_library/imp/NativeMethods;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods$EventThread;->fgTerminate:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/qualcomm/location/vzw_library/imp/NativeMethods;Lcom/qualcomm/location/vzw_library/imp/NativeMethods$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/qualcomm/location/vzw_library/imp/NativeMethods;
    .param p2, "x1"    # Lcom/qualcomm/location/vzw_library/imp/NativeMethods$1;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/qualcomm/location/vzw_library/imp/NativeMethods$EventThread;-><init>(Lcom/qualcomm/location/vzw_library/imp/NativeMethods;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 81
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 83
    iget-object v1, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods$EventThread;->this$0:Lcom/qualcomm/location/vzw_library/imp/NativeMethods;

    # getter for: Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->VERBOSE:Z
    invoke-static {v1}, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->access$000(Lcom/qualcomm/location/vzw_library/imp/NativeMethods;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "VzwHal.Native"

    const-string v2, "event thread running"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/qualcomm/location/vzw_library/imp/NativeMethods$EventThread;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods$EventThread;->fgTerminate:Z

    if-nez v1, :cond_1

    .line 89
    iget-object v1, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods$EventThread;->this$0:Lcom/qualcomm/location/vzw_library/imp/NativeMethods;

    # invokes: Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->native_wait_for_event()V
    invoke-static {v1}, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->access$100(Lcom/qualcomm/location/vzw_library/imp/NativeMethods;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 95
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v1, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods$EventThread;->this$0:Lcom/qualcomm/location/vzw_library/imp/NativeMethods;

    # getter for: Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->VERBOSE:Z
    invoke-static {v1}, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->access$000(Lcom/qualcomm/location/vzw_library/imp/NativeMethods;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "VzwHal.Native"

    const-string v2, "event thread terminated"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_2
    return-void
.end method
