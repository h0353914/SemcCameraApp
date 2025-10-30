.class public final Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;
.super Ljava/lang/Object;
.source "DebugParameterUtils.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDebugParameterUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DebugParameterUtils.kt\ncom/sonyericsson/android/camera/debug/DebugParameterUtils\n*L\n1#1,179:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0015\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0002J\u000e\u0010\u0019\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u0018J\u000e\u0010\u001a\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u0018J\u000e\u0010\u001b\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u0018J\u000e\u0010\u001c\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u0018J\u000e\u0010\u001d\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u0018J\u000e\u0010\u001e\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u0018J\u000e\u0010\u001f\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u0018J\u000e\u0010 \u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u0018J\u000e\u0010!\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u0018J\u000e\u0010\"\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u0018J\u0018\u0010#\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010$\u001a\u00020\u0004H\u0002J\u000e\u0010%\u001a\u00020&2\u0006\u0010\u0017\u001a\u00020\u0018J\u000e\u0010\'\u001a\u00020&2\u0006\u0010\u0017\u001a\u00020\u0018R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0010\u001a\u00020\u00118FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0010\u0010\u0012\u00a8\u0006("
    }
    d2 = {
        "Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;",
        "",
        "()V",
        "KEY_DEBUG_ALWAYS_HDR_ON",
        "",
        "KEY_DEBUG_ALWAYS_PREDICTIVE_CAPTURE",
        "KEY_DEBUG_DISABLE_AUTO_POWER_OFF",
        "KEY_DEBUG_DISABLE_LOW_POWER_MODE",
        "KEY_DEBUG_DISABLE_MOTION_FOR_NIGHT",
        "KEY_DEBUG_EMULATE_SIDETOUCH",
        "KEY_DEBUG_ENABLE_DEBUG_EXIF",
        "KEY_DEBUG_FORCE_MIGRATE_SETTINGS",
        "KEY_DEBUG_SHOW_AUTO_HDR_ICON",
        "KEY_DEBUG_SHOW_DEBUG_INFO_ON_PREVIEW",
        "KEY_DEBUG_SHOW_SCENE_CONDITION",
        "SHARED_PREFERENCES_CAMERA_DEBUG",
        "isUserBuild",
        "",
        "()Z",
        "isUserBuild$delegate",
        "Lkotlin/Lazy;",
        "getSharedPreferences",
        "Landroid/content/SharedPreferences;",
        "context",
        "Landroid/content/Context;",
        "isAlwaysHdrOnEnabled",
        "isAlwaysPredictiveCaptureEnabled",
        "isAutoPowerOffDisabled",
        "isDebugExifEnabled",
        "isEmulateSideTouchEnabled",
        "isLowPowerModeDisabled",
        "isMotionForNightDisabled",
        "isShowAutoHdrIconEnabled",
        "isShowDebugInfoOnPreview",
        "isShowSceneConditionEnabled",
        "isTrue",
        "key",
        "preload",
        "",
        "reset",
        "SemcCameraUI_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;

.field public static final INSTANCE:Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;

.field public static final KEY_DEBUG_ALWAYS_HDR_ON:Ljava/lang/String; = "KEY_DEBUG_ALWAYS_HDR_ON"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_DEBUG_ALWAYS_PREDICTIVE_CAPTURE:Ljava/lang/String; = "KEY_DEBUG_ALWAYS_PREDICTIVE_CAPTURE"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_DEBUG_DISABLE_AUTO_POWER_OFF:Ljava/lang/String; = "KEY_DEBUG_DISABLE_AUTO_POWER_OFF"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_DEBUG_DISABLE_LOW_POWER_MODE:Ljava/lang/String; = "KEY_DEBUG_DISABLE_LOW_POWER_MODE"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_DEBUG_DISABLE_MOTION_FOR_NIGHT:Ljava/lang/String; = "KEY_DEBUG_DISABLE_MOTION_FOR_NIGHT"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_DEBUG_EMULATE_SIDETOUCH:Ljava/lang/String; = "KEY_DEBUG_EMULATE_SIDETOUCH"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_DEBUG_ENABLE_DEBUG_EXIF:Ljava/lang/String; = "KEY_DEBUG_ENABLE_DEBUG_EXIF"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_DEBUG_FORCE_MIGRATE_SETTINGS:Ljava/lang/String; = "KEY_DEBUG_FORCE_MIGRATE_SETTINGS"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_DEBUG_SHOW_AUTO_HDR_ICON:Ljava/lang/String; = "KEY_DEBUG_SHOW_AUTO_HDR_ICON"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_DEBUG_SHOW_DEBUG_INFO_ON_PREVIEW:Ljava/lang/String; = "KEY_DEBUG_SHOW_DEBUG_INFO_ON_PREVIEW"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_DEBUG_SHOW_SCENE_CONDITION:Ljava/lang/String; = "KEY_DEBUG_SHOW_SCENE_CONDITION"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SHARED_PREFERENCES_CAMERA_DEBUG:Ljava/lang/String; = "com.sonyericsson.android.camera.shared_preferences_debug"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final isUserBuild$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "isUserBuild"

    const-string v4, "isUserBuild()Z"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 16
    new-instance v0, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->INSTANCE:Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;

    .line 47
    sget-object v0, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils$isUserBuild$2;->INSTANCE:Lcom/sonyericsson/android/camera/debug/DebugParameterUtils$isUserBuild$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->isUserBuild$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 4

    .line 174
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->isUserBuild()Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "com.sonyericsson.android.camera.shared_preferences_debug"

    const/4 v1, 0x0

    .line 175
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return-object p1
.end method

.method private final isTrue(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5

    .line 167
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->isUserBuild()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_13

    .line 168
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    if-eqz p1, :cond_12

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1

    :cond_12
    return v1

    :cond_13
    return v1
.end method


# virtual methods
.method public final isAlwaysHdrOnEnabled(Landroid/content/Context;)Z
    .registers 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "KEY_DEBUG_ALWAYS_HDR_ON"

    .line 136
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->isTrue(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final isAlwaysPredictiveCaptureEnabled(Landroid/content/Context;)Z
    .registers 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "KEY_DEBUG_ALWAYS_PREDICTIVE_CAPTURE"

    .line 100
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->isTrue(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final isAutoPowerOffDisabled(Landroid/content/Context;)Z
    .registers 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "KEY_DEBUG_DISABLE_AUTO_POWER_OFF"

    .line 82
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->isTrue(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final isDebugExifEnabled(Landroid/content/Context;)Z
    .registers 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "KEY_DEBUG_ENABLE_DEBUG_EXIF"

    .line 127
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->isTrue(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final isEmulateSideTouchEnabled(Landroid/content/Context;)Z
    .registers 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "KEY_DEBUG_EMULATE_SIDETOUCH"

    .line 109
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->isTrue(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final isLowPowerModeDisabled(Landroid/content/Context;)Z
    .registers 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "KEY_DEBUG_DISABLE_LOW_POWER_MODE"

    .line 91
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->isTrue(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final isMotionForNightDisabled(Landroid/content/Context;)Z
    .registers 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "KEY_DEBUG_DISABLE_MOTION_FOR_NIGHT"

    .line 163
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->isTrue(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final isShowAutoHdrIconEnabled(Landroid/content/Context;)Z
    .registers 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "KEY_DEBUG_SHOW_AUTO_HDR_ICON"

    .line 145
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->isTrue(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final isShowDebugInfoOnPreview(Landroid/content/Context;)Z
    .registers 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "KEY_DEBUG_SHOW_DEBUG_INFO_ON_PREVIEW"

    .line 154
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->isTrue(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final isShowSceneConditionEnabled(Landroid/content/Context;)Z
    .registers 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "KEY_DEBUG_SHOW_SCENE_CONDITION"

    .line 118
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->isTrue(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final isUserBuild()Z
    .registers 4

    sget-object v0, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->isUserBuild$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final preload(Landroid/content/Context;)V
    .registers 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    return-void
.end method

.method public final reset(Landroid/content/Context;)V
    .registers 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    if-eqz p1, :cond_46

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    if-eqz p1, :cond_46

    const-string v0, "KEY_DEBUG_DISABLE_AUTO_POWER_OFF"

    .line 60
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "KEY_DEBUG_DISABLE_LOW_POWER_MODE"

    .line 61
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "KEY_DEBUG_ALWAYS_PREDICTIVE_CAPTURE"

    .line 62
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "KEY_DEBUG_EMULATE_SIDETOUCH"

    .line 63
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "KEY_DEBUG_SHOW_SCENE_CONDITION"

    .line 64
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "KEY_DEBUG_ENABLE_DEBUG_EXIF"

    .line 65
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "KEY_DEBUG_ALWAYS_HDR_ON"

    .line 66
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "KEY_DEBUG_SHOW_AUTO_HDR_ICON"

    .line 67
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "KEY_DEBUG_SHOW_DEBUG_INFO_ON_PREVIEW"

    .line 68
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "KEY_DEBUG_DISABLE_MOTION_FOR_NIGHT"

    .line 69
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 70
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_46
    return-void
.end method
