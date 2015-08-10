.class final Lcom/android/nfc/utils/LNfcPopupInformation$1;
.super Ljava/lang/Object;
.source "LNfcPopupInformation.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/utils/LNfcPopupInformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/android/nfc/utils/LNfcPopupInformation;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/nfc/utils/LNfcPopupInformation;
    .locals 23
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 176
    const/4 v14, 0x0

    .line 177
    .local v14, "positiveButtonIntent":Landroid/content/Intent;
    const/4 v11, 0x0

    .line 178
    .local v11, "negativeButtonIntent":Landroid/content/Intent;
    const/4 v2, 0x0

    .line 179
    .local v2, "cancelButtonIntent":Landroid/content/Intent;
    const/4 v7, 0x0

    .line 180
    .local v7, "isPositiveButtonIntentActivity":Z
    const/4 v6, 0x0

    .line 181
    .local v6, "isNegativeButtonIntentActivity":Z
    const/4 v5, 0x0

    .line 182
    .local v5, "isCancelButtonIntentActivity":Z
    sget-object v15, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 183
    .local v15, "positiveButtonIntentUser":Landroid/os/UserHandle;
    sget-object v12, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 184
    .local v12, "negativeButtonIntentUser":Landroid/os/UserHandle;
    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 190
    .local v3, "cancelButtonIntentUser":Landroid/os/UserHandle;
    const/4 v9, 0x0

    .line 192
    .local v9, "isTitleIcon":Z
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 193
    .local v20, "title":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 195
    .local v10, "message":Ljava/lang/String;
    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Z

    move-object/from16 v19, v0

    .line 196
    .local v19, "tempBoolean1":[Z
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_3

    .line 197
    const/16 v21, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v14

    .end local v14    # "positiveButtonIntent":Landroid/content/Intent;
    check-cast v14, Landroid/content/Intent;

    .line 198
    .restart local v14    # "positiveButtonIntent":Landroid/content/Intent;
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 199
    if-eqz v19, :cond_0

    .line 200
    const/16 v21, 0x0

    aget-boolean v7, v19, v21

    .line 202
    :cond_0
    const/16 v21, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v15

    .end local v15    # "positiveButtonIntentUser":Landroid/os/UserHandle;
    check-cast v15, Landroid/os/UserHandle;

    .line 207
    .restart local v15    # "positiveButtonIntentUser":Landroid/os/UserHandle;
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_4

    .line 208
    const/16 v21, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v11

    .end local v11    # "negativeButtonIntent":Landroid/content/Intent;
    check-cast v11, Landroid/content/Intent;

    .line 209
    .restart local v11    # "negativeButtonIntent":Landroid/content/Intent;
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 210
    if-eqz v19, :cond_1

    .line 211
    const/16 v21, 0x0

    aget-boolean v6, v19, v21

    .line 213
    :cond_1
    const/16 v21, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v12

    .end local v12    # "negativeButtonIntentUser":Landroid/os/UserHandle;
    check-cast v12, Landroid/os/UserHandle;

    .line 218
    .restart local v12    # "negativeButtonIntentUser":Landroid/os/UserHandle;
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_5

    .line 219
    const/16 v21, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    .end local v2    # "cancelButtonIntent":Landroid/content/Intent;
    check-cast v2, Landroid/content/Intent;

    .line 220
    .restart local v2    # "cancelButtonIntent":Landroid/content/Intent;
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 221
    if-eqz v19, :cond_2

    .line 222
    const/16 v21, 0x0

    aget-boolean v5, v19, v21

    .line 224
    :cond_2
    const/16 v21, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    .end local v3    # "cancelButtonIntentUser":Landroid/os/UserHandle;
    check-cast v3, Landroid/os/UserHandle;

    .line 229
    .restart local v3    # "cancelButtonIntentUser":Landroid/os/UserHandle;
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v21

    move/from16 v0, v21

    new-array v0, v0, [Z

    move-object/from16 v18, v0

    .line 231
    .local v18, "tempBoolean":[Z
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v21, v0

    # getter for: Lcom/android/nfc/utils/LNfcPopupInformation;->NUM_BOOLEAN_ARRAY:I
    invoke-static {}, Lcom/android/nfc/utils/LNfcPopupInformation;->access$1600()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_6

    .line 232
    const/4 v4, 0x0

    .line 257
    :goto_3
    return-object v4

    .line 204
    .end local v18    # "tempBoolean":[Z
    :cond_3
    const/4 v14, 0x0

    goto :goto_0

    .line 215
    :cond_4
    const/4 v11, 0x0

    goto :goto_1

    .line 226
    :cond_5
    const/4 v2, 0x0

    goto :goto_2

    .line 235
    .restart local v18    # "tempBoolean":[Z
    :cond_6
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 237
    const/16 v21, 0x0

    aget-boolean v8, v18, v21

    .line 238
    .local v8, "isSelectPopup":Z
    const/16 v21, 0x1

    aget-boolean v17, v18, v21

    .line 239
    .local v17, "requireDefalutCheckbox":Z
    const/16 v21, 0x2

    aget-boolean v9, v18, v21

    .line 241
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 242
    .local v16, "positiveButtonToken":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 244
    .local v13, "negativeButtonToken":I
    new-instance v21, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    invoke-direct/range {v21 .. v21}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->title(Ljava/lang/String;)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->message(Ljava/lang/String;)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14, v7, v15}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->positiveButtonIntent(Landroid/content/Intent;ZLandroid/os/UserHandle;)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11, v6, v12}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->negativeButtonIntent(Landroid/content/Intent;ZLandroid/os/UserHandle;)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v5, v3}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->cancelButtonIntent(Landroid/content/Intent;ZLandroid/os/UserHandle;)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->selectPopup(Z)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->titleIcon(Z)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->defaultCheckbox(Z)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->positiveButtonToken(I)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->negativeButtonToken(I)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->build()Lcom/android/nfc/utils/LNfcPopupInformation;

    move-result-object v4

    .line 257
    .local v4, "infor":Lcom/android/nfc/utils/LNfcPopupInformation;
    goto :goto_3
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 169
    invoke-virtual {p0, p1}, Lcom/android/nfc/utils/LNfcPopupInformation$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/nfc/utils/LNfcPopupInformation;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/nfc/utils/LNfcPopupInformation;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 262
    new-array v0, p1, [Lcom/android/nfc/utils/LNfcPopupInformation;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 169
    invoke-virtual {p0, p1}, Lcom/android/nfc/utils/LNfcPopupInformation$1;->newArray(I)[Lcom/android/nfc/utils/LNfcPopupInformation;

    move-result-object v0

    return-object v0
.end method
