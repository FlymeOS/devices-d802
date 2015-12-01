.class public Lcom/lge/camera/dialog/AuCloudDialog;
.super Lcom/lge/camera/dialog/RotateDialog;
.source "AuCloudDialog.java"


# static fields
.field private static final AU_CLOUD_PKG_NAME:Ljava/lang/String; = "com.kddi.android.auclouduploader"

.field private static final SCHEME:Ljava/lang/String; = "package"


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 0
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/lge/camera/dialog/RotateDialog;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 35
    return-void
.end method

.method public static showInstalledAppDetails(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 73
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 74
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 75
    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    const-string v2, "package"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 77
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 78
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 79
    return-void
.end method


# virtual methods
.method public create()V
    .locals 7

    .prologue
    .line 39
    iget-object v5, p0, Lcom/lge/camera/dialog/AuCloudDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    const v6, 0x7f030036

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->inflateView(I)Landroid/view/View;

    move-result-object v4

    .line 40
    .local v4, "v":Landroid/view/View;
    const v5, 0x7f0d00bb

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 41
    .local v3, "titleText":Landroid/widget/TextView;
    const v5, 0x7f0d00c1

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 42
    .local v2, "messageText":Landroid/widget/TextView;
    const v5, 0x7f0d00c4

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 43
    .local v1, "btnOk":Landroid/widget/Button;
    const v5, 0x7f0d01c4

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 44
    .local v0, "btnCancel":Landroid/widget/Button;
    const v5, 0x7f0a036c

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 45
    const v5, 0x7f0a036e

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    .line 46
    const v5, 0x7f0a002f

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setText(I)V

    .line 47
    const v5, 0x7f0a003a

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(I)V

    .line 49
    invoke-super {p0, v4}, Lcom/lge/camera/dialog/RotateDialog;->create(Landroid/view/View;)V

    .line 51
    new-instance v5, Lcom/lge/camera/dialog/AuCloudDialog$1;

    invoke-direct {v5, p0}, Lcom/lge/camera/dialog/AuCloudDialog$1;-><init>(Lcom/lge/camera/dialog/AuCloudDialog;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    new-instance v5, Lcom/lge/camera/dialog/AuCloudDialog$2;

    invoke-direct {v5, p0}, Lcom/lge/camera/dialog/AuCloudDialog$2;-><init>(Lcom/lge/camera/dialog/AuCloudDialog;)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    return-void
.end method
