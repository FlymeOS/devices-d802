.class public Lcom/lge/camera/postview/PostviewMenu;
.super Ljava/lang/Object;
.source "PostviewMenu.java"


# instance fields
.field Icon:Landroid/graphics/drawable/Drawable;

.field PackageName:Ljava/lang/String;

.field labelApp:Ljava/lang/String;

.field labelImage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "labelImage"    # Ljava/lang/String;
    .param p2, "labelApp"    # Ljava/lang/String;
    .param p3, "PackageName"    # Ljava/lang/String;
    .param p4, "Icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object v0, p0, Lcom/lge/camera/postview/PostviewMenu;->labelImage:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/lge/camera/postview/PostviewMenu;->labelApp:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/lge/camera/postview/PostviewMenu;->PackageName:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/lge/camera/postview/PostviewMenu;->Icon:Landroid/graphics/drawable/Drawable;

    .line 22
    iput-object p1, p0, Lcom/lge/camera/postview/PostviewMenu;->labelImage:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/lge/camera/postview/PostviewMenu;->labelApp:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lcom/lge/camera/postview/PostviewMenu;->PackageName:Ljava/lang/String;

    .line 25
    iput-object p4, p0, Lcom/lge/camera/postview/PostviewMenu;->Icon:Landroid/graphics/drawable/Drawable;

    .line 26
    return-void
.end method


# virtual methods
.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lge/camera/postview/PostviewMenu;->Icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getLabelApp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lge/camera/postview/PostviewMenu;->labelApp:Ljava/lang/String;

    return-object v0
.end method

.method public getLabelImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lge/camera/postview/PostviewMenu;->labelImage:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lge/camera/postview/PostviewMenu;->PackageName:Ljava/lang/String;

    return-object v0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/lge/camera/postview/PostviewMenu;->Icon:Landroid/graphics/drawable/Drawable;

    .line 58
    return-void
.end method

.method public setLabelApp(Ljava/lang/String;)V
    .locals 0
    .param p1, "labelApp"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/lge/camera/postview/PostviewMenu;->labelApp:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setLabelImage(Ljava/lang/String;)V
    .locals 0
    .param p1, "labelImage"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/lge/camera/postview/PostviewMenu;->labelImage:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/lge/camera/postview/PostviewMenu;->PackageName:Ljava/lang/String;

    .line 50
    return-void
.end method
