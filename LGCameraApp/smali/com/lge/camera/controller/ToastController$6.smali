.class Lcom/lge/camera/controller/ToastController$6;
.super Ljava/lang/Object;
.source "ToastController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/controller/ToastController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/ToastController;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/ToastController;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lcom/lge/camera/controller/ToastController$6;->this$0:Lcom/lge/camera/controller/ToastController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 253
    iget-object v0, p0, Lcom/lge/camera/controller/ToastController$6;->this$0:Lcom/lge/camera/controller/ToastController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/ToastController;->storageToasthide(Z)V

    .line 254
    return-void
.end method
