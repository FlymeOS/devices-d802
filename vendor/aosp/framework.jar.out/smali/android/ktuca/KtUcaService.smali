.class public Landroid/ktuca/KtUcaService;
.super Landroid/ktuca/IKtUcaIF$Stub;
.source "KtUcaService.java"


# instance fields
.field private KtUcaServiceJni:Landroid/ktuca/KtUcaServiceJni;

.field private final TAG:Ljava/lang/String;

.field private mChannel:[B

.field private mChannelLen:[I

.field private mContext:Landroid/content/Context;

.field private referenceCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/ktuca/IKtUcaIF$Stub;-><init>()V

    .line 11
    const-string v2, "KT_UCA_SERVICE"

    iput-object v2, p0, Landroid/ktuca/KtUcaService;->TAG:Ljava/lang/String;

    .line 12
    const/4 v2, 0x0

    iput v2, p0, Landroid/ktuca/KtUcaService;->referenceCount:I

    .line 14
    const/16 v2, 0xa

    new-array v2, v2, [B

    iput-object v2, p0, Landroid/ktuca/KtUcaService;->mChannel:[B

    .line 15
    const/4 v2, 0x1

    new-array v2, v2, [I

    iput-object v2, p0, Landroid/ktuca/KtUcaService;->mChannelLen:[I

    .line 16
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/ktuca/KtUcaService;->KtUcaServiceJni:Landroid/ktuca/KtUcaServiceJni;

    .line 20
    const-wide/16 v0, -0x1

    .line 21
    .local v0, "ret":J
    iput-object p1, p0, Landroid/ktuca/KtUcaService;->mContext:Landroid/content/Context;

    .line 22
    const-string v2, "KT_UCA_SERVICE"

    const-string v3, "+[KtUcaService]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    new-instance v2, Landroid/ktuca/KtUcaServiceJni;

    invoke-direct {v2}, Landroid/ktuca/KtUcaServiceJni;-><init>()V

    iput-object v2, p0, Landroid/ktuca/KtUcaService;->KtUcaServiceJni:Landroid/ktuca/KtUcaServiceJni;

    .line 26
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Landroid/ktuca/KtUcaService$1;

    invoke-direct {v3, p0}, Landroid/ktuca/KtUcaService$1;-><init>(Landroid/ktuca/KtUcaService;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 35
    const-string v2, "KT_UCA_SERVICE"

    const-string v3, "-[KtUcaService]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    return-void
.end method

.method static synthetic access$000(Landroid/ktuca/KtUcaService;)[B
    .locals 1
    .param p0, "x0"    # Landroid/ktuca/KtUcaService;

    .prologue
    .line 10
    iget-object v0, p0, Landroid/ktuca/KtUcaService;->mChannel:[B

    return-object v0
.end method

.method static synthetic access$100(Landroid/ktuca/KtUcaService;)[I
    .locals 1
    .param p0, "x0"    # Landroid/ktuca/KtUcaService;

    .prologue
    .line 10
    iget-object v0, p0, Landroid/ktuca/KtUcaService;->mChannelLen:[I

    return-object v0
.end method

.method static synthetic access$200(Landroid/ktuca/KtUcaService;)Landroid/ktuca/KtUcaServiceJni;
    .locals 1
    .param p0, "x0"    # Landroid/ktuca/KtUcaService;

    .prologue
    .line 10
    iget-object v0, p0, Landroid/ktuca/KtUcaService;->KtUcaServiceJni:Landroid/ktuca/KtUcaServiceJni;

    return-object v0
.end method


# virtual methods
.method public KUCA_CHInit(B[B[I)J
    .locals 5
    .param p1, "ucatag"    # B
    .param p2, "channel"    # [B
    .param p3, "channelLen"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 191
    const-wide/16 v0, -0x1

    .line 193
    .local v0, "ret":J
    const-string v2, "KT_UCA_SERVICE"

    const-string v3, "+[KUCA_CHInit]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v2, p0, Landroid/ktuca/KtUcaService;->KtUcaServiceJni:Landroid/ktuca/KtUcaServiceJni;

    invoke-static {p1, p2, p3}, Landroid/ktuca/KtUcaServiceJni;->KUCA_CHInit(B[B[I)J

    move-result-wide v0

    .line 195
    const-string v2, "KT_UCA_SERVICE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-[KUCA_CHInit] ret : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    return-wide v0
.end method

.method public KUCA_Close([BB)J
    .locals 5
    .param p1, "handle"    # [B
    .param p2, "channel"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 164
    const-wide/16 v0, -0x1

    .line 166
    .local v0, "ret":J
    const-string v2, "KT_UCA_SERVICE"

    const-string v3, "+[KUCA_Close]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v2, p0, Landroid/ktuca/KtUcaService;->KtUcaServiceJni:Landroid/ktuca/KtUcaServiceJni;

    invoke-static {p1, p2}, Landroid/ktuca/KtUcaServiceJni;->KUCA_Close([BB)J

    move-result-wide v0

    .line 168
    const-string v2, "KT_UCA_SERVICE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-[KUCA_Close] ret : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    return-wide v0
.end method

.method public KUCA_CloseT([BB)J
    .locals 4
    .param p1, "appId"    # [B
    .param p2, "channel"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 245
    const-wide/16 v0, -0x1

    .line 247
    .local v0, "ret":J
    const-string v2, "KT_UCA_SERVICE"

    const-string v3, "+[KUCA_CloseT]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v2, p0, Landroid/ktuca/KtUcaService;->KtUcaServiceJni:Landroid/ktuca/KtUcaServiceJni;

    invoke-static {p1, p2}, Landroid/ktuca/KtUcaServiceJni;->KUCA_CloseT([BB)J

    move-result-wide v0

    .line 249
    const-string v2, "KT_UCA_SERVICE"

    const-string v3, "-[KUCA_CloseT]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    return-wide v0
.end method

.method public KUCA_KUH_Establish(B)J
    .locals 5
    .param p1, "ucatag"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 209
    const-wide/16 v0, -0x1

    .line 211
    .local v0, "ret":J
    const-string v2, "KT_UCA_SERVICE"

    const-string v3, "+[KUCA_KUH_Establish]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v2, p0, Landroid/ktuca/KtUcaService;->KtUcaServiceJni:Landroid/ktuca/KtUcaServiceJni;

    invoke-static {p1}, Landroid/ktuca/KtUcaServiceJni;->KUCA_KUH_Establish(B)J

    move-result-wide v0

    .line 213
    const-string v2, "KT_UCA_SERVICE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-[KUCA_KUH_Establish] ret : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    return-wide v0
.end method

.method public KUCA_KUH_Release(B)J
    .locals 4
    .param p1, "ucatag"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 218
    const-wide/16 v0, -0x1

    .line 220
    .local v0, "ret":J
    const-string v2, "KT_UCA_SERVICE"

    const-string v3, "+[KUCA_KUH_Release]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v2, p0, Landroid/ktuca/KtUcaService;->KtUcaServiceJni:Landroid/ktuca/KtUcaServiceJni;

    invoke-static {p1}, Landroid/ktuca/KtUcaServiceJni;->KUCA_KUH_Release(B)J

    move-result-wide v0

    .line 222
    const-string v2, "KT_UCA_SERVICE"

    const-string v3, "+[KUCA_KUH_Release]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    return-wide v0
.end method

.method public KUCA_KUH_Transmit(B[BI[B[I)J
    .locals 4
    .param p1, "ucatag"    # B
    .param p2, "pbSendBuffer"    # [B
    .param p3, "cbSendLength"    # I
    .param p4, "pbRecvBuffer"    # [B
    .param p5, "pcbRecvLength"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 227
    const-wide/16 v0, -0x1

    .line 229
    .local v0, "ret":J
    const-string v2, "KT_UCA_SERVICE"

    const-string v3, "+[KUCA_KUH_Transmit]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v2, p0, Landroid/ktuca/KtUcaService;->KtUcaServiceJni:Landroid/ktuca/KtUcaServiceJni;

    invoke-static {p1, p2, p3, p4, p5}, Landroid/ktuca/KtUcaServiceJni;->KUCA_KUH_Transmit(B[BI[B[I)J

    move-result-wide v0

    .line 231
    const-string v2, "KT_UCA_SERVICE"

    const-string v3, "-[KUCA_KUH_Transmit]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    return-wide v0
.end method

.method public KUCA_Open([B[B[I)J
    .locals 5
    .param p1, "handle"    # [B
    .param p2, "channel"    # [B
    .param p3, "channelLen"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 145
    const-wide/16 v0, -0x1

    .line 147
    .local v0, "ret":J
    const-string v2, "KT_UCA_SERVICE"

    const-string v3, "+[KUCA_Open]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v2, p0, Landroid/ktuca/KtUcaService;->KtUcaServiceJni:Landroid/ktuca/KtUcaServiceJni;

    invoke-static {p1, p2, p3}, Landroid/ktuca/KtUcaServiceJni;->KUCA_Open([B[B[I)J

    move-result-wide v0

    .line 149
    const-string v2, "KT_UCA_SERVICE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-[KUCA_Open] ret : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    return-wide v0
.end method

.method public KUCA_OpenT([B[B[I)J
    .locals 4
    .param p1, "appId"    # [B
    .param p2, "channel"    # [B
    .param p3, "channelLen"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 236
    const-wide/16 v0, -0x1

    .line 238
    .local v0, "ret":J
    const-string v2, "KT_UCA_SERVICE"

    const-string v3, "+[KUCA_OpenT]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v2, p0, Landroid/ktuca/KtUcaService;->KtUcaServiceJni:Landroid/ktuca/KtUcaServiceJni;

    invoke-static {p1, p2, p3}, Landroid/ktuca/KtUcaServiceJni;->KUCA_OpenT([B[B[I)J

    move-result-wide v0

    .line 240
    const-string v2, "KT_UCA_SERVICE"

    const-string v3, "-[KUCA_OpenT]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    return-wide v0
.end method

.method public KUCA_Transmit([B[BI[B[I)J
    .locals 5
    .param p1, "handle"    # [B
    .param p2, "input"    # [B
    .param p3, "inputLen"    # I
    .param p4, "output"    # [B
    .param p5, "outputLen"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 155
    const-wide/16 v0, -0x1

    .line 157
    .local v0, "ret":J
    const-string v2, "KT_UCA_SERVICE"

    const-string v3, "+[KUCA_Transmit]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v2, p0, Landroid/ktuca/KtUcaService;->KtUcaServiceJni:Landroid/ktuca/KtUcaServiceJni;

    invoke-static {p1, p2, p3, p4, p5}, Landroid/ktuca/KtUcaServiceJni;->KUCA_Transmit([B[BI[B[I)J

    move-result-wide v0

    .line 159
    const-string v2, "KT_UCA_SERVICE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-[KUCA_Transmit] ret : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    return-wide v0
.end method

.method public KUCA_UCAVersion([B[B[I)J
    .locals 5
    .param p1, "handle"    # [B
    .param p2, "output"    # [B
    .param p3, "outputLen"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 182
    const-wide/16 v0, -0x1

    .line 184
    .local v0, "ret":J
    const-string v2, "KT_UCA_SERVICE"

    const-string v3, "+[KUCA_UCAVersion]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v2, p0, Landroid/ktuca/KtUcaService;->KtUcaServiceJni:Landroid/ktuca/KtUcaServiceJni;

    invoke-static {p1, p2, p3}, Landroid/ktuca/KtUcaServiceJni;->KUCA_UCAVersion([B[B[I)J

    move-result-wide v0

    .line 186
    const-string v2, "KT_UCA_SERVICE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-[KUCA_UCAVersion] ret : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    return-wide v0
.end method

.method public KUCA_getHandle([B[B[B[B[I)J
    .locals 8
    .param p1, "callerId"    # [B
    .param p2, "preKey"    # [B
    .param p3, "appId"    # [B
    .param p4, "handle"    # [B
    .param p5, "handleLen"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 40
    const-wide/16 v6, -0x1

    .line 42
    .local v6, "ret":J
    const-string v0, "KT_UCA_SERVICE"

    const-string v1, "+[KUCA_getHandle]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iget-object v0, p0, Landroid/ktuca/KtUcaService;->KtUcaServiceJni:Landroid/ktuca/KtUcaServiceJni;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/ktuca/KtUcaServiceJni;->uca_getHandle([B[B[B[B[I)J

    move-result-wide v6

    .line 44
    const-string v0, "KT_UCA_SERVICE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-[KUCA_getHandle] ret : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    return-wide v6
.end method

.method public KUCA_getICCID([B[B[II[B)J
    .locals 5
    .param p1, "handle"    # [B
    .param p2, "output"    # [B
    .param p3, "outputLen"    # [I
    .param p4, "encryptType"    # I
    .param p5, "deviceIp"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 70
    const-wide/16 v0, -0x1

    .line 72
    .local v0, "ret":J
    const-string v2, "KT_UCA_SERVICE"

    const-string v3, "+[KUCA_getICCID]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v2, p0, Landroid/ktuca/KtUcaService;->KtUcaServiceJni:Landroid/ktuca/KtUcaServiceJni;

    invoke-static {p1, p2, p3, p4, p5}, Landroid/ktuca/KtUcaServiceJni;->KUCA_getICCID([B[B[II[B)J

    move-result-wide v0

    .line 74
    const-string v2, "KT_UCA_SERVICE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-[KUCA_getICCID] ret : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    return-wide v0
.end method

.method public KUCA_getIMSI([B[B[II[B)J
    .locals 5
    .param p1, "handle"    # [B
    .param p2, "output"    # [B
    .param p3, "outputLen"    # [I
    .param p4, "encryptType"    # I
    .param p5, "deviceIp"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 60
    const-wide/16 v0, -0x1

    .line 62
    .local v0, "ret":J
    const-string v2, "KT_UCA_SERVICE"

    const-string v3, "+[KUCA_getIMSI]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object v2, p0, Landroid/ktuca/KtUcaService;->KtUcaServiceJni:Landroid/ktuca/KtUcaServiceJni;

    invoke-static {p1, p2, p3, p4, p5}, Landroid/ktuca/KtUcaServiceJni;->KUCA_getIMSI([B[B[II[B)J

    move-result-wide v0

    .line 64
    const-string v2, "KT_UCA_SERVICE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-[KUCA_getIMSI] ret : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    return-wide v0
.end method

.method public KUCA_getMDN([B[B[II[B)J
    .locals 5
    .param p1, "handle"    # [B
    .param p2, "output"    # [B
    .param p3, "outputLen"    # [I
    .param p4, "encryptType"    # I
    .param p5, "deviceIp"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 90
    const-wide/16 v0, -0x1

    .line 92
    .local v0, "ret":J
    const-string v2, "KT_UCA_SERVICE"

    const-string v3, "+[KUCA_getMDN]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v2, p0, Landroid/ktuca/KtUcaService;->KtUcaServiceJni:Landroid/ktuca/KtUcaServiceJni;

    invoke-static {p1, p2, p3, p4, p5}, Landroid/ktuca/KtUcaServiceJni;->KUCA_getMDN([B[B[II[B)J

    move-result-wide v0

    .line 94
    const-string v2, "KT_UCA_SERVICE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-[KUCA_getMDN] ret : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    return-wide v0
.end method

.method public KUCA_getMODEL([B[B[II[B)J
    .locals 5
    .param p1, "handle"    # [B
    .param p2, "output"    # [B
    .param p3, "outputLen"    # [I
    .param p4, "encryptType"    # I
    .param p5, "deviceIp"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 100
    const-wide/16 v0, -0x1

    .line 102
    .local v0, "ret":J
    const-string v2, "KT_UCA_SERVICE"

    const-string v3, "+[KUCA_getMODEL]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v2, p0, Landroid/ktuca/KtUcaService;->KtUcaServiceJni:Landroid/ktuca/KtUcaServiceJni;

    invoke-static {p1, p2, p3, p4, p5}, Landroid/ktuca/KtUcaServiceJni;->KUCA_getMODEL([B[B[II[B)J

    move-result-wide v0

    .line 104
    const-string v2, "KT_UCA_SERVICE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-[KUCA_getMODEL] ret : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    return-wide v0
.end method

.method public KUCA_getMSISDN([B[B[II[B)J
    .locals 8
    .param p1, "handle"    # [B
    .param p2, "output"    # [B
    .param p3, "outputLen"    # [I
    .param p4, "encryptType"    # I
    .param p5, "deviceIp"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 50
    const-wide/16 v6, -0x1

    .line 52
    .local v6, "ret":J
    const-string v0, "KT_UCA_SERVICE"

    const-string v1, "+[KUCA_getMSISDN]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-object v0, p0, Landroid/ktuca/KtUcaService;->KtUcaServiceJni:Landroid/ktuca/KtUcaServiceJni;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/ktuca/KtUcaServiceJni;->uca_getMSISDN([B[B[II[B)J

    move-result-wide v6

    .line 54
    const-string v0, "KT_UCA_SERVICE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-[KUCA_getMSISDN] ret : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    return-wide v6
.end method

.method public KUCA_getPUID([B[B[II[B)J
    .locals 5
    .param p1, "handle"    # [B
    .param p2, "output"    # [B
    .param p3, "outputLen"    # [I
    .param p4, "encryptType"    # I
    .param p5, "deviceIp"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 80
    const-wide/16 v0, -0x1

    .line 82
    .local v0, "ret":J
    const-string v2, "KT_UCA_SERVICE"

    const-string v3, "+[KUCA_getPUID]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v2, p0, Landroid/ktuca/KtUcaService;->KtUcaServiceJni:Landroid/ktuca/KtUcaServiceJni;

    invoke-static {p1, p2, p3, p4, p5}, Landroid/ktuca/KtUcaServiceJni;->KUCA_getPUID([B[B[II[B)J

    move-result-wide v0

    .line 84
    const-string v2, "KT_UCA_SERVICE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-[KUCA_getPUID] ret : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    return-wide v0
.end method

.method public KUCA_getPinStatus([BI[B[I)J
    .locals 5
    .param p1, "handle"    # [B
    .param p2, "pinId"    # I
    .param p3, "output"    # [B
    .param p4, "outputLen"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 127
    const-wide/16 v0, -0x1

    .line 129
    .local v0, "ret":J
    const-string v2, "KT_UCA_SERVICE"

    const-string v3, "+[KUCA_getPinStatus]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v2, p0, Landroid/ktuca/KtUcaService;->KtUcaServiceJni:Landroid/ktuca/KtUcaServiceJni;

    invoke-static {p1, p2, p3, p4}, Landroid/ktuca/KtUcaServiceJni;->KUCA_getPinStatus([BI[B[I)J

    move-result-wide v0

    .line 131
    const-string v2, "KT_UCA_SERVICE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-[KUCA_getPinStatus] ret : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    return-wide v0
.end method

.method public KUCA_getSIMInfo([B[B[I)J
    .locals 5
    .param p1, "handle"    # [B
    .param p2, "output"    # [B
    .param p3, "outputLen"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 109
    const-wide/16 v0, -0x1

    .line 111
    .local v0, "ret":J
    const-string v2, "KT_UCA_SERVICE"

    const-string v3, "+[KUCA_getSIMInfo]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v2, p0, Landroid/ktuca/KtUcaService;->KtUcaServiceJni:Landroid/ktuca/KtUcaServiceJni;

    invoke-static {p1, p2, p3}, Landroid/ktuca/KtUcaServiceJni;->KUCA_getSIMInfo([B[B[I)J

    move-result-wide v0

    .line 113
    const-string v2, "KT_UCA_SERVICE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-[KUCA_getSIMInfo] ret : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    return-wide v0
.end method

.method public KUCA_getSimStatus([B[B)J
    .locals 5
    .param p1, "handle"    # [B
    .param p2, "output"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 173
    const-wide/16 v0, -0x1

    .line 175
    .local v0, "ret":J
    const-string v2, "KT_UCA_SERVICE"

    const-string v3, "+[KUCA_getSimStatus]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v2, p0, Landroid/ktuca/KtUcaService;->KtUcaServiceJni:Landroid/ktuca/KtUcaServiceJni;

    invoke-static {p1, p2}, Landroid/ktuca/KtUcaServiceJni;->KUCA_getSimStatus([B[B)J

    move-result-wide v0

    .line 177
    const-string v2, "KT_UCA_SERVICE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-[KUCA_getSimStatus] ret : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    return-wide v0
.end method

.method public KUCA_printCHInfo(B)J
    .locals 5
    .param p1, "ucatag"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 200
    const-wide/16 v0, -0x1

    .line 202
    .local v0, "ret":J
    const-string v2, "KT_UCA_SERVICE"

    const-string v3, "+[KUCA_printCHInfo]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v2, p0, Landroid/ktuca/KtUcaService;->KtUcaServiceJni:Landroid/ktuca/KtUcaServiceJni;

    invoke-static {p1}, Landroid/ktuca/KtUcaServiceJni;->KUCA_printCHInfo(B)J

    move-result-wide v0

    .line 204
    const-string v2, "KT_UCA_SERVICE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-[KUCA_printCHInfo] ret : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    return-wide v0
.end method

.method public KUCA_usimAUTH([B[B[B[B[I)J
    .locals 5
    .param p1, "handle"    # [B
    .param p2, "rand"    # [B
    .param p3, "autn"    # [B
    .param p4, "output"    # [B
    .param p5, "outputLen"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 118
    const-wide/16 v0, -0x1

    .line 120
    .local v0, "ret":J
    const-string v2, "KT_UCA_SERVICE"

    const-string v3, "+[KUCA_usimAUTH]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v2, p0, Landroid/ktuca/KtUcaService;->KtUcaServiceJni:Landroid/ktuca/KtUcaServiceJni;

    invoke-static {p1, p2, p3, p4, p5}, Landroid/ktuca/KtUcaServiceJni;->KUCA_usimAUTH([B[B[B[B[I)J

    move-result-wide v0

    .line 122
    const-string v2, "KT_UCA_SERVICE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-[KUCA_usimAUTH] ret : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    return-wide v0
.end method

.method public KUCA_verifyPin([BILjava/lang/String;[B[I)J
    .locals 5
    .param p1, "handle"    # [B
    .param p2, "pinId"    # I
    .param p3, "pinCode"    # Ljava/lang/String;
    .param p4, "output"    # [B
    .param p5, "outputLen"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 136
    const-wide/16 v0, -0x1

    .line 138
    .local v0, "ret":J
    const-string v2, "KT_UCA_SERVICE"

    const-string v3, "+[KUCA_verifyPin]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v2, p0, Landroid/ktuca/KtUcaService;->KtUcaServiceJni:Landroid/ktuca/KtUcaServiceJni;

    invoke-static {p1, p2, p3, p4, p5}, Landroid/ktuca/KtUcaServiceJni;->KUCA_verifyPin([BILjava/lang/String;[B[I)J

    move-result-wide v0

    .line 140
    const-string v2, "KT_UCA_SERVICE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-[KUCA_verifyPin] ret : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    return-wide v0
.end method

.method public getResource()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 255
    const-string v0, "2.1.1_R01_140814"

    .line 257
    .local v0, "KTUCA_VER":Ljava/lang/String;
    iget v1, p0, Landroid/ktuca/KtUcaService;->referenceCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/ktuca/KtUcaService;->referenceCount:I

    .line 258
    const-string v1, "KT_UCA_SERVICE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+[KtUcaService Ver]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    const-string v1, "KT_UCA_SERVICE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ref. Cnt. : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/ktuca/KtUcaService;->referenceCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget v1, p0, Landroid/ktuca/KtUcaService;->referenceCount:I

    return v1
.end method

.method public releaseResource()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 265
    iget v0, p0, Landroid/ktuca/KtUcaService;->referenceCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/ktuca/KtUcaService;->referenceCount:I

    .line 266
    const-string v0, "KT_UCA_SERVICE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ref. Cnt. : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/ktuca/KtUcaService;->referenceCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget v0, p0, Landroid/ktuca/KtUcaService;->referenceCount:I

    return v0
.end method
