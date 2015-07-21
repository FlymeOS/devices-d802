.class public final enum Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;
.super Ljava/lang/Enum;
.source "LGDataPhoneConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/lgdata/LGDataPhoneConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VolteAndEPDNSupport"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;

.field public static final enum EPDN_NOT_SUPPORT:Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;

.field public static final enum EPDN_SUPPORT:Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;

.field public static final enum NONE:Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;

.field public static final enum VOLTE_NOT_SUPPORT:Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;

.field public static final enum VOLTE_SUPPORT:Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;

.field private static final sVolteAndEPDNSupportMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;",
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

    .line 62
    new-instance v4, Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;

    const-string v5, "NONE"

    invoke-direct {v4, v5, v6, v6}, Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;->NONE:Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;

    .line 63
    new-instance v4, Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;

    const-string v5, "VOLTE_NOT_SUPPORT"

    invoke-direct {v4, v5, v7, v7}, Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;->VOLTE_NOT_SUPPORT:Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;

    .line 64
    new-instance v4, Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;

    const-string v5, "VOLTE_SUPPORT"

    invoke-direct {v4, v5, v8, v8}, Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;->VOLTE_SUPPORT:Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;

    .line 65
    new-instance v4, Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;

    const-string v5, "EPDN_NOT_SUPPORT"

    invoke-direct {v4, v5, v9, v9}, Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;->EPDN_NOT_SUPPORT:Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;

    .line 66
    new-instance v4, Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;

    const-string v5, "EPDN_SUPPORT"

    invoke-direct {v4, v5, v10, v10}, Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;->EPDN_SUPPORT:Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;

    .line 61
    const/4 v4, 0x5

    new-array v4, v4, [Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;

    sget-object v5, Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;->NONE:Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;

    aput-object v5, v4, v6

    sget-object v5, Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;->VOLTE_NOT_SUPPORT:Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;

    aput-object v5, v4, v7

    sget-object v5, Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;->VOLTE_SUPPORT:Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;

    aput-object v5, v4, v8

    sget-object v5, Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;->EPDN_NOT_SUPPORT:Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;

    aput-object v5, v4, v9

    sget-object v5, Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;->EPDN_SUPPORT:Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;

    aput-object v5, v4, v10

    sput-object v4, Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;->$VALUES:[Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;

    .line 71
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;->sVolteAndEPDNSupportMap:Ljava/util/HashMap;

    .line 72
    invoke-static {}, Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;->values()[Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;

    move-result-object v0

    .local v0, "arr$":[Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 73
    .local v3, "ves":Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;
    sget-object v4, Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;->sVolteAndEPDNSupportMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;->getCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 75
    .end local v3    # "ves":Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;
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
    .line 77
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 78
    iput p3, p0, Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;->mCode:I

    .line 79
    return-void
.end method

.method public static fromInt(I)Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;
    .locals 3
    .param p0, "code"    # I

    .prologue
    .line 85
    sget-object v1, Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;->sVolteAndEPDNSupportMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;

    .line 86
    .local v0, "ves":Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;
    if-nez v0, :cond_0

    .line 87
    sget-object v0, Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;->NONE:Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;

    .line 89
    :cond_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 61
    const-class v0, Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;

    return-object v0
.end method

.method public static values()[Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;->$VALUES:[Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;

    invoke-virtual {v0}, [Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;->mCode:I

    return v0
.end method
