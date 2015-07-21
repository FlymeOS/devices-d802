.class Lcom/lge/systemservice/core/DeathMonitor$1;
.super Ljava/lang/Object;
.source "DeathMonitor.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/systemservice/core/DeathMonitor;->getService()Lcom/lge/systemservice/core/IDeathMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/systemservice/core/DeathMonitor;


# direct methods
.method constructor <init>(Lcom/lge/systemservice/core/DeathMonitor;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/lge/systemservice/core/DeathMonitor$1;->this$0:Lcom/lge/systemservice/core/DeathMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lge/systemservice/core/DeathMonitor$1;->this$0:Lcom/lge/systemservice/core/DeathMonitor;

    const/4 v1, 0x0

    # setter for: Lcom/lge/systemservice/core/DeathMonitor;->mService:Lcom/lge/systemservice/core/IDeathMonitor;
    invoke-static {v0, v1}, Lcom/lge/systemservice/core/DeathMonitor;->access$002(Lcom/lge/systemservice/core/DeathMonitor;Lcom/lge/systemservice/core/IDeathMonitor;)Lcom/lge/systemservice/core/IDeathMonitor;

    return-void
.end method
