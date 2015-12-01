.class Lcom/lge/camera/dialog/HelpRotateDialog$2;
.super Ljava/lang/Object;
.source "HelpRotateDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/dialog/HelpRotateDialog;->setCheckBox(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/dialog/HelpRotateDialog;


# direct methods
.method constructor <init>(Lcom/lge/camera/dialog/HelpRotateDialog;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/lge/camera/dialog/HelpRotateDialog$2;->this$0:Lcom/lge/camera/dialog/HelpRotateDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 107
    iget-object v0, p0, Lcom/lge/camera/dialog/HelpRotateDialog$2;->this$0:Lcom/lge/camera/dialog/HelpRotateDialog;

    iput-boolean p2, v0, Lcom/lge/camera/dialog/HelpRotateDialog;->mDoNotShowAgain:Z

    .line 108
    return-void
.end method
