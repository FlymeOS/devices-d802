.class Lcom/lge/camera/ShotPostviewActivity$1;
.super Ljava/lang/Object;
.source "ShotPostviewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/ShotPostviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/ShotPostviewActivity;


# direct methods
.method constructor <init>(Lcom/lge/camera/ShotPostviewActivity;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/lge/camera/ShotPostviewActivity$1;->this$0:Lcom/lge/camera/ShotPostviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity$1;->this$0:Lcom/lge/camera/ShotPostviewActivity;

    invoke-virtual {v0, p0}, Lcom/lge/camera/ShotPostviewActivity;->removePostRunnable(Ljava/lang/Object;)V

    .line 123
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity$1;->this$0:Lcom/lge/camera/ShotPostviewActivity;

    invoke-virtual {v0}, Lcom/lge/camera/ShotPostviewActivity;->finish()V

    .line 124
    return-void
.end method
