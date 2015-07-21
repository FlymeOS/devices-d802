.class public Lcom/android/internal/telephony/ClientIdItem;
.super Ljava/lang/Object;
.source "ClientIdItem.java"


# instance fields
.field private clientid:Lcom/android/internal/telephony/ClientIdInfo;

.field private mccmnc:Ljava/lang/String;

.field private mvno_match_data:Ljava/lang/String;

.field private mvno_type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object v0, p0, Lcom/android/internal/telephony/ClientIdItem;->mccmnc:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/android/internal/telephony/ClientIdItem;->mvno_type:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/android/internal/telephony/ClientIdItem;->mvno_match_data:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/android/internal/telephony/ClientIdItem;->clientid:Lcom/android/internal/telephony/ClientIdInfo;

    .line 13
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/ClientIdInfo;)V
    .locals 1
    .param p1, "mccmnc"    # Ljava/lang/String;
    .param p2, "mvno_type"    # Ljava/lang/String;
    .param p3, "mvno_match_data"    # Ljava/lang/String;
    .param p4, "clientid"    # Lcom/android/internal/telephony/ClientIdInfo;

    .prologue
    const/4 v0, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object v0, p0, Lcom/android/internal/telephony/ClientIdItem;->mccmnc:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/android/internal/telephony/ClientIdItem;->mvno_type:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/android/internal/telephony/ClientIdItem;->mvno_match_data:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/android/internal/telephony/ClientIdItem;->clientid:Lcom/android/internal/telephony/ClientIdInfo;

    .line 18
    iput-object p1, p0, Lcom/android/internal/telephony/ClientIdItem;->mccmnc:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/android/internal/telephony/ClientIdItem;->mvno_type:Ljava/lang/String;

    .line 20
    iput-object p3, p0, Lcom/android/internal/telephony/ClientIdItem;->mvno_match_data:Ljava/lang/String;

    .line 21
    iput-object p4, p0, Lcom/android/internal/telephony/ClientIdItem;->clientid:Lcom/android/internal/telephony/ClientIdInfo;

    .line 22
    return-void
.end method


# virtual methods
.method public getClientid()Lcom/android/internal/telephony/ClientIdInfo;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/telephony/ClientIdItem;->clientid:Lcom/android/internal/telephony/ClientIdInfo;

    return-object v0
.end method

.method public getMccmnc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/internal/telephony/ClientIdItem;->mccmnc:Ljava/lang/String;

    return-object v0
.end method

.method public getMvno_match_data()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/internal/telephony/ClientIdItem;->mvno_match_data:Ljava/lang/String;

    return-object v0
.end method

.method public getMvno_type()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/internal/telephony/ClientIdItem;->mvno_type:Ljava/lang/String;

    return-object v0
.end method

.method public setClientid(Lcom/android/internal/telephony/ClientIdInfo;)V
    .locals 0
    .param p1, "clientid"    # Lcom/android/internal/telephony/ClientIdInfo;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/internal/telephony/ClientIdItem;->clientid:Lcom/android/internal/telephony/ClientIdInfo;

    .line 54
    return-void
.end method

.method public setMccmnc(Ljava/lang/String;)V
    .locals 0
    .param p1, "mccmnc"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/android/internal/telephony/ClientIdItem;->mccmnc:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setMvno_match_data(Ljava/lang/String;)V
    .locals 0
    .param p1, "mvno_match_data"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/internal/telephony/ClientIdItem;->mvno_match_data:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setMvno_type(Ljava/lang/String;)V
    .locals 0
    .param p1, "mvno_type"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/internal/telephony/ClientIdItem;->mvno_type:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ClientIdItem [mccmnc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ClientIdItem;->mccmnc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mvno_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ClientIdItem;->mvno_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mvno_match_data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ClientIdItem;->mvno_match_data:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
