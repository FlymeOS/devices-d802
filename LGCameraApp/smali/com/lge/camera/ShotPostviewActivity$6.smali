.class Lcom/lge/camera/ShotPostviewActivity$6;
.super Ljava/lang/Object;
.source "ShotPostviewActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    .line 949
    iput-object p1, p0, Lcom/lge/camera/ShotPostviewActivity$6;->this$0:Lcom/lge/camera/ShotPostviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    .line 951
    const-string v0, "CameraApp"

    const-string v1, "mDismissClickListener"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 952
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity$6;->this$0:Lcom/lge/camera/ShotPostviewActivity;

    const/4 v1, 0x0

    # setter for: Lcom/lge/camera/ShotPostviewActivity;->mDialog:Landroid/app/Dialog;
    invoke-static {v0, v1}, Lcom/lge/camera/ShotPostviewActivity;->access$302(Lcom/lge/camera/ShotPostviewActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 953
    return-void
.end method
