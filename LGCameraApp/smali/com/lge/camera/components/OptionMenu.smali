.class public Lcom/lge/camera/components/OptionMenu;
.super Ljava/lang/Object;
.source "OptionMenu.java"


# instance fields
.field menuIcon:Landroid/graphics/drawable/Drawable;

.field title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object v0, p0, Lcom/lge/camera/components/OptionMenu;->title:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/lge/camera/components/OptionMenu;->menuIcon:Landroid/graphics/drawable/Drawable;

    .line 19
    iput-object p1, p0, Lcom/lge/camera/components/OptionMenu;->title:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/lge/camera/components/OptionMenu;->menuIcon:Landroid/graphics/drawable/Drawable;

    .line 21
    return-void
.end method


# virtual methods
.method public getMenuIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/lge/camera/components/OptionMenu;->menuIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/lge/camera/components/OptionMenu;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setMenuIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/lge/camera/components/OptionMenu;->menuIcon:Landroid/graphics/drawable/Drawable;

    .line 37
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/lge/camera/components/OptionMenu;->title:Ljava/lang/String;

    .line 29
    return-void
.end method
