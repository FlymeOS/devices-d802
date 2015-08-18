.class public Lcom/lge/systemservice/core/LeccpInfo$Action$OpenAction;
.super Ljava/lang/Object;
.source "LeccpInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/systemservice/core/LeccpInfo$Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OpenAction"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lge/systemservice/core/LeccpInfo$Action$OpenAction;",
            ">;"
        }
    .end annotation
.end field

.field public static final OPEN_ACTION_TYPE_OPEN:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 932
    new-instance v0, Lcom/lge/systemservice/core/LeccpInfo$Action$OpenAction$1;

    invoke-direct {v0}, Lcom/lge/systemservice/core/LeccpInfo$Action$OpenAction$1;-><init>()V

    sput-object v0, Lcom/lge/systemservice/core/LeccpInfo$Action$OpenAction;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 899
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 901
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 903
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 904
    invoke-direct {p0, p1}, Lcom/lge/systemservice/core/LeccpInfo$Action$OpenAction;->readFromParcel(Landroid/os/Parcel;)V

    .line 905
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 926
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 909
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 923
    return-void
.end method
