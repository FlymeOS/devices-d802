.class public Landroid/graphics/Typeface;
.super Ljava/lang/Object;
.source "Typeface.java"


# static fields
.field public static final BOLD:I = 0x1

.field public static final BOLD_ITALIC:I = 0x3

.field public static final DEFAULT:Landroid/graphics/Typeface;

.field public static final DEFAULT_BOLD:Landroid/graphics/Typeface;

.field private static final DL_FONT_DAT:Ljava/lang/String; = "font.dat"

.field private static final DL_FONT_TTF:Ljava/lang/String; = "font.ttf"

.field private static final DL_FONT_XML:Ljava/lang/String; = "font.xml"

.field static final FONTS_CONFIG:Ljava/lang/String; = "fonts.xml"

.field static final FONTS_CONFIG_AME:Ljava/lang/String; = "fonts_ame.xml"

.field private static final FONTS_CONFIG_LGE:Ljava/lang/String; = "fonts_lge.xml"

.field public static final ITALIC:I = 0x2

.field public static final MONOSPACE:Landroid/graphics/Typeface;

.field public static final NORMAL:I = 0x0

.field private static final ROBOTO:Ljava/lang/String; = "roboto"

.field private static final ROBOTO_PATH:Ljava/lang/String; = "/system/fonts/Roboto-Regular.ttf"

.field public static final SANS_SERIF:Landroid/graphics/Typeface;

.field public static final SERIF:Landroid/graphics/Typeface;

.field private static TAG:Ljava/lang/String;

.field static sDefaultTypeface:Landroid/graphics/Typeface;

.field static sDefaults:[Landroid/graphics/Typeface;

.field static sFallbackFonts:[Landroid/graphics/FontFamily;

.field static sSystemFontMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field private static final sTypefaceCache:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/Typeface;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mStyle:I

.field public native_instance:J


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x3

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 44
    const-string v0, "Typeface"

    sput-object v0, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    .line 62
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0, v4}, Landroid/util/LongSparseArray;-><init>(I)V

    sput-object v0, Landroid/graphics/Typeface;->sTypefaceCache:Landroid/util/LongSparseArray;

    .line 358
    invoke-static {}, Landroid/graphics/Typeface;->init()V

    move-object v0, v1

    .line 360
    nop

    nop

    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    move-object v0, v1

    .line 361
    nop

    nop

    invoke-static {v0, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    .line 362
    const-string/jumbo v0, "sans-serif"

    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 363
    const-string/jumbo v0, "serif"

    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    .line 364
    const-string/jumbo v0, "monospace"

    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    .line 366
    const/4 v0, 0x4

    new-array v2, v0, [Landroid/graphics/Typeface;

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    aput-object v0, v2, v3

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    aput-object v0, v2, v5

    move-object v0, v1

    nop

    nop

    invoke-static {v0, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    aput-object v0, v2, v6

    nop

    nop

    invoke-static {v1, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    aput-object v0, v2, v4

    sput-object v2, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    .line 373
    return-void
.end method

.method private constructor <init>(J)V
    .locals 3
    .param p1, "ni"    # J

    .prologue
    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/Typeface;->mStyle:I

    .line 256
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 257
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "native typeface cannot be made"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 260
    :cond_0
    iput-wide p1, p0, Landroid/graphics/Typeface;->native_instance:J

    .line 261
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->nativeGetStyle(J)I

    move-result v0

    iput v0, p0, Landroid/graphics/Typeface;->mStyle:I

    .line 262
    return-void
.end method

.method public static addNewFont(I)I
    .locals 1
    .param p0, "fontIndex"    # I

    .prologue
    .line 642
    invoke-static {p0}, Landroid/graphics/Typeface;->nativeAddNewFont(I)I

    move-result v0

    return v0
.end method

.method public static create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;
    .locals 6
    .param p0, "family"    # Landroid/graphics/Typeface;
    .param p1, "style"    # I

    .prologue
    .line 136
    if-ltz p1, :cond_0

    const/4 v4, 0x3

    if-le p1, v4, :cond_1

    .line 137
    :cond_0
    const/4 p1, 0x0

    .line 139
    :cond_1
    const-wide/16 v0, 0x0

    .line 140
    .local v0, "ni":J
    if-eqz p0, :cond_4

    .line 142
    iget v4, p0, Landroid/graphics/Typeface;->mStyle:I

    if-ne v4, p1, :cond_3

    move-object v3, p0

    .line 166
    :cond_2
    :goto_0
    return-object v3

    .line 146
    :cond_3
    iget-wide v0, p0, Landroid/graphics/Typeface;->native_instance:J

    .line 150
    :cond_4
    sget-object v4, Landroid/graphics/Typeface;->sTypefaceCache:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 152
    .local v2, "styles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Typeface;>;"
    if-eqz v2, :cond_5

    .line 153
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Typeface;

    .line 154
    .local v3, "typeface":Landroid/graphics/Typeface;
    if-nez v3, :cond_2

    .line 159
    .end local v3    # "typeface":Landroid/graphics/Typeface;
    :cond_5
    new-instance v3, Landroid/graphics/Typeface;

    invoke-static {v0, v1, p1}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(JI)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Landroid/graphics/Typeface;-><init>(J)V

    .line 160
    .restart local v3    # "typeface":Landroid/graphics/Typeface;
    if-nez v2, :cond_6

    .line 161
    new-instance v2, Landroid/util/SparseArray;

    .end local v2    # "styles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Typeface;>;"
    const/4 v4, 0x4

    invoke-direct {v2, v4}, Landroid/util/SparseArray;-><init>(I)V

    .line 162
    .restart local v2    # "styles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Typeface;>;"
    sget-object v4, Landroid/graphics/Typeface;->sTypefaceCache:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v0, v1, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 164
    :cond_6
    invoke-virtual {v2, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public static create(Ljava/lang/String;I)Landroid/graphics/Typeface;
    .locals 1
    .param p0, "familyName"    # Ljava/lang/String;
    .param p1, "style"    # I

    .prologue
    .line 118
    sget-object v0, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 119
    sget-object v0, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    invoke-static {v0, p1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 121
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 5
    .param p0, "mgr"    # Landroid/content/res/AssetManager;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 185
    sget-object v2, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    if-eqz v2, :cond_0

    .line 186
    new-instance v1, Landroid/graphics/FontFamily;

    invoke-direct {v1}, Landroid/graphics/FontFamily;-><init>()V

    .line 187
    .local v1, "fontFamily":Landroid/graphics/FontFamily;
    invoke-virtual {v1, p0, p1}, Landroid/graphics/FontFamily;->addFontFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 188
    const/4 v2, 0x1

    new-array v0, v2, [Landroid/graphics/FontFamily;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 189
    .local v0, "families":[Landroid/graphics/FontFamily;
    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFamiliesWithDefault([Landroid/graphics/FontFamily;)Landroid/graphics/Typeface;

    move-result-object v2

    return-object v2

    .line 192
    .end local v0    # "families":[Landroid/graphics/FontFamily;
    .end local v1    # "fontFamily":Landroid/graphics/FontFamily;
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Font asset not found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static createFromFamilies([Landroid/graphics/FontFamily;)Landroid/graphics/Typeface;
    .locals 6
    .param p0, "families"    # [Landroid/graphics/FontFamily;

    .prologue
    .line 229
    array-length v2, p0

    new-array v1, v2, [J

    .line 230
    .local v1, "ptrArray":[J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 231
    aget-object v2, p0, v0

    iget-wide v2, v2, Landroid/graphics/FontFamily;->mNativePtr:J

    aput-wide v2, v1, v0

    .line 230
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 233
    :cond_0
    new-instance v2, Landroid/graphics/Typeface;

    invoke-static {v1}, Landroid/graphics/Typeface;->nativeCreateFromArray([J)J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Landroid/graphics/Typeface;-><init>(J)V

    return-object v2
.end method

.method public static createFromFamiliesWithDefault([Landroid/graphics/FontFamily;)Landroid/graphics/Typeface;
    .locals 6
    .param p0, "families"    # [Landroid/graphics/FontFamily;

    .prologue
    .line 244
    array-length v2, p0

    sget-object v3, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    array-length v3, v3

    add-int/2addr v2, v3

    new-array v1, v2, [J

    .line 245
    .local v1, "ptrArray":[J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 246
    aget-object v2, p0, v0

    iget-wide v2, v2, Landroid/graphics/FontFamily;->mNativePtr:J

    aput-wide v2, v1, v0

    .line 245
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 248
    :cond_0
    const/4 v0, 0x0

    :goto_1
    sget-object v2, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 249
    array-length v2, p0

    add-int/2addr v2, v0

    sget-object v3, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    aget-object v3, v3, v0

    iget-wide v4, v3, Landroid/graphics/FontFamily;->mNativePtr:J

    aput-wide v4, v1, v2

    .line 248
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 251
    :cond_1
    new-instance v2, Landroid/graphics/Typeface;

    invoke-static {v1}, Landroid/graphics/Typeface;->nativeCreateFromArray([J)J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Landroid/graphics/Typeface;-><init>(J)V

    return-object v2
.end method

.method public static createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;
    .locals 1
    .param p0, "path"    # Ljava/io/File;

    .prologue
    .line 202
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public static createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 5
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 212
    sget-object v2, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    if-eqz v2, :cond_0

    .line 213
    new-instance v1, Landroid/graphics/FontFamily;

    invoke-direct {v1}, Landroid/graphics/FontFamily;-><init>()V

    .line 214
    .local v1, "fontFamily":Landroid/graphics/FontFamily;
    invoke-virtual {v1, p0}, Landroid/graphics/FontFamily;->addFont(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 215
    const/4 v2, 0x1

    new-array v0, v2, [Landroid/graphics/FontFamily;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 216
    .local v0, "families":[Landroid/graphics/FontFamily;
    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFamiliesWithDefault([Landroid/graphics/FontFamily;)Landroid/graphics/Typeface;

    move-result-object v2

    return-object v2

    .line 219
    .end local v0    # "families":[Landroid/graphics/FontFamily;
    .end local v1    # "fontFamily":Landroid/graphics/FontFamily;
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Font not found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static defaultFromStyle(I)Landroid/graphics/Typeface;
    .locals 1
    .param p0, "style"    # I

    .prologue
    .line 175
    sget-object v0, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v0, v0, p0

    return-object v0
.end method

.method private static forceAddedRobotoTypeface(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 487
    .local p0, "systemFonts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    invoke-static {}, Landroid/graphics/Typeface;->nativeGetNumEmbeddedFonts()I

    move-result v1

    if-gtz v1, :cond_0

    .line 488
    const-string/jumbo v1, "sans-serif"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    .line 489
    .local v0, "sans_serif":Landroid/graphics/Typeface;
    const-string/jumbo v1, "roboto"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    iget-wide v2, v0, Landroid/graphics/Typeface;->native_instance:J

    const-string/jumbo v1, "roboto"

    const-string v4, "/system/fonts/Roboto-Regular.ttf"

    invoke-static {v2, v3, v1, v4}, Landroid/graphics/Typeface;->nativeAddEmbeddedFont(JLjava/lang/String;Ljava/lang/String;)V

    .line 492
    .end local v0    # "sans_serif":Landroid/graphics/Typeface;
    :cond_0
    return-void
.end method

.method public static getCheckNewFont(I)I
    .locals 1
    .param p0, "fontIndex"    # I

    .prologue
    .line 641
    invoke-static {p0}, Landroid/graphics/Typeface;->nativeGetCheckNewFont(I)I

    move-result v0

    return v0
.end method

.method public static getDefaultTypefaceIndex()I
    .locals 1

    .prologue
    .line 628
    invoke-static {}, Landroid/graphics/Typeface;->nativeGetDefaultTypefaceIndex()I

    move-result v0

    return v0
.end method

.method public static getDownloadFontAppName(I)Ljava/lang/String;
    .locals 1
    .param p0, "fontIndex"    # I

    .prologue
    .line 632
    invoke-static {p0}, Landroid/graphics/Typeface;->nativeGetDownloadFontAppName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getDownloadFontConfigLocation(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 615
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getDownloadFontDstPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 635
    invoke-static {}, Landroid/graphics/Typeface;->nativeGetDownloadFontDstPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDownloadFontName(I)Ljava/lang/String;
    .locals 1
    .param p0, "fontIndex"    # I

    .prologue
    .line 631
    invoke-static {p0}, Landroid/graphics/Typeface;->nativeGetDownloadFontName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDownloadFontSrcPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 634
    invoke-static {}, Landroid/graphics/Typeface;->nativeGetDownloadFontSrcPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFontFullPath(I)Ljava/lang/String;
    .locals 1
    .param p0, "fontIndex"    # I

    .prologue
    .line 633
    invoke-static {p0}, Landroid/graphics/Typeface;->nativeGetFontFullPath(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFontWebFaceName(I)Ljava/lang/String;
    .locals 1
    .param p0, "fontIndex"    # I

    .prologue
    .line 637
    invoke-static {p0}, Landroid/graphics/Typeface;->nativeGetFontWebFaceName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNewFontAppName(I)Ljava/lang/String;
    .locals 1
    .param p0, "fontIndex"    # I

    .prologue
    .line 640
    invoke-static {p0}, Landroid/graphics/Typeface;->nativeGetNewFontAppName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNumAllFonts()I
    .locals 1

    .prologue
    .line 629
    invoke-static {}, Landroid/graphics/Typeface;->nativeGetNumAllFonts()I

    move-result v0

    return v0
.end method

.method private static getNumDownloadFonts()I
    .locals 1

    .prologue
    .line 647
    invoke-static {}, Landroid/graphics/Typeface;->nativeGetNumDownloadFonts()I

    move-result v0

    return v0
.end method

.method public static getNumEmbeddedFonts()I
    .locals 1

    .prologue
    .line 630
    invoke-static {}, Landroid/graphics/Typeface;->nativeGetNumEmbeddedFonts()I

    move-result v0

    return v0
.end method

.method public static getNumNewFonts()I
    .locals 1

    .prologue
    .line 639
    invoke-static {}, Landroid/graphics/Typeface;->nativeGetNumNewFonts()I

    move-result v0

    return v0
.end method

.method public static getSystemDefaultTypefaceIndex()I
    .locals 1

    .prologue
    .line 636
    invoke-static {}, Landroid/graphics/Typeface;->nativeGetSystemDefaultTypefaceIndex()I

    move-result v0

    return v0
.end method

.method private static getSystemFontConfigLocation()Ljava/io/File;
    .locals 2

    .prologue
    .line 376
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static init()V
    .locals 24

    .prologue
    .line 279
    invoke-static {}, Landroid/graphics/Typeface;->getSystemFontConfigLocation()Ljava/io/File;

    move-result-object v17

    .line 280
    .local v17, "systemFontConfigLocation":Ljava/io/File;
    new-instance v6, Ljava/io/File;

    const-string v21, "fonts.xml"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-direct {v6, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 281
    .local v6, "configFilename":Ljava/io/File;
    sget-boolean v21, Lcom/lge/config/ConfigBuildFlags;->CAPP_FONTS:Z

    if-eqz v21, :cond_0

    sget-boolean v21, Lcom/lge/config/ConfigBuildFlags;->CAPP_EMOJI:Z

    if-eqz v21, :cond_0

    const-string v21, "AME"

    const-string/jumbo v22, "ro.build.target_region"

    invoke-static/range {v22 .. v22}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 284
    new-instance v6, Ljava/io/File;

    .end local v6    # "configFilename":Ljava/io/File;
    const-string v21, "fonts_ame.xml"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-direct {v6, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 287
    .restart local v6    # "configFilename":Ljava/io/File;
    :cond_0
    :try_start_0
    new-instance v13, Ljava/io/FileInputStream;

    invoke-direct {v13, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 288
    .local v13, "fontsIn":Ljava/io/FileInputStream;
    invoke-static {v13}, Landroid/graphics/FontListParser;->parse(Ljava/io/InputStream;)Landroid/graphics/FontListParser$Config;

    move-result-object v11

    .line 290
    .local v11, "fontConfig":Landroid/graphics/FontListParser$Config;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 293
    .local v10, "familyList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontFamily;>;"
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    iget-object v0, v11, Landroid/graphics/FontListParser$Config;->families:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v14, v0, :cond_3

    .line 294
    iget-object v0, v11, Landroid/graphics/FontListParser$Config;->families:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/FontListParser$Family;

    .line 295
    .local v8, "f":Landroid/graphics/FontListParser$Family;
    if-eqz v14, :cond_1

    iget-object v0, v8, Landroid/graphics/FontListParser$Family;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    if-nez v21, :cond_2

    .line 296
    :cond_1
    invoke-static {v8}, Landroid/graphics/Typeface;->makeFamilyFromParsed(Landroid/graphics/FontListParser$Family;)Landroid/graphics/FontFamily;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    :cond_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 299
    .end local v8    # "f":Landroid/graphics/FontListParser$Family;
    :cond_3
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v21

    move/from16 v0, v21

    new-array v0, v0, [Landroid/graphics/FontFamily;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v10, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [Landroid/graphics/FontFamily;

    sput-object v21, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    .line 300
    sget-object v21, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    invoke-static/range {v21 .. v21}, Landroid/graphics/Typeface;->createFromFamilies([Landroid/graphics/FontFamily;)Landroid/graphics/Typeface;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/graphics/Typeface;->setDefault(Landroid/graphics/Typeface;)V

    .line 302
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    .line 303
    .local v18, "systemFonts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    const/4 v14, 0x0

    :goto_1
    iget-object v0, v11, Landroid/graphics/FontListParser$Config;->families:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v14, v0, :cond_6

    .line 305
    iget-object v0, v11, Landroid/graphics/FontListParser$Config;->families:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/FontListParser$Family;

    .line 306
    .restart local v8    # "f":Landroid/graphics/FontListParser$Family;
    iget-object v0, v8, Landroid/graphics/FontListParser$Family;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_4

    .line 307
    if-nez v14, :cond_5

    .line 310
    sget-object v19, Landroid/graphics/Typeface;->sDefaultTypeface:Landroid/graphics/Typeface;

    .line 316
    .local v19, "typeface":Landroid/graphics/Typeface;
    :goto_2
    iget-object v0, v8, Landroid/graphics/FontListParser$Family;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    .end local v19    # "typeface":Landroid/graphics/Typeface;
    :cond_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 312
    :cond_5
    invoke-static {v8}, Landroid/graphics/Typeface;->makeFamilyFromParsed(Landroid/graphics/FontListParser$Family;)Landroid/graphics/FontFamily;

    move-result-object v12

    .line 313
    .local v12, "fontFamily":Landroid/graphics/FontFamily;
    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v9, v0, [Landroid/graphics/FontFamily;

    const/16 v21, 0x0

    aput-object v12, v9, v21

    .line 314
    .local v9, "families":[Landroid/graphics/FontFamily;
    invoke-static {v9}, Landroid/graphics/Typeface;->createFromFamiliesWithDefault([Landroid/graphics/FontFamily;)Landroid/graphics/Typeface;

    move-result-object v19

    .restart local v19    # "typeface":Landroid/graphics/Typeface;
    goto :goto_2

    .line 319
    .end local v8    # "f":Landroid/graphics/FontListParser$Family;
    .end local v9    # "families":[Landroid/graphics/FontFamily;
    .end local v12    # "fontFamily":Landroid/graphics/FontFamily;
    .end local v19    # "typeface":Landroid/graphics/Typeface;
    :cond_6
    iget-object v0, v11, Landroid/graphics/FontListParser$Config;->aliases:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_9

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/FontListParser$Alias;

    .line 320
    .local v4, "alias":Landroid/graphics/FontListParser$Alias;
    iget-object v0, v4, Landroid/graphics/FontListParser$Alias;->toName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Typeface;

    .line 321
    .local v5, "base":Landroid/graphics/Typeface;
    move-object/from16 v16, v5

    .line 322
    .local v16, "newFace":Landroid/graphics/Typeface;
    iget v0, v4, Landroid/graphics/FontListParser$Alias;->weight:I

    move/from16 v20, v0

    .line 323
    .local v20, "weight":I
    const/16 v21, 0x190

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_7

    .line 324
    new-instance v16, Landroid/graphics/Typeface;

    .end local v16    # "newFace":Landroid/graphics/Typeface;
    iget-wide v0, v5, Landroid/graphics/Typeface;->native_instance:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/graphics/Typeface;->nativeCreateWeightAlias(JI)J

    move-result-wide v22

    move-object/from16 v0, v16

    move-wide/from16 v1, v22

    invoke-direct {v0, v1, v2}, Landroid/graphics/Typeface;-><init>(J)V

    .line 326
    .restart local v16    # "newFace":Landroid/graphics/Typeface;
    :cond_7
    iget-object v0, v4, Landroid/graphics/FontListParser$Alias;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_3

    .line 345
    .end local v4    # "alias":Landroid/graphics/FontListParser$Alias;
    .end local v5    # "base":Landroid/graphics/Typeface;
    .end local v10    # "familyList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontFamily;>;"
    .end local v11    # "fontConfig":Landroid/graphics/FontListParser$Config;
    .end local v13    # "fontsIn":Ljava/io/FileInputStream;
    .end local v14    # "i":I
    .end local v15    # "i$":Ljava/util/Iterator;
    .end local v16    # "newFace":Landroid/graphics/Typeface;
    .end local v18    # "systemFonts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    .end local v20    # "weight":I
    :catch_0
    move-exception v7

    .line 346
    .local v7, "e":Ljava/lang/RuntimeException;
    sget-object v21, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    const-string v22, "Didn\'t create default family (most likely, non-Minikin build)"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 355
    .end local v7    # "e":Ljava/lang/RuntimeException;
    :cond_8
    :goto_4
    return-void

    .line 330
    .restart local v10    # "familyList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontFamily;>;"
    .restart local v11    # "fontConfig":Landroid/graphics/FontListParser$Config;
    .restart local v13    # "fontsIn":Ljava/io/FileInputStream;
    .restart local v14    # "i":I
    .restart local v15    # "i$":Ljava/util/Iterator;
    .restart local v18    # "systemFonts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    :cond_9
    :try_start_1
    sget-boolean v21, Lcom/lge/config/ConfigBuildFlags;->CAPP_FONTS:Z

    if-eqz v21, :cond_a

    .line 331
    invoke-static/range {v18 .. v18}, Landroid/graphics/Typeface;->initFontManager(Ljava/util/Map;)V

    .line 334
    :cond_a
    sput-object v18, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    .line 338
    sget-boolean v21, Lcom/lge/config/ConfigBuildFlags;->CAPP_FONTS:Z

    if-eqz v21, :cond_8

    .line 339
    invoke-static {}, Landroid/graphics/Typeface;->nativeUpdateFontConfiguration()V

    .line 340
    invoke-static {}, Landroid/graphics/Typeface;->updateDownloadFonts()V

    .line 341
    invoke-static {}, Landroid/graphics/Typeface;->updateBootDefaultTypeface()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_4

    .line 348
    .end local v10    # "familyList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontFamily;>;"
    .end local v11    # "fontConfig":Landroid/graphics/FontListParser$Config;
    .end local v13    # "fontsIn":Ljava/io/FileInputStream;
    .end local v14    # "i":I
    .end local v15    # "i$":Ljava/util/Iterator;
    .end local v18    # "systemFonts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    :catch_1
    move-exception v7

    .line 349
    .local v7, "e":Ljava/io/FileNotFoundException;
    sget-object v21, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Error opening "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 350
    .end local v7    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v7

    .line 351
    .local v7, "e":Ljava/io/IOException;
    sget-object v21, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Error reading "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 352
    .end local v7    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v7

    .line 353
    .local v7, "e":Lorg/xmlpull/v1/XmlPullParserException;
    sget-object v21, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "XML parse exception for "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method private static initFontManager(Ljava/util/Map;)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 427
    .local p0, "systemFonts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    invoke-static {}, Landroid/graphics/Typeface;->nativeInitFontManager()V

    .line 429
    invoke-static {}, Landroid/graphics/Typeface;->getSystemFontConfigLocation()Ljava/io/File;

    move-result-object v11

    .line 430
    .local v11, "fontConfigLocation":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    const-string v18, "fonts_lge.xml"

    move-object/from16 v0, v18

    invoke-direct {v5, v11, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 433
    .local v5, "configFilename":Ljava/io/File;
    :try_start_0
    new-instance v13, Ljava/io/FileInputStream;

    invoke-direct {v13, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 434
    .local v13, "fontsIn":Ljava/io/FileInputStream;
    invoke-static {v13}, Landroid/graphics/FontListParser;->parse(Ljava/io/InputStream;)Landroid/graphics/FontListParser$Config;

    move-result-object v10

    .line 435
    .local v10, "fontConfig":Landroid/graphics/FontListParser$Config;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 438
    .local v9, "familyList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontFamily;>;"
    iget-object v0, v10, Landroid/graphics/FontListParser$Config;->aliases:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_0

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/FontListParser$Alias;

    .line 439
    .local v4, "alias":Landroid/graphics/FontListParser$Alias;
    iget-object v0, v4, Landroid/graphics/FontListParser$Alias;->toName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/graphics/Typeface;

    .line 440
    .local v16, "sans_serif":Landroid/graphics/Typeface;
    iget-object v0, v4, Landroid/graphics/FontListParser$Alias;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    move-object/from16 v0, v16

    iget-wide v0, v0, Landroid/graphics/Typeface;->native_instance:J

    move-wide/from16 v18, v0

    iget-object v0, v4, Landroid/graphics/FontListParser$Alias;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "/system/fonts/Roboto-Regular.ttf"

    invoke-static/range {v18 .. v21}, Landroid/graphics/Typeface;->nativeAddEmbeddedFont(JLjava/lang/String;Ljava/lang/String;)V

    .line 448
    .end local v4    # "alias":Landroid/graphics/FontListParser$Alias;
    .end local v16    # "sans_serif":Landroid/graphics/Typeface;
    :cond_0
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    iget-object v0, v10, Landroid/graphics/FontListParser$Config;->families:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v14, v0, :cond_2

    .line 450
    iget-object v0, v10, Landroid/graphics/FontListParser$Config;->families:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/FontListParser$Family;

    .line 451
    .local v7, "f":Landroid/graphics/FontListParser$Family;
    iget-object v0, v7, Landroid/graphics/FontListParser$Family;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1

    .line 452
    invoke-static {v7}, Landroid/graphics/Typeface;->makeFamilyFromParsed(Landroid/graphics/FontListParser$Family;)Landroid/graphics/FontFamily;

    move-result-object v12

    .line 453
    .local v12, "fontFamily":Landroid/graphics/FontFamily;
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v8, v0, [Landroid/graphics/FontFamily;

    const/16 v18, 0x0

    aput-object v12, v8, v18

    .line 454
    .local v8, "families":[Landroid/graphics/FontFamily;
    invoke-static {v8}, Landroid/graphics/Typeface;->createFromFamiliesWithDefault([Landroid/graphics/FontFamily;)Landroid/graphics/Typeface;

    move-result-object v17

    .line 455
    .local v17, "typeface":Landroid/graphics/Typeface;
    iget-object v0, v7, Landroid/graphics/FontListParser$Family;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    move-object/from16 v0, v17

    iget-wide v0, v0, Landroid/graphics/Typeface;->native_instance:J

    move-wide/from16 v20, v0

    iget-object v0, v7, Landroid/graphics/FontListParser$Family;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    iget-object v0, v7, Landroid/graphics/FontListParser$Family;->fonts:Ljava/util/List;

    move-object/from16 v18, v0

    const/16 v22, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/graphics/FontListParser$Font;

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/graphics/FontListParser$Font;->fontName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-wide/from16 v0, v20

    move-object/from16 v2, v19

    move-object/from16 v3, v18

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Typeface;->nativeAddEmbeddedFont(JLjava/lang/String;Ljava/lang/String;)V

    .line 458
    sget-object v19, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Add Embedded Font ("

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, ") : "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v7, Landroid/graphics/FontListParser$Family;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, ", "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget-object v0, v7, Landroid/graphics/FontListParser$Family;->fonts:Ljava/util/List;

    move-object/from16 v18, v0

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/graphics/FontListParser$Font;

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/graphics/FontListParser$Font;->fontName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, " loaded."

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3

    .line 448
    .end local v8    # "families":[Landroid/graphics/FontFamily;
    .end local v12    # "fontFamily":Landroid/graphics/FontFamily;
    .end local v17    # "typeface":Landroid/graphics/Typeface;
    :cond_1
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .line 461
    .end local v7    # "f":Landroid/graphics/FontListParser$Family;
    .end local v9    # "familyList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontFamily;>;"
    .end local v10    # "fontConfig":Landroid/graphics/FontListParser$Config;
    .end local v13    # "fontsIn":Ljava/io/FileInputStream;
    .end local v14    # "i":I
    .end local v15    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v6

    .line 463
    .local v6, "e":Ljava/lang/RuntimeException;
    invoke-static/range {p0 .. p0}, Landroid/graphics/Typeface;->forceAddedRobotoTypeface(Ljava/util/Map;)V

    .line 464
    sget-object v18, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    const-string v19, "Didn\'t create default family (most likely, non-Minikin build)"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 480
    .end local v6    # "e":Ljava/lang/RuntimeException;
    :cond_2
    :goto_1
    sget-boolean v18, Lcom/lge/config/ConfigBuildFlags;->CAPP_FONTS:Z

    if-eqz v18, :cond_4

    sget-boolean v18, Lcom/lge/config/ConfigBuildFlags;->CAPP_FONTS_MID_HINT:Z

    if-nez v18, :cond_3

    sget-boolean v18, Lcom/lge/config/ConfigBuildFlags;->CAPP_FONTS_SMALLER_HINT:Z

    if-eqz v18, :cond_4

    :cond_3
    sget-boolean v18, Lcom/lge/config/ConfigBuildFlags;->CAPP_FONTS_JP:Z

    if-nez v18, :cond_4

    .line 483
    invoke-static {}, Landroid/graphics/Typeface;->nativeFindRobotoTypefaceIndex()V

    .line 484
    :cond_4
    return-void

    .line 466
    :catch_1
    move-exception v6

    .line 468
    .local v6, "e":Ljava/io/FileNotFoundException;
    invoke-static/range {p0 .. p0}, Landroid/graphics/Typeface;->forceAddedRobotoTypeface(Ljava/util/Map;)V

    .line 469
    sget-object v18, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Error opening "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 470
    .end local v6    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v6

    .line 472
    .local v6, "e":Ljava/io/IOException;
    invoke-static/range {p0 .. p0}, Landroid/graphics/Typeface;->forceAddedRobotoTypeface(Ljava/util/Map;)V

    .line 473
    sget-object v18, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Error reading "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 474
    .end local v6    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v6

    .line 476
    .local v6, "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-static/range {p0 .. p0}, Landroid/graphics/Typeface;->forceAddedRobotoTypeface(Ljava/util/Map;)V

    .line 477
    sget-object v18, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "XML parse exception for "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static makeDownloadFontFamilyFromParsed(Landroid/graphics/TypefaceHyFontListParser$Family;Ljava/lang/String;)Landroid/graphics/FontFamily;
    .locals 6
    .param p0, "family"    # Landroid/graphics/TypefaceHyFontListParser$Family;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 619
    new-instance v0, Landroid/graphics/FontFamily;

    iget-object v4, p0, Landroid/graphics/TypefaceHyFontListParser$Family;->lang:Ljava/lang/String;

    iget-object v5, p0, Landroid/graphics/TypefaceHyFontListParser$Family;->variant:Ljava/lang/String;

    invoke-direct {v0, v4, v5}, Landroid/graphics/FontFamily;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    .local v0, "fontFamily":Landroid/graphics/FontFamily;
    iget-object v4, p0, Landroid/graphics/TypefaceHyFontListParser$Family;->fontFiles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 621
    .local v1, "fontFile":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 622
    .local v2, "fontFullPath":Ljava/lang/String;
    invoke-virtual {v0, v2}, Landroid/graphics/FontFamily;->addFont(Ljava/lang/String;)Z

    goto :goto_0

    .line 624
    .end local v1    # "fontFile":Ljava/lang/String;
    .end local v2    # "fontFullPath":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private static makeFamilyFromParsed(Landroid/graphics/FontListParser$Family;)Landroid/graphics/FontFamily;
    .locals 6
    .param p0, "family"    # Landroid/graphics/FontListParser$Family;

    .prologue
    .line 265
    new-instance v1, Landroid/graphics/FontFamily;

    iget-object v3, p0, Landroid/graphics/FontListParser$Family;->lang:Ljava/lang/String;

    iget-object v4, p0, Landroid/graphics/FontListParser$Family;->variant:Ljava/lang/String;

    invoke-direct {v1, v3, v4}, Landroid/graphics/FontFamily;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    .local v1, "fontFamily":Landroid/graphics/FontFamily;
    iget-object v3, p0, Landroid/graphics/FontListParser$Family;->fonts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/FontListParser$Font;

    .line 267
    .local v0, "font":Landroid/graphics/FontListParser$Font;
    iget-object v3, v0, Landroid/graphics/FontListParser$Font;->fontName:Ljava/lang/String;

    iget v4, v0, Landroid/graphics/FontListParser$Font;->weight:I

    iget-boolean v5, v0, Landroid/graphics/FontListParser$Font;->isItalic:Z

    invoke-virtual {v1, v3, v4, v5}, Landroid/graphics/FontFamily;->addFontWeightStyle(Ljava/lang/String;IZ)Z

    goto :goto_0

    .line 269
    .end local v0    # "font":Landroid/graphics/FontListParser$Font;
    :cond_0
    return-object v1
.end method

.method private static native nativeAddEmbeddedFont(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method private static native nativeAddNewFont(I)I
.end method

.method private static native nativeCacheClear()V
.end method

.method private static native nativeCreateFromArray([J)J
.end method

.method private static native nativeCreateFromTypeface(JI)J
.end method

.method private static native nativeCreateWeightAlias(JI)J
.end method

.method private static native nativeFindRobotoTypefaceIndex()V
.end method

.method private static native nativeGetCheckNewFont(I)I
.end method

.method private static native nativeGetDefault()J
.end method

.method private static native nativeGetDefaultTypefaceIndex()I
.end method

.method private static native nativeGetDownloadFontAppName(I)Ljava/lang/String;
.end method

.method private static native nativeGetDownloadFontDstPath()Ljava/lang/String;
.end method

.method private static native nativeGetDownloadFontName(I)Ljava/lang/String;
.end method

.method private static native nativeGetDownloadFontSrcPath()Ljava/lang/String;
.end method

.method private static native nativeGetFontFullPath(I)Ljava/lang/String;
.end method

.method private static native nativeGetFontWebFaceName(I)Ljava/lang/String;
.end method

.method private static native nativeGetNewFontAppName(I)Ljava/lang/String;
.end method

.method private static native nativeGetNumAllFonts()I
.end method

.method private static native nativeGetNumDownloadFonts()I
.end method

.method private static native nativeGetNumEmbeddedFonts()I
.end method

.method private static native nativeGetNumNewFonts()I
.end method

.method private static native nativeGetStyle(J)I
.end method

.method private static native nativeGetSystemDefaultTypefaceIndex()I
.end method

.method private static native nativeInitFontManager()V
.end method

.method private static native nativeSaveNewFont()V
.end method

.method private static native nativeSelectDefaultTypeface(I)V
.end method

.method private static native nativeSetDefault(J)V
.end method

.method private static native nativeSetDownloadFont(IJLjava/lang/String;)V
.end method

.method private static native nativeUnref(J)V
.end method

.method private static native nativeUpdateFontConfiguration()V
.end method

.method private static native nativeUpdateFontManager()I
.end method

.method public static saveNewFont()V
    .locals 0

    .prologue
    .line 643
    invoke-static {}, Landroid/graphics/Typeface;->nativeSaveNewFont()V

    return-void
.end method

.method public static selectDefaultTypeface(I)V
    .locals 0
    .param p0, "fontIndex"    # I

    .prologue
    .line 627
    invoke-static {p0}, Landroid/graphics/Typeface;->nativeSelectDefaultTypeface(I)V

    return-void
.end method

.method private static setDefault(Landroid/graphics/Typeface;)V
    .locals 2
    .param p0, "t"    # Landroid/graphics/Typeface;

    .prologue
    .line 87
    sput-object p0, Landroid/graphics/Typeface;->sDefaultTypeface:Landroid/graphics/Typeface;

    .line 88
    iget-wide v0, p0, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->nativeSetDefault(J)V

    .line 89
    return-void
.end method

.method private static setDownloadFont(IJLjava/lang/String;)V
    .locals 1
    .param p0, "fontIndex"    # I
    .param p1, "nativeInstance"    # J
    .param p3, "fontFamilyName"    # Ljava/lang/String;

    .prologue
    .line 649
    invoke-static {p0, p1, p2, p3}, Landroid/graphics/Typeface;->nativeSetDownloadFont(IJLjava/lang/String;)V

    .line 650
    return-void
.end method

.method private static updateBootDefaultTypeface()V
    .locals 6

    .prologue
    .line 570
    invoke-static {}, Landroid/graphics/Typeface;->nativeGetDefaultTypefaceIndex()I

    move-result v1

    .line 571
    .local v1, "defaultTypefaceIndex":I
    invoke-static {v1}, Landroid/graphics/Typeface;->nativeGetFontWebFaceName(I)Ljava/lang/String;

    move-result-object v0

    .line 574
    .local v0, "defaultFontFamilyName":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    .line 575
    .local v2, "dtf":Landroid/graphics/Typeface;
    invoke-static {v2}, Landroid/graphics/Typeface;->setDefault(Landroid/graphics/Typeface;)V

    .line 576
    sget-object v3, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Boot DefaultTypeface ( "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " )"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    return-void
.end method

.method private static updateDefaultTypeface()V
    .locals 16

    .prologue
    const/4 v15, 0x3

    const/4 v14, 0x2

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 581
    invoke-static {}, Landroid/graphics/Typeface;->nativeGetDefaultTypefaceIndex()I

    move-result v3

    .line 582
    .local v3, "defaultTypefaceIndex":I
    invoke-static {v3}, Landroid/graphics/Typeface;->nativeGetFontWebFaceName(I)Ljava/lang/String;

    move-result-object v2

    .line 584
    .local v2, "defaultFontFamilyName":Ljava/lang/String;
    invoke-static {}, Landroid/graphics/Typeface;->nativeGetDefault()J

    move-result-wide v0

    .line 588
    .local v0, "currentDefaultInstance":J
    invoke-static {v2, v12}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v4

    .line 589
    .local v4, "dtf":Landroid/graphics/Typeface;
    invoke-static {v2, v13}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    .line 590
    .local v5, "dtfb":Landroid/graphics/Typeface;
    invoke-static {v2, v14}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v7

    .line 591
    .local v7, "dtfi":Landroid/graphics/Typeface;
    invoke-static {v2, v15}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v6

    .line 594
    .local v6, "dtfbi":Landroid/graphics/Typeface;
    const-wide/16 v8, 0x0

    cmp-long v8, v0, v8

    if-eqz v8, :cond_0

    iget-wide v8, v4, Landroid/graphics/Typeface;->native_instance:J

    cmp-long v8, v0, v8

    if-eqz v8, :cond_0

    .line 595
    invoke-static {}, Landroid/graphics/Typeface;->nativeCacheClear()V

    .line 599
    :cond_0
    sget-object v8, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iget-wide v10, v4, Landroid/graphics/Typeface;->native_instance:J

    iput-wide v10, v8, Landroid/graphics/Typeface;->native_instance:J

    .line 600
    sget-object v8, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v4}, Landroid/graphics/Typeface;->getStyle()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/graphics/Typeface;->setStyle(I)V

    .line 601
    sget-object v8, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    iget-wide v10, v5, Landroid/graphics/Typeface;->native_instance:J

    iput-wide v10, v8, Landroid/graphics/Typeface;->native_instance:J

    .line 602
    sget-object v8, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v5}, Landroid/graphics/Typeface;->getStyle()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/graphics/Typeface;->setStyle(I)V

    .line 604
    const/4 v8, 0x4

    new-array v8, v8, [Landroid/graphics/Typeface;

    sget-object v9, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    aput-object v9, v8, v12

    sget-object v9, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    aput-object v9, v8, v13

    aput-object v7, v8, v14

    aput-object v6, v8, v15

    sput-object v8, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    .line 610
    invoke-static {v4}, Landroid/graphics/Typeface;->setDefault(Landroid/graphics/Typeface;)V

    .line 612
    return-void
.end method

.method private static updateDownloadFonts()V
    .locals 24

    .prologue
    .line 501
    invoke-static {}, Landroid/graphics/Typeface;->nativeGetNumEmbeddedFonts()I

    move-result v18

    .line 502
    .local v18, "startDownloadIndex":I
    invoke-static {}, Landroid/graphics/Typeface;->nativeGetNumDownloadFonts()I

    move-result v17

    .line 504
    .local v17, "numDownloadFonts":I
    const/16 v16, 0x0

    .local v16, "n":I
    :goto_0
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_4

    .line 505
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/graphics/Typeface;->nativeGetDownloadFontDstPath()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    add-int v21, v18, v16

    invoke-static/range {v21 .. v21}, Landroid/graphics/Typeface;->nativeGetDownloadFontAppName(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 506
    .local v5, "downloadFontConfigPath":Ljava/lang/String;
    invoke-static {v5}, Landroid/graphics/Typeface;->getDownloadFontConfigLocation(Ljava/lang/String;)Ljava/io/File;

    move-result-object v11

    .line 507
    .local v11, "fontConfigLocation":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    const-string v20, "font.xml"

    move-object/from16 v0, v20

    invoke-direct {v4, v11, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 509
    .local v4, "configFilename":Ljava/io/File;
    const/4 v13, 0x0

    .line 514
    .local v13, "fontsIn":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v14, Ljava/io/FileInputStream;

    invoke-direct {v14, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 516
    .end local v13    # "fontsIn":Ljava/io/FileInputStream;
    .local v14, "fontsIn":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {v14}, Landroid/graphics/TypefaceHyFontListParser;->parse(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v10

    .line 517
    .local v10, "fontConfig":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/TypefaceHyFontListParser$Family;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 519
    .local v9, "familyList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontFamily;>;"
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_1
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v15, v0, :cond_2

    .line 521
    invoke-interface {v10, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/TypefaceHyFontListParser$Family;

    .line 523
    .local v7, "f":Landroid/graphics/TypefaceHyFontListParser$Family;
    sget-object v20, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    iget-object v0, v7, Landroid/graphics/TypefaceHyFontListParser$Family;->names:Ljava/util/List;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/graphics/Typeface;

    .local v19, "typeface":Landroid/graphics/Typeface;
    if-eqz v19, :cond_0

    .line 525
    move-object/from16 v0, v19

    iget-wide v0, v0, Landroid/graphics/Typeface;->native_instance:J

    move-wide/from16 v22, v0

    iget-object v0, v7, Landroid/graphics/TypefaceHyFontListParser$Family;->names:Ljava/util/List;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    move/from16 v0, v16

    move-wide/from16 v1, v22

    move-object/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Typeface;->nativeSetDownloadFont(IJLjava/lang/String;)V

    .line 519
    :goto_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 530
    :cond_0
    invoke-static {v7, v5}, Landroid/graphics/Typeface;->makeDownloadFontFamilyFromParsed(Landroid/graphics/TypefaceHyFontListParser$Family;Ljava/lang/String;)Landroid/graphics/FontFamily;

    move-result-object v12

    .line 531
    .local v12, "fontFamily":Landroid/graphics/FontFamily;
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v8, v0, [Landroid/graphics/FontFamily;

    const/16 v20, 0x0

    aput-object v12, v8, v20

    .line 532
    .local v8, "families":[Landroid/graphics/FontFamily;
    invoke-static {v8}, Landroid/graphics/Typeface;->createFromFamiliesWithDefault([Landroid/graphics/FontFamily;)Landroid/graphics/Typeface;

    move-result-object v19

    .line 533
    move-object/from16 v0, v19

    iget-wide v0, v0, Landroid/graphics/Typeface;->native_instance:J

    move-wide/from16 v22, v0

    iget-object v0, v7, Landroid/graphics/TypefaceHyFontListParser$Family;->names:Ljava/util/List;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    move/from16 v0, v16

    move-wide/from16 v1, v22

    move-object/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Typeface;->nativeSetDownloadFont(IJLjava/lang/String;)V

    .line 535
    sget-object v20, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    iget-object v0, v7, Landroid/graphics/TypefaceHyFontListParser$Family;->names:Ljava/util/List;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    .line 544
    .end local v7    # "f":Landroid/graphics/TypefaceHyFontListParser$Family;
    .end local v8    # "families":[Landroid/graphics/FontFamily;
    .end local v9    # "familyList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontFamily;>;"
    .end local v10    # "fontConfig":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/TypefaceHyFontListParser$Family;>;"
    .end local v12    # "fontFamily":Landroid/graphics/FontFamily;
    .end local v15    # "i":I
    .end local v19    # "typeface":Landroid/graphics/Typeface;
    :catch_0
    move-exception v6

    move-object v13, v14

    .line 545
    .end local v14    # "fontsIn":Ljava/io/FileInputStream;
    .local v6, "e":Ljava/lang/RuntimeException;
    .restart local v13    # "fontsIn":Ljava/io/FileInputStream;
    :goto_3
    :try_start_2
    sget-object v20, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    const-string v21, "Didn\'t create default family (most likely, non-Minikin build)"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 555
    if-eqz v13, :cond_1

    .line 557
    :try_start_3
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 558
    const/4 v13, 0x0

    .line 504
    .end local v6    # "e":Ljava/lang/RuntimeException;
    :cond_1
    :goto_4
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_0

    .line 539
    .end local v13    # "fontsIn":Ljava/io/FileInputStream;
    .restart local v9    # "familyList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontFamily;>;"
    .restart local v10    # "fontConfig":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/TypefaceHyFontListParser$Family;>;"
    .restart local v14    # "fontsIn":Ljava/io/FileInputStream;
    .restart local v15    # "i":I
    :cond_2
    if-eqz v14, :cond_5

    .line 540
    :try_start_4
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_c
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_a
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 541
    const/4 v13, 0x0

    .line 555
    .end local v14    # "fontsIn":Ljava/io/FileInputStream;
    .restart local v13    # "fontsIn":Ljava/io/FileInputStream;
    :goto_5
    if-eqz v13, :cond_1

    .line 557
    :try_start_5
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 558
    const/4 v13, 0x0

    goto :goto_4

    .line 559
    :catch_1
    move-exception v6

    .line 560
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 559
    .end local v9    # "familyList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontFamily;>;"
    .end local v10    # "fontConfig":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/TypefaceHyFontListParser$Family;>;"
    .end local v15    # "i":I
    .local v6, "e":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v6

    .line 560
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 547
    .end local v6    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v6

    .line 548
    .local v6, "e":Ljava/io/FileNotFoundException;
    :goto_6
    :try_start_6
    sget-object v20, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Error opening "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 555
    if-eqz v13, :cond_1

    .line 557
    :try_start_7
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 558
    const/4 v13, 0x0

    goto :goto_4

    .line 559
    :catch_4
    move-exception v6

    .line 560
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 549
    .end local v6    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v6

    .line 550
    .restart local v6    # "e":Ljava/io/IOException;
    :goto_7
    :try_start_8
    sget-object v20, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Error reading "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 555
    if-eqz v13, :cond_1

    .line 557
    :try_start_9
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 558
    const/4 v13, 0x0

    goto :goto_4

    .line 559
    :catch_6
    move-exception v6

    .line 560
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 551
    .end local v6    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v6

    .line 552
    .local v6, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_8
    :try_start_a
    sget-object v20, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "XML parse exception for "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 555
    if-eqz v13, :cond_1

    .line 557
    :try_start_b
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    .line 558
    const/4 v13, 0x0

    goto/16 :goto_4

    .line 559
    :catch_8
    move-exception v6

    .line 560
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    .line 555
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v20

    :goto_9
    if-eqz v13, :cond_3

    .line 557
    :try_start_c
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    .line 558
    const/4 v13, 0x0

    .line 561
    :cond_3
    :goto_a
    throw v20

    .line 559
    :catch_9
    move-exception v6

    .line 560
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 566
    .end local v4    # "configFilename":Ljava/io/File;
    .end local v5    # "downloadFontConfigPath":Ljava/lang/String;
    .end local v6    # "e":Ljava/io/IOException;
    .end local v11    # "fontConfigLocation":Ljava/io/File;
    .end local v13    # "fontsIn":Ljava/io/FileInputStream;
    :cond_4
    return-void

    .line 555
    .restart local v4    # "configFilename":Ljava/io/File;
    .restart local v5    # "downloadFontConfigPath":Ljava/lang/String;
    .restart local v11    # "fontConfigLocation":Ljava/io/File;
    .restart local v14    # "fontsIn":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v20

    move-object v13, v14

    .end local v14    # "fontsIn":Ljava/io/FileInputStream;
    .restart local v13    # "fontsIn":Ljava/io/FileInputStream;
    goto :goto_9

    .line 551
    .end local v13    # "fontsIn":Ljava/io/FileInputStream;
    .restart local v14    # "fontsIn":Ljava/io/FileInputStream;
    :catch_a
    move-exception v6

    move-object v13, v14

    .end local v14    # "fontsIn":Ljava/io/FileInputStream;
    .restart local v13    # "fontsIn":Ljava/io/FileInputStream;
    goto :goto_8

    .line 549
    .end local v13    # "fontsIn":Ljava/io/FileInputStream;
    .restart local v14    # "fontsIn":Ljava/io/FileInputStream;
    :catch_b
    move-exception v6

    move-object v13, v14

    .end local v14    # "fontsIn":Ljava/io/FileInputStream;
    .restart local v13    # "fontsIn":Ljava/io/FileInputStream;
    goto :goto_7

    .line 547
    .end local v13    # "fontsIn":Ljava/io/FileInputStream;
    .restart local v14    # "fontsIn":Ljava/io/FileInputStream;
    :catch_c
    move-exception v6

    move-object v13, v14

    .end local v14    # "fontsIn":Ljava/io/FileInputStream;
    .restart local v13    # "fontsIn":Ljava/io/FileInputStream;
    goto/16 :goto_6

    .line 544
    :catch_d
    move-exception v6

    goto/16 :goto_3

    .end local v13    # "fontsIn":Ljava/io/FileInputStream;
    .restart local v9    # "familyList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontFamily;>;"
    .restart local v10    # "fontConfig":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/TypefaceHyFontListParser$Family;>;"
    .restart local v14    # "fontsIn":Ljava/io/FileInputStream;
    .restart local v15    # "i":I
    :cond_5
    move-object v13, v14

    .end local v14    # "fontsIn":Ljava/io/FileInputStream;
    .restart local v13    # "fontsIn":Ljava/io/FileInputStream;
    goto/16 :goto_5
.end method

.method public static updateFontConfiguration()V
    .locals 0

    .prologue
    .line 495
    invoke-static {}, Landroid/graphics/Typeface;->nativeUpdateFontConfiguration()V

    .line 496
    invoke-static {}, Landroid/graphics/Typeface;->updateDownloadFonts()V

    .line 497
    invoke-static {}, Landroid/graphics/Typeface;->updateDefaultTypeface()V

    .line 498
    return-void
.end method

.method public static updateFontManager()I
    .locals 1

    .prologue
    .line 638
    invoke-static {}, Landroid/graphics/Typeface;->nativeUpdateFontManager()I

    move-result v0

    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 390
    if-ne p0, p1, :cond_1

    .line 395
    :cond_0
    :goto_0
    return v1

    .line 391
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 393
    check-cast v0, Landroid/graphics/Typeface;

    .line 395
    .local v0, "typeface":Landroid/graphics/Typeface;
    iget v3, p0, Landroid/graphics/Typeface;->mStyle:I

    iget v4, v0, Landroid/graphics/Typeface;->mStyle:I

    if-ne v3, v4, :cond_4

    iget-wide v4, p0, Landroid/graphics/Typeface;->native_instance:J

    iget-wide v6, v0, Landroid/graphics/Typeface;->native_instance:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 382
    :try_start_0
    iget-wide v0, p0, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->nativeUnref(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 384
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 386
    return-void

    .line 384
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getStyle()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Landroid/graphics/Typeface;->mStyle:I

    return v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 404
    const/16 v0, 0x11

    .line 405
    .local v0, "result":I
    iget-wide v2, p0, Landroid/graphics/Typeface;->native_instance:J

    iget-wide v4, p0, Landroid/graphics/Typeface;->native_instance:J

    const/16 v1, 0x20

    ushr-long/2addr v4, v1

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/lit16 v0, v1, 0x20f

    .line 406
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/graphics/Typeface;->mStyle:I

    add-int v0, v1, v2

    .line 407
    return v0
.end method

.method public final isBold()Z
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Landroid/graphics/Typeface;->mStyle:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isItalic()Z
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Landroid/graphics/Typeface;->mStyle:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setStyle(I)V
    .locals 0
    .param p1, "style"    # I

    .prologue
    .line 644
    iput p1, p0, Landroid/graphics/Typeface;->mStyle:I

    return-void
.end method
