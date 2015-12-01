.class Lcom/lge/camera/dialog/EulaPopupRotatableDialog$1;
.super Ljava/lang/Object;
.source "EulaPopupRotatableDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/dialog/EulaPopupRotatableDialog;->create()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/dialog/EulaPopupRotatableDialog;


# direct methods
.method constructor <init>(Lcom/lge/camera/dialog/EulaPopupRotatableDialog;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/lge/camera/dialog/EulaPopupRotatableDialog$1;->this$0:Lcom/lge/camera/dialog/EulaPopupRotatableDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 59
    iget-object v0, p0, Lcom/lge/camera/dialog/EulaPopupRotatableDialog$1;->this$0:Lcom/lge/camera/dialog/EulaPopupRotatableDialog;

    # setter for: Lcom/lge/camera/dialog/EulaPopupRotatableDialog;->mDoNotShowAgain:Z
    invoke-static {v0, p2}, Lcom/lge/camera/dialog/EulaPopupRotatableDialog;->access$002(Lcom/lge/camera/dialog/EulaPopupRotatableDialog;Z)Z

    .line 60
    return-void
.end method
