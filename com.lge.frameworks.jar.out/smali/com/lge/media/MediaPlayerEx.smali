.class public Lcom/lge/media/MediaPlayerEx;
.super Landroid/media/MediaPlayer;
.source "MediaPlayerEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/media/MediaPlayerEx$OnTimedTextExListener;
    }
.end annotation


# static fields
.field private static final IMEDIA_PLAYER:Ljava/lang/String; = "android.media.IMediaPlayer"

.field private static final LGE_INVOKE_GET_PARAM:I = 0x7e000002

.field private static final LGE_INVOKE_SET_PARAM:I = 0x7e000001

.field public static final LGE_MEDIAPLAYER_KEYPARAM_AUDIO_ZOOM_INFO:I = 0x23f0

.field public static final LGE_MEDIAPLAYER_KEYPARAM_AUDIO_ZOOM_INIT:I = 0x23f1

.field public static final LGE_MEDIAPLAYER_KEYPARAM_AUDIO_ZOOM_START:I = 0x23f2

.field public static final LGE_MEDIAPLAYER_KEYPARAM_HTTP_ADD_HEADER:I = 0x2329

.field public static final LGE_MEDIAPLAYER_KEYPARAM_HTTP_DLNAPLAYBACK:I = 0x2392

.field public static final LGE_MEDIAPLAYER_KEYPARAM_HTTP_FB_SCAN_MODE_START:I = 0x2334

.field public static final LGE_MEDIAPLAYER_KEYPARAM_HTTP_FF_SCAN_MODE_START:I = 0x2332

.field public static final LGE_MEDIAPLAYER_KEYPARAM_HTTP_GET_RESPONSE:I = 0x232b

.field public static final LGE_MEDIAPLAYER_KEYPARAM_HTTP_REMOVE_HEADER:I = 0x232a

.field public static final LGE_MEDIAPLAYER_KEYPARAM_HTTP_REQUEST_OPTION_CONNECTION_TIMEOUT:I = 0x238c

.field public static final LGE_MEDIAPLAYER_KEYPARAM_HTTP_REQUEST_OPTION_ENABLE_HTTPRANGE:I = 0x2390

.field public static final LGE_MEDIAPLAYER_KEYPARAM_HTTP_REQUEST_OPTION_ENABLE_TIMESEEK:I = 0x2391

.field public static final LGE_MEDIAPLAYER_KEYPARAM_HTTP_REQUEST_OPTION_KEEPCONNECTION_ON_PAUSE:I = 0x238f

.field public static final LGE_MEDIAPLAYER_KEYPARAM_HTTP_REQUEST_OPTION_KEEPCONNECTION_ON_PLAY:I = 0x238e

.field public static final LGE_MEDIAPLAYER_KEYPARAM_HTTP_REQUEST_OPTION_READ_TIMEOUT:I = 0x238d

.field public static final LGE_MEDIAPLAYER_KEYPARAM_HTTP_SB_SCAN_MODE_START:I = 0x2335

.field public static final LGE_MEDIAPLAYER_KEYPARAM_HTTP_SCAN_MODE_END:I = 0x2336

.field public static final LGE_MEDIAPLAYER_KEYPARAM_HTTP_SF_SCAN_MODE_START:I = 0x2333

.field private static final LGE_MEDIAPLAYER_KEYPARAM_LGEAUDIO_3DMUSIC:I = 0x6f001002

.field private static final LGE_MEDIAPLAYER_KEYPARAM_LGEAUDIO_CUSTOMEQ:I = 0x6f001001

.field private static final LGE_MEDIAPLAYER_KEYPARAM_LGEAUDIO_EFFECT:I = 0x6f001000

.field public static final LGE_MEDIAPLAYER_KEYPARAM_LGE_HIFI_ENABLED:I = 0x1770

.field public static final LGE_MEDIAPLAYER_KEYPARAM_PLAYBACK_FRAMERATE:I = 0x1390

.field public static final LGE_MEDIAPLAYER_KEYPARAM_PLAY_ON_LOCKSCREEN:I = 0x251c

.field private static final LGE_MEDIAPLAYER_KEYPARAM_SCREENCAPTURE:I = 0x2455

.field private static final LGE_MEDIAPLAYER_KEYPARAM_SET_NORMALIZER:I = 0x6f001010

.field public static final LGE_MEDIAPLAYER_KEYPARAM_SYSTEM_INFO_DIVXSUPPORT:I = 0x24b9

.field public static final LGE_MEDIAPLAYER_KEYPARAM_SYSTEM_INFO_HIFISUPPORT:I = 0x24ba

.field public static final MEDIA_IMPLEMENT_ERROR_DRM_NOT_AUTHORIZED:I = 0x24b8

.field public static final MEDIA_IMPLEMENT_ERROR_NOT_AVAILABLE_NETWORK:I = 0x2454

.field public static final MEDIA_IMPLEMENT_ERROR_NOT_EXIST_AUDIO:I = 0x2396

.field public static final MEDIA_IMPLEMENT_ERROR_NOT_EXIST_VIDEO:I = 0x23a0

.field public static final MEDIA_IMPLEMENT_ERROR_NOT_SUPPORT_AUDIO:I = 0x23f0

.field public static final MEDIA_IMPLEMENT_ERROR_NOT_SUPPORT_BITRATE:I = 0x23aa

.field public static final MEDIA_IMPLEMENT_ERROR_NOT_SUPPORT_MEDIA:I = 0x2404

.field public static final MEDIA_IMPLEMENT_ERROR_NOT_SUPPORT_RESOLUTIONS:I = 0x238c

.field public static final MEDIA_IMPLEMENT_ERROR_NOT_SUPPORT_VIDEO:I = 0x23fa

.field public static final MEDIA_MIMETYPE_CONTAINER_MPEG2TS:Ljava/lang/String; = "video/mp2ts"

.field public static final MEDIA_MIMETYPE_TEXT_ASS:Ljava/lang/String; = "text/ass"

.field public static final MEDIA_MIMETYPE_TEXT_CLOSEDCAPTION:Ljava/lang/String; = "text/closedcaption"

.field public static final MEDIA_MIMETYPE_TEXT_EX:Ljava/lang/String; = "text/ex"

.field public static final MEDIA_MIMETYPE_TEXT_SSA:Ljava/lang/String; = "text/ssa"

.field public static final MEDIA_MIMETYPE_TEXT_XSUB:Ljava/lang/String; = "text/xsub"

.field private static final MEDIA_TIMED_TEXT_EX:I = 0x258

.field private static final TAG:Ljava/lang/String; = "MediaPlayerEX"


# instance fields
.field private mOnTimedTextExListener:Lcom/lge/media/MediaPlayerEx$OnTimedTextExListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-string v0, "hook_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 511
    invoke-direct {p0}, Landroid/media/MediaPlayer;-><init>()V

    .line 528
    return-void
.end method

.method private native _screenCapture()Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method


# virtual methods
.method public getIntParameter(I)I
    .locals 2
    .param p1, "key"    # I

    .prologue
    .line 891
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 892
    .local v0, "p":Landroid/os/Parcel;
    invoke-virtual {p0, p1, v0}, Lcom/lge/media/MediaPlayerEx;->getParameter(ILandroid/os/Parcel;)V

    .line 893
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 894
    .local v1, "ret":I
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 895
    return v1
.end method

.method public getParameter(ILandroid/os/Parcel;)V
    .locals 3
    .param p1, "key"    # I
    .param p2, "reply"    # Landroid/os/Parcel;

    .prologue
    .line 826
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 830
    .local v1, "request":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IMediaPlayer"

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 831
    const v2, 0x7e000002

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 832
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 833
    invoke-virtual {p0, v1, p2}, Lcom/lge/media/MediaPlayerEx;->invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 843
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 845
    :goto_0
    return-void

    .line 836
    :catch_0
    move-exception v0

    .line 843
    .local v0, "ex":Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getParcelParameter(I)Landroid/os/Parcel;
    .locals 1
    .param p1, "key"    # I

    .prologue
    .line 859
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 860
    .local v0, "p":Landroid/os/Parcel;
    invoke-virtual {p0, p1, v0}, Lcom/lge/media/MediaPlayerEx;->getParameter(ILandroid/os/Parcel;)V

    .line 861
    return-object v0
.end method

.method public getStringParameter(I)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # I

    .prologue
    .line 874
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 875
    .local v0, "p":Landroid/os/Parcel;
    invoke-virtual {p0, p1, v0}, Lcom/lge/media/MediaPlayerEx;->getParameter(ILandroid/os/Parcel;)V

    .line 876
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 877
    .local v1, "ret":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 878
    return-object v1
.end method

.method public screenCapture()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 1016
    const-string v1, "MediaPlayerEX"

    const-string v2, "[screenCapture] screenCapture start"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    invoke-direct {p0}, Lcom/lge/media/MediaPlayerEx;->_screenCapture()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1019
    .local v0, "vFrame":Landroid/graphics/Bitmap;
    return-object v0
.end method

.method public setLGAudioEffect(IIII)I
    .locals 5
    .param p1, "iEnable"    # I
    .param p2, "iType"    # I
    .param p3, "iPath"    # I
    .param p4, "iMedia"    # I

    .prologue
    const/4 v2, 0x1

    .line 941
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 942
    .local v1, "parcel":Landroid/os/Parcel;
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 943
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 944
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 945
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 947
    const v3, 0x6f001000

    invoke-virtual {p0, v3, v1}, Lcom/lge/media/MediaPlayerEx;->setParameter(ILandroid/os/Parcel;)Z

    move-result v0

    .line 948
    .local v0, "isAudioEffect":Z
    if-eq v0, v2, :cond_0

    .line 950
    const-string v3, "MediaPlayerEX"

    const-string v4, "[setLGAudioEffect] setParameter fail"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setLGSoleCustomEQ(II)I
    .locals 5
    .param p1, "iNumBand"    # I
    .param p2, "iNumGain"    # I

    .prologue
    const/4 v2, 0x1

    .line 972
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 973
    .local v1, "parcel":Landroid/os/Parcel;
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 974
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 976
    const v3, 0x6f001001

    invoke-virtual {p0, v3, v1}, Lcom/lge/media/MediaPlayerEx;->setParameter(ILandroid/os/Parcel;)Z

    move-result v0

    .line 977
    .local v0, "isCustomEQ":Z
    if-eq v0, v2, :cond_0

    .line 979
    const-string v3, "MediaPlayerEX"

    const-string v4, "[setLGSoleCustomEQ] setParameter fail"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setLGSoundNormalizerOnOff(I)V
    .locals 4
    .param p1, "normalizerOnOff"    # I

    .prologue
    .line 995
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 996
    .local v0, "parcel":Landroid/os/Parcel;
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 998
    const v2, 0x6f001010

    invoke-virtual {p0, v2, v0}, Lcom/lge/media/MediaPlayerEx;->setParameter(ILandroid/os/Parcel;)Z

    move-result v1

    .line 999
    .local v1, "ret":Z
    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 1001
    const-string v2, "MediaPlayerEX"

    const-string v3, "[setLGSoundNormalizerOnOff] setParameter fail"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    :cond_0
    return-void
.end method

.method public setOnTimedTextExListener(Lcom/lge/media/MediaPlayerEx$OnTimedTextExListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lge/media/MediaPlayerEx$OnTimedTextExListener;

    .prologue
    .line 571
    iput-object p1, p0, Lcom/lge/media/MediaPlayerEx;->mOnTimedTextExListener:Lcom/lge/media/MediaPlayerEx$OnTimedTextExListener;

    .line 572
    return-void
.end method

.method public setParameter(II)Z
    .locals 2
    .param p1, "key"    # I
    .param p2, "value"    # I

    .prologue
    .line 809
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 810
    .local v0, "p":Landroid/os/Parcel;
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 811
    invoke-virtual {p0, p1, v0}, Lcom/lge/media/MediaPlayerEx;->setParameter(ILandroid/os/Parcel;)Z

    move-result v1

    .line 812
    .local v1, "ret":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 813
    return v1
.end method

.method public setParameter(ILandroid/os/Parcel;)Z
    .locals 8
    .param p1, "key"    # I
    .param p2, "value"    # Landroid/os/Parcel;

    .prologue
    const/4 v5, 0x0

    .line 751
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 752
    .local v2, "request":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 753
    .local v1, "reply":Landroid/os/Parcel;
    const/4 v3, 0x0

    .line 757
    .local v3, "ret":Z
    :try_start_0
    const-string v6, "android.media.IMediaPlayer"

    invoke-virtual {v2, v6}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 758
    const v6, 0x7e000001

    invoke-virtual {v2, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 759
    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 760
    const/4 v6, 0x0

    invoke-virtual {p2}, Landroid/os/Parcel;->dataSize()I

    move-result v7

    invoke-virtual {v2, p2, v6, v7}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    .line 762
    invoke-virtual {p0, v2, v1}, Lcom/lge/media/MediaPlayerEx;->invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V

    .line 763
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-nez v6, :cond_0

    const/4 v3, 0x1

    .line 773
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 774
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    move v4, v3

    .line 777
    .end local v3    # "ret":Z
    .local v4, "ret":I
    :goto_1
    return v4

    .end local v4    # "ret":I
    .restart local v3    # "ret":Z
    :cond_0
    move v3, v5

    .line 763
    goto :goto_0

    .line 766
    :catch_0
    move-exception v0

    .line 773
    .local v0, "ex":Ljava/lang/RuntimeException;
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 774
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    move v4, v3

    .restart local v4    # "ret":I
    goto :goto_1

    .line 773
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    .end local v4    # "ret":I
    :catchall_0
    move-exception v5

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 774
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v5
.end method

.method public setParameter(ILjava/lang/String;)Z
    .locals 2
    .param p1, "key"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 791
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 792
    .local v0, "p":Landroid/os/Parcel;
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 793
    invoke-virtual {p0, p1, v0}, Lcom/lge/media/MediaPlayerEx;->setParameter(ILandroid/os/Parcel;)Z

    move-result v1

    .line 794
    .local v1, "ret":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 795
    return v1
.end method
