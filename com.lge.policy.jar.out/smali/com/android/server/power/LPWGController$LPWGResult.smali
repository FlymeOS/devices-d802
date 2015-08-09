.class Lcom/android/server/power/LPWGController$LPWGResult;
.super Ljava/lang/Object;
.source "LPWGController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/LPWGController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LPWGResult"
.end annotation


# static fields
.field static final FAIL:Ljava/lang/String; = "0"

.field static final SEND_RESULT_WAIT_TIME_MS:I = 0x1f4

.field static final SUCCESS:Ljava/lang/String; = "1"


# instance fields
.field private mDelayTimeMs:J

.field private mResult:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/power/LPWGController;


# direct methods
.method private constructor <init>(Lcom/android/server/power/LPWGController;)V
    .locals 2

    .prologue
    .line 947
    iput-object p1, p0, Lcom/android/server/power/LPWGController$LPWGResult;->this$0:Lcom/android/server/power/LPWGController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 952
    const-string v0, "0"

    iput-object v0, p0, Lcom/android/server/power/LPWGController$LPWGResult;->mResult:Ljava/lang/String;

    .line 953
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/power/LPWGController$LPWGResult;->mDelayTimeMs:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/LPWGController;Lcom/android/server/power/LPWGController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/power/LPWGController;
    .param p2, "x1"    # Lcom/android/server/power/LPWGController$1;

    .prologue
    .line 947
    invoke-direct {p0, p1}, Lcom/android/server/power/LPWGController$LPWGResult;-><init>(Lcom/android/server/power/LPWGController;)V

    return-void
.end method


# virtual methods
.method public fail()V
    .locals 1

    .prologue
    .line 965
    const-string v0, "0"

    iput-object v0, p0, Lcom/android/server/power/LPWGController$LPWGResult;->mResult:Ljava/lang/String;

    .line 966
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 956
    const-string v0, "0"

    iput-object v0, p0, Lcom/android/server/power/LPWGController$LPWGResult;->mResult:Ljava/lang/String;

    .line 957
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/power/LPWGController$LPWGResult;->mDelayTimeMs:J

    .line 958
    return-void
.end method

.method public send()V
    .locals 4

    .prologue
    .line 977
    iget-object v0, p0, Lcom/android/server/power/LPWGController$LPWGResult;->mResult:Ljava/lang/String;

    iget-wide v2, p0, Lcom/android/server/power/LPWGController$LPWGResult;->mDelayTimeMs:J

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/server/power/LPWGController$LPWGResult;->send(Ljava/lang/String;J)V

    .line 978
    return-void
.end method

.method public send(Ljava/lang/String;J)V
    .locals 2
    .param p1, "result"    # Ljava/lang/String;
    .param p2, "delay"    # J

    .prologue
    .line 981
    iget-object v0, p0, Lcom/android/server/power/LPWGController$LPWGResult;->this$0:Lcom/android/server/power/LPWGController;

    # getter for: Lcom/android/server/power/LPWGController;->mHandler:Lcom/android/server/power/LPWGController$LPWGHandler;
    invoke-static {v0}, Lcom/android/server/power/LPWGController;->access$500(Lcom/android/server/power/LPWGController;)Lcom/android/server/power/LPWGController$LPWGHandler;

    move-result-object v0

    new-instance v1, Lcom/android/server/power/LPWGController$LPWGResult$1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/power/LPWGController$LPWGResult$1;-><init>(Lcom/android/server/power/LPWGController$LPWGResult;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p2, p3}, Lcom/android/server/power/LPWGController$LPWGHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 988
    return-void
.end method

.method public setDelay()V
    .locals 2

    .prologue
    .line 969
    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, v0, v1}, Lcom/android/server/power/LPWGController$LPWGResult;->setDelay(J)V

    .line 970
    return-void
.end method

.method public setDelay(J)V
    .locals 1
    .param p1, "delay"    # J

    .prologue
    .line 973
    iput-wide p1, p0, Lcom/android/server/power/LPWGController$LPWGResult;->mDelayTimeMs:J

    .line 974
    return-void
.end method

.method public success()V
    .locals 1

    .prologue
    .line 961
    const-string v0, "1"

    iput-object v0, p0, Lcom/android/server/power/LPWGController$LPWGResult;->mResult:Ljava/lang/String;

    .line 962
    return-void
.end method
