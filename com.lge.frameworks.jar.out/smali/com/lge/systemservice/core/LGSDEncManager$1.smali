.class Lcom/lge/systemservice/core/LGSDEncManager$1;
.super Ljava/lang/Object;
.source "LGSDEncManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/systemservice/core/LGSDEncManager;->getService()Lcom/lge/systemservice/core/ILGSDEncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/systemservice/core/LGSDEncManager;


# direct methods
.method constructor <init>(Lcom/lge/systemservice/core/LGSDEncManager;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/lge/systemservice/core/LGSDEncManager$1;->this$0:Lcom/lge/systemservice/core/LGSDEncManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lge/systemservice/core/LGSDEncManager$1;->this$0:Lcom/lge/systemservice/core/LGSDEncManager;

    const/4 v1, 0x0

    # setter for: Lcom/lge/systemservice/core/LGSDEncManager;->mService:Lcom/lge/systemservice/core/ILGSDEncManager;
    invoke-static {v0, v1}, Lcom/lge/systemservice/core/LGSDEncManager;->access$002(Lcom/lge/systemservice/core/LGSDEncManager;Lcom/lge/systemservice/core/ILGSDEncManager;)Lcom/lge/systemservice/core/ILGSDEncManager;

    return-void
.end method
