.class public Lcom/lge/camera/dialog/CustomAlertDialog;
.super Landroid/app/Dialog;
.source "CustomAlertDialog.java"


# instance fields
.field private final completeListener:Landroid/media/SoundPool$OnLoadCompleteListener;

.field private mActivity:Landroid/app/Activity;

.field private mImage:Landroid/widget/ImageView;

.field private mMessage:Landroid/widget/TextView;

.field private mOkButton:Landroid/widget/Button;

.field private mOrientation:I

.field private mSound_pool:Landroid/media/SoundPool;

.field private mSound_voiceShutter_LG:I

.field private mSound_voiceShutter_cheese:I

.field private mSound_voiceShutter_kimchi:I

.field private mSound_voiceShutter_smile:I

.field private mSound_voiceShutter_torimasu:I

.field private mSound_voiceShutter_whisky:I

.field private mTitle:Landroid/widget/TextView;

.field private mTitleInContent:Landroid/widget/TextView;

.field private mVoiceCommandStream:I


# direct methods
.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orientation"    # I

    .prologue
    const/4 v1, -0x1

    const/4 v3, 0x0

    .line 55
    const v0, 0x7f0b000f

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 43
    iput v3, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mSound_voiceShutter_cheese:I

    .line 44
    iput v3, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mSound_voiceShutter_smile:I

    .line 45
    iput v3, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mSound_voiceShutter_whisky:I

    .line 46
    iput v3, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mSound_voiceShutter_kimchi:I

    .line 47
    iput v3, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mSound_voiceShutter_LG:I

    .line 48
    iput v3, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mSound_voiceShutter_torimasu:I

    .line 50
    iput v3, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mVoiceCommandStream:I

    .line 51
    iput v3, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mOrientation:I

    .line 317
    new-instance v0, Lcom/lge/camera/dialog/CustomAlertDialog$3;

    invoke-direct {v0, p0}, Lcom/lge/camera/dialog/CustomAlertDialog$3;-><init>(Lcom/lge/camera/dialog/CustomAlertDialog;)V

    iput-object v0, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->completeListener:Landroid/media/SoundPool$OnLoadCompleteListener;

    .line 56
    const v0, 0x7f030015

    invoke-virtual {p0, v0}, Lcom/lge/camera/dialog/CustomAlertDialog;->setContentView(I)V

    .line 58
    invoke-virtual {p0}, Lcom/lge/camera/dialog/CustomAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 59
    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x6

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v3}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mSound_pool:Landroid/media/SoundPool;

    .line 60
    iget-object v0, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mSound_pool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->completeListener:Landroid/media/SoundPool$OnLoadCompleteListener;

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 62
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mActivity:Landroid/app/Activity;

    .line 63
    iput p2, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mOrientation:I

    .line 65
    const v0, 0x7f0d00bb

    invoke-virtual {p0, v0}, Lcom/lge/camera/dialog/CustomAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mTitle:Landroid/widget/TextView;

    .line 66
    const v0, 0x7f0d00bd

    invoke-virtual {p0, v0}, Lcom/lge/camera/dialog/CustomAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mTitleInContent:Landroid/widget/TextView;

    .line 67
    const v0, 0x7f0d00be

    invoke-virtual {p0, v0}, Lcom/lge/camera/dialog/CustomAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mImage:Landroid/widget/ImageView;

    .line 68
    const v0, 0x7f0d00c1

    invoke-virtual {p0, v0}, Lcom/lge/camera/dialog/CustomAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mMessage:Landroid/widget/TextView;

    .line 69
    const v0, 0x7f0d00c4

    invoke-virtual {p0, v0}, Lcom/lge/camera/dialog/CustomAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mOkButton:Landroid/widget/Button;

    .line 70
    iget-object v0, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mOkButton:Landroid/widget/Button;

    new-instance v1, Lcom/lge/camera/dialog/CustomAlertDialog$1;

    invoke-direct {v1, p0}, Lcom/lge/camera/dialog/CustomAlertDialog$1;-><init>(Lcom/lge/camera/dialog/CustomAlertDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    invoke-direct {p0}, Lcom/lge/camera/dialog/CustomAlertDialog;->loadVoiceGuideSound()V

    .line 78
    return-void
.end method

.method private isDontNeedToSoundWord()Z
    .locals 15

    .prologue
    .line 183
    :try_start_0
    iget-object v13, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mActivity:Landroid/app/Activity;

    const v14, 0x7f0a013c

    invoke-virtual {v13, v14}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, "commandWordCheese":Ljava/lang/String;
    iget-object v13, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mActivity:Landroid/app/Activity;

    const v14, 0x7f0a0142

    invoke-virtual {v13, v14}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 188
    .local v7, "soundWordCheese":Ljava/lang/String;
    iget-object v13, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mActivity:Landroid/app/Activity;

    const v14, 0x7f0a013e

    invoke-virtual {v13, v14}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 190
    .local v3, "commandWordSmile":Ljava/lang/String;
    iget-object v13, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mActivity:Landroid/app/Activity;

    const v14, 0x7f0a0144

    invoke-virtual {v13, v14}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    .line 193
    .local v10, "soundWordSmile":Ljava/lang/String;
    iget-object v13, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mActivity:Landroid/app/Activity;

    const v14, 0x7f0a013f

    invoke-virtual {v13, v14}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 195
    .local v5, "commandWordWhisky":Ljava/lang/String;
    iget-object v13, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mActivity:Landroid/app/Activity;

    const v14, 0x7f0a0145

    invoke-virtual {v13, v14}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    .line 198
    .local v12, "soundWordWhisky":Ljava/lang/String;
    iget-object v13, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mActivity:Landroid/app/Activity;

    const v14, 0x7f0a013b

    invoke-virtual {v13, v14}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 200
    .local v1, "commandWordKimchi":Ljava/lang/String;
    iget-object v13, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mActivity:Landroid/app/Activity;

    const v14, 0x7f0a0141

    invoke-virtual {v13, v14}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    .line 203
    .local v8, "soundWordKimchi":Ljava/lang/String;
    iget-object v13, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mActivity:Landroid/app/Activity;

    const v14, 0x7f0a013d

    invoke-virtual {v13, v14}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 205
    .local v2, "commandWordLG":Ljava/lang/String;
    iget-object v13, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mActivity:Landroid/app/Activity;

    const v14, 0x7f0a0143

    invoke-virtual {v13, v14}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    .line 208
    .local v9, "soundWordLG":Ljava/lang/String;
    iget-object v13, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mActivity:Landroid/app/Activity;

    const v14, 0x7f0a0140

    invoke-virtual {v13, v14}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 210
    .local v4, "commandWordTorimasu":Ljava/lang/String;
    iget-object v13, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mActivity:Landroid/app/Activity;

    const v14, 0x7f0a0146

    invoke-virtual {v13, v14}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    .line 213
    .local v11, "soundWordTorimasu":Ljava/lang/String;
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    const-string v13, "whiskey"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    const-string v13, "whisky"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    :cond_0
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/MissingFormatArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v13

    if-eqz v13, :cond_1

    .line 220
    const/4 v13, 0x1

    .line 229
    .end local v0    # "commandWordCheese":Ljava/lang/String;
    .end local v1    # "commandWordKimchi":Ljava/lang/String;
    .end local v2    # "commandWordLG":Ljava/lang/String;
    .end local v3    # "commandWordSmile":Ljava/lang/String;
    .end local v4    # "commandWordTorimasu":Ljava/lang/String;
    .end local v5    # "commandWordWhisky":Ljava/lang/String;
    .end local v7    # "soundWordCheese":Ljava/lang/String;
    .end local v8    # "soundWordKimchi":Ljava/lang/String;
    .end local v9    # "soundWordLG":Ljava/lang/String;
    .end local v10    # "soundWordSmile":Ljava/lang/String;
    .end local v11    # "soundWordTorimasu":Ljava/lang/String;
    .end local v12    # "soundWordWhisky":Ljava/lang/String;
    :goto_0
    return v13

    .line 223
    :catch_0
    move-exception v6

    .line 224
    .local v6, "e":Ljava/lang/NullPointerException;
    const-string v13, "CameraApp"

    const-string v14, "NullPointerException:"

    invoke-static {v13, v14, v6}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 225
    const/4 v13, 0x0

    goto :goto_0

    .line 226
    .end local v6    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v6

    .line 227
    .local v6, "e":Ljava/util/MissingFormatArgumentException;
    const-string v13, "CameraApp"

    const-string v14, "MissingFormatArgumentException:"

    invoke-static {v13, v14, v6}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 229
    .end local v6    # "e":Ljava/util/MissingFormatArgumentException;
    :cond_1
    const/4 v13, 0x0

    goto :goto_0
.end method

.method private loadVoiceGuideSound()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 284
    iget-object v0, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mSound_pool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mSound_pool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060011

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mSound_voiceShutter_cheese:I

    .line 287
    iget-object v0, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mSound_pool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060014

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mSound_voiceShutter_smile:I

    .line 289
    iget-object v0, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mSound_pool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060016

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mSound_voiceShutter_whisky:I

    .line 291
    iget-object v0, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mSound_pool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060012

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mSound_voiceShutter_kimchi:I

    .line 293
    iget-object v0, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mSound_pool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060013

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mSound_voiceShutter_LG:I

    .line 295
    iget-object v0, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mSound_pool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060015

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mSound_voiceShutter_torimasu:I

    .line 298
    :cond_0
    return-void
.end method

.method private setMultiCommandHelpGuide()V
    .locals 13

    .prologue
    .line 127
    const v8, 0x7f0d0237

    :try_start_0
    invoke-virtual {p0, v8}, Lcom/lge/camera/dialog/CustomAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 128
    .local v3, "voiceSoundText_cheese":Landroid/widget/TextView;
    const v8, 0x7f0d023b

    invoke-virtual {p0, v8}, Lcom/lge/camera/dialog/CustomAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 129
    .local v5, "voiceSoundText_smile":Landroid/widget/TextView;
    const v8, 0x7f0d023f

    invoke-virtual {p0, v8}, Lcom/lge/camera/dialog/CustomAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 130
    .local v7, "voiceSoundText_whisky":Landroid/widget/TextView;
    const v8, 0x7f0d0243

    invoke-virtual {p0, v8}, Lcom/lge/camera/dialog/CustomAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 131
    .local v4, "voiceSoundText_kimchi":Landroid/widget/TextView;
    const v8, 0x7f0d0247

    invoke-virtual {p0, v8}, Lcom/lge/camera/dialog/CustomAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 132
    .local v2, "voiceSoundText_LG":Landroid/widget/TextView;
    const v8, 0x7f0d024b

    invoke-virtual {p0, v8}, Lcom/lge/camera/dialog/CustomAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 134
    .local v6, "voiceSoundText_torimasu":Landroid/widget/TextView;
    invoke-direct {p0}, Lcom/lge/camera/dialog/CustomAlertDialog;->isDontNeedToSoundWord()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 135
    const/16 v8, 0x8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 136
    const/16 v8, 0x8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 137
    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 138
    const/16 v8, 0x8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 139
    const/16 v8, 0x8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 140
    const/16 v8, 0x8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 156
    :goto_0
    const v9, 0x7f0d0235

    const/4 v10, 0x0

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-direct {p0, v9, v10, v8}, Lcom/lge/camera/dialog/CustomAlertDialog;->setSpeakerClickListener(IILjava/lang/String;)V

    .line 158
    const v9, 0x7f0d0239

    const/4 v10, 0x1

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-direct {p0, v9, v10, v8}, Lcom/lge/camera/dialog/CustomAlertDialog;->setSpeakerClickListener(IILjava/lang/String;)V

    .line 160
    const v9, 0x7f0d023d

    const/4 v10, 0x2

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-direct {p0, v9, v10, v8}, Lcom/lge/camera/dialog/CustomAlertDialog;->setSpeakerClickListener(IILjava/lang/String;)V

    .line 162
    const v9, 0x7f0d0241

    const/4 v10, 0x3

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-direct {p0, v9, v10, v8}, Lcom/lge/camera/dialog/CustomAlertDialog;->setSpeakerClickListener(IILjava/lang/String;)V

    .line 164
    const v9, 0x7f0d0245

    const/4 v10, 0x4

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-direct {p0, v9, v10, v8}, Lcom/lge/camera/dialog/CustomAlertDialog;->setSpeakerClickListener(IILjava/lang/String;)V

    .line 166
    const v9, 0x7f0d0249

    const/4 v10, 0x5

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-direct {p0, v9, v10, v8}, Lcom/lge/camera/dialog/CustomAlertDialog;->setSpeakerClickListener(IILjava/lang/String;)V

    .line 169
    const v8, 0x7f0d00b7

    invoke-virtual {p0, v8}, Lcom/lge/camera/dialog/CustomAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 171
    .local v1, "parentView":Landroid/view/View;
    iget-object v9, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mActivity:Landroid/app/Activity;

    iget v8, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mOrientation:I

    if-eqz v8, :cond_0

    iget v8, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mOrientation:I

    const/4 v10, 0x2

    if-ne v8, v10, :cond_2

    :cond_0
    const/4 v8, 0x1

    :goto_1
    invoke-static {v9, v1, v8}, Lcom/lge/camera/util/DialogCreater;->setCommandLayout(Landroid/content/Context;Landroid/view/View;Z)V

    .line 179
    .end local v1    # "parentView":Landroid/view/View;
    .end local v2    # "voiceSoundText_LG":Landroid/widget/TextView;
    .end local v3    # "voiceSoundText_cheese":Landroid/widget/TextView;
    .end local v4    # "voiceSoundText_kimchi":Landroid/widget/TextView;
    .end local v5    # "voiceSoundText_smile":Landroid/widget/TextView;
    .end local v6    # "voiceSoundText_torimasu":Landroid/widget/TextView;
    .end local v7    # "voiceSoundText_whisky":Landroid/widget/TextView;
    :goto_2
    return-void

    .line 142
    .restart local v2    # "voiceSoundText_LG":Landroid/widget/TextView;
    .restart local v3    # "voiceSoundText_cheese":Landroid/widget/TextView;
    .restart local v4    # "voiceSoundText_kimchi":Landroid/widget/TextView;
    .restart local v5    # "voiceSoundText_smile":Landroid/widget/TextView;
    .restart local v6    # "voiceSoundText_torimasu":Landroid/widget/TextView;
    .restart local v7    # "voiceSoundText_whisky":Landroid/widget/TextView;
    :cond_1
    const-string v8, "[%s]"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mActivity:Landroid/app/Activity;

    const v12, 0x7f0a0142

    invoke-virtual {v11, v12}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    const-string v8, "[%s]"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mActivity:Landroid/app/Activity;

    const v12, 0x7f0a0144

    invoke-virtual {v11, v12}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    const-string v8, "[%s]"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mActivity:Landroid/app/Activity;

    const v12, 0x7f0a0145

    invoke-virtual {v11, v12}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    const-string v8, "[%s]"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mActivity:Landroid/app/Activity;

    const v12, 0x7f0a0141

    invoke-virtual {v11, v12}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    const-string v8, "[%s]"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mActivity:Landroid/app/Activity;

    const v12, 0x7f0a0143

    invoke-virtual {v11, v12}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    const-string v8, "[%s]"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mActivity:Landroid/app/Activity;

    const v12, 0x7f0a0146

    invoke-virtual {v11, v12}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/MissingFormatArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 174
    .end local v2    # "voiceSoundText_LG":Landroid/widget/TextView;
    .end local v3    # "voiceSoundText_cheese":Landroid/widget/TextView;
    .end local v4    # "voiceSoundText_kimchi":Landroid/widget/TextView;
    .end local v5    # "voiceSoundText_smile":Landroid/widget/TextView;
    .end local v6    # "voiceSoundText_torimasu":Landroid/widget/TextView;
    .end local v7    # "voiceSoundText_whisky":Landroid/widget/TextView;
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v8, "CameraApp"

    const-string v9, "NullPointerException:"

    invoke-static {v8, v9, v0}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 171
    .end local v0    # "e":Ljava/lang/NullPointerException;
    .restart local v1    # "parentView":Landroid/view/View;
    .restart local v2    # "voiceSoundText_LG":Landroid/widget/TextView;
    .restart local v3    # "voiceSoundText_cheese":Landroid/widget/TextView;
    .restart local v4    # "voiceSoundText_kimchi":Landroid/widget/TextView;
    .restart local v5    # "voiceSoundText_smile":Landroid/widget/TextView;
    .restart local v6    # "voiceSoundText_torimasu":Landroid/widget/TextView;
    .restart local v7    # "voiceSoundText_whisky":Landroid/widget/TextView;
    :cond_2
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 176
    .end local v1    # "parentView":Landroid/view/View;
    .end local v2    # "voiceSoundText_LG":Landroid/widget/TextView;
    .end local v3    # "voiceSoundText_cheese":Landroid/widget/TextView;
    .end local v4    # "voiceSoundText_kimchi":Landroid/widget/TextView;
    .end local v5    # "voiceSoundText_smile":Landroid/widget/TextView;
    .end local v6    # "voiceSoundText_torimasu":Landroid/widget/TextView;
    .end local v7    # "voiceSoundText_whisky":Landroid/widget/TextView;
    :catch_1
    move-exception v0

    .line 177
    .local v0, "e":Ljava/util/MissingFormatArgumentException;
    const-string v8, "CameraApp"

    const-string v9, "MissingFormatArgumentException:"

    invoke-static {v8, v9, v0}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2
.end method

.method private setSpeakerClickListener(IILjava/lang/String;)V
    .locals 2
    .param p1, "resId"    # I
    .param p2, "voiceSound"    # I
    .param p3, "talkBackMessage"    # Ljava/lang/String;

    .prologue
    .line 233
    invoke-virtual {p0, p1}, Lcom/lge/camera/dialog/CustomAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 234
    .local v0, "speakerImage":Landroid/widget/ImageView;
    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 235
    new-instance v1, Lcom/lge/camera/dialog/CustomAlertDialog$2;

    invoke-direct {v1, p0, p2}, Lcom/lge/camera/dialog/CustomAlertDialog$2;-><init>(Lcom/lge/camera/dialog/CustomAlertDialog;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    return-void
.end method

.method private unloadSoundPool(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 312
    iget-object v0, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mSound_pool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    if-lez p1, :cond_0

    .line 313
    iget-object v0, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mSound_pool:Landroid/media/SoundPool;

    invoke-virtual {v0, p1}, Landroid/media/SoundPool;->unload(I)Z

    .line 315
    :cond_0
    return-void
.end method

.method private unloadVoiceGuideSound()V
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mSound_pool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 302
    iget v0, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mSound_voiceShutter_cheese:I

    invoke-direct {p0, v0}, Lcom/lge/camera/dialog/CustomAlertDialog;->unloadSoundPool(I)V

    .line 303
    iget v0, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mSound_voiceShutter_smile:I

    invoke-direct {p0, v0}, Lcom/lge/camera/dialog/CustomAlertDialog;->unloadSoundPool(I)V

    .line 304
    iget v0, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mSound_voiceShutter_whisky:I

    invoke-direct {p0, v0}, Lcom/lge/camera/dialog/CustomAlertDialog;->unloadSoundPool(I)V

    .line 305
    iget v0, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mSound_voiceShutter_kimchi:I

    invoke-direct {p0, v0}, Lcom/lge/camera/dialog/CustomAlertDialog;->unloadSoundPool(I)V

    .line 306
    iget v0, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mSound_voiceShutter_LG:I

    invoke-direct {p0, v0}, Lcom/lge/camera/dialog/CustomAlertDialog;->unloadSoundPool(I)V

    .line 307
    iget v0, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mSound_voiceShutter_torimasu:I

    invoke-direct {p0, v0}, Lcom/lge/camera/dialog/CustomAlertDialog;->unloadSoundPool(I)V

    .line 309
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInsatnceState"    # Landroid/os/Bundle;

    .prologue
    .line 82
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 83
    return-void
.end method

.method public playVoiceCommandSound(I)V
    .locals 7
    .param p1, "soundIndex"    # I

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 253
    const-string v0, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "playVoiceCommandSound in help activity guide popup : soundIndex = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mSound_pool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 257
    const/4 v1, 0x0

    .line 258
    .local v1, "soundSource":I
    packed-switch p1, :pswitch_data_0

    .line 279
    :goto_0
    iget-object v0, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mSound_pool:Landroid/media/SoundPool;

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mVoiceCommandStream:I

    .line 281
    .end local v1    # "soundSource":I
    :cond_0
    return-void

    .line 260
    .restart local v1    # "soundSource":I
    :pswitch_0
    iget v1, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mSound_voiceShutter_cheese:I

    .line 261
    goto :goto_0

    .line 263
    :pswitch_1
    iget v1, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mSound_voiceShutter_smile:I

    .line 264
    goto :goto_0

    .line 266
    :pswitch_2
    iget v1, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mSound_voiceShutter_whisky:I

    .line 267
    goto :goto_0

    .line 269
    :pswitch_3
    iget v1, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mSound_voiceShutter_kimchi:I

    .line 270
    goto :goto_0

    .line 272
    :pswitch_4
    iget v1, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mSound_voiceShutter_LG:I

    .line 273
    goto :goto_0

    .line 275
    :pswitch_5
    iget v1, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mSound_voiceShutter_torimasu:I

    goto :goto_0

    .line 258
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public setContentView(I)V
    .locals 0
    .param p1, "layouutID"    # I

    .prologue
    .line 87
    invoke-super {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 88
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mMessage:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    :cond_0
    return-void
.end method

.method public setMessageImage(II)V
    .locals 1
    .param p1, "resource"    # I
    .param p2, "level"    # I

    .prologue
    .line 111
    iget-object v0, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 113
    iget-object v0, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 115
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v0, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mTitleInContent:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    :cond_0
    return-void
.end method

.method public setVoiceShutterVisibility(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    const v0, 0x7f0d0233

    .line 118
    if-eqz p1, :cond_0

    .line 119
    invoke-virtual {p0, v0}, Lcom/lge/camera/dialog/CustomAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 123
    :goto_0
    return-void

    .line 121
    :cond_0
    invoke-virtual {p0, v0}, Lcom/lge/camera/dialog/CustomAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public show()V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/lge/camera/dialog/CustomAlertDialog;->setMultiCommandHelpGuide()V

    .line 101
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 102
    return-void
.end method

.method public stopVoiceCommandSound()V
    .locals 2

    .prologue
    .line 244
    const-string v0, "CameraApp"

    const-string v1, "stopVoiceCommandSound "

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mSound_pool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 246
    iget v0, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mVoiceCommandStream:I

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mSound_pool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mVoiceCommandStream:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    .line 250
    :cond_0
    return-void
.end method

.method public unbind()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 324
    iput-object v0, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mActivity:Landroid/app/Activity;

    .line 325
    iput-object v0, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mTitle:Landroid/widget/TextView;

    .line 326
    iput-object v0, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mTitleInContent:Landroid/widget/TextView;

    .line 327
    iput-object v0, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mImage:Landroid/widget/ImageView;

    .line 328
    iput-object v0, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mMessage:Landroid/widget/TextView;

    .line 329
    iput-object v0, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mOkButton:Landroid/widget/Button;

    .line 331
    invoke-direct {p0}, Lcom/lge/camera/dialog/CustomAlertDialog;->unloadVoiceGuideSound()V

    .line 332
    iput-object v0, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mSound_pool:Landroid/media/SoundPool;

    .line 333
    return-void
.end method
