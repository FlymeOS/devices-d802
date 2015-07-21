.class Lcom/lge/systemservice/core/OsManager$1;
.super Ljava/lang/Object;
.source "OsManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/systemservice/core/OsManager;->getService()Lcom/lge/systemservice/core/IOsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/systemservice/core/OsManager;


# direct methods
.method constructor <init>(Lcom/lge/systemservice/core/OsManager;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/lge/systemservice/core/OsManager$1;->this$0:Lcom/lge/systemservice/core/OsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lge/systemservice/core/OsManager$1;->this$0:Lcom/lge/systemservice/core/OsManager;

    const/4 v1, 0x0

    # setter for: Lcom/lge/systemservice/core/OsManager;->mService:Lcom/lge/systemservice/core/IOsManager;
    invoke-static {v0, v1}, Lcom/lge/systemservice/core/OsManager;->access$002(Lcom/lge/systemservice/core/OsManager;Lcom/lge/systemservice/core/IOsManager;)Lcom/lge/systemservice/core/IOsManager;

    return-void
.end method
