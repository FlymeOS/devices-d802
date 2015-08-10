.class public Lcom/android/nfc/utils/LNfcPopupInformation;
.super Ljava/lang/Object;
.source "LNfcPopupInformation.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/utils/LNfcPopupInformation$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/nfc/utils/LNfcPopupInformation;",
            ">;"
        }
    .end annotation
.end field

.field private static NUM_BOOLEAN_ARRAY:I


# instance fields
.field private mCancelButtonIntent:Landroid/content/Intent;

.field private mCancelButtonIntentUser:Landroid/os/UserHandle;

.field private mIsCancelButtonIntentActivity:Z

.field private mIsNegativeButtonIntentActivity:Z

.field private mIsPositiveButtonIntentActivity:Z

.field private mIsSelectPopup:Z

.field private mIsTitleIcon:Z

.field private mMessage:Ljava/lang/String;

.field private mNegativeButtonIntent:Landroid/content/Intent;

.field private mNegativeButtonIntentUser:Landroid/os/UserHandle;

.field private mNegativeButtonToken:I

.field private mPositiveButtonIntent:Landroid/content/Intent;

.field private mPositiveButtonIntentUser:Landroid/os/UserHandle;

.field private mPositiveButtonToken:I

.field private mRequireDefalutCheckbox:Z

.field private mTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x3

    sput v0, Lcom/android/nfc/utils/LNfcPopupInformation;->NUM_BOOLEAN_ARRAY:I

    .line 169
    new-instance v0, Lcom/android/nfc/utils/LNfcPopupInformation$1;

    invoke-direct {v0}, Lcom/android/nfc/utils/LNfcPopupInformation$1;-><init>()V

    sput-object v0, Lcom/android/nfc/utils/LNfcPopupInformation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Lcom/android/nfc/utils/LNfcPopupInformation$Builder;)V
    .locals 3
    .param p1, "builder"    # Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mTitle:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mMessage:Ljava/lang/String;

    .line 19
    iput-object v2, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mPositiveButtonIntent:Landroid/content/Intent;

    .line 20
    iput-object v2, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mNegativeButtonIntent:Landroid/content/Intent;

    .line 21
    iput-object v2, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mCancelButtonIntent:Landroid/content/Intent;

    .line 22
    iput-boolean v1, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mIsPositiveButtonIntentActivity:Z

    .line 23
    iput-boolean v1, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mIsNegativeButtonIntentActivity:Z

    .line 24
    iput-boolean v1, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mIsCancelButtonIntentActivity:Z

    .line 25
    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    iput-object v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mPositiveButtonIntentUser:Landroid/os/UserHandle;

    .line 26
    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    iput-object v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mNegativeButtonIntentUser:Landroid/os/UserHandle;

    .line 27
    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    iput-object v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mCancelButtonIntentUser:Landroid/os/UserHandle;

    .line 28
    iput-boolean v1, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mIsSelectPopup:Z

    .line 29
    iput-boolean v1, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mRequireDefalutCheckbox:Z

    .line 32
    iput-boolean v1, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mIsTitleIcon:Z

    .line 37
    # getter for: Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mTitle:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->access$000(Lcom/android/nfc/utils/LNfcPopupInformation$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mTitle:Ljava/lang/String;

    .line 38
    # getter for: Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mMessage:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->access$100(Lcom/android/nfc/utils/LNfcPopupInformation$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mMessage:Ljava/lang/String;

    .line 39
    # getter for: Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mPositiveButtonIntent:Landroid/content/Intent;
    invoke-static {p1}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->access$200(Lcom/android/nfc/utils/LNfcPopupInformation$Builder;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mPositiveButtonIntent:Landroid/content/Intent;

    .line 40
    # getter for: Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mNegativeButtonIntent:Landroid/content/Intent;
    invoke-static {p1}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->access$300(Lcom/android/nfc/utils/LNfcPopupInformation$Builder;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mNegativeButtonIntent:Landroid/content/Intent;

    .line 41
    # getter for: Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mCancelButtonIntent:Landroid/content/Intent;
    invoke-static {p1}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->access$400(Lcom/android/nfc/utils/LNfcPopupInformation$Builder;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mCancelButtonIntent:Landroid/content/Intent;

    .line 42
    # getter for: Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mIsPositiveButtonIntentActivity:Z
    invoke-static {p1}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->access$500(Lcom/android/nfc/utils/LNfcPopupInformation$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mIsPositiveButtonIntentActivity:Z

    .line 43
    # getter for: Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mIsNegativeButtonIntentActivity:Z
    invoke-static {p1}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->access$600(Lcom/android/nfc/utils/LNfcPopupInformation$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mIsNegativeButtonIntentActivity:Z

    .line 44
    # getter for: Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mIsCancelButtonIntentActivity:Z
    invoke-static {p1}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->access$700(Lcom/android/nfc/utils/LNfcPopupInformation$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mIsCancelButtonIntentActivity:Z

    .line 45
    # getter for: Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mPositiveButtonIntentUser:Landroid/os/UserHandle;
    invoke-static {p1}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->access$800(Lcom/android/nfc/utils/LNfcPopupInformation$Builder;)Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mPositiveButtonIntentUser:Landroid/os/UserHandle;

    .line 46
    # getter for: Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mNegativeButtonIntentUser:Landroid/os/UserHandle;
    invoke-static {p1}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->access$900(Lcom/android/nfc/utils/LNfcPopupInformation$Builder;)Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mNegativeButtonIntentUser:Landroid/os/UserHandle;

    .line 47
    # getter for: Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mCancelButtonIntentUser:Landroid/os/UserHandle;
    invoke-static {p1}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->access$1000(Lcom/android/nfc/utils/LNfcPopupInformation$Builder;)Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mCancelButtonIntentUser:Landroid/os/UserHandle;

    .line 48
    # getter for: Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mIsSelectPopup:Z
    invoke-static {p1}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->access$1100(Lcom/android/nfc/utils/LNfcPopupInformation$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mIsSelectPopup:Z

    .line 49
    # getter for: Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mRequireDefalutCheckbox:Z
    invoke-static {p1}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->access$1200(Lcom/android/nfc/utils/LNfcPopupInformation$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mRequireDefalutCheckbox:Z

    .line 50
    # getter for: Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mPositiveButtonToken:I
    invoke-static {p1}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->access$1300(Lcom/android/nfc/utils/LNfcPopupInformation$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mPositiveButtonToken:I

    .line 51
    # getter for: Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mNegativeButtonToken:I
    invoke-static {p1}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->access$1400(Lcom/android/nfc/utils/LNfcPopupInformation$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mNegativeButtonToken:I

    .line 52
    # getter for: Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mIsTitleIcon:Z
    invoke-static {p1}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->access$1500(Lcom/android/nfc/utils/LNfcPopupInformation$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mIsTitleIcon:Z

    .line 53
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/nfc/utils/LNfcPopupInformation$Builder;Lcom/android/nfc/utils/LNfcPopupInformation$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/nfc/utils/LNfcPopupInformation$Builder;
    .param p2, "x1"    # Lcom/android/nfc/utils/LNfcPopupInformation$1;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/android/nfc/utils/LNfcPopupInformation;-><init>(Lcom/android/nfc/utils/LNfcPopupInformation$Builder;)V

    return-void
.end method

.method static synthetic access$1600()I
    .locals 1

    .prologue
    .line 16
    sget v0, Lcom/android/nfc/utils/LNfcPopupInformation;->NUM_BOOLEAN_ARRAY:I

    return v0
.end method


# virtual methods
.method public IsCancelButtonIntentActivity()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mIsCancelButtonIntentActivity:Z

    return v0
.end method

.method public IsNegativeButtonIntentActivity()Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mIsNegativeButtonIntentActivity:Z

    return v0
.end method

.method public IsPositiveButtonIntentActivity()Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mIsPositiveButtonIntentActivity:Z

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public getCancelButtonIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mCancelButtonIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getCancelButtonIntentUser()Landroid/os/UserHandle;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mCancelButtonIntentUser:Landroid/os/UserHandle;

    return-object v0
.end method

.method public getDefaultCheckbox()Z
    .locals 1

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mRequireDefalutCheckbox:Z

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getNegativeButtonIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mNegativeButtonIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getNegativeButtonIntentUser()Landroid/os/UserHandle;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mNegativeButtonIntentUser:Landroid/os/UserHandle;

    return-object v0
.end method

.method public getNegativeButtonToken()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mNegativeButtonToken:I

    return v0
.end method

.method public getPositiveButtonIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mPositiveButtonIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getPositiveButtonIntentUser()Landroid/os/UserHandle;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mPositiveButtonIntentUser:Landroid/os/UserHandle;

    return-object v0
.end method

.method public getPositiveButtonToken()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mPositiveButtonToken:I

    return v0
.end method

.method public getSelectPopup()Z
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mIsSelectPopup:Z

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public isTitleIconEnable()Z
    .locals 1

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mIsTitleIcon:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "toString : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", positive : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mPositiveButtonIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", negative : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mNegativeButtonIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 133
    iget-object v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mPositiveButtonIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    iget-object v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mPositiveButtonIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 139
    new-array v0, v3, [Z

    iget-boolean v1, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mIsPositiveButtonIntentActivity:Z

    aput-boolean v1, v0, v2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 140
    iget-object v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mPositiveButtonIntentUser:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 145
    :goto_0
    iget-object v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mNegativeButtonIntent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    .line 146
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    iget-object v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mNegativeButtonIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 148
    new-array v0, v3, [Z

    iget-boolean v1, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mIsNegativeButtonIntentActivity:Z

    aput-boolean v1, v0, v2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 149
    iget-object v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mNegativeButtonIntentUser:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 154
    :goto_1
    iget-object v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mCancelButtonIntent:Landroid/content/Intent;

    if-eqz v0, :cond_2

    .line 155
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    iget-object v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mCancelButtonIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 157
    new-array v0, v3, [Z

    iget-boolean v1, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mIsCancelButtonIntentActivity:Z

    aput-boolean v1, v0, v2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 158
    iget-object v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mCancelButtonIntentUser:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 163
    :goto_2
    sget v0, Lcom/android/nfc/utils/LNfcPopupInformation;->NUM_BOOLEAN_ARRAY:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    const/4 v0, 0x3

    new-array v0, v0, [Z

    iget-boolean v1, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mIsSelectPopup:Z

    aput-boolean v1, v0, v2

    iget-boolean v1, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mRequireDefalutCheckbox:Z

    aput-boolean v1, v0, v3

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mIsTitleIcon:Z

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 165
    iget v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mPositiveButtonToken:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    iget v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mNegativeButtonToken:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    return-void

    .line 142
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 151
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 160
    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2
.end method
