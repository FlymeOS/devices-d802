.class Lcom/lge/camera/ShotPostviewActivity$5;
.super Ljava/lang/Object;
.source "ShotPostviewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/ShotPostviewActivity;->adjustFilenameForView(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/ShotPostviewActivity;

.field final synthetic val$tFilename:Ljava/lang/String;

.field final synthetic val$tv:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/lge/camera/ShotPostviewActivity;Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 883
    iput-object p1, p0, Lcom/lge/camera/ShotPostviewActivity$5;->this$0:Lcom/lge/camera/ShotPostviewActivity;

    iput-object p2, p0, Lcom/lge/camera/ShotPostviewActivity$5;->val$tv:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/lge/camera/ShotPostviewActivity$5;->val$tFilename:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 886
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity$5;->val$tv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lge/camera/ShotPostviewActivity$5;->val$tFilename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 887
    return-void
.end method
