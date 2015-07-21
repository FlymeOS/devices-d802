.class public Lcom/lge/wifi/impl/hs20/WifiLgeHs20OmaDM;
.super Ljava/lang/Object;
.source "WifiLgeHs20OmaDM.java"


# static fields
.field private static DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "WifiLgeHs20OmaDM"

.field private static VDBG:Z

.field private static mLogMessages:Z


# instance fields
.field private mVerboseLoggingLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 52
    sput-boolean v0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20OmaDM;->DBG:Z

    .line 53
    sput-boolean v0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20OmaDM;->VDBG:Z

    .line 54
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20OmaDM;->mLogMessages:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x1

    iput v0, p0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20OmaDM;->mVerboseLoggingLevel:I

    return-void
.end method
