.class Lcom/android/server/power/LPWGController$6;
.super Ljava/lang/Object;
.source "LPWGController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/LPWGController;->handleNotifyFailedFeedback()V
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
    .line 826
    iput-object p1, p0, Lcom/android/server/power/LPWGController$6;->this$0:Lcom/android/server/power/LPWGController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 828
    iget-object v0, p0, Lcom/android/server/power/LPWGController$6;->this$0:Lcom/android/server/power/LPWGController;

    # getter for: Lcom/android/server/power/LPWGController;->mPolicy:Landroid/view/WindowManagerPolicy;
    invoke-static {v0}, Lcom/android/server/power/LPWGController;->access$1800(Lcom/android/server/power/LPWGController;)Landroid/view/WindowManagerPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 829
    iget-object v0, p0, Lcom/android/server/power/LPWGController$6;->this$0:Lcom/android/server/power/LPWGController;

    # getter for: Lcom/android/server/power/LPWGController;->mPolicy:Landroid/view/WindowManagerPolicy;
    invoke-static {v0}, Lcom/android/server/power/LPWGController;->access$1800(Lcom/android/server/power/LPWGController;)Landroid/view/WindowManagerPolicy;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/view/WindowManagerPolicy;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 831
    :cond_0
    return-void
.end method
