.class Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread$3;
.super Ljava/lang/Object;
.source "EngineSimulator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread;->state_recv()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread;


# direct methods
.method constructor <init>(Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread$3;->this$1:Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread$3;->this$1:Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread;

    # getter for: Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread;->mCallback:Lcom/qualcomm/location/vzw_library/IVzwHalGpsCallback;
    invoke-static {v0}, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread;->access$300(Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread;)Lcom/qualcomm/location/vzw_library/IVzwHalGpsCallback;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/qualcomm/location/vzw_library/IVzwHalGpsCallback;->ReportEngineStatus(I)V

    .line 160
    return-void
.end method
