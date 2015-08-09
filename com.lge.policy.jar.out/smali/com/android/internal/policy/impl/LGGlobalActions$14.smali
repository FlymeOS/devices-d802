.class Lcom/android/internal/policy/impl/LGGlobalActions$14;
.super Landroid/database/ContentObserver;
.source "LGGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/LGGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/LGGlobalActions;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/LGGlobalActions;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 1519
    iput-object p1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$14;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 1522
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$14;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # invokes: Lcom/android/internal/policy/impl/LGGlobalActions;->onAirplaneModeChanged()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$2000(Lcom/android/internal/policy/impl/LGGlobalActions;)V

    .line 1523
    return-void
.end method
