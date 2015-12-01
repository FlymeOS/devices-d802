.class Lcom/lge/camera/ShotPostviewActivity$8;
.super Ljava/lang/Object;
.source "ShotPostviewActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/ShotPostviewActivity;->sortPostviewMenuList(Ljava/util/ArrayList;Landroid/content/pm/PackageManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/lge/camera/postview/PostviewMenu;",
        ">;"
    }
.end annotation


# instance fields
.field private final collator:Ljava/text/Collator;

.field final synthetic this$0:Lcom/lge/camera/ShotPostviewActivity;


# direct methods
.method constructor <init>(Lcom/lge/camera/ShotPostviewActivity;)V
    .locals 1

    .prologue
    .line 1123
    iput-object p1, p0, Lcom/lge/camera/ShotPostviewActivity$8;->this$0:Lcom/lge/camera/ShotPostviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1124
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/ShotPostviewActivity$8;->collator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public compare(Lcom/lge/camera/postview/PostviewMenu;Lcom/lge/camera/postview/PostviewMenu;)I
    .locals 3
    .param p1, "lhs"    # Lcom/lge/camera/postview/PostviewMenu;
    .param p2, "rhs"    # Lcom/lge/camera/postview/PostviewMenu;

    .prologue
    .line 1129
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity$8;->collator:Ljava/text/Collator;

    invoke-virtual {p1}, Lcom/lge/camera/postview/PostviewMenu;->getLabelImage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/lge/camera/postview/PostviewMenu;->getLabelImage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 1123
    check-cast p1, Lcom/lge/camera/postview/PostviewMenu;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/lge/camera/postview/PostviewMenu;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/lge/camera/ShotPostviewActivity$8;->compare(Lcom/lge/camera/postview/PostviewMenu;Lcom/lge/camera/postview/PostviewMenu;)I

    move-result v0

    return v0
.end method
