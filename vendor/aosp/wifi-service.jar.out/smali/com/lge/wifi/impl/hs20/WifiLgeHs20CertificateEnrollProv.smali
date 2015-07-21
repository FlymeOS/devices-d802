.class public Lcom/lge/wifi/impl/hs20/WifiLgeHs20CertificateEnrollProv;
.super Ljava/lang/Object;
.source "WifiLgeHs20CertificateEnrollProv.java"


# static fields
.field private static DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "WifiLgeHs20CertificateEnrollProv"

.field private static VDBG:Z

.field private static mLogMessages:Z


# instance fields
.field private mVerboseLoggingLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 77
    sput-boolean v0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20CertificateEnrollProv;->DBG:Z

    .line 78
    sput-boolean v0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20CertificateEnrollProv;->VDBG:Z

    .line 79
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20CertificateEnrollProv;->mLogMessages:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v0, 0x1

    iput v0, p0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20CertificateEnrollProv;->mVerboseLoggingLevel:I

    return-void
.end method
