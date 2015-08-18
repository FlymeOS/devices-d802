.class public final enum Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;
.super Ljava/lang/Enum;
.source "LGDataPhoneConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/lgdata/LGDataPhoneConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EmcFailCause"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;

.field public static final enum ATTACH_FAILED:Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;

.field public static final enum BARRED:Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;

.field public static final enum NONE:Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;

.field public static final enum PDN_FAILED:Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;

.field private static final sEmcFailCauseMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;",
            ">;"
        }
    .end annotation
.end field


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

    .line 127
    new-instance v4, Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;

    const-string v5, "NONE"

    invoke-direct {v4, v5, v6, v6}, Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;->NONE:Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;

    .line 128
    new-instance v4, Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;

    const-string v5, "PDN_FAILED"

    invoke-direct {v4, v5, v7, v7}, Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;->PDN_FAILED:Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;

    .line 129
    new-instance v4, Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;

    const-string v5, "ATTACH_FAILED"

    invoke-direct {v4, v5, v8, v8}, Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;->ATTACH_FAILED:Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;

    .line 130
    new-instance v4, Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;

    const-string v5, "BARRED"

    invoke-direct {v4, v5, v9, v9}, Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;->BARRED:Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;

    .line 126
    const/4 v4, 0x4

    new-array v4, v4, [Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;

    sget-object v5, Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;->NONE:Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;

    aput-object v5, v4, v6

    sget-object v5, Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;->PDN_FAILED:Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;

    aput-object v5, v4, v7

    sget-object v5, Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;->ATTACH_FAILED:Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;

    aput-object v5, v4, v8

    sget-object v5, Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;->BARRED:Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;

    aput-object v5, v4, v9

    sput-object v4, Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;->$VALUES:[Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;

    .line 135
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;->sEmcFailCauseMap:Ljava/util/HashMap;

    .line 136
    invoke-static {}, Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;->values()[Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;

    move-result-object v0

    .local v0, "arr$":[Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 137
    .local v1, "efc":Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;
    sget-object v4, Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;->sEmcFailCauseMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;->getCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 139
    .end local v1    # "efc":Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;
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
    .line 141
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 142
    iput p3, p0, Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;->mCode:I

    .line 143
    return-void
.end method

.method public static fromInt(I)Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;
    .locals 3
    .param p0, "code"    # I

    .prologue
    .line 150
    sget-object v1, Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;->sEmcFailCauseMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;

    .line 151
    .local v0, "efc":Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;
    if-nez v0, :cond_0

    .line 152
    sget-object v0, Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;->NONE:Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;

    .line 154
    :cond_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 126
    const-class v0, Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;

    return-object v0
.end method

.method public static values()[Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;
    .locals 1

    .prologue
    .line 126
    sget-object v0, Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;->$VALUES:[Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;

    invoke-virtual {v0}, [Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;->mCode:I

    return v0
.end method
