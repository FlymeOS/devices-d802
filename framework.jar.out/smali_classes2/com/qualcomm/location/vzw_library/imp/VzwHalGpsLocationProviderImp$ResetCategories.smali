.class final enum Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$ResetCategories;
.super Ljava/lang/Enum;
.source "VzwHalGpsLocationProviderImp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ResetCategories"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$ResetCategories;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$ResetCategories;

.field public static final enum Almanac:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$ResetCategories;

.field public static final enum Ephemeris:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$ResetCategories;

.field public static final enum Location:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$ResetCategories;

.field public static final enum Time:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$ResetCategories;


# instance fields
.field private final mMask:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 44
    new-instance v0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$ResetCategories;

    const-string v1, "Ephemeris"

    const/16 v2, 0x4001

    invoke-direct {v0, v1, v3, v2}, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$ResetCategories;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$ResetCategories;->Ephemeris:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$ResetCategories;

    new-instance v0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$ResetCategories;

    const-string v1, "Location"

    invoke-direct {v0, v1, v4, v7}, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$ResetCategories;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$ResetCategories;->Location:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$ResetCategories;

    new-instance v0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$ResetCategories;

    const-string v1, "Almanac"

    const v2, 0x8002

    invoke-direct {v0, v1, v5, v2}, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$ResetCategories;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$ResetCategories;->Almanac:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$ResetCategories;

    new-instance v0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$ResetCategories;

    const-string v1, "Time"

    const v2, 0x180008

    invoke-direct {v0, v1, v6, v2}, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$ResetCategories;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$ResetCategories;->Time:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$ResetCategories;

    .line 43
    new-array v0, v7, [Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$ResetCategories;

    sget-object v1, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$ResetCategories;->Ephemeris:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$ResetCategories;

    aput-object v1, v0, v3

    sget-object v1, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$ResetCategories;->Location:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$ResetCategories;

    aput-object v1, v0, v4

    sget-object v1, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$ResetCategories;->Almanac:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$ResetCategories;

    aput-object v1, v0, v5

    sget-object v1, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$ResetCategories;->Time:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$ResetCategories;

    aput-object v1, v0, v6

    sput-object v0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$ResetCategories;->$VALUES:[Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$ResetCategories;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "mask"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 47
    iput p3, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$ResetCategories;->mMask:I

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$ResetCategories;)I
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$ResetCategories;

    .prologue
    .line 43
    iget v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$ResetCategories;->mMask:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$ResetCategories;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 43
    const-class v0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$ResetCategories;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$ResetCategories;

    return-object v0
.end method

.method public static values()[Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$ResetCategories;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$ResetCategories;->$VALUES:[Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$ResetCategories;

    invoke-virtual {v0}, [Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$ResetCategories;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$ResetCategories;

    return-object v0
.end method
