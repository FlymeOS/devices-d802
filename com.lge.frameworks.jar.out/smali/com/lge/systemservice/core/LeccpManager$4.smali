.class Lcom/lge/systemservice/core/LeccpManager$4;
.super Ljava/lang/Object;
.source "LeccpManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/systemservice/core/LeccpManager;->getService()Lcom/lge/systemservice/core/ILeccpManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/systemservice/core/LeccpManager;


# direct methods
.method constructor <init>(Lcom/lge/systemservice/core/LeccpManager;)V
    .locals 0

    .prologue
    .line 528
    iput-object p1, p0, Lcom/lge/systemservice/core/LeccpManager$4;->this$0:Lcom/lge/systemservice/core/LeccpManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    .line 531
    iget-object v0, p0, Lcom/lge/systemservice/core/LeccpManager$4;->this$0:Lcom/lge/systemservice/core/LeccpManager;

    const/4 v1, 0x0

    # setter for: Lcom/lge/systemservice/core/LeccpManager;->mILeccpManager:Lcom/lge/systemservice/core/ILeccpManager;
    invoke-static {v0, v1}, Lcom/lge/systemservice/core/LeccpManager;->access$602(Lcom/lge/systemservice/core/LeccpManager;Lcom/lge/systemservice/core/ILeccpManager;)Lcom/lge/systemservice/core/ILeccpManager;

    .line 532
    return-void
.end method
