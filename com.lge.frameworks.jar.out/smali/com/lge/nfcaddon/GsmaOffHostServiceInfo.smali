.class public Lcom/lge/nfcaddon/GsmaOffHostServiceInfo;
.super Ljava/lang/Object;
.source "GsmaOffHostServiceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/nfcaddon/GsmaOffHostServiceInfo$GsmaAidGroup;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lge/nfcaddon/GsmaOffHostServiceInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mBanner:Landroid/graphics/Bitmap;

.field public final mDescription:Ljava/lang/String;

.field public final mLocation:Ljava/lang/String;

.field public final mSEName:Ljava/lang/String;

.field public final mServiceName:Ljava/lang/String;

.field public final mServicePackageName:Ljava/lang/String;

.field public final mValidAidGroup:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/nfcaddon/GsmaOffHostServiceInfo$GsmaAidGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    new-instance v0, Lcom/lge/nfcaddon/GsmaOffHostServiceInfo$1;

    invoke-direct {v0}, Lcom/lge/nfcaddon/GsmaOffHostServiceInfo$1;-><init>()V

    sput-object v0, Lcom/lge/nfcaddon/GsmaOffHostServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "servicePackageName"    # Ljava/lang/String;
    .param p2, "serviceName"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "seName"    # Ljava/lang/String;
    .param p5, "location"    # Ljava/lang/String;
    .param p7, "banner"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/nfcaddon/GsmaOffHostServiceInfo$GsmaAidGroup;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .prologue
    .line 32
    .local p6, "aidGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/nfcaddon/GsmaOffHostServiceInfo$GsmaAidGroup;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/lge/nfcaddon/GsmaOffHostServiceInfo;->mServicePackageName:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcom/lge/nfcaddon/GsmaOffHostServiceInfo;->mServiceName:Ljava/lang/String;

    .line 35
    iput-object p3, p0, Lcom/lge/nfcaddon/GsmaOffHostServiceInfo;->mDescription:Ljava/lang/String;

    .line 36
    iput-object p4, p0, Lcom/lge/nfcaddon/GsmaOffHostServiceInfo;->mSEName:Ljava/lang/String;

    .line 37
    iput-object p5, p0, Lcom/lge/nfcaddon/GsmaOffHostServiceInfo;->mLocation:Ljava/lang/String;

    .line 38
    iput-object p6, p0, Lcom/lge/nfcaddon/GsmaOffHostServiceInfo;->mValidAidGroup:Ljava/util/ArrayList;

    .line 39
    iput-object p7, p0, Lcom/lge/nfcaddon/GsmaOffHostServiceInfo;->mBanner:Landroid/graphics/Bitmap;

    .line 40
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 49
    iget-object v0, p0, Lcom/lge/nfcaddon/GsmaOffHostServiceInfo;->mServicePackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/lge/nfcaddon/GsmaOffHostServiceInfo;->mServiceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/lge/nfcaddon/GsmaOffHostServiceInfo;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/lge/nfcaddon/GsmaOffHostServiceInfo;->mSEName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/lge/nfcaddon/GsmaOffHostServiceInfo;->mLocation:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/lge/nfcaddon/GsmaOffHostServiceInfo;->mValidAidGroup:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    iget-object v0, p0, Lcom/lge/nfcaddon/GsmaOffHostServiceInfo;->mValidAidGroup:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/lge/nfcaddon/GsmaOffHostServiceInfo;->mValidAidGroup:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/lge/nfcaddon/GsmaOffHostServiceInfo;->mBanner:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 59
    return-void
.end method
