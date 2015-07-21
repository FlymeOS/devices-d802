.class Lcom/lge/systemservice/core/LGDevEncManager$1;
.super Ljava/lang/Object;
.source "LGDevEncManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/systemservice/core/LGDevEncManager;->getService()Lcom/lge/systemservice/core/ILGDevEncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/systemservice/core/LGDevEncManager;


# direct methods
.method constructor <init>(Lcom/lge/systemservice/core/LGDevEncManager;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/lge/systemservice/core/LGDevEncManager$1;->this$0:Lcom/lge/systemservice/core/LGDevEncManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lge/systemservice/core/LGDevEncManager$1;->this$0:Lcom/lge/systemservice/core/LGDevEncManager;

    const/4 v1, 0x0

    # setter for: Lcom/lge/systemservice/core/LGDevEncManager;->mService:Lcom/lge/systemservice/core/ILGDevEncManager;
    invoke-static {v0, v1}, Lcom/lge/systemservice/core/LGDevEncManager;->access$002(Lcom/lge/systemservice/core/LGDevEncManager;Lcom/lge/systemservice/core/ILGDevEncManager;)Lcom/lge/systemservice/core/ILGDevEncManager;

    return-void
.end method
