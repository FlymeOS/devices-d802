.class public Landroid/text/method/AllCapsTransformationMethod;
.super Ljava/lang/Object;
.source "AllCapsTransformationMethod.java"

# interfaces
.implements Landroid/text/method/TransformationMethod2;


# static fields
.field private static final COMBINING_ACUTE_ACCENT:I = 0x301

.field private static final COMBINING_ACUTE_TONE_MARK:I = 0x341

.field private static final COMBINING_DIAERESIS:I = 0x308

.field private static final COMBINING_GREEK_DIALYTIKA_TONOS:I = 0x344

.field private static final GREEK_LOWER_ALPHA:I = 0x3b1

.field private static final GREEK_LOWER_ALPHA_ACC:I = 0x3ac

.field private static final GREEK_LOWER_EPSILON:I = 0x3b5

.field private static final GREEK_LOWER_EPSILON_ACC:I = 0x3ad

.field private static final GREEK_LOWER_ETA:I = 0x3b7

.field private static final GREEK_LOWER_ETA_ACC:I = 0x3ae

.field private static final GREEK_LOWER_IOTA:I = 0x3b9

.field private static final GREEK_LOWER_IOTA_ACC:I = 0x3af

.field private static final GREEK_LOWER_IOTA_ACC_DIAERESIS:I = 0x390

.field private static final GREEK_LOWER_OMEGA_ACC:I = 0x3ce

.field private static final GREEK_LOWER_OMICRON:I = 0x3bf

.field private static final GREEK_LOWER_OMICRON_ACC:I = 0x3cc

.field private static final GREEK_LOWER_UPSILON:I = 0x3c5

.field private static final GREEK_LOWER_UPSILON_ACC:I = 0x3cd

.field private static final GREEK_LOWER_UPSILON_ACC_DIAERESIS:I = 0x3b0

.field private static final GREEK_UPPER_ALPHA:I = 0x391

.field private static final GREEK_UPPER_ALPHA_ACC:I = 0x386

.field private static final GREEK_UPPER_EPSILON:I = 0x395

.field private static final GREEK_UPPER_EPSILON_ACC:I = 0x388

.field private static final GREEK_UPPER_ETA:I = 0x397

.field private static final GREEK_UPPER_ETA_ACC:I = 0x389

.field private static final GREEK_UPPER_IOTA:I = 0x399

.field private static final GREEK_UPPER_IOTA_ACC:I = 0x38a

.field private static final GREEK_UPPER_IOTA_DIAERESIS:I = 0x3aa

.field private static final GREEK_UPPER_OMEGA:I = 0x3a9

.field private static final GREEK_UPPER_OMEGA_ACC:I = 0x38f

.field private static final GREEK_UPPER_OMICRON:I = 0x39f

.field private static final GREEK_UPPER_OMICRON_ACC:I = 0x38c

.field private static final GREEK_UPPER_UPSILON:I = 0x3a5

.field private static final GREEK_UPPER_UPSILON_ACC:I = 0x38e

.field private static final GREEK_UPPER_UPSILON_DIAERESIS:I = 0x3ab

.field private static final TAG:Ljava/lang/String; = "AllCapsTransformationMethod"


# instance fields
.field private mEnabled:Z

.field private mLocale:Ljava/util/Locale;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Landroid/text/method/AllCapsTransformationMethod;->mLocale:Ljava/util/Locale;

    .line 75
    return-void
.end method

.method private greekToneChar(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 10
    .param p1, "source"    # Ljava/lang/CharSequence;

    .prologue
    .line 85
    const/4 v7, 0x0

    .line 86
    .local v7, "sourceGreek":Ljava/lang/CharSequence;
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    new-array v1, v8, [I

    .line 87
    .local v1, "codeChar":[I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    new-array v0, v8, [C

    .line 88
    .local v0, "charSeq":[C
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-ge v3, v8, :cond_6

    .line 89
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    .line 90
    .local v2, "greekCodepoint":I
    if-lez v3, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v9, v3, -0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->codePointAt(I)I

    move-result v6

    .line 91
    .local v6, "prev":I
    :goto_1
    const/4 v8, 0x1

    if-le v3, v8, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v9, v3, -0x2

    invoke-virtual {v8, v9}, Ljava/lang/String;->codePointAt(I)I

    move-result v5

    .line 92
    .local v5, "preprev":I
    :goto_2
    const/4 v8, 0x2

    if-le v3, v8, :cond_3

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v9, v3, -0x3

    invoke-virtual {v8, v9}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    .line 93
    .local v4, "prepreprev":I
    :goto_3
    sparse-switch v2, :sswitch_data_0

    .line 188
    :cond_0
    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(I)I

    move-result v8

    aput v8, v1, v3

    .line 190
    :goto_4
    aget v8, v1, v3

    int-to-char v8, v8

    aput-char v8, v0, v3

    .line 88
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 90
    .end local v4    # "prepreprev":I
    .end local v5    # "preprev":I
    .end local v6    # "prev":I
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 91
    .restart local v6    # "prev":I
    :cond_2
    const/4 v5, 0x0

    goto :goto_2

    .line 92
    .restart local v5    # "preprev":I
    :cond_3
    const/4 v4, 0x0

    goto :goto_3

    .line 95
    .restart local v4    # "prepreprev":I
    :sswitch_0
    const/16 v8, 0x391

    aput v8, v1, v3

    goto :goto_4

    .line 97
    :sswitch_1
    const/16 v8, 0x391

    aput v8, v1, v3

    goto :goto_4

    .line 99
    :sswitch_2
    const/16 v8, 0x395

    aput v8, v1, v3

    goto :goto_4

    .line 101
    :sswitch_3
    const/16 v8, 0x395

    aput v8, v1, v3

    goto :goto_4

    .line 103
    :sswitch_4
    const/16 v8, 0x397

    aput v8, v1, v3

    goto :goto_4

    .line 105
    :sswitch_5
    const/16 v8, 0x397

    aput v8, v1, v3

    goto :goto_4

    .line 107
    :sswitch_6
    const/16 v8, 0x399

    aput v8, v1, v3

    goto :goto_4

    .line 109
    :sswitch_7
    const/16 v8, 0x399

    aput v8, v1, v3

    goto :goto_4

    .line 111
    :sswitch_8
    const/16 v8, 0x3aa

    aput v8, v1, v3

    goto :goto_4

    .line 113
    :sswitch_9
    const/16 v8, 0x39f

    aput v8, v1, v3

    goto :goto_4

    .line 115
    :sswitch_a
    const/16 v8, 0x39f

    aput v8, v1, v3

    goto :goto_4

    .line 117
    :sswitch_b
    const/16 v8, 0x3a5

    aput v8, v1, v3

    goto :goto_4

    .line 119
    :sswitch_c
    const/16 v8, 0x3a5

    aput v8, v1, v3

    goto :goto_4

    .line 121
    :sswitch_d
    const/16 v8, 0x3ab

    aput v8, v1, v3

    goto :goto_4

    .line 123
    :sswitch_e
    const/16 v8, 0x3a9

    aput v8, v1, v3

    goto :goto_4

    .line 125
    :sswitch_f
    const/16 v8, 0x3a9

    aput v8, v1, v3

    goto :goto_4

    .line 127
    :sswitch_10
    sparse-switch v6, :sswitch_data_1

    .line 156
    const/16 v8, 0x399

    aput v8, v1, v3

    goto :goto_4

    .line 131
    :sswitch_11
    const/16 v8, 0x3aa

    aput v8, v1, v3

    goto :goto_4

    .line 134
    :sswitch_12
    const/16 v8, 0x3bf

    if-ne v5, v8, :cond_4

    .line 135
    const/16 v8, 0x399

    aput v8, v1, v3

    goto :goto_4

    .line 137
    :cond_4
    const/16 v8, 0x3aa

    aput v8, v1, v3

    goto :goto_4

    .line 141
    :sswitch_13
    sparse-switch v5, :sswitch_data_2

    .line 153
    const/16 v8, 0x399

    aput v8, v1, v3

    goto :goto_4

    .line 145
    :sswitch_14
    const/16 v8, 0x3aa

    aput v8, v1, v3

    goto/16 :goto_4

    .line 148
    :sswitch_15
    const/16 v8, 0x3bf

    if-ne v4, v8, :cond_5

    .line 149
    const/16 v8, 0x399

    aput v8, v1, v3

    goto/16 :goto_4

    .line 151
    :cond_5
    const/16 v8, 0x3aa

    aput v8, v1, v3

    goto/16 :goto_4

    .line 159
    :sswitch_16
    sparse-switch v6, :sswitch_data_3

    .line 178
    const/16 v8, 0x3a5

    aput v8, v1, v3

    goto/16 :goto_4

    .line 164
    :sswitch_17
    const/16 v8, 0x3ab

    aput v8, v1, v3

    goto/16 :goto_4

    .line 168
    :sswitch_18
    sparse-switch v5, :sswitch_data_4

    .line 175
    const/16 v8, 0x3a5

    aput v8, v1, v3

    goto/16 :goto_4

    .line 173
    :sswitch_19
    const/16 v8, 0x3ab

    aput v8, v1, v3

    goto/16 :goto_4

    .line 181
    :sswitch_1a
    const/16 v8, 0x308

    aput v8, v1, v3

    goto/16 :goto_4

    .line 184
    :sswitch_1b
    const/16 v8, 0x3ce

    if-ge v6, v8, :cond_0

    const/16 v8, 0x386

    if-le v6, v8, :cond_0

    goto/16 :goto_5

    .line 192
    .end local v2    # "greekCodepoint":I
    .end local v4    # "prepreprev":I
    .end local v5    # "preprev":I
    .end local v6    # "prev":I
    :cond_6
    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v7

    .line 193
    return-object v7

    .line 93
    nop

    :sswitch_data_0
    .sparse-switch
        0x301 -> :sswitch_1b
        0x341 -> :sswitch_1b
        0x344 -> :sswitch_1a
        0x386 -> :sswitch_1
        0x388 -> :sswitch_3
        0x389 -> :sswitch_5
        0x38a -> :sswitch_7
        0x38c -> :sswitch_a
        0x38e -> :sswitch_c
        0x38f -> :sswitch_f
        0x390 -> :sswitch_8
        0x3ac -> :sswitch_0
        0x3ad -> :sswitch_2
        0x3ae -> :sswitch_4
        0x3af -> :sswitch_6
        0x3b0 -> :sswitch_d
        0x3b9 -> :sswitch_10
        0x3c5 -> :sswitch_16
        0x3cc -> :sswitch_9
        0x3cd -> :sswitch_b
        0x3ce -> :sswitch_e
    .end sparse-switch

    .line 127
    :sswitch_data_1
    .sparse-switch
        0x301 -> :sswitch_13
        0x341 -> :sswitch_13
        0x3ac -> :sswitch_11
        0x3ad -> :sswitch_11
        0x3cc -> :sswitch_11
        0x3cd -> :sswitch_12
    .end sparse-switch

    .line 141
    :sswitch_data_2
    .sparse-switch
        0x3b1 -> :sswitch_14
        0x3b5 -> :sswitch_14
        0x3bf -> :sswitch_14
        0x3c5 -> :sswitch_15
    .end sparse-switch

    .line 159
    :sswitch_data_3
    .sparse-switch
        0x301 -> :sswitch_18
        0x341 -> :sswitch_18
        0x3ac -> :sswitch_17
        0x3ad -> :sswitch_17
        0x3ae -> :sswitch_17
        0x3cc -> :sswitch_17
    .end sparse-switch

    .line 168
    :sswitch_data_4
    .sparse-switch
        0x3b1 -> :sswitch_19
        0x3b5 -> :sswitch_19
        0x3b7 -> :sswitch_19
        0x3bf -> :sswitch_19
    .end sparse-switch
.end method

.method private isGreekUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z
    .locals 1
    .param p1, "unicodeBlock"    # Ljava/lang/Character$UnicodeBlock;

    .prologue
    .line 223
    sget-object v0, Ljava/lang/Character$UnicodeBlock;->GREEK:Ljava/lang/Character$UnicodeBlock;

    if-eq p1, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->GREEK_EXTENDED:Ljava/lang/Character$UnicodeBlock;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 199
    iget-boolean v0, p0, Landroid/text/method/AllCapsTransformationMethod;->mEnabled:Z

    if-eqz v0, :cond_2

    .line 201
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/text/method/AllCapsTransformationMethod;->isGreekUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    invoke-direct {p0, p1}, Landroid/text/method/AllCapsTransformationMethod;->greekToneChar(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 209
    :goto_0
    return-object v0

    .line 204
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/text/method/AllCapsTransformationMethod;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 208
    :cond_2
    const-string v0, "AllCapsTransformationMethod"

    const-string v1, "Caller did not enable length changes; not transforming text"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p1

    .line 209
    goto :goto_0
.end method

.method public onFocusChanged(Landroid/view/View;Ljava/lang/CharSequence;ZILandroid/graphics/Rect;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "sourceText"    # Ljava/lang/CharSequence;
    .param p3, "focused"    # Z
    .param p4, "direction"    # I
    .param p5, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 215
    return-void
.end method

.method public setLengthChangesAllowed(Z)V
    .locals 0
    .param p1, "allowLengthChanges"    # Z

    .prologue
    .line 219
    iput-boolean p1, p0, Landroid/text/method/AllCapsTransformationMethod;->mEnabled:Z

    .line 220
    return-void
.end method
