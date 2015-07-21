.class public Lcom/qti/dpmapi/DpmApiInvalidArgumentException;
.super Lcom/qti/dpmapi/DpmApiException;
.source "DpmApiInvalidArgumentException.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/qti/dpmapi/DpmApiException;-><init>()V

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "errMsg"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/qti/dpmapi/DpmApiException;-><init>(Ljava/lang/String;)V

    .line 27
    return-void
.end method
