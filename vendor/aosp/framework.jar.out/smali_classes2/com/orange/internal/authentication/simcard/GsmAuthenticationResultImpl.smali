.class public Lcom/orange/internal/authentication/simcard/GsmAuthenticationResultImpl;
.super Ljava/lang/Object;
.source "GsmAuthenticationResultImpl.java"

# interfaces
.implements Lcom/orange/authentication/simcard/GsmAuthenticationResult;


# instance fields
.field private kc:J

.field private sres:I


# direct methods
.method public constructor <init>([B[B)V
    .locals 2
    .param p1, "sres"    # [B
    .param p2, "kc"    # [B

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/orange/internal/authentication/simcard/GsmAuthenticationResultImpl;->sres:I

    .line 21
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/orange/internal/authentication/simcard/GsmAuthenticationResultImpl;->kc:J

    .line 31
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/orange/internal/authentication/simcard/GsmAuthenticationResultImpl;->sres:I

    .line 33
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/orange/internal/authentication/simcard/GsmAuthenticationResultImpl;->kc:J

    .line 34
    return-void
.end method


# virtual methods
.method public getKc()J
    .locals 2

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/orange/internal/authentication/simcard/GsmAuthenticationResultImpl;->kc:J

    return-wide v0
.end method

.method public getSres()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/orange/internal/authentication/simcard/GsmAuthenticationResultImpl;->sres:I

    return v0
.end method
