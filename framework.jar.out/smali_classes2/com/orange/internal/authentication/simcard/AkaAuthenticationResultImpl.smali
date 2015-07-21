.class public Lcom/orange/internal/authentication/simcard/AkaAuthenticationResultImpl;
.super Ljava/lang/Object;
.source "AkaAuthenticationResultImpl.java"

# interfaces
.implements Lcom/orange/authentication/simcard/AkaAuthenticationResult;


# instance fields
.field private ck:[B

.field private ik:[B

.field private kc:[B

.field private res:[B


# direct methods
.method public constructor <init>([B[B[B[B)V
    .locals 0
    .param p1, "res"    # [B
    .param p2, "ck"    # [B
    .param p3, "ik"    # [B
    .param p4, "kc"    # [B

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/orange/internal/authentication/simcard/AkaAuthenticationResultImpl;->res:[B

    .line 35
    iput-object p2, p0, Lcom/orange/internal/authentication/simcard/AkaAuthenticationResultImpl;->ck:[B

    .line 36
    iput-object p3, p0, Lcom/orange/internal/authentication/simcard/AkaAuthenticationResultImpl;->ik:[B

    .line 37
    iput-object p4, p0, Lcom/orange/internal/authentication/simcard/AkaAuthenticationResultImpl;->kc:[B

    .line 38
    return-void
.end method


# virtual methods
.method public getCk()[B
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/orange/internal/authentication/simcard/AkaAuthenticationResultImpl;->ck:[B

    return-object v0
.end method

.method public getIk()[B
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/orange/internal/authentication/simcard/AkaAuthenticationResultImpl;->ik:[B

    return-object v0
.end method

.method public getKc()[B
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/orange/internal/authentication/simcard/AkaAuthenticationResultImpl;->kc:[B

    return-object v0
.end method

.method public getRes()[B
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/orange/internal/authentication/simcard/AkaAuthenticationResultImpl;->res:[B

    return-object v0
.end method
