.class Lcom/lge/systemservice/core/BtLgeExtManager$1;
.super Ljava/lang/Object;
.source "BtLgeExtManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/systemservice/core/BtLgeExtManager;->getService()Lcom/lge/systemservice/core/IBtLgeExtManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/systemservice/core/BtLgeExtManager;


# direct methods
.method constructor <init>(Lcom/lge/systemservice/core/BtLgeExtManager;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/lge/systemservice/core/BtLgeExtManager$1;->this$0:Lcom/lge/systemservice/core/BtLgeExtManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lge/systemservice/core/BtLgeExtManager$1;->this$0:Lcom/lge/systemservice/core/BtLgeExtManager;

    const/4 v1, 0x0

    # setter for: Lcom/lge/systemservice/core/BtLgeExtManager;->mService:Lcom/lge/systemservice/core/IBtLgeExtManager;
    invoke-static {v0, v1}, Lcom/lge/systemservice/core/BtLgeExtManager;->access$002(Lcom/lge/systemservice/core/BtLgeExtManager;Lcom/lge/systemservice/core/IBtLgeExtManager;)Lcom/lge/systemservice/core/IBtLgeExtManager;

    return-void
.end method
