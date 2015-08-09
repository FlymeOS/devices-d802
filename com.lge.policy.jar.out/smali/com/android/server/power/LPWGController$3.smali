.class Lcom/android/server/power/LPWGController$3;
.super Ljava/lang/Object;
.source "LPWGController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/LPWGController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/LPWGController;


# direct methods
.method constructor <init>(Lcom/android/server/power/LPWGController;)V
    .locals 0

    .prologue
    .line 461
    iput-object p1, p0, Lcom/android/server/power/LPWGController$3;->this$0:Lcom/android/server/power/LPWGController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 464
    iget-object v0, p0, Lcom/android/server/power/LPWGController$3;->this$0:Lcom/android/server/power/LPWGController;

    # getter for: Lcom/android/server/power/LPWGController;->mNotifier:Lcom/android/server/power/DriverNotifier;
    invoke-static {v0}, Lcom/android/server/power/LPWGController;->access$700(Lcom/android/server/power/LPWGController;)Lcom/android/server/power/DriverNotifier;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/LPWGController$3;->this$0:Lcom/android/server/power/LPWGController;

    # getter for: Lcom/android/server/power/LPWGController;->mScreenOn:Z
    invoke-static {v1}, Lcom/android/server/power/LPWGController;->access$600(Lcom/android/server/power/LPWGController;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/power/DriverNotifier;->updateScreenState(Z)V

    .line 465
    return-void
.end method
