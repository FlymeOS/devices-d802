.class public Lcom/lge/wifi/impl/hs20/WifiLgeHs20SoapXML;
.super Ljava/lang/Object;
.source "WifiLgeHs20SoapXML.java"


# static fields
.field private static DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "WifiLgeHs20SoapXML"

.field private static VDBG:Z

.field private static mLogMessages:Z


# instance fields
.field private mVerboseLoggingLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 127
    sput-boolean v0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20SoapXML;->DBG:Z

    .line 128
    sput-boolean v0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20SoapXML;->VDBG:Z

    .line 129
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20SoapXML;->mLogMessages:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    const/4 v0, 0x1

    iput v0, p0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20SoapXML;->mVerboseLoggingLevel:I

    return-void
.end method
