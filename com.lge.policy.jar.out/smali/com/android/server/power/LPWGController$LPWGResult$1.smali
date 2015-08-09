.class Lcom/android/server/power/LPWGController$LPWGResult$1;
.super Ljava/lang/Object;
.source "LPWGController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/LPWGController$LPWGResult;->send(Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/power/LPWGController$LPWGResult;

.field final synthetic val$result:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/power/LPWGController$LPWGResult;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 981
    iput-object p1, p0, Lcom/android/server/power/LPWGController$LPWGResult$1;->this$1:Lcom/android/server/power/LPWGController$LPWGResult;

    iput-object p2, p0, Lcom/android/server/power/LPWGController$LPWGResult$1;->val$result:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 984
    sget-object v0, Lcom/android/server/power/LPWGController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendResult : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/LPWGController$LPWGResult$1;->val$result:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    iget-object v0, p0, Lcom/android/server/power/LPWGController$LPWGResult$1;->this$1:Lcom/android/server/power/LPWGController$LPWGResult;

    iget-object v0, v0, Lcom/android/server/power/LPWGController$LPWGResult;->this$0:Lcom/android/server/power/LPWGController;

    # getter for: Lcom/android/server/power/LPWGController;->mNotifier:Lcom/android/server/power/DriverNotifier;
    invoke-static {v0}, Lcom/android/server/power/LPWGController;->access$700(Lcom/android/server/power/LPWGController;)Lcom/android/server/power/DriverNotifier;

    move-result-object v0

    const-string v1, "/sys/devices/virtual/input/lge_touch/lpwg_data"

    iget-object v2, p0, Lcom/android/server/power/LPWGController$LPWGResult$1;->val$result:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/power/DriverNotifier;->writeValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 986
    return-void
.end method
