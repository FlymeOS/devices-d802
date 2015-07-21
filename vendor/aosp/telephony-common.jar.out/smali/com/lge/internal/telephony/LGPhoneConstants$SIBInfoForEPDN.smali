.class public final enum Lcom/lge/internal/telephony/LGPhoneConstants$SIBInfoForEPDN;
.super Ljava/lang/Enum;
.source "LGPhoneConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/internal/telephony/LGPhoneConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SIBInfoForEPDN"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lge/internal/telephony/LGPhoneConstants$SIBInfoForEPDN;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lge/internal/telephony/LGPhoneConstants$SIBInfoForEPDN;

.field public static final enum EMER_ATTACH_NOT_SUPPORT:Lcom/lge/internal/telephony/LGPhoneConstants$SIBInfoForEPDN;

.field public static final enum EMER_ATTACH_SUPPORT:Lcom/lge/internal/telephony/LGPhoneConstants$SIBInfoForEPDN;

.field public static final enum EPDN_BARRED:Lcom/lge/internal/telephony/LGPhoneConstants$SIBInfoForEPDN;

.field public static final enum EPDN_NOT_BARRED:Lcom/lge/internal/telephony/LGPhoneConstants$SIBInfoForEPDN;

.field public static final enum NONE:Lcom/lge/internal/telephony/LGPhoneConstants$SIBInfoForEPDN;

.field private static final SIB_FOR_EPDN_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/lge/internal/telephony/LGPhoneConstants$SIBInfoForEPDN;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 79
    new-instance v4, Lcom/lge/internal/telephony/LGPhoneConstants$SIBInfoForEPDN;

    const-string v5, "NONE"

    invoke-direct {v4, v5, v6, v6}, Lcom/lge/internal/telephony/LGPhoneConstants$SIBInfoForEPDN;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/lge/internal/telephony/LGPhoneConstants$SIBInfoForEPDN;->NONE:Lcom/lge/internal/telephony/LGPhoneConstants$SIBInfoForEPDN;

    .line 80
    new-instance v4, Lcom/lge/internal/telephony/LGPhoneConstants$SIBInfoForEPDN;

    const-string v5, "EMER_ATTACH_NOT_SUPPORT"

    invoke-direct {v4, v5, v7, v7}, Lcom/lge/internal/telephony/LGPhoneConstants$SIBInfoForEPDN;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/lge/internal/telephony/LGPhoneConstants$SIBInfoForEPDN;->EMER_ATTACH_NOT_SUPPORT:Lcom/lge/internal/telephony/LGPhoneConstants$SIBInfoForEPDN;

    .line 81
    new-instance v4, Lcom/lge/internal/telephony/LGPhoneConstants$SIBInfoForEPDN;

    const-string v5, "EMER_ATTACH_SUPPORT"

    invoke-direct {v4, v5, v8, v8}, Lcom/lge/internal/telephony/LGPhoneConstants$SIBInfoForEPDN;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/lge/internal/telephony/LGPhoneConstants$SIBInfoForEPDN;->EMER_ATTACH_SUPPORT:Lcom/lge/internal/telephony/LGPhoneConstants$SIBInfoForEPDN;

    .line 82
    new-instance v4, Lcom/lge/internal/telephony/LGPhoneConstants$SIBInfoForEPDN;

    const-string v5, "EPDN_NOT_BARRED"

    invoke-direct {v4, v5, v9, v9}, Lcom/lge/internal/telephony/LGPhoneConstants$SIBInfoForEPDN;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/lge/internal/telephony/LGPhoneConstants$SIBInfoForEPDN;->EPDN_NOT_BARRED:Lcom/lge/internal/telephony/LGPhoneConstants$SIBInfoForEPDN;

    .line 83
    new-instance v4, Lcom/lge/internal/telephony/LGPhoneConstants$SIBInfoForEPDN;

    const-string v5, "EPDN_BARRED"

    invoke-direct {v4, v5, v10, v10}, Lcom/lge/internal/telephony/LGPhoneConstants$SIBInfoForEPDN;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/lge/internal/telephony/LGPhoneConstants$SIBInfoForEPDN;->EPDN_BARRED:Lcom/lge/internal/telephony/LGPhoneConstants$SIBInfoForEPDN;

    .line 78
    const/4 v4, 0x5

    new-array v4, v4, [Lcom/lge/internal/telephony/LGPhoneConstants$SIBInfoForEPDN;

    sget-object v5, Lcom/lge/internal/telephony/LGPhoneConstants$SIBInfoForEPDN;->NONE:Lcom/lge/internal/telephony/LGPhoneConstants$SIBInfoForEPDN;

    aput-object v5, v4, v6

    sget-object v5, Lcom/lge/internal/telephony/LGPhoneConstants$SIBInfoForEPDN;->EMER_ATTACH_NOT_SUPPORT:Lcom/lge/internal/telephony/LGPhoneConstants$SIBInfoForEPDN;

    aput-object v5, v4, v7

    sget-object v5, Lcom/lge/internal/telephony/LGPhoneConstants$SIBInfoForEPDN;->EMER_ATTACH_SUPPORT:Lcom/lge/internal/telephony/LGPhoneConstants$SIBInfoForEPDN;

    aput-object v5, v4, v8

    sget-object v5, Lcom/lge/internal/telephony/LGPhoneConstants$SIBInfoForEPDN;->EPDN_NOT_BARRED:Lcom/lge/internal/telephony/LGPhoneConstants$SIBInfoForEPDN;

    aput-object v5, v4, v9

    sget-object v5, Lcom/lge/internal/telephony/LGPhoneConstants$SIBInfoForEPDN;->EPDN_BARRED:Lcom/lge/internal/telephony/LGPhoneConstants$SIBInfoForEPDN;

    aput-object v5, v4, v10

    sput-object v4, Lcom/lge/internal/telephony/LGPhoneConstants$SIBInfoForEPDN;->$VALUES:[Lcom/lge/internal/telephony/LGPhoneConstants$SIBInfoForEPDN;

    .line 89
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Lcom/lge/internal/telephony/LGPhoneConstants$SIBInfoForEPDN;->SIB_FOR_EPDN_MAP:Ljava/util/HashMap;

    .line 90
    invoke-static {}, Lcom/lge/internal/telephony/LGPhoneConstants$SIBInfoForEPDN;->values()[Lcom/lge/internal/telephony/LGPhoneConstants$SIBInfoForEPDN;

    move-result-object v0

    .local v0, "arr$":[Lcom/lge/internal/telephony/LGPhoneConstants$SIBInfoForEPDN;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 91
    .local v3, "sie":Lcom/lge/internal/telephony/LGPhoneConstants$SIBInfoForEPDN;
    sget-object v4, Lcom/lge/internal/telephony/LGPhoneConstants$SIBInfoForEPDN;->SIB_FOR_EPDN_MAP:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/lge/internal/telephony/LGPhoneConstants$SIBInfoForEPDN;->getCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 93
    .end local v3    # "sie":Lcom/lge/internal/telephony/LGPhoneConstants$SIBInfoForEPDN;
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "code"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 96
    iput p3, p0, Lcom/lge/internal/telephony/LGPhoneConstants$SIBInfoForEPDN;->mCode:I

    .line 97
    return-void
.end method

.method public static fromInt(I)Lcom/lge/internal/telephony/LGPhoneConstants$SIBInfoForEPDN;
    .locals 3
    .param p0, "code"    # I

    .prologue
    .line 104
    sget-object v1, Lcom/lge/internal/telephony/LGPhoneConstants$SIBInfoForEPDN;->SIB_FOR_EPDN_MAP:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/internal/telephony/LGPhoneConstants$SIBInfoForEPDN;

    .line 105
    .local v0, "sie":Lcom/lge/internal/telephony/LGPhoneConstants$SIBInfoForEPDN;
    if-nez v0, :cond_0

    .line 106
    sget-object v0, Lcom/lge/internal/telephony/LGPhoneConstants$SIBInfoForEPDN;->NONE:Lcom/lge/internal/telephony/LGPhoneConstants$SIBInfoForEPDN;

    .line 108
    :cond_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lge/internal/telephony/LGPhoneConstants$SIBInfoForEPDN;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 78
    const-class v0, Lcom/lge/internal/telephony/LGPhoneConstants$SIBInfoForEPDN;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lge/internal/telephony/LGPhoneConstants$SIBInfoForEPDN;

    return-object v0
.end method

.method public static values()[Lcom/lge/internal/telephony/LGPhoneConstants$SIBInfoForEPDN;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/lge/internal/telephony/LGPhoneConstants$SIBInfoForEPDN;->$VALUES:[Lcom/lge/internal/telephony/LGPhoneConstants$SIBInfoForEPDN;

    invoke-virtual {v0}, [Lcom/lge/internal/telephony/LGPhoneConstants$SIBInfoForEPDN;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lge/internal/telephony/LGPhoneConstants$SIBInfoForEPDN;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/lge/internal/telephony/LGPhoneConstants$SIBInfoForEPDN;->mCode:I

    return v0
.end method
