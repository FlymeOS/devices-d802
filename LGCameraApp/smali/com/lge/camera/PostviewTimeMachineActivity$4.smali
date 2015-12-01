.class Lcom/lge/camera/PostviewTimeMachineActivity$4;
.super Ljava/lang/Object;
.source "PostviewTimeMachineActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/PostviewTimeMachineActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/PostviewTimeMachineActivity;


# direct methods
.method constructor <init>(Lcom/lge/camera/PostviewTimeMachineActivity;)V
    .locals 0

    .prologue
    .line 655
    iput-object p1, p0, Lcom/lge/camera/PostviewTimeMachineActivity$4;->this$0:Lcom/lge/camera/PostviewTimeMachineActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 658
    const-string v2, "CameraApp"

    const-string v3, "Time Machine Image selected."

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 662
    .local v1, "selectIndex":I
    iget-object v2, p0, Lcom/lge/camera/PostviewTimeMachineActivity$4;->this$0:Lcom/lge/camera/PostviewTimeMachineActivity;

    # invokes: Lcom/lge/camera/PostviewTimeMachineActivity;->selectThumbItem(I)V
    invoke-static {v2, v1}, Lcom/lge/camera/PostviewTimeMachineActivity;->access$1000(Lcom/lge/camera/PostviewTimeMachineActivity;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 666
    .end local v1    # "selectIndex":I
    :goto_0
    return-void

    .line 663
    :catch_0
    move-exception v0

    .line 664
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "CameraApp"

    const-string v3, "Exception:"

    invoke-static {v2, v3, v0}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
