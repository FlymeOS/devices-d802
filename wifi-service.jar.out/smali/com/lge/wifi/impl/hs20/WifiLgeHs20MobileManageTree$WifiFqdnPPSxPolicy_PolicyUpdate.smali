.class public Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxPolicy_PolicyUpdate;
.super Ljava/lang/Object;
.source "WifiLgeHs20MobileManageTree.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WifiFqdnPPSxPolicy_PolicyUpdate"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxPolicy_PolicyUpdate;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public others:Ljava/lang/String;

.field public restriction:Ljava/lang/String;

.field public trustRoot:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxCom_TrustRoot;

.field public updateInterval:Ljava/lang/String;

.field public updateMethod:Ljava/lang/String;

.field public uri:Ljava/lang/String;

.field public usernamePassword:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxCom_UsernamePassword;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 708
    new-instance v0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxPolicy_PolicyUpdate$1;

    invoke-direct {v0}, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxPolicy_PolicyUpdate$1;-><init>()V

    sput-object v0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxPolicy_PolicyUpdate;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 665
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 637
    new-instance v0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxCom_UsernamePassword;

    invoke-direct {v0}, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxCom_UsernamePassword;-><init>()V

    iput-object v0, p0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxPolicy_PolicyUpdate;->usernamePassword:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxCom_UsernamePassword;

    .line 639
    new-instance v0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxCom_TrustRoot;

    invoke-direct {v0}, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxCom_TrustRoot;-><init>()V

    iput-object v0, p0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxPolicy_PolicyUpdate;->trustRoot:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxCom_TrustRoot;

    .line 666
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 668
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 637
    new-instance v0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxCom_UsernamePassword;

    invoke-direct {v0}, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxCom_UsernamePassword;-><init>()V

    iput-object v0, p0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxPolicy_PolicyUpdate;->usernamePassword:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxCom_UsernamePassword;

    .line 639
    new-instance v0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxCom_TrustRoot;

    invoke-direct {v0}, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxCom_TrustRoot;-><init>()V

    iput-object v0, p0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxPolicy_PolicyUpdate;->trustRoot:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxCom_TrustRoot;

    .line 669
    invoke-virtual {p0, p1}, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxPolicy_PolicyUpdate;->readFromParcel(Landroid/os/Parcel;)V

    .line 670
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 673
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 688
    if-nez p1, :cond_1

    .line 689
    const-string v0, "WifiLgeHs20MobileManageTree"

    const-string v1, "[PolicyUpdate/] Error !!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    :cond_0
    :goto_0
    return-void

    .line 691
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxPolicy_PolicyUpdate;->updateInterval:Ljava/lang/String;

    .line 692
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxPolicy_PolicyUpdate;->updateMethod:Ljava/lang/String;

    .line 693
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxPolicy_PolicyUpdate;->restriction:Ljava/lang/String;

    .line 694
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxPolicy_PolicyUpdate;->uri:Ljava/lang/String;

    .line 695
    const-class v0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxCom_UsernamePassword;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxCom_UsernamePassword;

    iput-object v0, p0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxPolicy_PolicyUpdate;->usernamePassword:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxCom_UsernamePassword;

    .line 696
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxPolicy_PolicyUpdate;->others:Ljava/lang/String;

    .line 697
    const-class v0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxCom_TrustRoot;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxCom_TrustRoot;

    iput-object v0, p0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxPolicy_PolicyUpdate;->trustRoot:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxCom_TrustRoot;

    .line 698
    # getter for: Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree;->DBG:Z
    invoke-static {}, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 699
    const-string v0, "WifiLgeHs20MobileManageTree"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/PolicyUpdate/-UpdateInterval["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxPolicy_PolicyUpdate;->updateInterval:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    const-string v0, "WifiLgeHs20MobileManageTree"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "                         |-UpdateMethod["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxPolicy_PolicyUpdate;->updateMethod:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    const-string v0, "WifiLgeHs20MobileManageTree"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "                         |-Restriction["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxPolicy_PolicyUpdate;->restriction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    const-string v0, "WifiLgeHs20MobileManageTree"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "                         |-URI["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxPolicy_PolicyUpdate;->uri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    const-string v0, "WifiLgeHs20MobileManageTree"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "                         |-Others["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxPolicy_PolicyUpdate;->others:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 677
    iget-object v0, p0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxPolicy_PolicyUpdate;->updateInterval:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 678
    iget-object v0, p0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxPolicy_PolicyUpdate;->updateMethod:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 679
    iget-object v0, p0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxPolicy_PolicyUpdate;->restriction:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 680
    iget-object v0, p0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxPolicy_PolicyUpdate;->uri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 681
    iget-object v0, p0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxPolicy_PolicyUpdate;->usernamePassword:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxCom_UsernamePassword;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 682
    iget-object v0, p0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxPolicy_PolicyUpdate;->others:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 683
    iget-object v0, p0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxPolicy_PolicyUpdate;->trustRoot:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxCom_TrustRoot;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 685
    return-void
.end method