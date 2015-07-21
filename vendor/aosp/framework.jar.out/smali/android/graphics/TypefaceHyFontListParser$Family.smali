.class public Landroid/graphics/TypefaceHyFontListParser$Family;
.super Ljava/lang/Object;
.source "TypefaceHyFontListParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/TypefaceHyFontListParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Family"
.end annotation


# instance fields
.field public fontFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public lang:Ljava/lang/String;

.field public names:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public variant:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p3, "lang"    # Ljava/lang/String;
    .param p4, "variant"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 51
    .local p1, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "fontFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Landroid/graphics/TypefaceHyFontListParser$Family;->names:Ljava/util/List;

    .line 53
    iput-object p2, p0, Landroid/graphics/TypefaceHyFontListParser$Family;->fontFiles:Ljava/util/List;

    .line 54
    iput-object p3, p0, Landroid/graphics/TypefaceHyFontListParser$Family;->lang:Ljava/lang/String;

    .line 55
    iput-object p4, p0, Landroid/graphics/TypefaceHyFontListParser$Family;->variant:Ljava/lang/String;

    .line 56
    return-void
.end method
