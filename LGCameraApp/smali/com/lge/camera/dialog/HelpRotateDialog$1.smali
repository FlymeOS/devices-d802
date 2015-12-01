.class Lcom/lge/camera/dialog/HelpRotateDialog$1;
.super Ljava/lang/Object;
.source "HelpRotateDialog.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 97
    iput-object p1, p0, Lcom/lge/camera/dialog/HelpRotateDialog$1;->this$0:Lcom/lge/camera/dialog/HelpRotateDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 99
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 100
    invoke-virtual {p1, v2}, Landroid/view/View;->playSoundEffect(I)V

    .line 102
    :cond_0
    return v2
.end method
