.class public Lcom/lge/app/LocalePickerEx;
.super Landroid/app/ListFragment;
.source "LocalePickerEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/app/LocalePickerEx$LocaleInfo;,
        Lcom/lge/app/LocalePickerEx$LocaleSelectionListener;
    }
.end annotation


# static fields
.field private static COUNTRY_CODE:Ljava/lang/String; = null

.field private static final DEBUG:Z = false

.field private static final HAS_CUPSS_LANG_LIST:Z

.field private static final TAG:Ljava/lang/String; = "LocalePickerEx"


# instance fields
.field mListener:Lcom/lge/app/LocalePickerEx$LocaleSelectionListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 65
    const-string v0, "ro.build.target_country"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/app/LocalePickerEx;->COUNTRY_CODE:Ljava/lang/String;

    .line 67
    const-string v0, "ro.lge.custLanguageSet"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/lge/app/LocalePickerEx;->HAS_CUPSS_LANG_LIST:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 91
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/lge/app/LocalePickerEx;->COUNTRY_CODE:Ljava/lang/String;

    return-object v0
.end method

.method public static constructAdapter(Landroid/content/Context;)Landroid/widget/ArrayAdapter;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/lge/app/LocalePickerEx$LocaleInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 168
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/lge/app/LocalePickerEx;->constructAdapter(Landroid/content/Context;Z)Landroid/widget/ArrayAdapter;

    move-result-object v0

    return-object v0
.end method

.method public static constructAdapter(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "layoutId"    # I
    .param p2, "fieldId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II)",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/lge/app/LocalePickerEx$LocaleInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 194
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/lge/app/LocalePickerEx;->constructAdapter(Landroid/content/Context;IIZ)Landroid/widget/ArrayAdapter;

    move-result-object v0

    return-object v0
.end method

.method public static constructAdapter(Landroid/content/Context;IIZ)Landroid/widget/ArrayAdapter;
    .locals 33
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "layoutId"    # I
    .param p2, "fieldId"    # I
    .param p3, "isInDeveloperMode"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "IIZ)",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/lge/app/LocalePickerEx$LocaleInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 209
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    .line 211
    .local v27, "resources":Landroid/content/res/Resources;
    new-instance v23, Ljava/util/ArrayList;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 223
    .local v23, "localeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, "phone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/telephony/TelephonyManager;

    .line 224
    .local v32, "telephonyManager":Landroid/telephony/TelephonyManager;
    const-string v3, "connectivity"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v18

    .line 226
    .local v18, "hasMobileDataFeature":Z
    const/4 v12, 0x0

    .line 228
    .local v12, "cupssLanguageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-boolean v3, Lcom/lge/app/LocalePickerEx;->HAS_CUPSS_LANG_LIST:Z

    if-eqz v3, :cond_0

    .line 229
    new-instance v12, Ljava/util/ArrayList;

    .end local v12    # "cupssLanguageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x107004a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v12, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 235
    .restart local v12    # "cupssLanguageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->clear()V

    .line 236
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v14, v3, [Ljava/lang/String;

    .line 237
    .local v14, "custLocales":[Ljava/lang/String;
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    .end local v14    # "custLocales":[Ljava/lang/String;
    check-cast v14, [Ljava/lang/String;

    .line 238
    .restart local v14    # "custLocales":[Ljava/lang/String;
    invoke-static {v14}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 243
    .end local v14    # "custLocales":[Ljava/lang/String;
    :cond_0
    if-eqz p3, :cond_1

    .line 244
    const-string/jumbo v3, "zz_ZZ"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 245
    const-string/jumbo v3, "zz_ZZ"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    :cond_1
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v24, v0

    .line 254
    .local v24, "locales":[Ljava/lang/String;
    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v24

    .end local v24    # "locales":[Ljava/lang/String;
    check-cast v24, [Ljava/lang/String;

    .line 256
    .restart local v24    # "locales":[Ljava/lang/String;
    const v3, 0x1070008

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v30

    .line 257
    .local v30, "specialLocaleCodes":[Ljava/lang/String;
    const v3, 0x1070009

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v31

    .line 258
    .local v31, "specialLocaleNames":[Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 259
    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v25, v0

    .line 260
    .local v25, "origSize":I
    move/from16 v0, v25

    new-array v0, v0, [Lcom/lge/app/LocalePickerEx$LocaleInfo;

    move-object/from16 v26, v0

    .line 261
    .local v26, "preprocess":[Lcom/lge/app/LocalePickerEx$LocaleInfo;
    const/16 v16, 0x0

    .line 262
    .local v16, "finalSize":I
    const/16 v19, 0x0

    .local v19, "i":I
    move/from16 v17, v16

    .end local v16    # "finalSize":I
    .local v17, "finalSize":I
    :goto_0
    move/from16 v0, v19

    move/from16 v1, v25

    if-ge v0, v1, :cond_c

    .line 263
    aget-object v28, v24, v19

    .line 264
    .local v28, "s":Ljava/lang/String;
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v22

    .line 267
    .local v22, "len":I
    if-eqz v18, :cond_2

    .line 268
    const-string v3, "AME"

    sget-object v4, Lcom/lge/app/LocalePickerEx;->COUNTRY_CODE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 269
    const-string v3, "iw"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    const-string v3, "iw_IL"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    const-string v3, "iw-IL"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move/from16 v16, v17

    .line 262
    .end local v17    # "finalSize":I
    .restart local v16    # "finalSize":I
    :goto_1
    add-int/lit8 v19, v19, 0x1

    move/from16 v17, v16

    .end local v16    # "finalSize":I
    .restart local v17    # "finalSize":I
    goto :goto_0

    .line 277
    :cond_2
    const-string v3, "IL"

    sget-object v4, Lcom/lge/app/LocalePickerEx;->COUNTRY_CODE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 278
    const-string v3, "fa"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    const-string v3, "fa_IR"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    const-string v3, "fa-IR"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move/from16 v16, v17

    .line 279
    .end local v17    # "finalSize":I
    .restart local v16    # "finalSize":I
    goto :goto_1

    .line 284
    .end local v16    # "finalSize":I
    .restart local v17    # "finalSize":I
    :cond_3
    const/4 v3, 0x5

    move/from16 v0, v22

    if-ne v0, v3, :cond_e

    .line 285
    const/4 v3, 0x0

    const/4 v4, 0x2

    move-object/from16 v0, v28

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    .line 286
    .local v21, "language":Ljava/lang/String;
    const/4 v3, 0x3

    const/4 v4, 0x5

    move-object/from16 v0, v28

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 287
    .local v11, "country":Ljava/lang/String;
    new-instance v20, Ljava/util/Locale;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v11}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    .local v20, "l":Ljava/util/Locale;
    if-nez v17, :cond_4

    .line 293
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "finalSize":I
    .restart local v16    # "finalSize":I
    new-instance v3, Lcom/lge/app/LocalePickerEx$LocaleInfo;

    move-object/from16 v0, v20

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lge/app/LocalePickerEx;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-direct {v3, v4, v0}, Lcom/lge/app/LocalePickerEx$LocaleInfo;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v3, v26, v17

    goto :goto_1

    .line 300
    .end local v16    # "finalSize":I
    .restart local v17    # "finalSize":I
    :cond_4
    add-int/lit8 v3, v17, -0x1

    aget-object v3, v26, v3

    iget-object v3, v3, Lcom/lge/app/LocalePickerEx$LocaleInfo;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    add-int/lit8 v3, v17, -0x1

    aget-object v3, v26, v3

    iget-object v3, v3, Lcom/lge/app/LocalePickerEx$LocaleInfo;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "zz"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 309
    add-int/lit8 v3, v17, -0x1

    aget-object v3, v26, v3

    add-int/lit8 v4, v17, -0x1

    aget-object v4, v26, v4

    iget-object v4, v4, Lcom/lge/app/LocalePickerEx$LocaleInfo;->locale:Ljava/util/Locale;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-static {v4, v0, v1}, Lcom/lge/app/LocalePickerEx;->getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lge/app/LocalePickerEx;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/lge/app/LocalePickerEx$LocaleInfo;->label:Ljava/lang/String;

    .line 316
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "finalSize":I
    .restart local v16    # "finalSize":I
    new-instance v3, Lcom/lge/app/LocalePickerEx$LocaleInfo;

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-static {v0, v1, v2}, Lcom/lge/app/LocalePickerEx;->getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lge/app/LocalePickerEx;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-direct {v3, v4, v0}, Lcom/lge/app/LocalePickerEx$LocaleInfo;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v3, v26, v17

    goto/16 :goto_1

    .line 322
    .end local v16    # "finalSize":I
    .restart local v17    # "finalSize":I
    :cond_5
    const-string/jumbo v3, "zz_ZZ"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 323
    const-string v15, "[Developer] Accented English"

    .line 330
    .local v15, "displayName":Ljava/lang/String;
    :goto_2
    const-string v3, "mk_MK"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "mk-MK"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 331
    :cond_6
    invoke-virtual/range {v32 .. v32}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v29

    .line 332
    .local v29, "simOperator":Ljava/lang/String;
    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-le v3, v4, :cond_b

    .line 333
    const/4 v3, 0x0

    const/4 v4, 0x3

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 334
    .local v13, "currentMCC":Ljava/lang/String;
    const-string v3, "294"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 335
    const-string v15, "FYROM"

    .line 347
    .end local v13    # "currentMCC":Ljava/lang/String;
    .end local v29    # "simOperator":Ljava/lang/String;
    :cond_7
    if-eqz v20, :cond_8

    const-string v3, "ku_IQ"

    invoke-virtual/range {v20 .. v20}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 348
    const-string v15, "Kurdish"

    .line 355
    :cond_8
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "finalSize":I
    .restart local v16    # "finalSize":I
    new-instance v3, Lcom/lge/app/LocalePickerEx$LocaleInfo;

    move-object/from16 v0, v20

    invoke-direct {v3, v15, v0}, Lcom/lge/app/LocalePickerEx$LocaleInfo;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v3, v26, v17

    goto/16 :goto_1

    .line 324
    .end local v15    # "displayName":Ljava/lang/String;
    .end local v16    # "finalSize":I
    .restart local v17    # "finalSize":I
    :cond_9
    const-string/jumbo v3, "zz_ZY"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 325
    const-string v15, "[Developer] Fake Bi-Directional"

    .restart local v15    # "displayName":Ljava/lang/String;
    goto :goto_2

    .line 327
    .end local v15    # "displayName":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, v20

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/app/LocalePickerEx;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .restart local v15    # "displayName":Ljava/lang/String;
    goto :goto_2

    .line 339
    .restart local v29    # "simOperator":Ljava/lang/String;
    :cond_b
    if-eqz v18, :cond_7

    move/from16 v16, v17

    .line 340
    .end local v17    # "finalSize":I
    .restart local v16    # "finalSize":I
    goto/16 :goto_1

    .line 361
    .end local v11    # "country":Ljava/lang/String;
    .end local v15    # "displayName":Ljava/lang/String;
    .end local v16    # "finalSize":I
    .end local v20    # "l":Ljava/util/Locale;
    .end local v21    # "language":Ljava/lang/String;
    .end local v22    # "len":I
    .end local v28    # "s":Ljava/lang/String;
    .end local v29    # "simOperator":Ljava/lang/String;
    .restart local v17    # "finalSize":I
    :cond_c
    move/from16 v0, v17

    new-array v7, v0, [Lcom/lge/app/LocalePickerEx$LocaleInfo;

    .line 362
    .local v7, "localeInfos":[Lcom/lge/app/LocalePickerEx$LocaleInfo;
    const/16 v19, 0x0

    :goto_3
    move/from16 v0, v19

    move/from16 v1, v17

    if-ge v0, v1, :cond_d

    .line 363
    aget-object v3, v26, v19

    aput-object v3, v7, v19

    .line 362
    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    .line 366
    :cond_d
    invoke-static {v7}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 368
    const-string v3, "layout_inflater"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    .line 370
    .local v8, "inflater":Landroid/view/LayoutInflater;
    new-instance v3, Lcom/lge/app/LocalePickerEx$1;

    move-object/from16 v4, p0

    move/from16 v5, p1

    move/from16 v6, p2

    move/from16 v9, p1

    move/from16 v10, p2

    invoke-direct/range {v3 .. v10}, Lcom/lge/app/LocalePickerEx$1;-><init>(Landroid/content/Context;II[Lcom/lge/app/LocalePickerEx$LocaleInfo;Landroid/view/LayoutInflater;II)V

    return-object v3

    .end local v7    # "localeInfos":[Lcom/lge/app/LocalePickerEx$LocaleInfo;
    .end local v8    # "inflater":Landroid/view/LayoutInflater;
    .restart local v22    # "len":I
    .restart local v28    # "s":Ljava/lang/String;
    :cond_e
    move/from16 v16, v17

    .end local v17    # "finalSize":I
    .restart local v16    # "finalSize":I
    goto/16 :goto_1
.end method

.method public static constructAdapter(Landroid/content/Context;Z)Landroid/widget/ArrayAdapter;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isInDeveloperMode"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/lge/app/LocalePickerEx$LocaleInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 180
    sget v0, Lcom/lge/internal/R$layout;->locale_picker_item:I

    sget v1, Lcom/lge/internal/R$id;->locale:I

    invoke-static {p0, v0, v1, p1}, Lcom/lge/app/LocalePickerEx;->constructAdapter(Landroid/content/Context;IIZ)Landroid/widget/ArrayAdapter;

    move-result-object v0

    return-object v0
.end method

.method private static getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "l"    # Ljava/util/Locale;
    .param p1, "specialLocaleCodes"    # [Ljava/lang/String;
    .param p2, "specialLocaleNames"    # [Ljava/lang/String;

    .prologue
    .line 415
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 417
    .local v0, "code":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 418
    aget-object v2, p1, v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 419
    aget-object v2, p2, v1

    .line 423
    :goto_1
    return-object v2

    .line 417
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 423
    :cond_1
    invoke-virtual {p0, p0}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private static toTitleCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 406
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 410
    .end local p0    # "s":Ljava/lang/String;
    :goto_0
    return-object p0

    .restart local p0    # "s":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static updateLocale(Ljava/util/Locale;)V
    .locals 3
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 492
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 493
    .local v0, "am":Landroid/app/IActivityManager;
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 497
    .local v1, "config":Landroid/content/res/Configuration;
    invoke-virtual {v1, p0}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 499
    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V

    .line 501
    const-string v2, "com.android.providers.settings"

    invoke-static {v2}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 505
    .end local v0    # "am":Landroid/app/IActivityManager;
    .end local v1    # "config":Landroid/content/res/Configuration;
    :goto_0
    return-void

    .line 502
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method protected isInDeveloperMode()Z
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 433
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 434
    invoke-virtual {p0}, Lcom/lge/app/LocalePickerEx;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lge/app/LocalePickerEx;->isInDeveloperMode()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/lge/app/LocalePickerEx;->constructAdapter(Landroid/content/Context;Z)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 436
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Lcom/lge/app/LocalePickerEx$LocaleInfo;>;"
    invoke-virtual {p0, v0}, Lcom/lge/app/LocalePickerEx;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 437
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 474
    iget-object v1, p0, Lcom/lge/app/LocalePickerEx;->mListener:Lcom/lge/app/LocalePickerEx$LocaleSelectionListener;

    if-eqz v1, :cond_0

    .line 475
    invoke-virtual {p0}, Lcom/lge/app/LocalePickerEx;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/app/LocalePickerEx$LocaleInfo;

    iget-object v0, v1, Lcom/lge/app/LocalePickerEx$LocaleInfo;->locale:Ljava/util/Locale;

    .line 476
    .local v0, "locale":Ljava/util/Locale;
    iget-object v1, p0, Lcom/lge/app/LocalePickerEx;->mListener:Lcom/lge/app/LocalePickerEx$LocaleSelectionListener;

    invoke-interface {v1, v0}, Lcom/lge/app/LocalePickerEx$LocaleSelectionListener;->onLocaleSelected(Ljava/util/Locale;)V

    .line 478
    .end local v0    # "locale":Ljava/util/Locale;
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 453
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 454
    invoke-virtual {p0}, Lcom/lge/app/LocalePickerEx;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 455
    return-void
.end method

.method public setLocaleSelectionListener(Lcom/lge/app/LocalePickerEx$LocaleSelectionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lge/app/LocalePickerEx$LocaleSelectionListener;

    .prologue
    .line 444
    iput-object p1, p0, Lcom/lge/app/LocalePickerEx;->mListener:Lcom/lge/app/LocalePickerEx$LocaleSelectionListener;

    .line 445
    return-void
.end method
