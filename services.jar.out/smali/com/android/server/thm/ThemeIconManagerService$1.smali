.class Lcom/android/server/thm/ThemeIconManagerService$1;
.super Ljava/util/LinkedHashMap;
.source "ThemeIconManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/thm/ThemeIconManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<",
        "Ljava/lang/String;",
        "Landroid/content/thm/ThemePackageInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/thm/ThemeIconManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/thm/ThemeIconManagerService;IFZ)V
    .locals 0
    .param p2, "x0"    # I
    .param p3, "x1"    # F
    .param p4, "x2"    # Z

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/server/thm/ThemeIconManagerService$1;->this$0:Lcom/android/server/thm/ThemeIconManagerService;

    invoke-direct {p0, p2, p3, p4}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/thm/ThemePackageInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 91
    .local p1, "eldest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/thm/ThemePackageInfo;>;"
    invoke-virtual {p0}, Lcom/android/server/thm/ThemeIconManagerService$1;->size()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
