.class Lcom/android/server/power/PowerManagerServiceEx$IsDoneRequestWaitForNegativeProximitySetTask;
.super Ljava/lang/Object;
.source "PowerManagerServiceEx.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerServiceEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IsDoneRequestWaitForNegativeProximitySetTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerServiceEx;


# direct methods
.method private constructor <init>(Lcom/android/server/power/PowerManagerServiceEx;)V
    .locals 0

    .prologue
    .line 1441
    iput-object p1, p0, Lcom/android/server/power/PowerManagerServiceEx$IsDoneRequestWaitForNegativeProximitySetTask;->this$0:Lcom/android/server/power/PowerManagerServiceEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/PowerManagerServiceEx;Lcom/android/server/power/PowerManagerServiceEx$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/power/PowerManagerServiceEx;
    .param p2, "x1"    # Lcom/android/server/power/PowerManagerServiceEx$1;

    .prologue
    .line 1441
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerServiceEx$IsDoneRequestWaitForNegativeProximitySetTask;-><init>(Lcom/android/server/power/PowerManagerServiceEx;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1444
    iget-object v0, p0, Lcom/android/server/power/PowerManagerServiceEx$IsDoneRequestWaitForNegativeProximitySetTask;->this$0:Lcom/android/server/power/PowerManagerServiceEx;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/power/PowerManagerServiceEx;->mIsDoneRequestWaitForNegativeProximity:Z
    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerServiceEx;->access$2902(Lcom/android/server/power/PowerManagerServiceEx;Z)Z

    .line 1445
    # getter for: Lcom/android/server/power/PowerManagerServiceEx;->NOTUSER_DEBUG:Z
    invoke-static {}, Lcom/android/server/power/PowerManagerServiceEx;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1446
    const-string v0, "PowerManagerServiceEx"

    const-string v1, "set mIsDoneRequestWaitForNegativeProximity to false for handling when call is ended and proximity is near."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1448
    :cond_0
    return-void
.end method
