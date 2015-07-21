.class public interface abstract Lcom/lge/telephony/RAD/RoamingPrefixAppender;
.super Ljava/lang/Object;
.source "RoamingPrefixAppender.java"


# static fields
.field public static final INTENT_EXTRA_RAD_DIAL_MODE:Ljava/lang/String; = "android.intent.extra.RAD_DIAL_MODE"

.field public static final INTENT_EXTRA_RAD_MODE:Ljava/lang/String; = "intent.extra.RAD_MODE"

.field public static final RAD_DIAL_MODE_DEFAULT:I = 0x0

.field public static final RAD_DIAL_MODE_KOR_FORCE:I = 0x3

.field public static final RAD_DIAL_MODE_NONE:I = 0x0

.field public static final RAD_DIAL_MODE_OFF:I = 0x2

.field public static final RAD_DIAL_MODE_ON:I = 0x1

.field public static final RAD_MODE_DEFAULT:I = 0x0

.field public static final RAD_MODE_ETC:I = 0x2

.field public static final RAD_MODE_KOR:I = 0x1

.field public static final RAD_MODE_NONE:I


# virtual methods
.method public abstract appendPrefix(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract isNeededToAddPrefix(Ljava/lang/String;)Z
.end method

.method public abstract isPrefixAddedNumber(Ljava/lang/String;)Z
.end method
