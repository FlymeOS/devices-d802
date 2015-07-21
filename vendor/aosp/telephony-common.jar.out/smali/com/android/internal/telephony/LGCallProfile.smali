.class public Lcom/android/internal/telephony/LGCallProfile;
.super Ljava/lang/Object;
.source "LGCallProfile.java"


# static fields
.field public static final CALL_DOMAIN_AUTOMATIC:I = 0x0

.field public static final CALL_DOMAIN_CS:I = 0x1

.field public static final CALL_DOMAIN_PS:I = 0x2


# instance fields
.field public mCallDomain:I

.field public mCallProfile:Lcom/android/ims/ImsCallProfile;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/LGCallProfile;->mCallDomain:I

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/LGCallProfile;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    .line 24
    new-instance v0, Lcom/android/ims/ImsCallProfile;

    invoke-direct {v0}, Lcom/android/ims/ImsCallProfile;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/LGCallProfile;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    .line 25
    return-void
.end method

.method public constructor <init>(ILcom/android/ims/ImsCallProfile;)V
    .locals 1
    .param p1, "domain"    # I
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/LGCallProfile;->mCallDomain:I

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/LGCallProfile;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    .line 32
    iput p1, p0, Lcom/android/internal/telephony/LGCallProfile;->mCallDomain:I

    .line 33
    iput-object p2, p0, Lcom/android/internal/telephony/LGCallProfile;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    .line 34
    return-void
.end method

.method public constructor <init>(Lcom/android/ims/ImsCallProfile;)V
    .locals 1
    .param p1, "profile"    # Lcom/android/ims/ImsCallProfile;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/LGCallProfile;->mCallDomain:I

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/LGCallProfile;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    .line 28
    iput-object p1, p0, Lcom/android/internal/telephony/LGCallProfile;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    .line 29
    return-void
.end method


# virtual methods
.method public isCallDomainAutomatic()Z
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/android/internal/telephony/LGCallProfile;->mCallDomain:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCallDomainCS()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 41
    iget v1, p0, Lcom/android/internal/telephony/LGCallProfile;->mCallDomain:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCallDomainPS()Z
    .locals 2

    .prologue
    .line 45
    iget v0, p0, Lcom/android/internal/telephony/LGCallProfile;->mCallDomain:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
