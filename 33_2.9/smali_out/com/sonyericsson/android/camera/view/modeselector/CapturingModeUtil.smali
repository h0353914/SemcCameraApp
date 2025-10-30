.class public Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeUtil;
.super Ljava/lang/Object;
.source "CapturingModeUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeUtil$CapturingMode;
    }
.end annotation


# static fields
.field public static final ACTION_REQUEST_REGISTER:Ljava/lang/String; = "com.sonymobile.camera.addon.action.REQUEST_REGISTER"

.field private static final ART_FILTER_PACKAGE_NAME:Ljava/lang/String; = "com.sonyericsson.android.addoncamera.artfilter"

.field private static final AR_EFFECT_MODE_NAME:Ljava/lang/String; = "AR Effect"

.field private static final AR_EFFECT_PACKAGE_NAME:Ljava/lang/String; = "com.sonymobile.androidapp.cameraaddon.areffect"

.field private static final CAMERA3D_PACKAGE_NAME:Ljava/lang/String; = "com.sonyericsson.android.camera3d"

.field public static final CAMERA_ACTIVITY:Ljava/lang/String; = "com.sonyericsson.android.camera.CameraActivity"

.field public static final CAMERA_ADDON_PERMISSION_NAME:Ljava/lang/String; = "com.sonymobile.permission.CAMERA_ADDON"

.field public static final CAMERA_UI_PACKAGE_NAME:Ljava/lang/String; = "com.sonyericsson.android.camera"

.field private static final DEFAULT_SORT_ORDER_LIST:[[Ljava/lang/String;

.field public static final EXTRA_CAPTURING_MODE:Ljava/lang/String; = "com.sonymobile.camera.addon.intent.extra.CAPTURING_MODE"

.field private static final FACE_IN_PACKAGE_NAME:Ljava/lang/String; = "com.sonymobile.android.addoncamera.dual"

.field private static final FAST_CAPTURING_ACTIVITY:Ljava/lang/String; = "com.sonyericsson.android.camera.fastcapturing.FastCapturingActivity"

.field private static final INVALID:I = -0x1

.field public static final MODE_WHITE_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final ONESHOT_DEFAULT_SORT_ORDER_LIST:[[Ljava/lang/String;

.field private static final STICKER_CREATOR_PACKAGE_NAME:Ljava/lang/String; = "com.sonymobile.androidapp.cameraaddon.stickercreator"

.field private static final STYLE_PORTRAIT_PACKAGE_NAME:Ljava/lang/String; = "com.sonymobile.android.addoncamera.styleportrait"

.field private static final SUPER_VIDEO_PACKAGE_NAME:Ljava/lang/String; = "com.sonymobile.android.addoncamera.supervideo"

.field static final TAG:Ljava/lang/String; = "CapturingModeUtil"

.field private static final TIME_SHIFT_PACKAGE_NAME:Ljava/lang/String; = "com.sonymobile.android.addoncamera.timeshift"


# direct methods
.method static constructor <clinit>()V
    .registers 12

    .line 108
    new-instance v0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeUtil$1;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeUtil$1;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeUtil;->MODE_WHITE_LIST:Ljava/util/List;

    const/16 v0, 0xa

    new-array v0, v0, [[Ljava/lang/String;

    const-string v1, "com.sonyericsson.android.camera"

    const-string v2, "SCENE_RECOGNITION"

    .line 135
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v0, v4

    const-string v3, "NORMAL"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v0, v6

    const-string v5, "com.sonymobile.androidapp.cameraaddon.areffect"

    const-string v7, "AR Effect"

    filled-new-array {v5, v7}, [Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x2

    aput-object v5, v0, v7

    const-string v5, "com.sonyericsson.android.addoncamera.artfilter"

    const-string v8, "capturing_mode_single_effect"

    filled-new-array {v5, v8}, [Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x3

    aput-object v8, v0, v9

    const-string v8, "com.sonyericsson.android.camera3d"

    const-string v10, "capturing_mode_sweep_panorama"

    filled-new-array {v8, v10}, [Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x4

    aput-object v8, v0, v10

    const-string v8, "com.sonymobile.androidapp.cameraaddon.stickercreator"

    const-string v10, "sticker_creator"

    filled-new-array {v8, v10}, [Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x5

    aput-object v8, v0, v10

    const-string v8, "com.sonymobile.android.addoncamera.supervideo"

    const-string v10, "HIGH_FRAME_RATE"

    filled-new-array {v8, v10}, [Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x6

    aput-object v10, v0, v11

    const-string v10, "com.sonymobile.android.addoncamera.styleportrait"

    const-string v11, "capturing_mode_self_portrait"

    filled-new-array {v10, v11}, [Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x7

    aput-object v10, v0, v11

    const-string v10, "com.sonymobile.android.addoncamera.dual"

    const-string v11, "capturing_mode_dual"

    filled-new-array {v10, v11}, [Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x8

    aput-object v10, v0, v11

    const-string v10, "FOUR_K_UHD"

    filled-new-array {v8, v10}, [Ljava/lang/String;

    move-result-object v8

    const/16 v10, 0x9

    aput-object v8, v0, v10

    sput-object v0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeUtil;->DEFAULT_SORT_ORDER_LIST:[[Ljava/lang/String;

    new-array v0, v9, [[Ljava/lang/String;

    .line 151
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    const-string v1, "capture_mode_single_effect"

    filled-new-array {v5, v1}, [Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    sput-object v0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeUtil;->ONESHOT_DEFAULT_SORT_ORDER_LIST:[[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static filteringPrevActivity(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const-string v0, "com.sonyericsson.android.camera.fastcapturing.FastCapturingActivity"

    .line 267
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string p0, "com.sonyericsson.android.camera.CameraActivity"

    :cond_a
    return-object p0
.end method

.method public static filteringPrevName(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const-string v0, "FAST_CAPTURING_CAMERA"

    .line 255
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string p0, "SCENE_RECOGNITION"

    :cond_a
    return-object p0
.end method

.method private static getIndexOf(Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeUtil$CapturingMode;[[Ljava/lang/String;)I
    .registers 7

    const/4 v0, 0x0

    move v1, v0

    .line 243
    :goto_2
    array-length v2, p1

    if-ge v1, v2, :cond_18

    .line 244
    aget-object v2, p1, v1

    aget-object v2, v2, v0

    .line 245
    aget-object v3, p1, v1

    const/4 v4, 0x1

    aget-object v3, v3, v4

    .line 246
    invoke-interface {p0, v2, v3}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeUtil$CapturingMode;->is(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    return v1

    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_18
    const/4 p0, -0x1

    return p0
.end method

.method private static varargs getSortOrder(Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeUtil$CapturingMode;[[[Ljava/lang/String;)I
    .registers 7

    .line 231
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v1, v0, :cond_14

    aget-object v3, p1, v1

    .line 232
    invoke-static {p0, v3}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeUtil;->getIndexOf(Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeUtil$CapturingMode;[[Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_f

    add-int/2addr v4, v2

    return v4

    .line 236
    :cond_f
    array-length v3, v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_14
    const/4 p0, -0x1

    return p0
.end method

.method public static hasDefaultSortOrder(Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeUtil$CapturingMode;)Z
    .registers 5

    const/4 v0, 0x1

    new-array v1, v0, [[[Ljava/lang/String;

    .line 183
    sget-object v2, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeUtil;->DEFAULT_SORT_ORDER_LIST:[[Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p0, v1}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeUtil;->getSortOrder(Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeUtil$CapturingMode;[[[Ljava/lang/String;)I

    move-result p0

    const/4 v1, -0x1

    if-eq v1, p0, :cond_10

    goto :goto_11

    :cond_10
    move v0, v3

    :goto_11
    return v0
.end method

.method public static isActivityAvailable(Landroid/content/Context;Landroid/content/Intent;)Z
    .registers 5

    .line 288
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_d

    goto :goto_32

    :cond_d
    new-array p0, v0, [Ljava/lang/String;

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isActivityAvailable: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v1

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    move v0, v1

    :goto_32
    return v0
.end method

.method private static varargs sort(Ljava/util/List;[[[Ljava/lang/String;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeUtil$CapturingMode;",
            ">(",
            "Ljava/util/List<",
            "TT;>;[[[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 194
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_8
    if-ge v3, v1, :cond_1a

    aget-object v4, p1, v3

    move v5, v2

    .line 195
    :goto_d
    array-length v6, v4

    if-ge v5, v6, :cond_17

    const/4 v6, 0x0

    .line 196
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    :cond_17
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 200
    :cond_1a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 202
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_23
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeUtil$CapturingMode;

    .line 203
    invoke-static {v2, p1}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeUtil;->getSortOrder(Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeUtil$CapturingMode;[[[Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3a

    .line 206
    invoke-virtual {v0, v3, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_23

    .line 209
    :cond_3a
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_23

    .line 213
    :cond_3e
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 214
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_47
    :goto_47
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_59

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeUtil$CapturingMode;

    if-eqz v0, :cond_47

    .line 216
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_47

    .line 219
    :cond_59
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public static sortCapturingMode(Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeUtil$CapturingMode;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [[[Ljava/lang/String;

    .line 168
    sget-object v1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeUtil;->DEFAULT_SORT_ORDER_LIST:[[Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeUtil;->sort(Ljava/util/List;[[[Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static sortOneshotCapturingMode(Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeUtil$CapturingMode;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [[[Ljava/lang/String;

    .line 174
    sget-object v1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeUtil;->ONESHOT_DEFAULT_SORT_ORDER_LIST:[[Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeUtil;->sort(Ljava/util/List;[[[Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
