.class public Lcom/lge/nfcaddon/GsmaOffHostServiceInfo$GsmaAidGroup;
.super Ljava/lang/Object;
.source "GsmaOffHostServiceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/nfcaddon/GsmaOffHostServiceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GsmaAidGroup"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lge/nfcaddon/GsmaOffHostServiceInfo$GsmaAidGroup;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mAids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mCategory:Ljava/lang/String;

.field public final mDescription:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 115
    new-instance v0, Lcom/lge/nfcaddon/GsmaOffHostServiceInfo$GsmaAidGroup$1;

    invoke-direct {v0}, Lcom/lge/nfcaddon/GsmaOffHostServiceInfo$GsmaAidGroup$1;-><init>()V

    sput-object v0, Lcom/lge/nfcaddon/GsmaOffHostServiceInfo$GsmaAidGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "category"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p3, "aids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lcom/lge/nfcaddon/GsmaOffHostServiceInfo$GsmaAidGroup;->mDescription:Ljava/lang/String;

    .line 96
    iput-object p2, p0, Lcom/lge/nfcaddon/GsmaOffHostServiceInfo$GsmaAidGroup;->mCategory:Ljava/lang/String;

    .line 97
    iput-object p3, p0, Lcom/lge/nfcaddon/GsmaOffHostServiceInfo$GsmaAidGroup;->mAids:Ljava/util/ArrayList;

    .line 98
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 107
    iget-object v0, p0, Lcom/lge/nfcaddon/GsmaOffHostServiceInfo$GsmaAidGroup;->mCategory:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/lge/nfcaddon/GsmaOffHostServiceInfo$GsmaAidGroup;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/lge/nfcaddon/GsmaOffHostServiceInfo$GsmaAidGroup;->mAids:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    iget-object v0, p0, Lcom/lge/nfcaddon/GsmaOffHostServiceInfo$GsmaAidGroup;->mAids:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/lge/nfcaddon/GsmaOffHostServiceInfo$GsmaAidGroup;->mAids:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 113
    :cond_0
    return-void
.end method
