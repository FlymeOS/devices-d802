.class Lcom/lge/camera/PostviewClearShotActivity$3$1;
.super Ljava/lang/Object;
.source "PostviewClearShotActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/PostviewClearShotActivity$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/camera/PostviewClearShotActivity$3;


# direct methods
.method constructor <init>(Lcom/lge/camera/PostviewClearShotActivity$3;)V
    .locals 0

    .prologue
    .line 888
    iput-object p1, p0, Lcom/lge/camera/PostviewClearShotActivity$3$1;->this$1:Lcom/lge/camera/PostviewClearShotActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 890
    iget-object v0, p0, Lcom/lge/camera/PostviewClearShotActivity$3$1;->this$1:Lcom/lge/camera/PostviewClearShotActivity$3;

    iget-object v0, v0, Lcom/lge/camera/PostviewClearShotActivity$3;->this$0:Lcom/lge/camera/PostviewClearShotActivity;

    invoke-virtual {v0, p0}, Lcom/lge/camera/PostviewClearShotActivity;->removePostRunnable(Ljava/lang/Object;)V

    .line 891
    iget-object v0, p0, Lcom/lge/camera/PostviewClearShotActivity$3$1;->this$1:Lcom/lge/camera/PostviewClearShotActivity$3;

    iget-object v0, v0, Lcom/lge/camera/PostviewClearShotActivity$3;->this$0:Lcom/lge/camera/PostviewClearShotActivity;

    invoke-virtual {v0}, Lcom/lge/camera/PostviewClearShotActivity;->dismissProgressDialog()V

    .line 892
    iget-object v0, p0, Lcom/lge/camera/PostviewClearShotActivity$3$1;->this$1:Lcom/lge/camera/PostviewClearShotActivity$3;

    iget-object v0, v0, Lcom/lge/camera/PostviewClearShotActivity$3;->this$0:Lcom/lge/camera/PostviewClearShotActivity;

    invoke-virtual {v0}, Lcom/lge/camera/PostviewClearShotActivity;->saveFinished()V

    .line 893
    return-void
.end method
