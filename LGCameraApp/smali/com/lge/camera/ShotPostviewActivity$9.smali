.class Lcom/lge/camera/ShotPostviewActivity$9;
.super Ljava/lang/Object;
.source "ShotPostviewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/ShotPostviewActivity;->startResolvedActivity(ILandroid/content/Intent;Landroid/content/pm/ResolveInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/ShotPostviewActivity;

.field final synthetic val$menuType:I

.field final synthetic val$resolvedIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/lge/camera/ShotPostviewActivity;ILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1229
    iput-object p1, p0, Lcom/lge/camera/ShotPostviewActivity$9;->this$0:Lcom/lge/camera/ShotPostviewActivity;

    iput p2, p0, Lcom/lge/camera/ShotPostviewActivity$9;->val$menuType:I

    iput-object p3, p0, Lcom/lge/camera/ShotPostviewActivity$9;->val$resolvedIntent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1231
    iget v1, p0, Lcom/lge/camera/ShotPostviewActivity$9;->val$menuType:I

    if-nez v1, :cond_0

    const/4 v0, 0x2

    .line 1233
    .local v0, "requestCode":I
    :goto_0
    iget-object v1, p0, Lcom/lge/camera/ShotPostviewActivity$9;->this$0:Lcom/lge/camera/ShotPostviewActivity;

    iget-object v2, p0, Lcom/lge/camera/ShotPostviewActivity$9;->val$resolvedIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2, v0}, Lcom/lge/camera/ShotPostviewActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1234
    return-void

    .line 1231
    .end local v0    # "requestCode":I
    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method
