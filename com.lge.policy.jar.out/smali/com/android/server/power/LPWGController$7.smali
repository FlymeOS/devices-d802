.class Lcom/android/server/power/LPWGController$7;
.super Ljava/lang/Object;
.source "LPWGController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/LPWGController;->wakeUpByKnockCodeFailedLocked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/LPWGController;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/android/server/power/LPWGController;I)V
    .locals 0

    .prologue
    .line 854
    iput-object p1, p0, Lcom/android/server/power/LPWGController$7;->this$0:Lcom/android/server/power/LPWGController;

    iput p2, p0, Lcom/android/server/power/LPWGController$7;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 857
    iget-object v0, p0, Lcom/android/server/power/LPWGController$7;->this$0:Lcom/android/server/power/LPWGController;

    # getter for: Lcom/android/server/power/LPWGController;->mKnockCodeChecker:Lcom/android/server/power/KnockCodeChecker;
    invoke-static {v0}, Lcom/android/server/power/LPWGController;->access$200(Lcom/android/server/power/LPWGController;)Lcom/android/server/power/KnockCodeChecker;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/LPWGController$7;->val$id:I

    invoke-virtual {v0, v1}, Lcom/android/server/power/KnockCodeChecker;->switchUser(I)V

    .line 858
    return-void
.end method
