.class public final Landroid/nfc/cardemulation/ApduServiceInfoGsma;
.super Landroid/nfc/cardemulation/ApduServiceInfo;
.source "ApduServiceInfoGsma.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/nfc/cardemulation/ApduServiceInfoGsma;",
            ">;"
        }
    .end annotation
.end field

.field static final TAG:Ljava/lang/String; = "ApduServiceInfoGsma"


# instance fields
.field final mBannerResourceBitmap:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 90
    new-instance v0, Landroid/nfc/cardemulation/ApduServiceInfoGsma$1;

    invoke-direct {v0}, Landroid/nfc/cardemulation/ApduServiceInfoGsma$1;-><init>()V

    sput-object v0, Landroid/nfc/cardemulation/ApduServiceInfoGsma;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Z)V
    .locals 1
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "info"    # Landroid/content/pm/ResolveInfo;
    .param p3, "onHost"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/nfc/cardemulation/ApduServiceInfo;-><init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Z)V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfoGsma;->mBannerResourceBitmap:Landroid/graphics/Bitmap;

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ResolveInfo;ZLjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;ZIILandroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;
    .param p2, "onHost"    # Z
    .param p3, "description"    # Ljava/lang/String;
    .param p6, "requiresUnlock"    # Z
    .param p7, "bannerResource"    # I
    .param p8, "uid"    # I
    .param p9, "bannerBitmap"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ResolveInfo;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/nfc/cardemulation/AidGroup;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/nfc/cardemulation/AidGroup;",
            ">;ZII",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .prologue
    .line 51
    .local p4, "staticAidGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    .local p5, "dynamicAidGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    invoke-direct/range {p0 .. p8}, Landroid/nfc/cardemulation/ApduServiceInfo;-><init>(Landroid/content/pm/ResolveInfo;ZLjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;ZII)V

    .line 54
    iput-object p9, p0, Landroid/nfc/cardemulation/ApduServiceInfoGsma;->mBannerResourceBitmap:Landroid/graphics/Bitmap;

    .line 55
    return-void
.end method


# virtual methods
.method public loadBanner(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/nfc/cardemulation/ApduServiceInfo;->loadBanner(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 67
    .local v0, "banner":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 69
    :try_start_0
    iget-object v3, p0, Landroid/nfc/cardemulation/ApduServiceInfoGsma;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v2

    .line 70
    .local v2, "res":Landroid/content/res/Resources;
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .end local v0    # "banner":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Landroid/nfc/cardemulation/ApduServiceInfoGsma;->mBannerResourceBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .end local v2    # "res":Landroid/content/res/Resources;
    :cond_0
    :goto_0
    return-object v0

    .line 71
    :catch_0
    move-exception v1

    .line 72
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "ApduServiceInfoGsma"

    const-string v4, "Could not bitmap banner."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadBitmapBanner()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfoGsma;->mBannerResourceBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 86
    invoke-super {p0, p1, p2}, Landroid/nfc/cardemulation/ApduServiceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 87
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfoGsma;->mBannerResourceBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 88
    return-void
.end method
