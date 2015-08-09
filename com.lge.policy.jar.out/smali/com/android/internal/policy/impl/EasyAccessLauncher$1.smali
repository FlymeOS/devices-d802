.class Lcom/android/internal/policy/impl/EasyAccessLauncher$1;
.super Ljava/lang/Object;
.source "EasyAccessLauncher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/EasyAccessLauncher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/EasyAccessLauncher;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/EasyAccessLauncher;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/internal/policy/impl/EasyAccessLauncher$1;->this$0:Lcom/android/internal/policy/impl/EasyAccessLauncher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 99
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManagerUtil;->injectKeyEvent(I)V

    .line 100
    iget-object v0, p0, Lcom/android/internal/policy/impl/EasyAccessLauncher$1;->this$0:Lcom/android/internal/policy/impl/EasyAccessLauncher;

    # setter for: Lcom/android/internal/policy/impl/EasyAccessLauncher;->mIsTripleHomeCheckMode:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/EasyAccessLauncher;->access$002(Lcom/android/internal/policy/impl/EasyAccessLauncher;Z)Z

    .line 101
    iget-object v0, p0, Lcom/android/internal/policy/impl/EasyAccessLauncher$1;->this$0:Lcom/android/internal/policy/impl/EasyAccessLauncher;

    # setter for: Lcom/android/internal/policy/impl/EasyAccessLauncher;->mHomeDoubleTapped:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/EasyAccessLauncher;->access$102(Lcom/android/internal/policy/impl/EasyAccessLauncher;Z)Z

    .line 102
    return-void
.end method
