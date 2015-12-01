.class Lcom/lge/camera/dialog/HelpVoicePhotoPopupRotatableDialog$1;
.super Ljava/lang/Object;
.source "HelpVoicePhotoPopupRotatableDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/dialog/HelpVoicePhotoPopupRotatableDialog;->setSpeakerClickListener(Landroid/view/View;IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/dialog/HelpVoicePhotoPopupRotatableDialog;

.field final synthetic val$voiceSound:I


# direct methods
.method constructor <init>(Lcom/lge/camera/dialog/HelpVoicePhotoPopupRotatableDialog;I)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/lge/camera/dialog/HelpVoicePhotoPopupRotatableDialog$1;->this$0:Lcom/lge/camera/dialog/HelpVoicePhotoPopupRotatableDialog;

    iput p2, p0, Lcom/lge/camera/dialog/HelpVoicePhotoPopupRotatableDialog$1;->val$voiceSound:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/lge/camera/dialog/HelpVoicePhotoPopupRotatableDialog$1;->this$0:Lcom/lge/camera/dialog/HelpVoicePhotoPopupRotatableDialog;

    iget-object v0, v0, Lcom/lge/camera/dialog/HelpVoicePhotoPopupRotatableDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/lge/camera/dialog/HelpVoicePhotoPopupRotatableDialog$1;->this$0:Lcom/lge/camera/dialog/HelpVoicePhotoPopupRotatableDialog;

    iget-object v0, v0, Lcom/lge/camera/dialog/HelpVoicePhotoPopupRotatableDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    iget v1, p0, Lcom/lge/camera/dialog/HelpVoicePhotoPopupRotatableDialog$1;->val$voiceSound:I

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->playVoiceCommandSound(I)V

    .line 136
    :cond_0
    return-void
.end method
