.class public Landroid/telephony/TelephonyManager$AkaResponse;
.super Ljava/lang/Object;
.source "TelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/TelephonyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AkaResponse"
.end annotation


# instance fields
.field public Ck:[B

.field public Ik:[B

.field public auts:[B

.field public kc:[B

.field public res:[B

.field final synthetic this$0:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/telephony/TelephonyManager;Landroid/os/Bundle;)V
    .locals 1
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 4034
    iput-object p1, p0, Landroid/telephony/TelephonyManager$AkaResponse;->this$0:Landroid/telephony/TelephonyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4035
    const-string/jumbo v0, "res"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/TelephonyManager$AkaResponse;->res:[B

    .line 4036
    const-string v0, "Ck"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/TelephonyManager$AkaResponse;->Ck:[B

    .line 4037
    const-string v0, "Ik"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/TelephonyManager$AkaResponse;->Ik:[B

    .line 4038
    const-string v0, "kc"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/TelephonyManager$AkaResponse;->kc:[B

    .line 4039
    const-string v0, "auts"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/TelephonyManager$AkaResponse;->auts:[B

    .line 4040
    return-void
.end method
