.class Lcom/lge/systemservice/core/NvManager$1;
.super Ljava/lang/Object;
.source "NvManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/systemservice/core/NvManager;->getService()Lcom/lge/systemservice/core/INvManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/systemservice/core/NvManager;


# direct methods
.method constructor <init>(Lcom/lge/systemservice/core/NvManager;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/lge/systemservice/core/NvManager$1;->this$0:Lcom/lge/systemservice/core/NvManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lge/systemservice/core/NvManager$1;->this$0:Lcom/lge/systemservice/core/NvManager;

    const/4 v1, 0x0

    # setter for: Lcom/lge/systemservice/core/NvManager;->mService:Lcom/lge/systemservice/core/INvManager;
    invoke-static {v0, v1}, Lcom/lge/systemservice/core/NvManager;->access$002(Lcom/lge/systemservice/core/NvManager;Lcom/lge/systemservice/core/INvManager;)Lcom/lge/systemservice/core/INvManager;

    return-void
.end method
