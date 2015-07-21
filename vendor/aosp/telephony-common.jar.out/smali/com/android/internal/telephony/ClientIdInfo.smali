.class Lcom/android/internal/telephony/ClientIdInfo;
.super Ljava/lang/Object;
.source "ClientIdItem.java"


# instance fields
.field private clientidbase:Ljava/lang/String;

.field private clientidbase_am:Ljava/lang/String;

.field private clientidbase_gmm:Ljava/lang/String;

.field private clientidbase_ms:Ljava/lang/String;

.field private clientidbase_yt:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object v0, p0, Lcom/android/internal/telephony/ClientIdInfo;->clientidbase:Ljava/lang/String;

    .line 66
    iput-object v0, p0, Lcom/android/internal/telephony/ClientIdInfo;->clientidbase_ms:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lcom/android/internal/telephony/ClientIdInfo;->clientidbase_am:Ljava/lang/String;

    .line 68
    iput-object v0, p0, Lcom/android/internal/telephony/ClientIdInfo;->clientidbase_gmm:Ljava/lang/String;

    .line 69
    iput-object v0, p0, Lcom/android/internal/telephony/ClientIdInfo;->clientidbase_yt:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getClientidbase()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/internal/telephony/ClientIdInfo;->clientidbase:Ljava/lang/String;

    return-object v0
.end method

.method public getClientidbase_am()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/internal/telephony/ClientIdInfo;->clientidbase_am:Ljava/lang/String;

    return-object v0
.end method

.method public getClientidbase_gmm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/internal/telephony/ClientIdInfo;->clientidbase_gmm:Ljava/lang/String;

    return-object v0
.end method

.method public getClientidbase_ms()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/internal/telephony/ClientIdInfo;->clientidbase_ms:Ljava/lang/String;

    return-object v0
.end method

.method public getClientidbase_yt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/internal/telephony/ClientIdInfo;->clientidbase_yt:Ljava/lang/String;

    return-object v0
.end method

.method public setClientidbase(Ljava/lang/String;)V
    .locals 0
    .param p1, "clientidbase"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/internal/telephony/ClientIdInfo;->clientidbase:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setClientidbase_am(Ljava/lang/String;)V
    .locals 0
    .param p1, "clientidbase_am"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/internal/telephony/ClientIdInfo;->clientidbase_am:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setClientidbase_gmm(Ljava/lang/String;)V
    .locals 0
    .param p1, "clientidbase_gmm"    # Ljava/lang/String;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/internal/telephony/ClientIdInfo;->clientidbase_gmm:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setClientidbase_ms(Ljava/lang/String;)V
    .locals 0
    .param p1, "clientidbase_ms"    # Ljava/lang/String;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/internal/telephony/ClientIdInfo;->clientidbase_ms:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setClientidbase_yt(Ljava/lang/String;)V
    .locals 0
    .param p1, "clientidbase_yt"    # Ljava/lang/String;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/internal/telephony/ClientIdInfo;->clientidbase_yt:Ljava/lang/String;

    .line 100
    return-void
.end method
