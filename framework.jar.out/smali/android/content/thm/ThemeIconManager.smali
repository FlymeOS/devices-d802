.class public Landroid/content/thm/ThemeIconManager;
.super Ljava/lang/Object;
.source "ThemeIconManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/thm/ThemeIconManager$ThemeResources;
    }
.end annotation


# static fields
.field static final CAPP_THEMEICON:Z = true

.field public static final CONFIG_THEME_PACKAGE:I = 0x10000000

.field private static final DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "ThemeIconManager"

.field private static final VENDOR_LAUNCHERS:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sGlobals:Landroid/content/thm/ThemeIconManager$ThemeResources;

.field private static final sSync:Ljava/lang/Object;


# instance fields
.field private mAppIconSize:I

.field private mIconMap:Landroid/content/thm/ThemeIconRedirectionMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/content/thm/ThemeIconManager;->sSync:Ljava/lang/Object;

    .line 42
    new-instance v0, Landroid/content/thm/ThemeIconManager$ThemeResources;

    invoke-direct {v0}, Landroid/content/thm/ThemeIconManager$ThemeResources;-><init>()V

    sput-object v0, Landroid/content/thm/ThemeIconManager;->sGlobals:Landroid/content/thm/ThemeIconManager$ThemeResources;

    .line 44
    new-instance v0, Landroid/content/thm/ThemeIconManager$1;

    invoke-direct {v0}, Landroid/content/thm/ThemeIconManager$1;-><init>()V

    sput-object v0, Landroid/content/thm/ThemeIconManager;->VENDOR_LAUNCHERS:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 5
    .param p1, "r"    # Landroid/content/res/Resources;

    .prologue
    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 216
    .local v1, "config":Landroid/content/res/Configuration;
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 217
    .local v2, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p1}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    .line 218
    .local v0, "compat":Landroid/content/res/CompatibilityInfo;
    sget-object v4, Landroid/content/thm/ThemeIconManager;->sSync:Ljava/lang/Object;

    monitor-enter v4

    .line 219
    :try_start_0
    sget-object v3, Landroid/content/thm/ThemeIconManager;->sGlobals:Landroid/content/thm/ThemeIconManager$ThemeResources;

    invoke-virtual {v3, v1, v2, v0}, Landroid/content/thm/ThemeIconManager$ThemeResources;->init(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    .line 220
    invoke-direct {p0, p1}, Landroid/content/thm/ThemeIconManager;->initDefaultValuesLocked(Landroid/content/res/Resources;)V

    .line 221
    invoke-direct {p0, p1}, Landroid/content/thm/ThemeIconManager;->generateRedirectionMapLocked(Landroid/content/res/Resources;)V

    .line 222
    monitor-exit v4

    .line 223
    return-void

    .line 222
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private generateRedirectionMapLocked(Landroid/content/res/Resources;)V
    .locals 6
    .param p1, "r"    # Landroid/content/res/Resources;

    .prologue
    .line 236
    const/4 v5, 0x0

    iput-object v5, p0, Landroid/content/thm/ThemeIconManager;->mIconMap:Landroid/content/thm/ThemeIconRedirectionMap;

    .line 238
    invoke-virtual {p1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 239
    .local v1, "assets":Landroid/content/res/AssetManager;
    invoke-virtual {v1}, Landroid/content/res/AssetManager;->getBasePackageCount()I

    move-result v0

    .line 240
    .local v0, "N":I
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 241
    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->getBasePackageName(I)Ljava/lang/String;

    move-result-object v4

    .line 242
    .local v4, "packageName":Ljava/lang/String;
    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->getBasePackageId(I)I

    move-result v3

    .line 245
    .local v3, "packageId":I
    const/16 v5, 0x7f

    if-ne v3, v5, :cond_1

    .line 250
    sget-object v5, Landroid/content/thm/ThemeIconManager;->sGlobals:Landroid/content/thm/ThemeIconManager$ThemeResources;

    invoke-virtual {v5, v4}, Landroid/content/thm/ThemeIconManager$ThemeResources;->getPackageRedirectionMap(Ljava/lang/String;)Landroid/content/thm/ThemeIconRedirectionMap;

    move-result-object v5

    iput-object v5, p0, Landroid/content/thm/ThemeIconManager;->mIconMap:Landroid/content/thm/ThemeIconRedirectionMap;

    .line 254
    .end local v3    # "packageId":I
    .end local v4    # "packageName":Ljava/lang/String;
    :cond_0
    return-void

    .line 240
    .restart local v3    # "packageId":I
    .restart local v4    # "packageName":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method private initDefaultValuesLocked(Landroid/content/res/Resources;)V
    .locals 2
    .param p1, "r"    # Landroid/content/res/Resources;

    .prologue
    .line 229
    const/16 v1, 0x36

    :try_start_0
    iput v1, p0, Landroid/content/thm/ThemeIconManager;->mAppIconSize:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    :goto_0
    return-void

    .line 230
    :catch_0
    move-exception v0

    .line 231
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    iput v1, p0, Landroid/content/thm/ThemeIconManager;->mAppIconSize:I

    goto :goto_0
.end method

.method public static isUseThemeIcon(Landroid/content/pm/IPackageManager;Ljava/lang/String;Z)Z
    .locals 9
    .param p0, "pm"    # Landroid/content/pm/IPackageManager;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "system"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 309
    if-eqz p2, :cond_1

    .line 336
    :cond_0
    :goto_0
    return v4

    .line 312
    :cond_1
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 313
    sget-object v6, Landroid/content/thm/ThemeIconManager;->VENDOR_LAUNCHERS:Ljava/util/HashSet;

    invoke-virtual {v6, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 315
    new-instance v0, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 316
    .local v0, "homeIntent":Landroid/content/Intent;
    const-string v6, "android.intent.category.HOME"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 317
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 319
    const/4 v6, 0x0

    const/16 v7, 0x80

    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    invoke-interface {p0, v0, v6, v7, v8}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v2

    .line 321
    .local v2, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 322
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 323
    .local v3, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v6, :cond_2

    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v6, :cond_2

    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v7, "com.lge.themeicon"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_0

    .end local v3    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_3
    move v4, v5

    .line 329
    goto :goto_0

    .line 331
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method public static updateThemeConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V
    .locals 2
    .param p0, "config"    # Landroid/content/res/Configuration;
    .param p1, "dm"    # Landroid/util/DisplayMetrics;
    .param p2, "compat"    # Landroid/content/res/CompatibilityInfo;

    .prologue
    .line 293
    sget-object v1, Landroid/content/thm/ThemeIconManager;->sSync:Ljava/lang/Object;

    monitor-enter v1

    .line 294
    :try_start_0
    sget-object v0, Landroid/content/thm/ThemeIconManager;->sGlobals:Landroid/content/thm/ThemeIconManager$ThemeResources;

    invoke-virtual {v0, p0, p1, p2}, Landroid/content/thm/ThemeIconManager$ThemeResources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    .line 295
    monitor-exit v1

    .line 296
    return-void

    .line 295
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public doPostProcessing(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;
    .locals 10
    .param p1, "src"    # Landroid/graphics/drawable/Drawable;
    .param p2, "id"    # I
    .param p3, "density"    # I

    .prologue
    const/4 v0, 0x0

    .line 268
    if-nez p1, :cond_0

    move-object p1, v0

    .line 287
    .end local p1    # "src":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object p1

    .line 271
    .restart local p1    # "src":Landroid/graphics/drawable/Drawable;
    :cond_0
    sget-object v9, Landroid/content/thm/ThemeIconManager;->sSync:Ljava/lang/Object;

    monitor-enter v9

    .line 273
    :try_start_0
    iget-object v2, p0, Landroid/content/thm/ThemeIconManager;->mIconMap:Landroid/content/thm/ThemeIconRedirectionMap;

    if-eqz v2, :cond_1

    iget-object v0, p0, Landroid/content/thm/ThemeIconManager;->mIconMap:Landroid/content/thm/ThemeIconRedirectionMap;

    iget-object v0, v0, Landroid/content/thm/ThemeIconRedirectionMap;->backgroundMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    move-object v6, v0

    .line 274
    .local v6, "bgIcon":Ljava/lang/Integer;
    :goto_1
    if-eqz v6, :cond_2

    .line 275
    sget-object v0, Landroid/content/thm/ThemeIconManager;->sGlobals:Landroid/content/thm/ThemeIconManager$ThemeResources;

    invoke-virtual {v0}, Landroid/content/thm/ThemeIconManager$ThemeResources;->getThemePackageInfo()Landroid/content/thm/ThemePackageInfo;

    move-result-object v8

    .line 276
    .local v8, "info":Landroid/content/thm/ThemePackageInfo;
    if-eqz v8, :cond_2

    .line 277
    sget-object v0, Landroid/content/thm/ThemeIconManager;->sGlobals:Landroid/content/thm/ThemeIconManager$ThemeResources;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2, p3}, Landroid/content/thm/ThemeIconManager$ThemeResources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 278
    .local v1, "drBack":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_2

    iget v0, p0, Landroid/content/thm/ThemeIconManager;->mAppIconSize:I

    if-lez v0, :cond_2

    .line 279
    iget v2, p0, Landroid/content/thm/ThemeIconManager;->mAppIconSize:I

    iget v3, p0, Landroid/content/thm/ThemeIconManager;->mAppIconSize:I

    iget v4, v8, Landroid/content/thm/ThemePackageInfo;->resizeRate:F

    iget v5, v8, Landroid/content/thm/ThemePackageInfo;->heightAlpha:I

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Landroid/content/thm/ThemeIconManagerHelper;->drawBackground(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;IIFI)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 281
    .local v7, "bm":Landroid/graphics/Bitmap;
    if-eqz v7, :cond_2

    .line 282
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1    # "src":Landroid/graphics/drawable/Drawable;
    sget-object v0, Landroid/content/thm/ThemeIconManager;->sGlobals:Landroid/content/thm/ThemeIconManager$ThemeResources;

    invoke-virtual {v0}, Landroid/content/thm/ThemeIconManager$ThemeResources;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p1, v0, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    monitor-exit v9

    goto :goto_0

    .line 288
    .end local v1    # "drBack":Landroid/graphics/drawable/Drawable;
    .end local v6    # "bgIcon":Ljava/lang/Integer;
    .end local v7    # "bm":Landroid/graphics/Bitmap;
    .end local v8    # "info":Landroid/content/thm/ThemePackageInfo;
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .restart local p1    # "src":Landroid/graphics/drawable/Drawable;
    :cond_1
    move-object v6, v0

    .line 273
    goto :goto_1

    .line 287
    .restart local v6    # "bgIcon":Ljava/lang/Integer;
    :cond_2
    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getThemeIcon(II)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "id"    # I
    .param p2, "density"    # I

    .prologue
    const/4 v2, 0x0

    .line 257
    sget-object v3, Landroid/content/thm/ThemeIconManager;->sSync:Ljava/lang/Object;

    monitor-enter v3

    .line 259
    :try_start_0
    iget-object v1, p0, Landroid/content/thm/ThemeIconManager;->mIconMap:Landroid/content/thm/ThemeIconRedirectionMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/content/thm/ThemeIconManager;->mIconMap:Landroid/content/thm/ThemeIconRedirectionMap;

    iget-object v1, v1, Landroid/content/thm/ThemeIconRedirectionMap;->redirectionMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    move-object v0, v1

    .line 260
    .local v0, "themeIcon":Ljava/lang/Integer;
    :goto_0
    if-eqz v0, :cond_1

    .line 261
    sget-object v1, Landroid/content/thm/ThemeIconManager;->sGlobals:Landroid/content/thm/ThemeIconManager$ThemeResources;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2, p2}, Landroid/content/thm/ThemeIconManager$ThemeResources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    monitor-exit v3

    .line 263
    :goto_1
    return-object v1

    .end local v0    # "themeIcon":Ljava/lang/Integer;
    :cond_0
    move-object v0, v2

    .line 259
    goto :goto_0

    .line 263
    .restart local v0    # "themeIcon":Ljava/lang/Integer;
    :cond_1
    monitor-exit v3

    move-object v1, v2

    goto :goto_1

    .line 264
    .end local v0    # "themeIcon":Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateConfiguration(Landroid/content/res/Resources;ZLandroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "themeChanged"    # Z
    .param p3, "config"    # Landroid/content/res/Configuration;
    .param p4, "dm"    # Landroid/util/DisplayMetrics;
    .param p5, "compat"    # Landroid/content/res/CompatibilityInfo;

    .prologue
    .line 300
    invoke-direct {p0, p1}, Landroid/content/thm/ThemeIconManager;->initDefaultValuesLocked(Landroid/content/res/Resources;)V

    .line 301
    sget-object v1, Landroid/content/thm/ThemeIconManager;->sSync:Ljava/lang/Object;

    monitor-enter v1

    .line 302
    if-eqz p2, :cond_0

    .line 303
    :try_start_0
    invoke-direct {p0, p1}, Landroid/content/thm/ThemeIconManager;->generateRedirectionMapLocked(Landroid/content/res/Resources;)V

    .line 305
    :cond_0
    monitor-exit v1

    .line 306
    return-void

    .line 305
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
