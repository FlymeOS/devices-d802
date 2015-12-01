.class Lcom/lge/camera/CheckTemperature$2;
.super Ljava/lang/Object;
.source "CheckTemperature.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/CheckTemperature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/CheckTemperature;


# direct methods
.method constructor <init>(Lcom/lge/camera/CheckTemperature;)V
    .locals 0

    .prologue
    .line 238
    iput-object p1, p0, Lcom/lge/camera/CheckTemperature$2;->this$0:Lcom/lge/camera/CheckTemperature;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 241
    :try_start_0
    iget-object v1, p0, Lcom/lge/camera/CheckTemperature$2;->this$0:Lcom/lge/camera/CheckTemperature;

    # getter for: Lcom/lge/camera/CheckTemperature;->mGet:Lcom/lge/camera/CheckTemperature$CheckTemperatureFunction;
    invoke-static {v1}, Lcom/lge/camera/CheckTemperature;->access$300(Lcom/lge/camera/CheckTemperature;)Lcom/lge/camera/CheckTemperature$CheckTemperatureFunction;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/camera/CheckTemperature$CheckTemperatureFunction;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/CameraActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    :goto_0
    return-void

    .line 242
    :catch_0
    move-exception v0

    .line 243
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CameraApp"

    const-string v2, "Exception:"

    invoke-static {v1, v2, v0}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
