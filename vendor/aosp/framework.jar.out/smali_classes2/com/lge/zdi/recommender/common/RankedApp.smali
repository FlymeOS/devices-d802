.class public Lcom/lge/zdi/recommender/common/RankedApp;
.super Ljava/lang/Object;
.source "RankedApp.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lge/zdi/recommender/common/RankedApp;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field packageName:Ljava/lang/String;

.field pairApp:Lcom/lge/zdi/recommender/common/RankedApp;

.field rInfo:Landroid/content/pm/ResolveInfo;

.field recScore:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/lge/zdi/recommender/common/RankedApp$1;

    invoke-direct {v0}, Lcom/lge/zdi/recommender/common/RankedApp$1;-><init>()V

    sput-object v0, Lcom/lge/zdi/recommender/common/RankedApp;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/zdi/recommender/common/RankedApp;->packageName:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/lge/zdi/recommender/common/RankedApp;->recScore:D

    .line 28
    sget-object v1, Landroid/content/pm/ResolveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iput-object v1, p0, Lcom/lge/zdi/recommender/common/RankedApp;->rInfo:Landroid/content/pm/ResolveInfo;

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 30
    .local v0, "pairAppExist":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 31
    sget-object v1, Lcom/lge/zdi/recommender/common/RankedApp;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/zdi/recommender/common/RankedApp;

    iput-object v1, p0, Lcom/lge/zdi/recommender/common/RankedApp;->pairApp:Lcom/lge/zdi/recommender/common/RankedApp;

    .line 33
    :cond_0
    return-void

    .line 29
    .end local v0    # "pairAppExist":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/lge/zdi/recommender/common/RankedApp$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/lge/zdi/recommender/common/RankedApp$1;

    .prologue
    .line 7
    invoke-direct {p0, p1}, Lcom/lge/zdi/recommender/common/RankedApp;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/lge/zdi/recommender/common/RankedApp;)V
    .locals 2
    .param p1, "other"    # Lcom/lge/zdi/recommender/common/RankedApp;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iget-object v0, p1, Lcom/lge/zdi/recommender/common/RankedApp;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/lge/zdi/recommender/common/RankedApp;->packageName:Ljava/lang/String;

    .line 37
    iget-wide v0, p1, Lcom/lge/zdi/recommender/common/RankedApp;->recScore:D

    iput-wide v0, p0, Lcom/lge/zdi/recommender/common/RankedApp;->recScore:D

    .line 38
    iget-object v0, p1, Lcom/lge/zdi/recommender/common/RankedApp;->rInfo:Landroid/content/pm/ResolveInfo;

    iput-object v0, p0, Lcom/lge/zdi/recommender/common/RankedApp;->rInfo:Landroid/content/pm/ResolveInfo;

    .line 39
    iget-object v0, p1, Lcom/lge/zdi/recommender/common/RankedApp;->pairApp:Lcom/lge/zdi/recommender/common/RankedApp;

    iput-object v0, p0, Lcom/lge/zdi/recommender/common/RankedApp;->pairApp:Lcom/lge/zdi/recommender/common/RankedApp;

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;DLandroid/content/pm/ResolveInfo;Lcom/lge/zdi/recommender/common/RankedApp;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "recScore"    # D
    .param p4, "resolInfo"    # Landroid/content/pm/ResolveInfo;
    .param p5, "pairApp"    # Lcom/lge/zdi/recommender/common/RankedApp;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/lge/zdi/recommender/common/RankedApp;->packageName:Ljava/lang/String;

    .line 44
    iput-wide p2, p0, Lcom/lge/zdi/recommender/common/RankedApp;->recScore:D

    .line 45
    iput-object p4, p0, Lcom/lge/zdi/recommender/common/RankedApp;->rInfo:Landroid/content/pm/ResolveInfo;

    .line 46
    iput-object p5, p0, Lcom/lge/zdi/recommender/common/RankedApp;->pairApp:Lcom/lge/zdi/recommender/common/RankedApp;

    .line 47
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lge/zdi/recommender/common/RankedApp;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPairApp()Lcom/lge/zdi/recommender/common/RankedApp;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/lge/zdi/recommender/common/RankedApp;->pairApp:Lcom/lge/zdi/recommender/common/RankedApp;

    return-object v0
.end method

.method public getRecScore()D
    .locals 2

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/lge/zdi/recommender/common/RankedApp;->recScore:D

    return-wide v0
.end method

.method public getResolveInfo()Landroid/content/pm/ResolveInfo;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/lge/zdi/recommender/common/RankedApp;->rInfo:Landroid/content/pm/ResolveInfo;

    return-object v0
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/lge/zdi/recommender/common/RankedApp;->packageName:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setPairApp(Lcom/lge/zdi/recommender/common/RankedApp;)V
    .locals 0
    .param p1, "pairApp"    # Lcom/lge/zdi/recommender/common/RankedApp;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/lge/zdi/recommender/common/RankedApp;->pairApp:Lcom/lge/zdi/recommender/common/RankedApp;

    .line 66
    return-void
.end method

.method public setRecScore(D)V
    .locals 1
    .param p1, "recScore"    # D

    .prologue
    .line 59
    iput-wide p1, p0, Lcom/lge/zdi/recommender/common/RankedApp;->recScore:D

    .line 60
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 78
    iget-object v0, p0, Lcom/lge/zdi/recommender/common/RankedApp;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    iget-wide v0, p0, Lcom/lge/zdi/recommender/common/RankedApp;->recScore:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 80
    iget-object v0, p0, Lcom/lge/zdi/recommender/common/RankedApp;->rInfo:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 82
    iget-object v0, p0, Lcom/lge/zdi/recommender/common/RankedApp;->pairApp:Lcom/lge/zdi/recommender/common/RankedApp;

    if-eqz v0, :cond_0

    .line 83
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    iget-object v0, p0, Lcom/lge/zdi/recommender/common/RankedApp;->pairApp:Lcom/lge/zdi/recommender/common/RankedApp;

    invoke-virtual {v0, p1, p2}, Lcom/lge/zdi/recommender/common/RankedApp;->writeToParcel(Landroid/os/Parcel;I)V

    .line 88
    :goto_0
    return-void

    .line 86
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method
