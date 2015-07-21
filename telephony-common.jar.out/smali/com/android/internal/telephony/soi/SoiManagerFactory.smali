.class public Lcom/android/internal/telephony/soi/SoiManagerFactory;
.super Ljava/lang/Object;
.source "SoiManagerFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method public static createSoiManager(I)Lcom/android/internal/telephony/soi/ISoiManager;
    .locals 1
    .param p0, "smsFormat"    # I

    .prologue
    .line 21
    invoke-static {p0}, Lcom/android/internal/telephony/soi/SoiManager;->setSmsFormat(I)V

    .line 22
    invoke-static {}, Lcom/android/internal/telephony/soi/SoiManager;->getDefault()Lcom/android/internal/telephony/soi/SoiManager;

    move-result-object v0

    return-object v0
.end method
