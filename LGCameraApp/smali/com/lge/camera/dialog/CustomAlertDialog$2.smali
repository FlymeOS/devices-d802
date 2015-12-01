.class Lcom/lge/camera/dialog/CustomAlertDialog$2;
.super Ljava/lang/Object;
.source "CustomAlertDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/dialog/CustomAlertDialog;->setSpeakerClickListener(IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/dialog/CustomAlertDialog;

.field final synthetic val$voiceSound:I


# direct methods
.method constructor <init>(Lcom/lge/camera/dialog/CustomAlertDialog;I)V
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lcom/lge/camera/dialog/CustomAlertDialog$2;->this$0:Lcom/lge/camera/dialog/CustomAlertDialog;

    iput p2, p0, Lcom/lge/camera/dialog/CustomAlertDialog$2;->val$voiceSound:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 237
    iget-object v0, p0, Lcom/lge/camera/dialog/CustomAlertDialog$2;->this$0:Lcom/lge/camera/dialog/CustomAlertDialog;

    invoke-virtual {v0}, Lcom/lge/camera/dialog/CustomAlertDialog;->stopVoiceCommandSound()V

    .line 238
    iget-object v0, p0, Lcom/lge/camera/dialog/CustomAlertDialog$2;->this$0:Lcom/lge/camera/dialog/CustomAlertDialog;

    iget v1, p0, Lcom/lge/camera/dialog/CustomAlertDialog$2;->val$voiceSound:I

    invoke-virtual {v0, v1}, Lcom/lge/camera/dialog/CustomAlertDialog;->playVoiceCommandSound(I)V

    .line 239
    return-void
.end method
