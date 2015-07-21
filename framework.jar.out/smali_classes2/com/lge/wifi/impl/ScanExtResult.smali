.class public Lcom/lge/wifi/impl/ScanExtResult;
.super Ljava/lang/Object;
.source "ScanExtResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lge/wifi/impl/ScanExtResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public BSSID:Ljava/lang/String;

.field public country:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    new-instance v0, Lcom/lge/wifi/impl/ScanExtResult$1;

    invoke-direct {v0}, Lcom/lge/wifi/impl/ScanExtResult$1;-><init>()V

    sput-object v0, Lcom/lge/wifi/impl/ScanExtResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/lge/wifi/impl/ScanExtResult;)V
    .locals 1
    .param p1, "source"    # Lcom/lge/wifi/impl/ScanExtResult;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    if-eqz p1, :cond_0

    .line 30
    iget-object v0, p1, Lcom/lge/wifi/impl/ScanExtResult;->BSSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/lge/wifi/impl/ScanExtResult;->BSSID:Ljava/lang/String;

    .line 32
    iget-object v0, p1, Lcom/lge/wifi/impl/ScanExtResult;->country:Ljava/lang/String;

    iput-object v0, p0, Lcom/lge/wifi/impl/ScanExtResult;->country:Ljava/lang/String;

    .line 35
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "BSSID"    # Ljava/lang/String;
    .param p2, "country"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/lge/wifi/impl/ScanExtResult;->BSSID:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/lge/wifi/impl/ScanExtResult;->country:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 39
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 40
    .local v1, "sb":Ljava/lang/StringBuffer;
    const-string v0, "<none>"

    .line 42
    .local v0, "none":Ljava/lang/String;
    const-string v2, "BSSID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v2, p0, Lcom/lge/wifi/impl/ScanExtResult;->BSSID:Ljava/lang/String;

    if-nez v2, :cond_0

    move-object v2, v0

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", country: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/wifi/impl/ScanExtResult;->country:Ljava/lang/String;

    if-nez v3, :cond_1

    .end local v0    # "none":Ljava/lang/String;
    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 49
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 42
    .restart local v0    # "none":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/lge/wifi/impl/ScanExtResult;->BSSID:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/lge/wifi/impl/ScanExtResult;->country:Ljava/lang/String;

    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 59
    iget-object v0, p0, Lcom/lge/wifi/impl/ScanExtResult;->BSSID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/lge/wifi/impl/ScanExtResult;->country:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    return-void
.end method
