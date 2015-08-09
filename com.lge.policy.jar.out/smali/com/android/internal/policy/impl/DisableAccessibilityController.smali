.class public Lcom/android/internal/policy/impl/DisableAccessibilityController;
.super Ljava/lang/Object;
.source "DisableAccessibilityController.java"


# static fields
.field private static final DISABLE_ACCESSIBILITY_DELAY_MILLIS:I = 0x189c

.field private static final DISABLE_READY_DELAY_MILLIS:I = 0x11f8

.field public static final MESSAGE_DISABLE_ACCESSIBILITY:I = 0x3

.field public static final MESSAGE_DISABLE_READY:I = 0x4

.field public static final MESSAGE_SPEAK_DISABLE_CANCELED:I = 0x2

.field public static final MESSAGE_SPEAK_WARNING:I = 0x1

.field private static final QTAG:Ljava/lang/String; = "Qtalkback"

.field private static final SPEAK_WARNING_DELAY_MILLIS:I = 0xa

.field private static final TALKBACK_PREFERENCE_KEY:Ljava/lang/String; = "com.google.android.marvin.talkback/com.google.android.marvin.talkback.TalkBackService"


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/IAccessibilityManager;

.field private mCanceled:Z

.field private final mContext:Landroid/content/Context;

.field private mDestroyed:Z

.field private mDisable:Z

.field private mFirstPointerDownX:F

.field private mFirstPointerDownY:F

.field private final mHandler:Landroid/os/Handler;

.field private mSecondPointerDownX:F

.field private mSecondPointerDownY:F

.field private final mTone:Landroid/media/Ringtone;

.field private final mTouchSlop:F

.field private final mTts:Landroid/speech/tts/TextToSpeech;

.field private final mUserManager:Landroid/os/UserManager;

.field private final mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lcom/android/internal/policy/impl/DisableAccessibilityController$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/DisableAccessibilityController$1;-><init>(Lcom/android/internal/policy/impl/DisableAccessibilityController;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/DisableAccessibilityController;->mHandler:Landroid/os/Handler;

    .line 88
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/DisableAccessibilityController;->mWindowManager:Landroid/view/IWindowManager;

    .line 91
    const-string v0, "accessibility"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/DisableAccessibilityController;->mAccessibilityManager:Landroid/view/accessibility/IAccessibilityManager;

    .line 112
    iput-object p1, p0, Lcom/android/internal/policy/impl/DisableAccessibilityController;->mContext:Landroid/content/Context;

    .line 113
    iget-object v0, p0, Lcom/android/internal/policy/impl/DisableAccessibilityController;->mContext:Landroid/content/Context;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/DisableAccessibilityController;->mUserManager:Landroid/os/UserManager;

    .line 114
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    new-instance v1, Lcom/android/internal/policy/impl/DisableAccessibilityController$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/DisableAccessibilityController$2;-><init>(Lcom/android/internal/policy/impl/DisableAccessibilityController;)V

    invoke-direct {v0, p1, v1}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/DisableAccessibilityController;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 122
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-static {p1, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/DisableAccessibilityController;->mTone:Landroid/media/Ringtone;

    .line 123
    iget-object v0, p0, Lcom/android/internal/policy/impl/DisableAccessibilityController;->mTone:Landroid/media/Ringtone;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 124
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050070

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/internal/policy/impl/DisableAccessibilityController;->mTouchSlop:F

    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/DisableAccessibilityController;->mDisable:Z

    .line 126
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/DisableAccessibilityController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/DisableAccessibilityController;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/internal/policy/impl/DisableAccessibilityController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/DisableAccessibilityController;)Landroid/speech/tts/TextToSpeech;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/DisableAccessibilityController;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/internal/policy/impl/DisableAccessibilityController;->mTts:Landroid/speech/tts/TextToSpeech;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/DisableAccessibilityController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/DisableAccessibilityController;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/internal/policy/impl/DisableAccessibilityController;->disableAccessibility()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/DisableAccessibilityController;)Landroid/media/Ringtone;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/DisableAccessibilityController;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/internal/policy/impl/DisableAccessibilityController;->mTone:Landroid/media/Ringtone;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/DisableAccessibilityController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/DisableAccessibilityController;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/DisableAccessibilityController;->mDestroyed:Z

    return v0
.end method

.method public static canDisableAccessibilityViaGesture(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 129
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 132
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 134
    const/4 v1, 0x0

    .line 136
    :cond_0
    return v1
.end method

.method private cancel()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x3

    const/4 v1, 0x1

    .line 207
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/DisableAccessibilityController;->mCanceled:Z

    .line 208
    iget-object v0, p0, Lcom/android/internal/policy/impl/DisableAccessibilityController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 209
    iget-object v0, p0, Lcom/android/internal/policy/impl/DisableAccessibilityController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 213
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/DisableAccessibilityController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 214
    iget-object v0, p0, Lcom/android/internal/policy/impl/DisableAccessibilityController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 215
    iget-object v0, p0, Lcom/android/internal/policy/impl/DisableAccessibilityController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 217
    :cond_1
    return-void

    .line 210
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/DisableAccessibilityController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/android/internal/policy/impl/DisableAccessibilityController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private disableAccessibility()V
    .locals 13

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 220
    iget-object v10, p0, Lcom/android/internal/policy/impl/DisableAccessibilityController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v10}, Lcom/android/internal/policy/impl/DisableAccessibilityController;->getEnabledAccessibilityServices(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 221
    .local v0, "enabledServices":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 222
    const-string v8, "Qtalkback"

    const-string v9, "enabledServices.isEmpty()"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :goto_0
    return-void

    .line 226
    :cond_0
    const-string v10, "Qtalkback"

    const-string v11, "disableAccessibility call!!!"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const/4 v2, 0x0

    .line 229
    .local v2, "keyguardLocked":Z
    :try_start_0
    iget-object v10, p0, Lcom/android/internal/policy/impl/DisableAccessibilityController;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v10}, Landroid/view/IWindowManager;->isKeyguardLocked()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 234
    :goto_1
    iget-object v10, p0, Lcom/android/internal/policy/impl/DisableAccessibilityController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v10}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v10

    if-nez v10, :cond_1

    .line 235
    const-string v8, "Qtalkback"

    const-string v9, "mUserManager.getUsers() == null"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 230
    :catch_0
    move-exception v3

    .line 231
    .local v3, "re":Landroid/os/RemoteException;
    const-string v10, "Qtalkback"

    const-string v11, "RemoteException!!! : disableAccessibility"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 239
    .end local v3    # "re":Landroid/os/RemoteException;
    :cond_1
    iget-object v10, p0, Lcom/android/internal/policy/impl/DisableAccessibilityController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v10}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-le v10, v8, :cond_3

    move v1, v8

    .line 242
    .local v1, "hasMoreThanOneUser":Z
    :goto_2
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v7

    .line 243
    .local v7, "userId":I
    iget-object v10, p0, Lcom/android/internal/policy/impl/DisableAccessibilityController;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 244
    .local v4, "resolver":Landroid/content/ContentResolver;
    const-string v10, "enabled_accessibility_services"

    invoke-static {v4, v10}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 245
    .local v5, "s":Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 246
    const-string v10, "Qtalkback"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "disableAccessibility call : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    const-string v10, "com.google.android.marvin.talkback/com.google.android.marvin.talkback.TalkBackService"

    invoke-virtual {v5, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 248
    const-string v10, "Qtalkback"

    const-string v11, "s.contains(TALKBACK_PREFERENCE_KEY) enabledServices.remove()"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    const-string v10, "com.google.android.marvin.talkback/com.google.android.marvin.talkback.TalkBackService"

    invoke-static {v10}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v6

    .line 250
    .local v6, "toggledService":Landroid/content/ComponentName;
    invoke-interface {v0, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 253
    .end local v6    # "toggledService":Landroid/content/ComponentName;
    :cond_2
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/DisableAccessibilityController;->mDisable:Z

    .line 255
    const-string v8, "enabled_accessibility_services"

    const/4 v10, 0x0

    invoke-static {v4, v8, v10, v7}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 257
    const-string v8, "touch_exploration_enabled"

    invoke-static {v4, v8, v9, v7}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 260
    const-string v8, "accessibility_script_injection"

    invoke-static {v4, v8, v9, v7}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 262
    const-string v8, "accessibility_enabled"

    invoke-static {v4, v8, v9, v7}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto/16 :goto_0

    .end local v1    # "hasMoreThanOneUser":Z
    .end local v4    # "resolver":Landroid/content/ContentResolver;
    .end local v5    # "s":Ljava/lang/String;
    .end local v7    # "userId":I
    :cond_3
    move v1, v9

    .line 239
    goto :goto_2
.end method

.method private getEnabledAccessibilityServices(Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .local v0, "enabledServices":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 143
    const-string v3, "Qtalkback"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EnabledAccessibilityServiceList1  : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 145
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 146
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 147
    .local v2, "service":Landroid/accessibilityservice/AccessibilityServiceInfo;
    iget v3, v2, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_0

    .line 148
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 149
    const-string v3, "Qtalkback"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " enabledServices.remove();"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 152
    .end local v2    # "service":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :cond_1
    return-object v0
.end method


# virtual methods
.method public onDestroy()V
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/DisableAccessibilityController;->mDestroyed:Z

    .line 157
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 160
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 161
    const-string v2, "Qtalkback"

    const-string v3, "mDisableAccessibilityController onInterceptTouchEvent : ACTION_POINTER_DOWN"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/DisableAccessibilityController;->mFirstPointerDownX:F

    .line 163
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/DisableAccessibilityController;->mFirstPointerDownY:F

    .line 164
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/DisableAccessibilityController;->mSecondPointerDownX:F

    .line 165
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/DisableAccessibilityController;->mSecondPointerDownY:F

    .line 166
    iget-object v1, p0, Lcom/android/internal/policy/impl/DisableAccessibilityController;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xa

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 167
    iget-object v1, p0, Lcom/android/internal/policy/impl/DisableAccessibilityController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    const-wide/16 v4, 0x11f8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 168
    iget-object v1, p0, Lcom/android/internal/policy/impl/DisableAccessibilityController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    const-wide/16 v4, 0x189c

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 171
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 176
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    .line 177
    .local v1, "pointerCount":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 178
    .local v0, "action":I
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/DisableAccessibilityController;->mDisable:Z

    if-eqz v4, :cond_0

    .line 179
    const-string v3, "Qtalkback"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onTouchEvent return false >> mDisable : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/DisableAccessibilityController;->mDisable:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :goto_0
    return v2

    .line 182
    :cond_0
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/DisableAccessibilityController;->mCanceled:Z

    if-eqz v4, :cond_2

    .line 183
    if-ne v0, v3, :cond_1

    .line 184
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/DisableAccessibilityController;->mCanceled:Z

    :cond_1
    move v2, v3

    .line 186
    goto :goto_0

    .line 188
    :cond_2
    packed-switch v0, :pswitch_data_0

    :cond_3
    :goto_1
    :pswitch_0
    move v2, v3

    .line 203
    goto :goto_0

    .line 190
    :pswitch_1
    const/4 v2, 0x2

    if-le v1, v2, :cond_3

    .line 191
    invoke-direct {p0}, Lcom/android/internal/policy/impl/DisableAccessibilityController;->cancel()V

    goto :goto_1

    .line 196
    :pswitch_2
    const-string v2, "Qtalkback"

    const-string v4, "ACTION_POINTER_UP, ACTION_CANCEL >> call cancel"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-direct {p0}, Lcom/android/internal/policy/impl/DisableAccessibilityController;->cancel()V

    goto :goto_1

    .line 188
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
