.class final Landroid/content/thm/ThemeIconManager$1;
.super Ljava/util/HashSet;
.source "ThemeIconManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/thm/ThemeIconManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashSet",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 46
    const-string v0, "com.lge.launcher2"

    invoke-virtual {p0, v0}, Landroid/content/thm/ThemeIconManager$1;->add(Ljava/lang/Object;)Z

    .line 47
    const-string v0, "com.lge.simplehome"

    invoke-virtual {p0, v0}, Landroid/content/thm/ThemeIconManager$1;->add(Ljava/lang/Object;)Z

    .line 48
    const-string v0, "com.android.settings"

    invoke-virtual {p0, v0}, Landroid/content/thm/ThemeIconManager$1;->add(Ljava/lang/Object;)Z

    .line 49
    return-void
.end method
