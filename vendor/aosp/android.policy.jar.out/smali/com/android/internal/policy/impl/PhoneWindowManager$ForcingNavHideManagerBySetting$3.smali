.class Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting$3;
.super Landroid/database/ContentObserver;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 6605
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting$3;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 6608
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting$3;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mHideAppListSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 6609
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting$3;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;

    # invokes: Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->readDB()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->access$1600(Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;)V

    .line 6610
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting$3;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;

    const/4 v1, 0x1

    # setter for: Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mIsReadDB:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->access$1702(Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;Z)Z

    .line 6611
    return-void
.end method
