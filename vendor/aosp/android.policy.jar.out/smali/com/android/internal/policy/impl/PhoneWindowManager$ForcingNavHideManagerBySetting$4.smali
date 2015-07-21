.class Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting$4;
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
    .line 6614
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting$4;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 6617
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting$4;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;

    # invokes: Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->setTalkbackEnabled()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->access$2200(Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;)V

    .line 6618
    const-string v0, "HideNav"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "talkBackObserver called!!, mIsTalkbackEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting$4;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mIsTalkbackEnabled:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->access$2300(Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6619
    return-void
.end method
