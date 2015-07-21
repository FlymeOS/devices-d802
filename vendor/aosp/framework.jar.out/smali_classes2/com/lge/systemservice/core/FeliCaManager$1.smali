.class Lcom/lge/systemservice/core/FeliCaManager$1;
.super Ljava/lang/Object;
.source "FeliCaManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/systemservice/core/FeliCaManager;->getService()Lcom/lge/systemservice/core/IFeliCaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/systemservice/core/FeliCaManager;


# direct methods
.method constructor <init>(Lcom/lge/systemservice/core/FeliCaManager;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/lge/systemservice/core/FeliCaManager$1;->this$0:Lcom/lge/systemservice/core/FeliCaManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lge/systemservice/core/FeliCaManager$1;->this$0:Lcom/lge/systemservice/core/FeliCaManager;

    const/4 v1, 0x0

    # setter for: Lcom/lge/systemservice/core/FeliCaManager;->mService:Lcom/lge/systemservice/core/IFeliCaManager;
    invoke-static {v0, v1}, Lcom/lge/systemservice/core/FeliCaManager;->access$002(Lcom/lge/systemservice/core/FeliCaManager;Lcom/lge/systemservice/core/IFeliCaManager;)Lcom/lge/systemservice/core/IFeliCaManager;

    return-void
.end method
