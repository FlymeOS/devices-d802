.class public Lcom/lge/uicc/SimPhonebookBaseInfo;
.super Ljava/lang/Object;
.source "SimPhonebookBaseInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/uicc/SimPhonebookBaseInfo$SliceInfo;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lge/uicc/SimPhonebookBaseInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mAdnNameEncodingType:Ljava/lang/String;

.field public mAdnNameMaxbyteLength:I

.field public mAdnNumberMaxLength:I

.field public mAnrMaxLength:I

.field public mAssignableAnrCount:I

.field public mAssignableEmailount:I

.field public mAssignableGroupCount:I

.field public mEmailMaxByteLength:I

.field public mEmailencodingType:Ljava/lang/String;

.field public mExternalNumberMaxLength:I

.field public mFreeExternalNumberCount:I

.field public mGroupNameEncodingType:Ljava/lang/String;

.field public mGroupNameMaxByteLength:I

.field public mSliceCount:I

.field public mSlices:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/lge/uicc/SimPhonebookBaseInfo$SliceInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mSlotOrder:I

.field public mSneMaxByteLength:I

.field public mSneencodingType:Ljava/lang/String;

.field public mTotalAdncount:I

.field public mTotalAnrcount:I

.field public mTotalEmailCount:I

.field public mTotalGroupCount:I

.field public mTotalSneCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lcom/lge/uicc/SimPhonebookBaseInfo$1;

    invoke-direct {v0}, Lcom/lge/uicc/SimPhonebookBaseInfo$1;-><init>()V

    sput-object v0, Lcom/lge/uicc/SimPhonebookBaseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/uicc/SimPhonebookBaseInfo;->mAdnNameEncodingType:Ljava/lang/String;

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/uicc/SimPhonebookBaseInfo;->mEmailencodingType:Ljava/lang/String;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/uicc/SimPhonebookBaseInfo;->mSneencodingType:Ljava/lang/String;

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/uicc/SimPhonebookBaseInfo;->mGroupNameEncodingType:Ljava/lang/String;

    .line 70
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/uicc/SimPhonebookBaseInfo;->mAdnNameEncodingType:Ljava/lang/String;

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/uicc/SimPhonebookBaseInfo;->mEmailencodingType:Ljava/lang/String;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/uicc/SimPhonebookBaseInfo;->mSneencodingType:Ljava/lang/String;

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/uicc/SimPhonebookBaseInfo;->mGroupNameEncodingType:Ljava/lang/String;

    .line 73
    invoke-virtual {p0, p1}, Lcom/lge/uicc/SimPhonebookBaseInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 74
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/lge/uicc/SimPhonebookBaseInfo$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/lge/uicc/SimPhonebookBaseInfo$1;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/lge/uicc/SimPhonebookBaseInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Lcom/lge/uicc/SimPhonebookBaseInfo;->mSlotOrder:I

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Lcom/lge/uicc/SimPhonebookBaseInfo;->mTotalAdncount:I

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Lcom/lge/uicc/SimPhonebookBaseInfo;->mAssignableAnrCount:I

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Lcom/lge/uicc/SimPhonebookBaseInfo;->mAssignableEmailount:I

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Lcom/lge/uicc/SimPhonebookBaseInfo;->mAssignableGroupCount:I

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Lcom/lge/uicc/SimPhonebookBaseInfo;->mTotalAnrcount:I

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Lcom/lge/uicc/SimPhonebookBaseInfo;->mTotalEmailCount:I

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Lcom/lge/uicc/SimPhonebookBaseInfo;->mTotalSneCount:I

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Lcom/lge/uicc/SimPhonebookBaseInfo;->mTotalGroupCount:I

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Lcom/lge/uicc/SimPhonebookBaseInfo;->mFreeExternalNumberCount:I

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Lcom/lge/uicc/SimPhonebookBaseInfo;->mAdnNameMaxbyteLength:I

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Lcom/lge/uicc/SimPhonebookBaseInfo;->mAdnNumberMaxLength:I

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Lcom/lge/uicc/SimPhonebookBaseInfo;->mAnrMaxLength:I

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Lcom/lge/uicc/SimPhonebookBaseInfo;->mExternalNumberMaxLength:I

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Lcom/lge/uicc/SimPhonebookBaseInfo;->mEmailMaxByteLength:I

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Lcom/lge/uicc/SimPhonebookBaseInfo;->mSneMaxByteLength:I

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Lcom/lge/uicc/SimPhonebookBaseInfo;->mGroupNameMaxByteLength:I

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Lcom/lge/uicc/SimPhonebookBaseInfo;->mSliceCount:I

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/lge/uicc/SimPhonebookBaseInfo;->mAdnNameEncodingType:Ljava/lang/String;

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/lge/uicc/SimPhonebookBaseInfo;->mEmailencodingType:Ljava/lang/String;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/lge/uicc/SimPhonebookBaseInfo;->mSneencodingType:Ljava/lang/String;

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/lge/uicc/SimPhonebookBaseInfo;->mGroupNameEncodingType:Ljava/lang/String;

    .line 100
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    iput-object v4, p0, Lcom/lge/uicc/SimPhonebookBaseInfo;->mSlices:Landroid/util/SparseArray;

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 102
    .local v3, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 104
    .local v1, "key":I
    new-instance v2, Lcom/lge/uicc/SimPhonebookBaseInfo$SliceInfo;

    invoke-direct {v2}, Lcom/lge/uicc/SimPhonebookBaseInfo$SliceInfo;-><init>()V

    .line 105
    .local v2, "si":Lcom/lge/uicc/SimPhonebookBaseInfo$SliceInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v2, Lcom/lge/uicc/SimPhonebookBaseInfo$SliceInfo;->mAdnCount:I

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v2, Lcom/lge/uicc/SimPhonebookBaseInfo$SliceInfo;->mAnrType:I

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v2, Lcom/lge/uicc/SimPhonebookBaseInfo$SliceInfo;->mAnrCount:I

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v2, Lcom/lge/uicc/SimPhonebookBaseInfo$SliceInfo;->mEmailType:I

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v2, Lcom/lge/uicc/SimPhonebookBaseInfo$SliceInfo;->mEmailCount:I

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v2, Lcom/lge/uicc/SimPhonebookBaseInfo$SliceInfo;->mSneType:I

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v2, Lcom/lge/uicc/SimPhonebookBaseInfo$SliceInfo;->mSneCount:I

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v4

    iput-object v4, v2, Lcom/lge/uicc/SimPhonebookBaseInfo$SliceInfo;->mUsedAnrCount:[I

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v4

    iput-object v4, v2, Lcom/lge/uicc/SimPhonebookBaseInfo$SliceInfo;->mUsedEmailCount:[I

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v4

    iput-object v4, v2, Lcom/lge/uicc/SimPhonebookBaseInfo$SliceInfo;->mUsedSneCount:[I

    .line 115
    iget-object v4, p0, Lcom/lge/uicc/SimPhonebookBaseInfo;->mSlices:Landroid/util/SparseArray;

    invoke-virtual {v4, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 117
    .end local v1    # "key":I
    .end local v2    # "si":Lcom/lge/uicc/SimPhonebookBaseInfo$SliceInfo;
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSlotOrder:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lge/uicc/SimPhonebookBaseInfo;->mSlotOrder:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mTotalAdncount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lge/uicc/SimPhonebookBaseInfo;->mTotalAdncount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mAssignableAnrCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lge/uicc/SimPhonebookBaseInfo;->mAssignableAnrCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mAssignableEmailount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lge/uicc/SimPhonebookBaseInfo;->mAssignableEmailount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mAssignableGroupCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lge/uicc/SimPhonebookBaseInfo;->mAssignableGroupCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mTotalAnrcount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lge/uicc/SimPhonebookBaseInfo;->mTotalAnrcount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mTotalEmailCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lge/uicc/SimPhonebookBaseInfo;->mTotalEmailCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mTotalSneCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lge/uicc/SimPhonebookBaseInfo;->mTotalSneCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mTotalGroupCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lge/uicc/SimPhonebookBaseInfo;->mTotalGroupCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mFreeExternalNumberCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lge/uicc/SimPhonebookBaseInfo;->mFreeExternalNumberCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mAdnNameMaxbyteLength:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lge/uicc/SimPhonebookBaseInfo;->mAdnNameMaxbyteLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mAdnNumberMaxLength:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lge/uicc/SimPhonebookBaseInfo;->mAdnNumberMaxLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mAnrMaxLength;:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lge/uicc/SimPhonebookBaseInfo;->mAnrMaxLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mExternalNumberMaxLength:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lge/uicc/SimPhonebookBaseInfo;->mExternalNumberMaxLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mEmailMaxByteLength:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lge/uicc/SimPhonebookBaseInfo;->mEmailMaxByteLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSneMaxByteLength:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lge/uicc/SimPhonebookBaseInfo;->mSneMaxByteLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mGroupNameMaxByteLength:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lge/uicc/SimPhonebookBaseInfo;->mGroupNameMaxByteLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSliceCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lge/uicc/SimPhonebookBaseInfo;->mSliceCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mAdnNameEncodingType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/uicc/SimPhonebookBaseInfo;->mAdnNameEncodingType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mEmailencodingType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/uicc/SimPhonebookBaseInfo;->mEmailencodingType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSneencodingType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/uicc/SimPhonebookBaseInfo;->mSneencodingType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mGroupNameEncodingType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/uicc/SimPhonebookBaseInfo;->mGroupNameEncodingType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 120
    iget v3, p0, Lcom/lge/uicc/SimPhonebookBaseInfo;->mSlotOrder:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    iget v3, p0, Lcom/lge/uicc/SimPhonebookBaseInfo;->mTotalAdncount:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    iget v3, p0, Lcom/lge/uicc/SimPhonebookBaseInfo;->mAssignableAnrCount:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    iget v3, p0, Lcom/lge/uicc/SimPhonebookBaseInfo;->mAssignableEmailount:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    iget v3, p0, Lcom/lge/uicc/SimPhonebookBaseInfo;->mAssignableGroupCount:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    iget v3, p0, Lcom/lge/uicc/SimPhonebookBaseInfo;->mTotalAnrcount:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    iget v3, p0, Lcom/lge/uicc/SimPhonebookBaseInfo;->mTotalEmailCount:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    iget v3, p0, Lcom/lge/uicc/SimPhonebookBaseInfo;->mTotalSneCount:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    iget v3, p0, Lcom/lge/uicc/SimPhonebookBaseInfo;->mTotalGroupCount:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    iget v3, p0, Lcom/lge/uicc/SimPhonebookBaseInfo;->mFreeExternalNumberCount:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    iget v3, p0, Lcom/lge/uicc/SimPhonebookBaseInfo;->mAdnNameMaxbyteLength:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    iget v3, p0, Lcom/lge/uicc/SimPhonebookBaseInfo;->mAdnNumberMaxLength:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    iget v3, p0, Lcom/lge/uicc/SimPhonebookBaseInfo;->mAnrMaxLength:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    iget v3, p0, Lcom/lge/uicc/SimPhonebookBaseInfo;->mExternalNumberMaxLength:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    iget v3, p0, Lcom/lge/uicc/SimPhonebookBaseInfo;->mEmailMaxByteLength:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    iget v3, p0, Lcom/lge/uicc/SimPhonebookBaseInfo;->mSneMaxByteLength:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    iget v3, p0, Lcom/lge/uicc/SimPhonebookBaseInfo;->mGroupNameMaxByteLength:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    iget v3, p0, Lcom/lge/uicc/SimPhonebookBaseInfo;->mSliceCount:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    iget-object v3, p0, Lcom/lge/uicc/SimPhonebookBaseInfo;->mAdnNameEncodingType:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 139
    iget-object v3, p0, Lcom/lge/uicc/SimPhonebookBaseInfo;->mEmailencodingType:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 140
    iget-object v3, p0, Lcom/lge/uicc/SimPhonebookBaseInfo;->mSneencodingType:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 141
    iget-object v3, p0, Lcom/lge/uicc/SimPhonebookBaseInfo;->mGroupNameEncodingType:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    iget-object v3, p0, Lcom/lge/uicc/SimPhonebookBaseInfo;->mSlices:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 144
    .local v2, "size":I
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 146
    iget-object v3, p0, Lcom/lge/uicc/SimPhonebookBaseInfo;->mSlices:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    iget-object v3, p0, Lcom/lge/uicc/SimPhonebookBaseInfo;->mSlices:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/uicc/SimPhonebookBaseInfo$SliceInfo;

    .line 148
    .local v1, "si":Lcom/lge/uicc/SimPhonebookBaseInfo$SliceInfo;
    iget v3, v1, Lcom/lge/uicc/SimPhonebookBaseInfo$SliceInfo;->mAdnCount:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    iget v3, v1, Lcom/lge/uicc/SimPhonebookBaseInfo$SliceInfo;->mAnrType:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    iget v3, v1, Lcom/lge/uicc/SimPhonebookBaseInfo$SliceInfo;->mAnrCount:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    iget v3, v1, Lcom/lge/uicc/SimPhonebookBaseInfo$SliceInfo;->mEmailType:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    iget v3, v1, Lcom/lge/uicc/SimPhonebookBaseInfo$SliceInfo;->mEmailCount:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    iget v3, v1, Lcom/lge/uicc/SimPhonebookBaseInfo$SliceInfo;->mSneType:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    iget v3, v1, Lcom/lge/uicc/SimPhonebookBaseInfo$SliceInfo;->mSneCount:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    iget-object v3, v1, Lcom/lge/uicc/SimPhonebookBaseInfo$SliceInfo;->mUsedAnrCount:[I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 156
    iget-object v3, v1, Lcom/lge/uicc/SimPhonebookBaseInfo$SliceInfo;->mUsedEmailCount:[I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 157
    iget-object v3, v1, Lcom/lge/uicc/SimPhonebookBaseInfo$SliceInfo;->mUsedSneCount:[I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 145
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 159
    .end local v1    # "si":Lcom/lge/uicc/SimPhonebookBaseInfo$SliceInfo;
    :cond_0
    return-void
.end method
