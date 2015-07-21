.class public final enum Lcom/lge/internal/telephony/LGPhoneConstants$EmcFailCause;
.super Ljava/lang/Enum;
.source "LGPhoneConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/internal/telephony/LGPhoneConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EmcFailCause"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lge/internal/telephony/LGPhoneConstants$EmcFailCause;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lge/internal/telephony/LGPhoneConstants$EmcFailCause;

.field public static final enum ATTACH_FAILED:Lcom/lge/internal/telephony/LGPhoneConstants$EmcFailCause;

.field public static final enum BARRED:Lcom/lge/internal/telephony/LGPhoneConstants$EmcFailCause;

.field private static final EMC_FAILCAUSE_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/lge/internal/telephony/LGPhoneConstants$EmcFailCause;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum NONE:Lcom/lge/internal/telephony/LGPhoneConstants$EmcFailCause;

.field public static final enum PDN_FAILED:Lcom/lge/internal/telephony/LGPhoneConstants$EmcFailCause;


# instance fields
.field private final mCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 113
    new-instance v4, Lcom/lge/internal/telephony/LGPhoneConstants$EmcFailCause;

    const-string v5, "NONE"

    invoke-direct {v4, v5, v6, v6}, Lcom/lge/internal/telephony/LGPhoneConstants$EmcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/lge/internal/telephony/LGPhoneConstants$EmcFailCause;->NONE:Lcom/lge/internal/telephony/LGPhoneConstants$EmcFailCause;

    .line 114
    new-instance v4, Lcom/lge/internal/telephony/LGPhoneConstants$EmcFailCause;

    const-string v5, "PDN_FAILED"

    invoke-direct {v4, v5, v7, v7}, Lcom/lge/internal/telephony/LGPhoneConstants$EmcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/lge/internal/telephony/LGPhoneConstants$EmcFailCause;->PDN_FAILED:Lcom/lge/internal/telephony/LGPhoneConstants$EmcFailCause;

    .line 115
    new-instance v4, Lcom/lge/internal/telephony/LGPhoneConstants$EmcFailCause;

    const-string v5, "ATTACH_FAILED"

    invoke-direct {v4, v5, v8, v8}, Lcom/lge/internal/telephony/LGPhoneConstants$EmcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/lge/internal/telephony/LGPhoneConstants$EmcFailCause;->ATTACH_FAILED:Lcom/lge/internal/telephony/LGPhoneConstants$EmcFailCause;

    .line 116
    new-instance v4, Lcom/lge/internal/telephony/LGPhoneConstants$EmcFailCause;

    const-string v5, "BARRED"

    invoke-direct {v4, v5, v9, v9}, Lcom/lge/internal/telephony/LGPhoneConstants$EmcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/lge/internal/telephony/LGPhoneConstants$EmcFailCause;->BARRED:Lcom/lge/internal/telephony/LGPhoneConstants$EmcFailCause;

    .line 112
    const/4 v4, 0x4

    new-array v4, v4, [Lcom/lge/internal/telephony/LGPhoneConstants$EmcFailCause;

    sget-object v5, Lcom/lge/internal/telephony/LGPhoneConstants$EmcFailCause;->NONE:Lcom/lge/internal/telephony/LGPhoneConstants$EmcFailCause;

    aput-object v5, v4, v6

    sget-object v5, Lcom/lge/internal/telephony/LGPhoneConstants$EmcFailCause;->PDN_FAILED:Lcom/lge/internal/telephony/LGPhoneConstants$EmcFailCause;

    aput-object v5, v4, v7

    sget-object v5, Lcom/lge/internal/telephony/LGPhoneConstants$EmcFailCause;->ATTACH_FAILED:Lcom/lge/internal/telephony/LGPhoneConstants$EmcFailCause;

    aput-object v5, v4, v8

    sget-object v5, Lcom/lge/internal/telephony/LGPhoneConstants$EmcFailCause;->BARRED:Lcom/lge/internal/telephony/LGPhoneConstants$EmcFailCause;

    aput-object v5, v4, v9

    sput-object v4, Lcom/lge/internal/telephony/LGPhoneConstants$EmcFailCause;->$VALUES:[Lcom/lge/internal/telephony/LGPhoneConstants$EmcFailCause;

    .line 121
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Lcom/lge/internal/telephony/LGPhoneConstants$EmcFailCause;->EMC_FAILCAUSE_MAP:Ljava/util/HashMap;

    .line 122
    invoke-static {}, Lcom/lge/internal/telephony/LGPhoneConstants$EmcFailCause;->values()[Lcom/lge/internal/telephony/LGPhoneConstants$EmcFailCause;

    move-result-object v0

    .local v0, "arr$":[Lcom/lge/internal/telephony/LGPhoneConstants$EmcFailCause;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 123
    .local v1, "efc":Lcom/lge/internal/telephony/LGPhoneConstants$EmcFailCause;
    sget-object v4, Lcom/lge/internal/telephony/LGPhoneConstants$EmcFailCause;->EMC_FAILCAUSE_MAP:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/lge/internal/telephony/LGPhoneConstants$EmcFailCause;->getCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 125
    .end local v1    # "efc":Lcom/lge/internal/telephony/LGPhoneConstants$EmcFailCause;
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
    .line 127
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 128
    iput p3, p0, Lcom/lge/internal/telephony/LGPhoneConstants$EmcFailCause;->mCode:I

    .line 129
    return-void
.end method

.method public static fromInt(I)Lcom/lge/internal/telephony/LGPhoneConstants$EmcFailCause;
    .locals 3
    .param p0, "code"    # I

    .prologue
    .line 136
    sget-object v1, Lcom/lge/internal/telephony/LGPhoneConstants$EmcFailCause;->EMC_FAILCAUSE_MAP:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/internal/telephony/LGPhoneConstants$EmcFailCause;

    .line 137
    .local v0, "efc":Lcom/lge/internal/telephony/LGPhoneConstants$EmcFailCause;
    if-nez v0, :cond_0

    .line 138
    sget-object v0, Lcom/lge/internal/telephony/LGPhoneConstants$EmcFailCause;->NONE:Lcom/lge/internal/telephony/LGPhoneConstants$EmcFailCause;

    .line 140
    :cond_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lge/internal/telephony/LGPhoneConstants$EmcFailCause;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 112
    const-class v0, Lcom/lge/internal/telephony/LGPhoneConstants$EmcFailCause;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lge/internal/telephony/LGPhoneConstants$EmcFailCause;

    return-object v0
.end method

.method public static values()[Lcom/lge/internal/telephony/LGPhoneConstants$EmcFailCause;
    .locals 1

    .prologue
    .line 112
    sget-object v0, Lcom/lge/internal/telephony/LGPhoneConstants$EmcFailCause;->$VALUES:[Lcom/lge/internal/telephony/LGPhoneConstants$EmcFailCause;

    invoke-virtual {v0}, [Lcom/lge/internal/telephony/LGPhoneConstants$EmcFailCause;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lge/internal/telephony/LGPhoneConstants$EmcFailCause;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/lge/internal/telephony/LGPhoneConstants$EmcFailCause;->mCode:I

    return v0
.end method
