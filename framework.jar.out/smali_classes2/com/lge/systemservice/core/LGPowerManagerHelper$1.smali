.class Lcom/lge/systemservice/core/LGPowerManagerHelper$1;
.super Ljava/lang/Object;
.source "LGPowerManagerHelper.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/systemservice/core/LGPowerManagerHelper;->getService()Lcom/lge/systemservice/core/ILGPowerManagerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/systemservice/core/LGPowerManagerHelper;


# direct methods
.method constructor <init>(Lcom/lge/systemservice/core/LGPowerManagerHelper;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/lge/systemservice/core/LGPowerManagerHelper$1;->this$0:Lcom/lge/systemservice/core/LGPowerManagerHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/lge/systemservice/core/LGPowerManagerHelper$1;->this$0:Lcom/lge/systemservice/core/LGPowerManagerHelper;

    const/4 v1, 0x0

    # setter for: Lcom/lge/systemservice/core/LGPowerManagerHelper;->mService:Lcom/lge/systemservice/core/ILGPowerManagerHelper;
    invoke-static {v0, v1}, Lcom/lge/systemservice/core/LGPowerManagerHelper;->access$002(Lcom/lge/systemservice/core/LGPowerManagerHelper;Lcom/lge/systemservice/core/ILGPowerManagerHelper;)Lcom/lge/systemservice/core/ILGPowerManagerHelper;

    return-void
.end method
