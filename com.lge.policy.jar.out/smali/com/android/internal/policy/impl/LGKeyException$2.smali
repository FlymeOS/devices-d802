.class Lcom/android/internal/policy/impl/LGKeyException$2;
.super Ljava/lang/Object;
.source "LGKeyException.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/LGKeyException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/LGKeyException;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/LGKeyException;)V
    .locals 0

    .prologue
    .line 264
    iput-object p1, p0, Lcom/android/internal/policy/impl/LGKeyException$2;->this$0:Lcom/android/internal/policy/impl/LGKeyException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 267
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/internal/policy/impl/SensorUtil;->setSensorEnabled(Z)V

    .line 268
    sget-boolean v0, Lcom/android/internal/policy/impl/SensorUtil;->mProximityNear:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/internal/policy/impl/SensorUtil;->mLightCovered:Z

    if-eqz v0, :cond_0

    .line 269
    const-string v0, "LGKeyException"

    const-string v1, "HW_SENSOR : [Key_Exception] If pressed in darkness like In pocket, turn off PowerKeyPress."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGKeyException$2;->this$0:Lcom/android/internal/policy/impl/LGKeyException;

    # getter for: Lcom/android/internal/policy/impl/LGKeyException;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LGKeyException;->access$100(Lcom/android/internal/policy/impl/LGKeyException;)Landroid/os/PowerManager;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 275
    :cond_0
    return-void
.end method
