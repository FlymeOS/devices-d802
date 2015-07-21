.class Landroid/media/RemoteDisplay$4;
.super Ljava/lang/Object;
.source "RemoteDisplay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/RemoteDisplay;->notifyDisplayStateChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/RemoteDisplay;

.field final synthetic val$state:I


# direct methods
.method constructor <init>(Landroid/media/RemoteDisplay;I)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Landroid/media/RemoteDisplay$4;->this$0:Landroid/media/RemoteDisplay;

    iput p2, p0, Landroid/media/RemoteDisplay$4;->val$state:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 191
    const-string v0, "RemoteDisplay"

    const-string v1, "notifyDisplayStateChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v0, p0, Landroid/media/RemoteDisplay$4;->this$0:Landroid/media/RemoteDisplay;

    invoke-static {v0}, Landroid/media/RemoteDisplay;->access$000(Landroid/media/RemoteDisplay;)Landroid/media/RemoteDisplay$Listener;

    move-result-object v0

    iget v1, p0, Landroid/media/RemoteDisplay$4;->val$state:I

    invoke-interface {v0, v1}, Landroid/media/RemoteDisplay$Listener;->onDisplayStateChanged(I)V

    .line 193
    return-void
.end method
