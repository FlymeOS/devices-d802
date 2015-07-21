.class Lcom/lge/systemservice/core/WfdManager$1;
.super Ljava/lang/Object;
.source "WfdManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/systemservice/core/WfdManager;->getService()Lcom/lge/systemservice/core/IWfdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/systemservice/core/WfdManager;


# direct methods
.method constructor <init>(Lcom/lge/systemservice/core/WfdManager;)V
    .locals 0

    .prologue
    .line 505
    iput-object p1, p0, Lcom/lge/systemservice/core/WfdManager$1;->this$0:Lcom/lge/systemservice/core/WfdManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    .line 507
    iget-object v0, p0, Lcom/lge/systemservice/core/WfdManager$1;->this$0:Lcom/lge/systemservice/core/WfdManager;

    const/4 v1, 0x0

    # setter for: Lcom/lge/systemservice/core/WfdManager;->mService:Lcom/lge/systemservice/core/IWfdManager;
    invoke-static {v0, v1}, Lcom/lge/systemservice/core/WfdManager;->access$002(Lcom/lge/systemservice/core/WfdManager;Lcom/lge/systemservice/core/IWfdManager;)Lcom/lge/systemservice/core/IWfdManager;

    return-void
.end method
