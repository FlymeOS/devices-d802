.class final Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Credential$1;
.super Ljava/lang/Object;
.source "WifiLgeHs20MobileManageTree.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Credential;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Credential;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Credential;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 1218
    new-instance v0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Credential;

    invoke-direct {v0, p1}, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Credential;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 1216
    invoke-virtual {p0, p1}, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Credential$1;->createFromParcel(Landroid/os/Parcel;)Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Credential;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Credential;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 1222
    new-array v0, p1, [Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Credential;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 1216
    invoke-virtual {p0, p1}, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Credential$1;->newArray(I)[Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Credential;

    move-result-object v0

    return-object v0
.end method
