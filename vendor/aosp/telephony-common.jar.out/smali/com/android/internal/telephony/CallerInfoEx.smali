.class public Lcom/android/internal/telephony/CallerInfoEx;
.super Lcom/android/internal/telephony/CallerInfo;
.source "CallerInfoEx.java"


# static fields
.field static final CUSTOM_LED_TYPE:Ljava/lang/String; = "custom_led_type"

.field public static final EMPTY_NUMBER:Ljava/lang/String; = "-4"

.field private static final TAG:Ljava/lang/String; = "CallerInfoEx"

.field private static final VDBG:Z


# instance fields
.field public cdnipNumber:Ljava/lang/String;

.field private contactExistsCount:I

.field public contactNumber:Ljava/lang/String;

.field public custom_led_type:I

.field public displayNumber:Ljava/lang/String;

.field public distinctiveVib:I

.field public eventDate:Ljava/lang/String;

.field public lookupKey:Ljava/lang/String;

.field private mIsEmergency:Z

.field private mIsVoiceMail:Z

.field public mMapUserData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public originalNumber:Ljava/lang/String;

.field public phonetic_name:Ljava/lang/String;

.field public socialStatus:Ljava/lang/String;

.field public socialStatusIconRes:Landroid/graphics/drawable/Drawable;

.field public starred:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 54
    const-string v0, "CallerInfoEx"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/CallerInfoEx;->VDBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 176
    invoke-direct {p0}, Lcom/android/internal/telephony/CallerInfo;-><init>()V

    .line 84
    iput-object v0, p0, Lcom/android/internal/telephony/CallerInfoEx;->lookupKey:Ljava/lang/String;

    .line 99
    iput-object v0, p0, Lcom/android/internal/telephony/CallerInfoEx;->contactNumber:Ljava/lang/String;

    .line 105
    iput-object v0, p0, Lcom/android/internal/telephony/CallerInfoEx;->displayNumber:Ljava/lang/String;

    .line 177
    iput-boolean v1, p0, Lcom/android/internal/telephony/CallerInfoEx;->mIsEmergency:Z

    .line 178
    iput-boolean v1, p0, Lcom/android/internal/telephony/CallerInfoEx;->mIsVoiceMail:Z

    .line 179
    return-void
.end method

.method static doSecondaryLookupIfNecessary(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/CallerInfoEx;)Lcom/android/internal/telephony/CallerInfoEx;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "previousResult"    # Lcom/android/internal/telephony/CallerInfoEx;

    .prologue
    .line 632
    iget-boolean v1, p2, Lcom/android/internal/telephony/CallerInfoEx;->contactExists:Z

    if-nez v1, :cond_0

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 634
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->getUsernameFromUriNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 635
    .local v0, "username":Ljava/lang/String;
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 636
    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->ENTERPRISE_CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/CallerInfoEx;->getCallerInfo(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/internal/telephony/CallerInfoEx;

    move-result-object p2

    .line 641
    .end local v0    # "username":Ljava/lang/String;
    :cond_0
    return-object p2
.end method

.method public static getCallerInfo(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/internal/telephony/CallerInfoEx;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contactRef"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 523
    invoke-static {p0}, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;->getCurrentProfileContentResolver(Landroid/content/Context;)Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/CallerInfoEx;->getCallerInfo(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;)Lcom/android/internal/telephony/CallerInfoEx;

    move-result-object v0

    return-object v0
.end method

.method public static getCallerInfo(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;)Lcom/android/internal/telephony/CallerInfoEx;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contactRef"    # Landroid/net/Uri;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 191
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/telephony/CallerInfoEx;->getCallerInfo(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfoEx;

    move-result-object v0

    return-object v0
.end method

.method public static getCallerInfo(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfoEx;
    .locals 24
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contactRef"    # Landroid/net/Uri;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "inputNumber"    # Ljava/lang/String;

    .prologue
    .line 195
    new-instance v16, Lcom/android/internal/telephony/CallerInfoEx;

    invoke-direct/range {v16 .. v16}, Lcom/android/internal/telephony/CallerInfoEx;-><init>()V

    .line 196
    .local v16, "info":Lcom/android/internal/telephony/CallerInfoEx;
    const/4 v2, 0x0

    move-object/from16 v0, v16

    iput v2, v0, Lcom/android/internal/telephony/CallerInfoEx;->photoResource:I

    .line 197
    const/4 v2, 0x0

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/android/internal/telephony/CallerInfoEx;->phoneLabel:Ljava/lang/String;

    .line 198
    const/4 v2, 0x0

    move-object/from16 v0, v16

    iput v2, v0, Lcom/android/internal/telephony/CallerInfoEx;->numberType:I

    .line 199
    const/4 v2, 0x0

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/android/internal/telephony/CallerInfoEx;->numberLabel:Ljava/lang/String;

    .line 200
    const/4 v2, 0x0

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/android/internal/telephony/CallerInfoEx;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    .line 201
    const/4 v2, 0x0

    move-object/from16 v0, v16

    iput-boolean v2, v0, Lcom/android/internal/telephony/CallerInfoEx;->isCachedPhotoCurrent:Z

    .line 202
    const/4 v2, 0x0

    move-object/from16 v0, v16

    iput-boolean v2, v0, Lcom/android/internal/telephony/CallerInfoEx;->contactExists:Z

    .line 204
    const-string v2, ""

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/android/internal/telephony/CallerInfoEx;->socialStatus:Ljava/lang/String;

    .line 205
    const-string v2, ""

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/android/internal/telephony/CallerInfoEx;->eventDate:Ljava/lang/String;

    .line 206
    const/4 v2, 0x0

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/android/internal/telephony/CallerInfoEx;->socialStatusIconRes:Landroid/graphics/drawable/Drawable;

    .line 209
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/CallerInfoEx;->setContactExistsCount(I)V

    .line 212
    const/4 v2, 0x0

    move-object/from16 v0, v16

    iput v2, v0, Lcom/android/internal/telephony/CallerInfoEx;->distinctiveVib:I

    .line 215
    const/4 v2, 0x0

    move-object/from16 v0, v16

    iput v2, v0, Lcom/android/internal/telephony/CallerInfoEx;->starred:I

    .line 218
    new-instance v15, Lcom/android/internal/telephony/CallerInfoEx;

    invoke-direct {v15}, Lcom/android/internal/telephony/CallerInfoEx;-><init>()V

    .line 219
    .local v15, "firstCallerInfo":Lcom/android/internal/telephony/CallerInfoEx;
    const/4 v2, 0x0

    iput v2, v15, Lcom/android/internal/telephony/CallerInfoEx;->photoResource:I

    .line 220
    const/4 v2, 0x0

    iput-object v2, v15, Lcom/android/internal/telephony/CallerInfoEx;->phoneLabel:Ljava/lang/String;

    .line 221
    const/4 v2, 0x0

    iput v2, v15, Lcom/android/internal/telephony/CallerInfoEx;->numberType:I

    .line 222
    const/4 v2, 0x0

    iput-object v2, v15, Lcom/android/internal/telephony/CallerInfoEx;->numberLabel:Ljava/lang/String;

    .line 223
    const/4 v2, 0x0

    iput-object v2, v15, Lcom/android/internal/telephony/CallerInfoEx;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    .line 224
    const/4 v2, 0x0

    iput-boolean v2, v15, Lcom/android/internal/telephony/CallerInfoEx;->isCachedPhotoCurrent:Z

    .line 225
    const/4 v2, 0x0

    iput-boolean v2, v15, Lcom/android/internal/telephony/CallerInfoEx;->contactExists:Z

    .line 226
    const-string v2, ""

    iput-object v2, v15, Lcom/android/internal/telephony/CallerInfoEx;->socialStatus:Ljava/lang/String;

    .line 227
    const-string v2, ""

    iput-object v2, v15, Lcom/android/internal/telephony/CallerInfoEx;->eventDate:Ljava/lang/String;

    .line 228
    const/4 v2, 0x0

    iput-object v2, v15, Lcom/android/internal/telephony/CallerInfoEx;->socialStatusIconRes:Landroid/graphics/drawable/Drawable;

    .line 230
    const/4 v2, 0x0

    invoke-direct {v15, v2}, Lcom/android/internal/telephony/CallerInfoEx;->setContactExistsCount(I)V

    .line 233
    const/4 v2, 0x0

    iput v2, v15, Lcom/android/internal/telephony/CallerInfoEx;->distinctiveVib:I

    .line 236
    const/4 v2, 0x0

    iput v2, v15, Lcom/android/internal/telephony/CallerInfoEx;->starred:I

    .line 239
    const/16 v17, 0x0

    .line 240
    .local v17, "isExactlyMatch":Z
    const/4 v9, 0x0

    .line 242
    .local v9, "compareNumber":Ljava/lang/String;
    sget-boolean v2, Lcom/android/internal/telephony/CallerInfoEx;->VDBG:Z

    if-eqz v2, :cond_0

    const-string v2, "CallerInfoEx"

    const-string v3, "getCallerInfo() based on cursor..."

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_0
    if-eqz p2, :cond_3

    .line 246
    const/16 v18, 0x0

    .line 248
    .local v18, "isFirst":Z
    const-string v2, "true"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "emergency_lock"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 250
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 252
    const-string v2, "number"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 253
    .local v8, "columnIndex":I
    const/4 v2, -0x1

    if-eq v8, v2, :cond_1

    .line 254
    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/android/internal/telephony/CallerInfoEx;->phoneNumber:Ljava/lang/String;

    .line 258
    :cond_1
    const-string v2, "normalized_number"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 259
    const/4 v2, -0x1

    if-eq v8, v2, :cond_2

    .line 260
    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/android/internal/telephony/CallerInfoEx;->normalizedNumber:Ljava/lang/String;

    .line 492
    .end local v8    # "columnIndex":I
    :cond_2
    :goto_0
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/CallerInfoEx;->setContactExistsCount(I)V

    .line 493
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-direct {v15, v2}, Lcom/android/internal/telephony/CallerInfoEx;->setContactExistsCount(I)V

    .line 495
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->close()V

    .line 496
    const/16 p2, 0x0

    .line 498
    .end local v18    # "isFirst":Z
    :cond_3
    if-nez v17, :cond_23

    .line 499
    const/4 v2, 0x0

    iput-boolean v2, v15, Lcom/android/internal/telephony/CallerInfoEx;->needUpdate:Z

    .line 500
    iget-object v2, v15, Lcom/android/internal/telephony/CallerInfoEx;->name:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/telephony/CallerInfoEx;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v15, Lcom/android/internal/telephony/CallerInfoEx;->name:Ljava/lang/String;

    .line 501
    move-object/from16 v0, p1

    iput-object v0, v15, Lcom/android/internal/telephony/CallerInfoEx;->contactRefUri:Landroid/net/Uri;

    .line 509
    .end local v15    # "firstCallerInfo":Lcom/android/internal/telephony/CallerInfoEx;
    :goto_1
    return-object v15

    .line 265
    .restart local v15    # "firstCallerInfo":Lcom/android/internal/telephony/CallerInfoEx;
    .restart local v18    # "isFirst":Z
    :cond_4
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 270
    :cond_5
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->isFirst()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 271
    const/16 v18, 0x1

    .line 277
    :goto_2
    const-string v2, "display_name"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 278
    .restart local v8    # "columnIndex":I
    const/4 v2, -0x1

    if-eq v8, v2, :cond_6

    .line 279
    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/android/internal/telephony/CallerInfoEx;->name:Ljava/lang/String;

    .line 283
    :cond_6
    const-string v2, "number"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 284
    const/4 v2, -0x1

    if-eq v8, v2, :cond_7

    .line 285
    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/android/internal/telephony/CallerInfoEx;->phoneNumber:Ljava/lang/String;

    .line 289
    :cond_7
    const-string v2, "normalized_number"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 290
    const/4 v2, -0x1

    if-eq v8, v2, :cond_8

    .line 291
    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/android/internal/telephony/CallerInfoEx;->normalizedNumber:Ljava/lang/String;

    .line 295
    :cond_8
    const-string v2, "label"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 296
    const/4 v2, -0x1

    if-eq v8, v2, :cond_9

    .line 297
    const-string v2, "type"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 298
    .local v20, "typeColumnIndex":I
    const/4 v2, -0x1

    move/from16 v0, v20

    if-eq v0, v2, :cond_9

    .line 299
    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, v16

    iput v2, v0, Lcom/android/internal/telephony/CallerInfoEx;->numberType:I

    .line 300
    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/android/internal/telephony/CallerInfoEx;->numberLabel:Ljava/lang/String;

    .line 301
    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/internal/telephony/CallerInfoEx;->numberType:I

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/internal/telephony/CallerInfoEx;->numberLabel:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getDisplayLabel(Landroid/content/Context;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/android/internal/telephony/CallerInfoEx;->phoneLabel:Ljava/lang/String;

    .line 308
    .end local v20    # "typeColumnIndex":I
    :cond_9
    invoke-static/range {p1 .. p2}, Lcom/android/internal/telephony/CallerInfoEx;->getColumnIndexForPersonId(Landroid/net/Uri;Landroid/database/Cursor;)I

    move-result v8

    .line 309
    const/4 v2, -0x1

    if-eq v8, v2, :cond_15

    .line 310
    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 311
    .local v10, "contactId":J
    const-wide/16 v2, 0x0

    cmp-long v2, v10, v2

    if-eqz v2, :cond_a

    invoke-static {v10, v11}, Landroid/provider/ContactsContract$Contacts;->isEnterpriseContactId(J)Z

    move-result v2

    if-nez v2, :cond_a

    .line 312
    move-object/from16 v0, v16

    iput-wide v10, v0, Lcom/android/internal/telephony/CallerInfoEx;->contactIdOrZero:J

    .line 313
    sget-boolean v2, Lcom/android/internal/telephony/CallerInfoEx;->VDBG:Z

    if-eqz v2, :cond_a

    .line 314
    const-string v2, "CallerInfoEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "==> got info.contactIdOrZero: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/internal/telephony/CallerInfoEx;->contactIdOrZero:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    .end local v10    # "contactId":J
    :cond_a
    :goto_3
    const-string v2, "photo_uri"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 327
    const/4 v2, -0x1

    if-eq v8, v2, :cond_16

    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 328
    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/android/internal/telephony/CallerInfoEx;->contactDisplayPhotoUri:Landroid/net/Uri;

    .line 335
    :goto_4
    const-string v2, "custom_ringtone"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 336
    const/4 v2, -0x1

    if-eq v8, v2, :cond_b

    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 337
    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/android/internal/telephony/CallerInfoEx;->contactRingtoneUri:Landroid/net/Uri;

    .line 342
    :cond_b
    const/16 v19, 0x0

    .line 343
    .local v19, "path":Ljava/lang/String;
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/internal/telephony/CallerInfoEx;->contactRingtoneUri:Landroid/net/Uri;

    if-eqz v2, :cond_c

    .line 344
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/internal/telephony/CallerInfoEx;->contactRingtoneUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/CallerInfoEx;->getFilepathFromContentUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v19

    .line 347
    :cond_c
    sget-boolean v2, Lcom/android/internal/telephony/CallerInfoEx;->VDBG:Z

    if-eqz v2, :cond_d

    const-string v2, "CallerInfoEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "1st RingTone :: contactRingtoneUri="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/android/internal/telephony/CallerInfoEx;->contactRingtoneUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", path="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :cond_d
    if-nez v19, :cond_e

    .line 357
    const-string v2, "group_custom_ringtone"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 358
    const/4 v2, -0x1

    if-eq v8, v2, :cond_17

    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_17

    .line 359
    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/android/internal/telephony/CallerInfoEx;->contactRingtoneUri:Landroid/net/Uri;

    .line 360
    const-string v2, "CallerInfoEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "group_custom_ringtone = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/android/internal/telephony/CallerInfoEx;->contactRingtoneUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :cond_e
    :goto_5
    const-string v2, "custom_vibration_type"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 372
    const/4 v2, -0x1

    if-eq v8, v2, :cond_18

    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_18

    .line 373
    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, v16

    iput v2, v0, Lcom/android/internal/telephony/CallerInfoEx;->distinctiveVib:I

    .line 374
    const-string v2, "CallerInfoEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "==> got info.distinctiveVib: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    iget v4, v0, Lcom/android/internal/telephony/CallerInfoEx;->distinctiveVib:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :goto_6
    const-string v2, "custom_led_type"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 390
    const-string v2, "CallerInfoEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "==> Indicate CUSTOM_LED_TYPE columnIndex: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    const/4 v2, -0x1

    if-eq v8, v2, :cond_f

    .line 392
    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, v16

    iput v2, v0, Lcom/android/internal/telephony/CallerInfoEx;->custom_led_type:I

    .line 393
    const-string v2, "CallerInfoEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "==> Indicate CUSTOM_LED_TYPE : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    iget v4, v0, Lcom/android/internal/telephony/CallerInfoEx;->custom_led_type:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    :cond_f
    const-string v2, "starred"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 397
    const-string v2, "CallerInfoEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "==> Indicate STARRED columnIndex: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    const/4 v2, -0x1

    if-eq v8, v2, :cond_10

    .line 399
    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, v16

    iput v2, v0, Lcom/android/internal/telephony/CallerInfoEx;->starred:I

    .line 400
    const-string v2, "CallerInfoEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "==> Indicate STARRED : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    iget v4, v0, Lcom/android/internal/telephony/CallerInfoEx;->starred:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    :cond_10
    const-string v2, "send_to_voicemail"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 407
    const/4 v2, -0x1

    if-eq v8, v2, :cond_1a

    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1a

    const/4 v2, 0x1

    :goto_7
    move-object/from16 v0, v16

    iput-boolean v2, v0, Lcom/android/internal/telephony/CallerInfoEx;->shouldSendToVoicemail:Z

    .line 409
    const/4 v2, 0x1

    move-object/from16 v0, v16

    iput-boolean v2, v0, Lcom/android/internal/telephony/CallerInfoEx;->contactExists:Z

    .line 411
    const-string v2, "lookup"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 412
    const/4 v2, -0x1

    if-eq v8, v2, :cond_11

    .line 413
    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/android/internal/telephony/CallerInfoEx;->lookupKey:Ljava/lang/String;

    .line 417
    :cond_11
    const-string v2, "KDDI"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_12

    const-string v2, "SBM"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 418
    :cond_12
    invoke-static/range {p1 .. p2}, Lcom/android/internal/telephony/CallerInfoEx;->getColumnIndexForPersonId(Landroid/net/Uri;Landroid/database/Cursor;)I

    move-result v8

    .line 419
    const/4 v2, -0x1

    if-eq v8, v2, :cond_1c

    .line 420
    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 421
    .local v12, "contact_id":J
    const-string v2, "CallerInfoEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "==> contact_id !!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "contact_id=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mimetype"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = ?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 423
    .local v5, "whereName":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "vnd.android.cursor.item/name"

    aput-object v3, v6, v2

    .line 424
    .local v6, "whereNameParams":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 425
    .local v14, "cr":Landroid/database/Cursor;
    if-eqz v14, :cond_1c

    .line 426
    :cond_13
    :goto_8
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 427
    const-string v2, "phonetic_name"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 428
    const-string v2, "CallerInfoEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "==> columnIndex !!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    const/4 v2, -0x1

    if-eq v8, v2, :cond_13

    .line 430
    invoke-interface {v14, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/android/internal/telephony/CallerInfoEx;->phonetic_name:Ljava/lang/String;

    goto :goto_8

    .line 273
    .end local v5    # "whereName":Ljava/lang/String;
    .end local v6    # "whereNameParams":[Ljava/lang/String;
    .end local v8    # "columnIndex":I
    .end local v12    # "contact_id":J
    .end local v14    # "cr":Landroid/database/Cursor;
    .end local v19    # "path":Ljava/lang/String;
    :cond_14
    const/16 v18, 0x0

    goto/16 :goto_2

    .line 319
    .restart local v8    # "columnIndex":I
    :cond_15
    const-string v2, "CallerInfoEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t find contact_id column for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 330
    :cond_16
    const/4 v2, 0x0

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/android/internal/telephony/CallerInfoEx;->contactDisplayPhotoUri:Landroid/net/Uri;

    goto/16 :goto_4

    .line 362
    .restart local v19    # "path":Ljava/lang/String;
    :cond_17
    const/4 v2, 0x0

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/android/internal/telephony/CallerInfoEx;->contactRingtoneUri:Landroid/net/Uri;

    goto/16 :goto_5

    .line 376
    :cond_18
    const-string v2, "group_custom_vibrator"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 377
    const/4 v2, -0x1

    if-eq v8, v2, :cond_19

    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_19

    .line 378
    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, v16

    iput v2, v0, Lcom/android/internal/telephony/CallerInfoEx;->distinctiveVib:I

    .line 379
    const-string v2, "CallerInfoEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "==> (group : got info.distinctiveVib: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    iget v4, v0, Lcom/android/internal/telephony/CallerInfoEx;->distinctiveVib:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 381
    :cond_19
    const/4 v2, 0x0

    move-object/from16 v0, v16

    iput v2, v0, Lcom/android/internal/telephony/CallerInfoEx;->distinctiveVib:I

    .line 382
    const-string v2, "CallerInfoEx"

    const-string v3, "==> (info.distinctiveVib : default value 0"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 407
    :cond_1a
    const/4 v2, 0x0

    goto/16 :goto_7

    .line 433
    .restart local v5    # "whereName":Ljava/lang/String;
    .restart local v6    # "whereNameParams":[Ljava/lang/String;
    .restart local v12    # "contact_id":J
    .restart local v14    # "cr":Landroid/database/Cursor;
    :cond_1b
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 436
    .end local v5    # "whereName":Ljava/lang/String;
    .end local v6    # "whereNameParams":[Ljava/lang/String;
    .end local v12    # "contact_id":J
    .end local v14    # "cr":Landroid/database/Cursor;
    :cond_1c
    const-string v2, "CallerInfoEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "==> !! Indicate PHONETIC_NAME : !!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/android/internal/telephony/CallerInfoEx;->phonetic_name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    :cond_1d
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/internal/telephony/CallerInfoEx;->phoneNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 440
    const/16 v2, 0x10

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isLogBlocked(I)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 441
    const-string v2, "CallerInfoEx"

    const-string v3, "getCallerInfo() LGE phone number query - compareNumber (remove hyphen) : "

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    :goto_9
    if-eqz p3, :cond_1e

    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 446
    :cond_1e
    const/16 v17, 0x1

    .line 447
    goto/16 :goto_0

    .line 443
    :cond_1f
    const-string v2, "CallerInfoEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCallerInfo() LGE phone number query - compareNumber (remove hyphen) : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 449
    :cond_20
    const/16 v17, 0x0

    .line 450
    const/16 v2, 0x10

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isLogBlocked(I)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 451
    const-string v2, "CallerInfoEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCallerInfo()LGE phone number query - don\'t exactly mateched, isExactlyMatch : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    :goto_a
    if-eqz v18, :cond_21

    .line 457
    const-string v2, "CallerInfoEx"

    const-string v3, "getCallerInfo() LGE phone number query - save first CallserInfo"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/internal/telephony/CallerInfoEx;->name:Ljava/lang/String;

    iput-object v2, v15, Lcom/android/internal/telephony/CallerInfoEx;->name:Ljava/lang/String;

    .line 459
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/internal/telephony/CallerInfoEx;->phoneNumber:Ljava/lang/String;

    iput-object v2, v15, Lcom/android/internal/telephony/CallerInfoEx;->phoneNumber:Ljava/lang/String;

    .line 460
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/internal/telephony/CallerInfoEx;->normalizedNumber:Ljava/lang/String;

    iput-object v2, v15, Lcom/android/internal/telephony/CallerInfoEx;->normalizedNumber:Ljava/lang/String;

    .line 461
    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/internal/telephony/CallerInfoEx;->numberType:I

    iput v2, v15, Lcom/android/internal/telephony/CallerInfoEx;->numberType:I

    .line 462
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/internal/telephony/CallerInfoEx;->numberLabel:Ljava/lang/String;

    iput-object v2, v15, Lcom/android/internal/telephony/CallerInfoEx;->numberLabel:Ljava/lang/String;

    .line 463
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/internal/telephony/CallerInfoEx;->phoneLabel:Ljava/lang/String;

    iput-object v2, v15, Lcom/android/internal/telephony/CallerInfoEx;->phoneLabel:Ljava/lang/String;

    .line 464
    move-object/from16 v0, v16

    iget-wide v2, v0, Lcom/android/internal/telephony/CallerInfoEx;->contactIdOrZero:J

    iput-wide v2, v15, Lcom/android/internal/telephony/CallerInfoEx;->contactIdOrZero:J

    .line 465
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/internal/telephony/CallerInfoEx;->contactRingtoneUri:Landroid/net/Uri;

    iput-object v2, v15, Lcom/android/internal/telephony/CallerInfoEx;->contactRingtoneUri:Landroid/net/Uri;

    .line 467
    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/internal/telephony/CallerInfoEx;->distinctiveVib:I

    iput v2, v15, Lcom/android/internal/telephony/CallerInfoEx;->distinctiveVib:I

    .line 471
    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/internal/telephony/CallerInfoEx;->custom_led_type:I

    iput v2, v15, Lcom/android/internal/telephony/CallerInfoEx;->custom_led_type:I

    .line 472
    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/internal/telephony/CallerInfoEx;->starred:I

    iput v2, v15, Lcom/android/internal/telephony/CallerInfoEx;->starred:I

    .line 474
    move-object/from16 v0, v16

    iget-boolean v2, v0, Lcom/android/internal/telephony/CallerInfoEx;->shouldSendToVoicemail:Z

    iput-boolean v2, v15, Lcom/android/internal/telephony/CallerInfoEx;->shouldSendToVoicemail:Z

    .line 475
    move-object/from16 v0, v16

    iget-boolean v2, v0, Lcom/android/internal/telephony/CallerInfoEx;->contactExists:Z

    iput-boolean v2, v15, Lcom/android/internal/telephony/CallerInfoEx;->contactExists:Z

    .line 477
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/internal/telephony/CallerInfoEx;->socialStatus:Ljava/lang/String;

    iput-object v2, v15, Lcom/android/internal/telephony/CallerInfoEx;->socialStatus:Ljava/lang/String;

    .line 478
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/internal/telephony/CallerInfoEx;->eventDate:Ljava/lang/String;

    iput-object v2, v15, Lcom/android/internal/telephony/CallerInfoEx;->eventDate:Ljava/lang/String;

    .line 479
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/internal/telephony/CallerInfoEx;->socialStatusIconRes:Landroid/graphics/drawable/Drawable;

    iput-object v2, v15, Lcom/android/internal/telephony/CallerInfoEx;->socialStatusIconRes:Landroid/graphics/drawable/Drawable;

    .line 480
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/internal/telephony/CallerInfoEx;->lookupKey:Ljava/lang/String;

    iput-object v2, v15, Lcom/android/internal/telephony/CallerInfoEx;->lookupKey:Ljava/lang/String;

    .line 484
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/internal/telephony/CallerInfoEx;->phonetic_name:Ljava/lang/String;

    iput-object v2, v15, Lcom/android/internal/telephony/CallerInfoEx;->phonetic_name:Ljava/lang/String;

    .line 489
    :cond_21
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_5

    goto/16 :goto_0

    .line 453
    :cond_22
    const-string v2, "CallerInfoEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCallerInfo()LGE phone number query - don\'t exactly mateched, inputNumber : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", info.phoneNumber : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/android/internal/telephony/CallerInfoEx;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isExactlyMatch : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 505
    .end local v8    # "columnIndex":I
    .end local v18    # "isFirst":Z
    .end local v19    # "path":Ljava/lang/String;
    :cond_23
    const/4 v2, 0x0

    move-object/from16 v0, v16

    iput-boolean v2, v0, Lcom/android/internal/telephony/CallerInfoEx;->needUpdate:Z

    .line 506
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/internal/telephony/CallerInfoEx;->name:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/telephony/CallerInfoEx;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/android/internal/telephony/CallerInfoEx;->name:Ljava/lang/String;

    .line 507
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/internal/telephony/CallerInfoEx;->contactRefUri:Landroid/net/Uri;

    move-object/from16 v15, v16

    .line 509
    goto/16 :goto_1
.end method

.method public static getCallerInfo(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfoEx;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contactRef"    # Landroid/net/Uri;
    .param p2, "inputNumber"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 541
    invoke-static {p0}, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;->getCurrentProfileContentResolver(Landroid/content/Context;)Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-static {p0, p1, v0, p2}, Lcom/android/internal/telephony/CallerInfoEx;->getCallerInfo(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfoEx;

    move-result-object v0

    return-object v0
.end method

.method public static getCallerInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfoEx;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 559
    sget-boolean v2, Lcom/android/internal/telephony/CallerInfoEx;->VDBG:Z

    if-eqz v2, :cond_0

    const-string v2, "CallerInfoEx"

    const-string v3, "getCallerInfo() based on number..."

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    :cond_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()J

    move-result-wide v0

    .line 562
    .local v0, "subId":J
    invoke-static {p0, p1, v0, v1}, Lcom/android/internal/telephony/CallerInfoEx;->getCallerInfo(Landroid/content/Context;Ljava/lang/String;J)Lcom/android/internal/telephony/CallerInfoEx;

    move-result-object v2

    return-object v2
.end method

.method public static getCallerInfo(Landroid/content/Context;Ljava/lang/String;J)Lcom/android/internal/telephony/CallerInfoEx;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "subId"    # J

    .prologue
    .line 578
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 579
    const/4 v1, 0x0

    .line 617
    :cond_0
    :goto_0
    return-object v1

    .line 585
    :cond_1
    invoke-static {p0, p1}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 587
    const-string v2, "CTC"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 588
    new-instance v2, Lcom/android/internal/telephony/CallerInfoEx;

    invoke-direct {v2}, Lcom/android/internal/telephony/CallerInfoEx;-><init>()V

    invoke-virtual {v2, p0, p1}, Lcom/android/internal/telephony/CallerInfoEx;->markAsEmergency(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfoEx;

    move-result-object v1

    goto :goto_0

    .line 591
    :cond_2
    new-instance v2, Lcom/android/internal/telephony/CallerInfoEx;

    invoke-direct {v2}, Lcom/android/internal/telephony/CallerInfoEx;-><init>()V

    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/CallerInfoEx;->markAsEmergency(Landroid/content/Context;)Lcom/android/internal/telephony/CallerInfoEx;

    move-result-object v1

    goto :goto_0

    .line 592
    :cond_3
    invoke-static {p2, p3, p1}, Landroid/telephony/PhoneNumberUtils;->isVoiceMailNumber(JLjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 593
    new-instance v2, Lcom/android/internal/telephony/CallerInfoEx;

    invoke-direct {v2}, Lcom/android/internal/telephony/CallerInfoEx;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallerInfoEx;->markAsVoiceMail()Lcom/android/internal/telephony/CallerInfoEx;

    move-result-object v1

    goto :goto_0

    .line 597
    :cond_4
    const-string v2, "support_sprint_n11"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 598
    invoke-static {p1}, Lcom/lge/telephony/LGSpecialNumberUtils;->isN11orSpecialNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 599
    const-string v2, "CallerInfoEx"

    const-string v3, "[SPRINT-Telephony] ADC - N11 !"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    new-instance v2, Lcom/android/internal/telephony/CallerInfoEx;

    invoke-direct {v2}, Lcom/android/internal/telephony/CallerInfoEx;-><init>()V

    invoke-virtual {v2, p0, p1}, Lcom/android/internal/telephony/CallerInfoEx;->markAsN11OrSpecial(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfoEx;

    move-result-object v1

    goto :goto_0

    .line 605
    :cond_5
    sget-object v2, Landroid/provider/ContactsContract$PhoneLookup;->ENTERPRISE_CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 608
    .local v0, "contactUri":Landroid/net/Uri;
    invoke-static {p0, v0}, Lcom/android/internal/telephony/CallerInfoEx;->getCallerInfo(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/internal/telephony/CallerInfoEx;

    move-result-object v1

    .line 609
    .local v1, "info":Lcom/android/internal/telephony/CallerInfoEx;
    invoke-static {p0, p1, v1}, Lcom/android/internal/telephony/CallerInfoEx;->doSecondaryLookupIfNecessary(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/CallerInfoEx;)Lcom/android/internal/telephony/CallerInfoEx;

    move-result-object v1

    .line 613
    iget-object v2, v1, Lcom/android/internal/telephony/CallerInfoEx;->phoneNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 614
    iput-object p1, v1, Lcom/android/internal/telephony/CallerInfoEx;->phoneNumber:Ljava/lang/String;

    goto :goto_0
.end method

.method private static getColumnIndexForPersonId(Landroid/net/Uri;Landroid/database/Cursor;)I
    .locals 6
    .param p0, "contactRef"    # Landroid/net/Uri;
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 778
    sget-boolean v3, Lcom/android/internal/telephony/CallerInfoEx;->VDBG:Z

    if-eqz v3, :cond_0

    const-string v3, "CallerInfoEx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "- getColumnIndexForPersonId: contactRef URI = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 785
    .local v2, "url":Ljava/lang/String;
    const/4 v1, 0x0

    .line 786
    .local v1, "columnName":Ljava/lang/String;
    const-string v3, "content://com.android.contacts/data/phones"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 789
    sget-boolean v3, Lcom/android/internal/telephony/CallerInfoEx;->VDBG:Z

    if-eqz v3, :cond_1

    const-string v3, "CallerInfoEx"

    const-string v4, "\'data/phones\' URI; using RawContacts.CONTACT_ID"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    :cond_1
    const-string v1, "contact_id"

    .line 806
    :goto_0
    if-eqz v1, :cond_8

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 807
    .local v0, "columnIndex":I
    :goto_1
    sget-boolean v3, Lcom/android/internal/telephony/CallerInfoEx;->VDBG:Z

    if-eqz v3, :cond_2

    const-string v3, "CallerInfoEx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "==> Using column \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' (columnIndex = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") for person_id lookup..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    :cond_2
    return v0

    .line 791
    .end local v0    # "columnIndex":I
    :cond_3
    const-string v3, "content://com.android.contacts/data"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 794
    sget-boolean v3, Lcom/android/internal/telephony/CallerInfoEx;->VDBG:Z

    if-eqz v3, :cond_4

    const-string v3, "CallerInfoEx"

    const-string v4, "\'data\' URI; using Data.CONTACT_ID"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    :cond_4
    const-string v1, "contact_id"

    goto :goto_0

    .line 797
    :cond_5
    const-string v3, "content://com.android.contacts/phone_lookup"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 801
    sget-boolean v3, Lcom/android/internal/telephony/CallerInfoEx;->VDBG:Z

    if-eqz v3, :cond_6

    const-string v3, "CallerInfoEx"

    const-string v4, "\'phone_lookup\' URI; using PhoneLookup._ID"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    :cond_6
    const-string v1, "_id"

    goto :goto_0

    .line 804
    :cond_7
    const-string v3, "CallerInfoEx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected prefix for contactRef \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 806
    :cond_8
    const/4 v0, -0x1

    goto :goto_1
.end method

.method protected static getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 957
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/CallerInfoEx;->getCurrentCountryIso(Landroid/content/Context;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getCurrentCountryIso(Landroid/content/Context;Ljava/util/Locale;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 937
    const/4 v1, 0x0

    .line 938
    .local v1, "countryIso":Ljava/lang/String;
    const-string v3, "country_detector"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/CountryDetector;

    .line 940
    .local v2, "detector":Landroid/location/CountryDetector;
    if-eqz v2, :cond_0

    .line 941
    invoke-virtual {v2}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v0

    .line 942
    .local v0, "country":Landroid/location/Country;
    if-eqz v0, :cond_2

    .line 943
    invoke-virtual {v0}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v1

    .line 948
    .end local v0    # "country":Landroid/location/Country;
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 949
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 950
    const-string v3, "CallerInfoEx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No CountryDetector; falling back to countryIso based on locale: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    :cond_1
    return-object v1

    .line 945
    .restart local v0    # "country":Landroid/location/Country;
    :cond_2
    const-string v3, "CallerInfoEx"

    const-string v4, "CountryDetector.detectCountry() returned null."

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static getFilepathFromContentUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 13
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 830
    const/4 v11, 0x0

    .line 831
    .local v11, "filepath":Ljava/lang/String;
    const/4 v8, 0x0

    .line 832
    .local v8, "c":Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 833
    .local v0, "testProvider":Landroid/content/IContentProvider;
    const/4 v1, 0x0

    .line 836
    .local v1, "mPackageName":Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;->getCurrentProfileContentResolver(Landroid/content/Context;)Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v0

    .line 837
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 838
    if-eqz v0, :cond_0

    .line 839
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "_data"

    aput-object v4, v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    invoke-interface/range {v0 .. v7}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 846
    :cond_0
    if-eqz v0, :cond_1

    .line 847
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 851
    :cond_1
    :goto_0
    if-eqz v8, :cond_3

    .line 852
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_2

    .line 853
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 854
    const-string v2, "_data"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 855
    .local v12, "i":I
    if-ltz v12, :cond_2

    .line 856
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 859
    .end local v12    # "i":I
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 862
    :cond_3
    return-object v11

    .line 841
    :catch_0
    move-exception v9

    .line 842
    .local v9, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "CallerInfoEx"

    const-string v3, "getFilepathFromContentUri... error!! "

    invoke-static {v2, v3, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 846
    if-eqz v0, :cond_1

    .line 847
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    goto :goto_0

    .line 843
    .end local v9    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v10

    .line 844
    .local v10, "ex":Ljava/lang/Exception;
    :try_start_2
    const-string v2, "CallerInfoEx"

    const-string v3, "getFilepathFromContentUri error is occured"

    invoke-static {v2, v3, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 846
    if-eqz v0, :cond_1

    .line 847
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    goto :goto_0

    .line 846
    .end local v10    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_4

    .line 847
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    :cond_4
    throw v2
.end method

.method private static normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 728
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 731
    .end local p0    # "s":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .restart local p0    # "s":Ljava/lang/String;
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method

.method private setContactExistsCount(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 814
    iput p1, p0, Lcom/android/internal/telephony/CallerInfoEx;->contactExistsCount:I

    .line 815
    return-void
.end method


# virtual methods
.method public addUserData(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 879
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfoEx;->mMapUserData:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 880
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallerInfoEx;->mMapUserData:Ljava/util/HashMap;

    .line 882
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfoEx;->mMapUserData:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getContactExistsCount()I
    .locals 1

    .prologue
    .line 823
    iget v0, p0, Lcom/android/internal/telephony/CallerInfoEx;->contactExistsCount:I

    return v0
.end method

.method public getUserData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 895
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfoEx;->mMapUserData:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 896
    const/4 v0, 0x0

    .line 898
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfoEx;->mMapUserData:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public isEmergencyNumber()Z
    .locals 1

    .prologue
    .line 650
    iget-boolean v0, p0, Lcom/android/internal/telephony/CallerInfoEx;->mIsEmergency:Z

    return v0
.end method

.method public isVoiceMailNumber()Z
    .locals 1

    .prologue
    .line 657
    iget-boolean v0, p0, Lcom/android/internal/telephony/CallerInfoEx;->mIsVoiceMail:Z

    return v0
.end method

.method bridge synthetic markAsEmergency(Landroid/content/Context;)Lcom/android/internal/telephony/CallerInfo;
    .locals 1
    .param p1, "x0"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CallerInfoEx;->markAsEmergency(Landroid/content/Context;)Lcom/android/internal/telephony/CallerInfoEx;

    move-result-object v0

    return-object v0
.end method

.method markAsEmergency(Landroid/content/Context;)Lcom/android/internal/telephony/CallerInfoEx;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 673
    const v0, 0x104039d

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/CallerInfoEx;->phoneNumber:Ljava/lang/String;

    .line 675
    const v0, 0x1080550

    iput v0, p0, Lcom/android/internal/telephony/CallerInfoEx;->photoResource:I

    .line 676
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/CallerInfoEx;->mIsEmergency:Z

    .line 677
    return-object p0
.end method

.method markAsEmergency(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfoEx;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 682
    iput-object p2, p0, Lcom/android/internal/telephony/CallerInfoEx;->phoneNumber:Ljava/lang/String;

    .line 683
    const v0, 0x1080550

    iput v0, p0, Lcom/android/internal/telephony/CallerInfoEx;->photoResource:I

    .line 684
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/CallerInfoEx;->mIsEmergency:Z

    .line 685
    return-object p0
.end method

.method markAsN11OrSpecial(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfoEx;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 926
    invoke-static {p1, p2}, Lcom/lge/telephony/LGSpecialNumberUtils;->getN11OrSpecialNumberString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/CallerInfoEx;->phoneNumber:Ljava/lang/String;

    .line 927
    return-object p0
.end method

.method bridge synthetic markAsVoiceMail()Lcom/android/internal/telephony/CallerInfo;
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallerInfoEx;->markAsVoiceMail()Lcom/android/internal/telephony/CallerInfoEx;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic markAsVoiceMail(J)Lcom/android/internal/telephony/CallerInfo;
    .locals 1
    .param p1, "x0"    # J

    .prologue
    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/CallerInfoEx;->markAsVoiceMail(J)Lcom/android/internal/telephony/CallerInfoEx;

    move-result-object v0

    return-object v0
.end method

.method markAsVoiceMail()Lcom/android/internal/telephony/CallerInfoEx;
    .locals 3

    .prologue
    .line 701
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()J

    move-result-wide v0

    .line 702
    .local v0, "subId":J
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/CallerInfoEx;->markAsVoiceMail(J)Lcom/android/internal/telephony/CallerInfoEx;

    move-result-object v2

    return-object v2
.end method

.method markAsVoiceMail(J)Lcom/android/internal/telephony/CallerInfoEx;
    .locals 5
    .param p1, "subId"    # J

    .prologue
    .line 707
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/telephony/CallerInfoEx;->mIsVoiceMail:Z

    .line 710
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/telephony/TelephonyManager;->getVoiceMailAlphaTag(J)Ljava/lang/String;

    move-result-object v1

    .line 712
    .local v1, "voiceMailLabel":Ljava/lang/String;
    iput-object v1, p0, Lcom/android/internal/telephony/CallerInfoEx;->phoneNumber:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 724
    .end local v1    # "voiceMailLabel":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 713
    :catch_0
    move-exception v0

    .line 719
    .local v0, "se":Ljava/lang/SecurityException;
    const-string v2, "CallerInfoEx"

    const-string v3, "Cannot access VoiceMail."

    invoke-static {v2, v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeUserData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 910
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfoEx;->mMapUserData:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 911
    const/4 v0, 0x0

    .line 913
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfoEx;->mMapUserData:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
