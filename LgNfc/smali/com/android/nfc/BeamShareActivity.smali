.class public Lcom/android/nfc/BeamShareActivity;
.super Landroid/app/Activity;
.source "BeamShareActivity.java"


# static fields
.field static final DBG:Z

.field static final TAG:Ljava/lang/String; = "BeamShareActivity"


# instance fields
.field mLaunchIntent:Landroid/content/Intent;

.field mNdefMessage:Landroid/nfc/NdefMessage;

.field mNfcAdapter:Landroid/nfc/NfcAdapter;

.field final mReceiver:Landroid/content/BroadcastReceiver;

.field mUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    sget-boolean v0, Lcom/android/nfc/utils/LNfcLog;->DBG:Z

    sput-boolean v0, Lcom/android/nfc/BeamShareActivity;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 226
    new-instance v0, Lcom/android/nfc/BeamShareActivity$4;

    invoke-direct {v0, p0}, Lcom/android/nfc/BeamShareActivity$4;-><init>(Lcom/android/nfc/BeamShareActivity;)V

    iput-object v0, p0, Lcom/android/nfc/BeamShareActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private static final init$_aroundBody0(Lcom/android/nfc/BeamShareActivity;Landroid/content/Context;I)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 85
    invoke-direct {v0, p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method private static final init$_aroundBody1$advice(Lcom/android/nfc/BeamShareActivity;Landroid/content/Context;ILcom/android/nfc/LBeamShareActivity;Landroid/content/Context;ILcom/lge/aspectj/runtime/internal/AroundClosure;)Landroid/app/AlertDialog$Builder;
    .locals 11

    .prologue
    .line 41
    move-object v4, p0

    .local v4, "ajc$this":Lcom/android/nfc/BeamShareActivity;
    move-object v5, p1

    .local v5, "context":Landroid/content/Context;
    move v6, p2

    .local v6, "theme":I
    move-object v7, p3

    .local v7, "ajc$aspectInstance":Lcom/android/nfc/LBeamShareActivity;
    move-object v5, p4

    move/from16 v9, p5

    .local v9, "resId":I
    move-object/from16 v10, p6

    .local v10, "ajc$aroundClosure":Lcom/lge/aspectj/runtime/internal/AroundClosure;
    invoke-static {}, Lcom/android/nfc/LBeamShareActivity;->ajc$inlineAccessFieldGet$com_android_nfc_LBeamShareActivity$com_android_nfc_LBeamShareActivity$DBG()Z

    move-result v1

    const-string v2, "LBeamShareActivity.aj"

    const-string v3, "around() : call(AlertDialog.Builder(..))"

    invoke-static {v1, v2, v3}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 43
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 44
    sget v1, Lcom/lge/internal/R$style;->Theme_LGE_Default_Dialog_Alert:I

    .line 43
    invoke-direct {v0, v5, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 45
    .local v0, "dialogBuilder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f080025

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 47
    return-object v0
.end method

.method private static final parseShareIntentAndFinish_aroundBody6(Lcom/android/nfc/BeamShareActivity;Landroid/content/Intent;)V
    .locals 20
    .param p0, "ajc$this"    # Lcom/android/nfc/BeamShareActivity;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 137
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    const-string v18, "android.intent.action.SEND"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    const-string v18, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_1

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v3

    .line 142
    .local v3, "clipData":Landroid/content/ClipData;
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Landroid/content/ClipData;->getItemCount()I

    move-result v17

    if-lez v17, :cond_7

    .line 143
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-virtual {v3}, Landroid/content/ClipData;->getItemCount()I

    move-result v17

    move/from16 v0, v17

    if-ge v5, v0, :cond_9

    .line 144
    invoke-virtual {v3, v5}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v7

    .line 146
    .local v7, "item":Landroid/content/ClipData$Item;
    invoke-virtual {v7}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v14

    .line 147
    .local v14, "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    .line 148
    .local v10, "plainText":Ljava/lang/String;
    if-eqz v14, :cond_4

    .line 149
    sget-boolean v17, Lcom/android/nfc/BeamShareActivity;->DBG:Z

    if-eqz v17, :cond_2

    const-string v17, "BeamShareActivity"

    const-string v18, "Found uri in ClipData."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/nfc/BeamShareActivity;->tryUri(Landroid/net/Uri;)V

    .line 143
    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 151
    :cond_4
    if-eqz v10, :cond_6

    .line 152
    sget-boolean v17, Lcom/android/nfc/BeamShareActivity;->DBG:Z

    if-eqz v17, :cond_5

    const-string v17, "BeamShareActivity"

    const-string v18, "Found text in ClipData."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/nfc/BeamShareActivity;->tryText(Ljava/lang/String;)V

    goto :goto_2

    .line 155
    :cond_6
    sget-boolean v17, Lcom/android/nfc/BeamShareActivity;->DBG:Z

    if-eqz v17, :cond_3

    const-string v17, "BeamShareActivity"

    const-string v18, "Did not find any shareable data in ClipData."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 159
    .end local v5    # "i":I
    .end local v7    # "item":Landroid/content/ClipData$Item;
    .end local v10    # "plainText":Ljava/lang/String;
    .end local v14    # "uri":Landroid/net/Uri;
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    const-string v18, "android.intent.action.SEND"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_e

    .line 160
    const-string v17, "android.intent.extra.STREAM"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v14

    check-cast v14, Landroid/net/Uri;

    .line 161
    .restart local v14    # "uri":Landroid/net/Uri;
    const-string v17, "android.intent.extra.TEXT"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v12

    .line 162
    .local v12, "text":Ljava/lang/CharSequence;
    if-eqz v14, :cond_b

    .line 163
    sget-boolean v17, Lcom/android/nfc/BeamShareActivity;->DBG:Z

    if-eqz v17, :cond_8

    const-string v17, "BeamShareActivity"

    const-string v18, "Found uri in ACTION_SEND intent."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/nfc/BeamShareActivity;->tryUri(Landroid/net/Uri;)V

    .line 192
    .end local v12    # "text":Ljava/lang/CharSequence;
    .end local v14    # "uri":Landroid/net/Uri;
    :cond_9
    :goto_3
    const/4 v11, 0x0

    .line 193
    .local v11, "shareData":Landroid/nfc/BeamShareData;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/BeamShareActivity;->mUris:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-lez v17, :cond_16

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/BeamShareActivity;->mUris:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    new-array v15, v0, [Landroid/net/Uri;

    .line 196
    .local v15, "uriArray":[Landroid/net/Uri;
    const/4 v8, 0x0

    .line 197
    .local v8, "numValidUris":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/BeamShareActivity;->mUris:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_13

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/Uri;

    .line 199
    .restart local v14    # "uri":Landroid/net/Uri;
    :try_start_0
    const-string v17, "com.android.nfc"

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v14, v2}, Lcom/android/nfc/BeamShareActivity;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "numValidUris":I
    .local v9, "numValidUris":I
    :try_start_1
    aput-object v14, v15, v8

    .line 201
    sget-boolean v17, Lcom/android/nfc/BeamShareActivity;->DBG:Z

    if-eqz v17, :cond_a

    const-string v17, "BeamShareActivity"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Found uri: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_a
    move v8, v9

    .line 207
    .end local v9    # "numValidUris":I
    .restart local v8    # "numValidUris":I
    goto :goto_4

    .line 165
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v8    # "numValidUris":I
    .end local v11    # "shareData":Landroid/nfc/BeamShareData;
    .end local v15    # "uriArray":[Landroid/net/Uri;
    .restart local v12    # "text":Ljava/lang/CharSequence;
    :cond_b
    if-eqz v12, :cond_d

    .line 166
    sget-boolean v17, Lcom/android/nfc/BeamShareActivity;->DBG:Z

    if-eqz v17, :cond_c

    const-string v17, "BeamShareActivity"

    const-string v18, "Found EXTRA_TEXT in ACTION_SEND intent."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_c
    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/nfc/BeamShareActivity;->tryText(Ljava/lang/String;)V

    goto :goto_3

    .line 169
    :cond_d
    sget-boolean v17, Lcom/android/nfc/BeamShareActivity;->DBG:Z

    if-eqz v17, :cond_9

    const-string v17, "BeamShareActivity"

    const-string v18, "Did not find any shareable data in ACTION_SEND intent."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 172
    .end local v12    # "text":Ljava/lang/CharSequence;
    .end local v14    # "uri":Landroid/net/Uri;
    :cond_e
    const-string v17, "android.intent.extra.STREAM"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v16

    .line 173
    .local v16, "uris":Ljava/util/ArrayList;
    const-string v17, "android.intent.extra.TEXT"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getCharSequenceArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v13

    .line 176
    .local v13, "texts":Ljava/util/ArrayList;
    if-eqz v16, :cond_10

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-lez v17, :cond_10

    .line 177
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6    # "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/Uri;

    .line 178
    .restart local v14    # "uri":Landroid/net/Uri;
    sget-boolean v17, Lcom/android/nfc/BeamShareActivity;->DBG:Z

    if-eqz v17, :cond_f

    const-string v17, "BeamShareActivity"

    const-string v18, "Found uri in ACTION_SEND_MULTIPLE intent."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_f
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/nfc/BeamShareActivity;->tryUri(Landroid/net/Uri;)V

    goto :goto_5

    .line 181
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v14    # "uri":Landroid/net/Uri;
    :cond_10
    if-eqz v13, :cond_12

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-lez v17, :cond_12

    .line 183
    sget-boolean v17, Lcom/android/nfc/BeamShareActivity;->DBG:Z

    if-eqz v17, :cond_11

    const-string v17, "BeamShareActivity"

    const-string v18, "Found text in ACTION_SEND_MULTIPLE intent."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_11
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/CharSequence;

    invoke-interface/range {v17 .. v17}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/nfc/BeamShareActivity;->tryText(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 186
    :cond_12
    sget-boolean v17, Lcom/android/nfc/BeamShareActivity;->DBG:Z

    if-eqz v17, :cond_9

    const-string v17, "BeamShareActivity"

    const-string v18, "Did not find any shareable data in ACTION_SEND_MULTIPLE intent."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 202
    .end local v13    # "texts":Ljava/util/ArrayList;
    .end local v16    # "uris":Ljava/util/ArrayList;
    .restart local v6    # "i$":Ljava/util/Iterator;
    .restart local v8    # "numValidUris":I
    .restart local v11    # "shareData":Landroid/nfc/BeamShareData;
    .restart local v14    # "uri":Landroid/net/Uri;
    .restart local v15    # "uriArray":[Landroid/net/Uri;
    :catch_0
    move-exception v4

    .line 203
    .local v4, "e":Ljava/lang/SecurityException;
    :goto_6
    const-string v17, "BeamShareActivity"

    const-string v18, "Security exception granting uri permission to NFC process."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    const/4 v8, 0x0

    .line 208
    .end local v4    # "e":Ljava/lang/SecurityException;
    .end local v14    # "uri":Landroid/net/Uri;
    :cond_13
    if-lez v8, :cond_15

    .line 209
    new-instance v11, Landroid/nfc/BeamShareData;

    .end local v11    # "shareData":Landroid/nfc/BeamShareData;
    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v11, v0, v15, v1}, Landroid/nfc/BeamShareData;-><init>(Landroid/nfc/NdefMessage;[Landroid/net/Uri;I)V

    .line 222
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v8    # "numValidUris":I
    .end local v15    # "uriArray":[Landroid/net/Uri;
    .restart local v11    # "shareData":Landroid/nfc/BeamShareData;
    :cond_14
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/BeamShareActivity;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/nfc/NfcAdapter;->invokeBeam(Landroid/nfc/BeamShareData;)Z

    .line 223
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/BeamShareActivity;->finish()V

    goto/16 :goto_0

    .line 212
    .restart local v6    # "i$":Ljava/util/Iterator;
    .restart local v8    # "numValidUris":I
    .restart local v15    # "uriArray":[Landroid/net/Uri;
    :cond_15
    new-instance v11, Landroid/nfc/BeamShareData;

    .end local v11    # "shareData":Landroid/nfc/BeamShareData;
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v11, v0, v1, v2}, Landroid/nfc/BeamShareData;-><init>(Landroid/nfc/NdefMessage;[Landroid/net/Uri;I)V

    .restart local v11    # "shareData":Landroid/nfc/BeamShareData;
    goto :goto_7

    .line 214
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v8    # "numValidUris":I
    .end local v15    # "uriArray":[Landroid/net/Uri;
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/BeamShareActivity;->mNdefMessage:Landroid/nfc/NdefMessage;

    move-object/from16 v17, v0

    if-eqz v17, :cond_17

    .line 215
    new-instance v11, Landroid/nfc/BeamShareData;

    .end local v11    # "shareData":Landroid/nfc/BeamShareData;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/BeamShareActivity;->mNdefMessage:Landroid/nfc/NdefMessage;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v11, v0, v1, v2}, Landroid/nfc/BeamShareData;-><init>(Landroid/nfc/NdefMessage;[Landroid/net/Uri;I)V

    .line 216
    .restart local v11    # "shareData":Landroid/nfc/BeamShareData;
    sget-boolean v17, Lcom/android/nfc/BeamShareActivity;->DBG:Z

    if-eqz v17, :cond_14

    const-string v17, "BeamShareActivity"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Created NDEF message:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/BeamShareActivity;->mNdefMessage:Landroid/nfc/NdefMessage;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/nfc/NdefMessage;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 218
    :cond_17
    sget-boolean v17, Lcom/android/nfc/BeamShareActivity;->DBG:Z

    if-eqz v17, :cond_18

    const-string v17, "BeamShareActivity"

    const-string v18, "Could not find any data to parse."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_18
    new-instance v11, Landroid/nfc/BeamShareData;

    .end local v11    # "shareData":Landroid/nfc/BeamShareData;
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v11, v0, v1, v2}, Landroid/nfc/BeamShareData;-><init>(Landroid/nfc/NdefMessage;[Landroid/net/Uri;I)V

    .restart local v11    # "shareData":Landroid/nfc/BeamShareData;
    goto/16 :goto_7

    .line 202
    .restart local v6    # "i$":Ljava/util/Iterator;
    .restart local v9    # "numValidUris":I
    .restart local v14    # "uri":Landroid/net/Uri;
    .restart local v15    # "uriArray":[Landroid/net/Uri;
    :catch_1
    move-exception v4

    move v8, v9

    .end local v9    # "numValidUris":I
    .restart local v8    # "numValidUris":I
    goto/16 :goto_6
.end method

.method private static final parseShareIntentAndFinish_aroundBody7$advice(Lcom/android/nfc/BeamShareActivity;Landroid/content/Intent;Lcom/android/nfc/LBeamShareActivity;Lcom/android/nfc/BeamShareActivity;Lcom/lge/aspectj/runtime/internal/AroundClosure;)V
    .locals 5
    .param p0, "ajc$this"    # Lcom/android/nfc/BeamShareActivity;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "ajc$aspectInstance"    # Lcom/android/nfc/LBeamShareActivity;
    .param p3, "activity"    # Lcom/android/nfc/BeamShareActivity;
    .param p4, "ajc$aroundClosure"    # Lcom/lge/aspectj/runtime/internal/AroundClosure;

    .prologue
    .line 87
    :try_start_0
    invoke-static {p3, p1}, Lcom/android/nfc/BeamShareActivity;->parseShareIntentAndFinish_aroundBody6(Lcom/android/nfc/BeamShareActivity;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :goto_0
    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/nfc/LBeamShareActivity;->ajc$inlineAccessFieldGet$com_android_nfc_LBeamShareActivity$com_android_nfc_LBeamShareActivity$DBG()Z

    move-result v1

    const-string v2, "LBeamShareActivity.aj"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "throwing exception e : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 90
    const v1, 0x7f080061

    const/4 v2, 0x0

    invoke-static {p3, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 91
    invoke-virtual {p3}, Lcom/android/nfc/BeamShareActivity;->finish()V

    goto :goto_0
.end method

.method private static final setNegativeButton_aroundBody4(Lcom/android/nfc/BeamShareActivity;Landroid/app/AlertDialog$Builder;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 106
    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static final setNegativeButton_aroundBody5$advice(Lcom/android/nfc/BeamShareActivity;Landroid/app/AlertDialog$Builder;ILandroid/content/DialogInterface$OnClickListener;Lcom/android/nfc/LBeamShareActivity;Lcom/android/nfc/BeamShareActivity;Landroid/app/AlertDialog$Builder;Lcom/lge/aspectj/runtime/internal/AroundClosure;)Landroid/app/AlertDialog$Builder;
    .locals 3
    .param p0, "ajc$this"    # Lcom/android/nfc/BeamShareActivity;
    .param p1, "target"    # Landroid/app/AlertDialog$Builder;
    .param p2, "textId"    # I
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p4, "ajc$aspectInstance"    # Lcom/android/nfc/LBeamShareActivity;
    .param p5, "activity"    # Lcom/android/nfc/BeamShareActivity;
    .param p6, "builder"    # Landroid/app/AlertDialog$Builder;
    .param p7, "ajc$aroundClosure"    # Lcom/lge/aspectj/runtime/internal/AroundClosure;

    .prologue
    .line 73
    invoke-static {}, Lcom/android/nfc/LBeamShareActivity;->ajc$inlineAccessFieldGet$com_android_nfc_LBeamShareActivity$com_android_nfc_LBeamShareActivity$DBG()Z

    move-result v0

    const-string v1, "LBeamShareActivity.aj"

    const-string v2, "around() : call(AlertDialog.Builder.setNegativeButton(int, DialogInterface.OnClickListener))"

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 75
    new-instance p3, Lcom/android/nfc/LBeamShareActivity$2;

    .end local p3    # "listener":Landroid/content/DialogInterface$OnClickListener;
    invoke-direct {p3, p4, p5}, Lcom/android/nfc/LBeamShareActivity$2;-><init>(Lcom/android/nfc/LBeamShareActivity;Lcom/android/nfc/BeamShareActivity;)V

    .line 82
    .restart local p3    # "listener":Landroid/content/DialogInterface$OnClickListener;
    const v0, 0x7f080016

    invoke-virtual {p6, v0, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static final setPositiveButton_aroundBody2(Lcom/android/nfc/BeamShareActivity;Landroid/app/AlertDialog$Builder;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 94
    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static final setPositiveButton_aroundBody3$advice(Lcom/android/nfc/BeamShareActivity;Landroid/app/AlertDialog$Builder;ILandroid/content/DialogInterface$OnClickListener;Lcom/android/nfc/LBeamShareActivity;Lcom/android/nfc/BeamShareActivity;Landroid/app/AlertDialog$Builder;Lcom/lge/aspectj/runtime/internal/AroundClosure;)Landroid/app/AlertDialog$Builder;
    .locals 3
    .param p0, "ajc$this"    # Lcom/android/nfc/BeamShareActivity;
    .param p1, "target"    # Landroid/app/AlertDialog$Builder;
    .param p2, "textId"    # I
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p4, "ajc$aspectInstance"    # Lcom/android/nfc/LBeamShareActivity;
    .param p5, "activity"    # Lcom/android/nfc/BeamShareActivity;
    .param p6, "builder"    # Landroid/app/AlertDialog$Builder;
    .param p7, "ajc$aroundClosure"    # Lcom/lge/aspectj/runtime/internal/AroundClosure;

    .prologue
    .line 53
    invoke-static {}, Lcom/android/nfc/LBeamShareActivity;->ajc$inlineAccessFieldGet$com_android_nfc_LBeamShareActivity$com_android_nfc_LBeamShareActivity$DBG()Z

    move-result v0

    const-string v1, "LBeamShareActivity.aj"

    const-string v2, "around() : call(AlertDialog.Builder.setPositiveButton(int, DialogInterface.OnClickListener))"

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 55
    new-instance p3, Lcom/android/nfc/LBeamShareActivity$1;

    .end local p3    # "listener":Landroid/content/DialogInterface$OnClickListener;
    invoke-direct {p3, p4, p5}, Lcom/android/nfc/LBeamShareActivity$1;-><init>(Lcom/android/nfc/LBeamShareActivity;Lcom/android/nfc/BeamShareActivity;)V

    .line 67
    .restart local p3    # "listener":Landroid/content/DialogInterface$OnClickListener;
    const v0, 0x7f080015

    invoke-virtual {p6, v0, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method private showNfcDialogAndExit(I)V
    .locals 9
    .param p1, "msgId"    # I

    .prologue
    .line 82
    new-instance v8, Landroid/content/IntentFilter;

    const-string v0, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v8, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 83
    .local v8, "filter":Landroid/content/IntentFilter;
    iget-object v0, p0, Lcom/android/nfc/BeamShareActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v8}, Lcom/android/nfc/BeamShareActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 85
    const/4 v2, 0x5

    invoke-static {}, Lcom/android/nfc/LBeamShareActivity;->aspectOf()Lcom/android/nfc/LBeamShareActivity;

    move-result-object v3

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p0

    move-object v4, p0

    move v5, v2

    invoke-static/range {v0 .. v6}, Lcom/android/nfc/BeamShareActivity;->init$_aroundBody1$advice(Lcom/android/nfc/BeamShareActivity;Landroid/content/Context;ILcom/android/nfc/LBeamShareActivity;Landroid/content/Context;ILcom/lge/aspectj/runtime/internal/AroundClosure;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 87
    .local v1, "dialogBuilder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 88
    new-instance v0, Lcom/android/nfc/BeamShareActivity$1;

    invoke-direct {v0, p0}, Lcom/android/nfc/BeamShareActivity$1;-><init>(Lcom/android/nfc/BeamShareActivity;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 94
    const v2, 0x1040013

    new-instance v3, Lcom/android/nfc/BeamShareActivity$2;

    invoke-direct {v3, p0}, Lcom/android/nfc/BeamShareActivity$2;-><init>(Lcom/android/nfc/BeamShareActivity;)V

    invoke-static {}, Lcom/android/nfc/LBeamShareActivity;->aspectOf()Lcom/android/nfc/LBeamShareActivity;

    move-result-object v4

    const/4 v7, 0x0

    move-object v0, p0

    move-object v5, p0

    move-object v6, v1

    invoke-static/range {v0 .. v7}, Lcom/android/nfc/BeamShareActivity;->setPositiveButton_aroundBody3$advice(Lcom/android/nfc/BeamShareActivity;Landroid/app/AlertDialog$Builder;ILandroid/content/DialogInterface$OnClickListener;Lcom/android/nfc/LBeamShareActivity;Lcom/android/nfc/BeamShareActivity;Landroid/app/AlertDialog$Builder;Lcom/lge/aspectj/runtime/internal/AroundClosure;)Landroid/app/AlertDialog$Builder;

    .line 106
    const v2, 0x1040009

    new-instance v3, Lcom/android/nfc/BeamShareActivity$3;

    invoke-direct {v3, p0}, Lcom/android/nfc/BeamShareActivity$3;-><init>(Lcom/android/nfc/BeamShareActivity;)V

    invoke-static {}, Lcom/android/nfc/LBeamShareActivity;->aspectOf()Lcom/android/nfc/LBeamShareActivity;

    move-result-object v4

    const/4 v7, 0x0

    move-object v0, p0

    move-object v5, p0

    move-object v6, v1

    invoke-static/range {v0 .. v7}, Lcom/android/nfc/BeamShareActivity;->setNegativeButton_aroundBody5$advice(Lcom/android/nfc/BeamShareActivity;Landroid/app/AlertDialog$Builder;ILandroid/content/DialogInterface$OnClickListener;Lcom/android/nfc/LBeamShareActivity;Lcom/android/nfc/BeamShareActivity;Landroid/app/AlertDialog$Builder;Lcom/lge/aspectj/runtime/internal/AroundClosure;)Landroid/app/AlertDialog$Builder;

    .line 113
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 114
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/BeamShareActivity;->mUris:Ljava/util/ArrayList;

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/BeamShareActivity;->mNdefMessage:Landroid/nfc/NdefMessage;

    .line 66
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/BeamShareActivity;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 67
    invoke-virtual {p0}, Lcom/android/nfc/BeamShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/BeamShareActivity;->mLaunchIntent:Landroid/content/Intent;

    .line 68
    iget-object v0, p0, Lcom/android/nfc/BeamShareActivity;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_0

    .line 69
    const-string v0, "BeamShareActivity"

    const-string v1, "NFC adapter not present."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-virtual {p0}, Lcom/android/nfc/BeamShareActivity;->finish()V

    .line 78
    :goto_0
    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/BeamShareActivity;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 73
    const v0, 0x7f080024

    invoke-direct {p0, v0}, Lcom/android/nfc/BeamShareActivity;->showNfcDialogAndExit(I)V

    goto :goto_0

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/android/nfc/BeamShareActivity;->mLaunchIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/nfc/BeamShareActivity;->parseShareIntentAndFinish(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public parseShareIntentAndFinish(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1
    invoke-static {}, Lcom/android/nfc/LBeamShareActivity;->aspectOf()Lcom/android/nfc/LBeamShareActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, p0, v1}, Lcom/android/nfc/BeamShareActivity;->parseShareIntentAndFinish_aroundBody7$advice(Lcom/android/nfc/BeamShareActivity;Landroid/content/Intent;Lcom/android/nfc/LBeamShareActivity;Lcom/android/nfc/BeamShareActivity;Lcom/lge/aspectj/runtime/internal/AroundClosure;)V

    return-void
.end method

.method tryText(Ljava/lang/String;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 128
    invoke-static {p1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 130
    .local v0, "parsedUri":Landroid/net/Uri;
    invoke-virtual {p0, v0}, Lcom/android/nfc/BeamShareActivity;->tryUri(Landroid/net/Uri;)V

    .line 134
    .end local v0    # "parsedUri":Landroid/net/Uri;
    :goto_0
    return-void

    .line 132
    :cond_0
    new-instance v1, Landroid/nfc/NdefMessage;

    const/4 v2, 0x0

    invoke-static {v2, p1}, Landroid/nfc/NdefRecord;->createTextRecord(Ljava/lang/String;Ljava/lang/String;)Landroid/nfc/NdefRecord;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/nfc/NdefRecord;

    invoke-direct {v1, v2, v3}, Landroid/nfc/NdefMessage;-><init>(Landroid/nfc/NdefRecord;[Landroid/nfc/NdefRecord;)V

    iput-object v1, p0, Lcom/android/nfc/BeamShareActivity;->mNdefMessage:Landroid/nfc/NdefMessage;

    goto :goto_0
.end method

.method tryUri(Landroid/net/Uri;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 117
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/BeamShareActivity;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    :goto_0
    return-void

    .line 123
    :cond_1
    new-instance v0, Landroid/nfc/NdefMessage;

    invoke-static {p1}, Landroid/nfc/NdefRecord;->createUri(Landroid/net/Uri;)Landroid/nfc/NdefRecord;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/nfc/NdefRecord;

    invoke-direct {v0, v1, v2}, Landroid/nfc/NdefMessage;-><init>(Landroid/nfc/NdefRecord;[Landroid/nfc/NdefRecord;)V

    iput-object v0, p0, Lcom/android/nfc/BeamShareActivity;->mNdefMessage:Landroid/nfc/NdefMessage;

    goto :goto_0
.end method
