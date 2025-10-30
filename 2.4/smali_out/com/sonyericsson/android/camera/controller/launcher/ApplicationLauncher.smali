.class public final Lcom/sonyericsson/android/camera/controller/launcher/ApplicationLauncher;
.super Ljava/lang/Object;
.source "ApplicationLauncher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/controller/launcher/ApplicationLauncher$MonochromeType;
    }
.end annotation


# static fields
.field private static ACTION_EDIT_HIGH_FRAME_RATE:Ljava/lang/String; = "com.sonymobile.moviecreator.intent.action.TIMESHIFT_VIDEO_EDITOR"

.field public static final BOKEH_AND_MONOCHROME:I = 0x3

.field public static final BOKEH_ONLY:I = 0x1

.field private static final DUAL_EFFECT_CLASS:Ljava/lang/String; = "com.sonymobile.addoncamera.dualcameraeffect.ui.CameraActivity"

.field private static final DUAL_EFFECT_LAUNCH_MODE_BOKEH:Ljava/lang/String; = "bokeh"

.field private static final DUAL_EFFECT_LAUNCH_MODE_CAMERA:Ljava/lang/String; = "camera"

.field private static final DUAL_EFFECT_LAUNCH_MODE_KEY:Ljava/lang/String; = "effect_mode"

.field private static final DUAL_EFFECT_LAUNCH_MODE_VIDEO:Ljava/lang/String; = "video"

.field private static final DUAL_EFFECT_META_DATA:Ljava/lang/String; = "com.sonymobile.addoncamera.dualcameraeffect.support_feature"

.field private static final DUAL_EFFECT_PACKAGE:Ljava/lang/String; = "com.sonymobile.addoncamera.dualcameraeffect"

.field public static final MONOCHROME_ONLY:I = 0x2

.field private static final PORTRAIT_SELFIE_CLASS:Ljava/lang/String; = "com.arcsoft.camera.CameraActivity"

.field private static final PORTRAIT_SELFIE_PACKAGE:Ljava/lang/String; = "com.sonymobile.addoncamera.portraitselfie"

.field private static final PORTRAIT_SELFIE_WIDE_ZOOM_TARGET_RATIO:Ljava/lang/String; = "com.sonyericsson.android.camera.extra.WIDE_ZOOM_TARGET_RATIO"

.field public static final TAG:Ljava/lang/String; = "ApplicationLauncher"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDualCameraEffectIntent(ILcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Landroid/content/Intent;
    .registers 5

    .line 221
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sonymobile.addoncamera.dualcameraeffect"

    const-string v2, "com.sonymobile.addoncamera.dualcameraeffect.ui.CameraActivity"

    .line 222
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x10

    if-ne p0, v1, :cond_18

    const-string p0, "effect_mode"

    const-string p1, "bokeh"

    .line 225
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2f

    :cond_18
    const/16 v1, 0x11

    if-ne p0, v1, :cond_2f

    .line 228
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne p1, p0, :cond_28

    const-string p0, "effect_mode"

    const-string p1, "video"

    .line 229
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2f

    :cond_28
    const-string p0, "effect_mode"

    const-string p1, "camera"

    .line 231
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2f
    :goto_2f
    return-object v0
.end method

.method private static getPortraitSelfieIntent(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/setting/UserSettings;)Landroid/content/Intent;
    .registers 3

    .line 244
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string p1, "com.sonymobile.addoncamera.portraitselfie"

    const-string v0, "com.arcsoft.camera.CameraActivity"

    .line 245
    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 248
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isPrepared()Z

    move-result p1

    if-eqz p1, :cond_1e

    const-string p1, "com.sonyericsson.android.camera.extra.WIDE_ZOOM_TARGET_RATIO"

    .line 249
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->FRONT:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    .line 250
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getWideZoomTargetRatio(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)F

    move-result v0

    .line 249
    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    goto :goto_2e

    :cond_1e
    const-string p1, "Platform capability is not prepared. Set 1.0 as default to PORTRAIT_SELFIE_WIDE_ZOOM_TARGET_RATIO"

    .line 252
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    const-string p1, "com.sonyericsson.android.camera.extra.WIDE_ZOOM_TARGET_RATIO"

    const/high16 v0, 0x3f800000    # 1.0f

    .line 254
    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    :goto_2e
    return-object p0
.end method

.method public static isBokehSupported()Z
    .registers 4

    .line 282
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->BACK:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isHighSensitivityFusionSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3c

    .line 285
    :try_start_9
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.sonymobile.addoncamera.dualcameraeffect"

    const-string v3, "com.sonymobile.addoncamera.dualcameraeffect.ui.CameraActivity"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x80

    .line 288
    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 289
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.sonymobile.addoncamera.dualcameraeffect.support_feature"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_28
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_28} :catch_31

    const/4 v2, 0x1

    if-eq v0, v2, :cond_30

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2f

    goto :goto_3c

    :cond_2f
    return v2

    :cond_30
    return v2

    :catch_31
    const-string v0, "ApplicationLauncher"

    const-string v2, "DualEffect Component : com.sonymobile.addoncamera.dualcameraeffect Not Found"

    .line 299
    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    :cond_3c
    :goto_3c
    return v1
.end method

.method public static isEditorAvailable(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Z
    .registers 5

    .line 166
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.EDIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 168
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 169
    invoke-static {p0, v0}, Lcom/sonyericsson/cameracommon/utility/CommonUtility;->isActivityAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method public static isMonochromeSupported()Z
    .registers 4

    .line 310
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->BACK:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isHighSensitivityFusionSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3a

    .line 313
    :try_start_9
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.sonymobile.addoncamera.dualcameraeffect"

    const-string v3, "com.sonymobile.addoncamera.dualcameraeffect.ui.CameraActivity"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x80

    .line 316
    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 317
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.sonymobile.addoncamera.dualcameraeffect.support_feature"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_28
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_28} :catch_2f

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_3c

    goto :goto_3a

    :pswitch_2d
    return v2

    :pswitch_2e
    return v2

    :catch_2f
    const-string v0, "ApplicationLauncher"

    const-string v2, "DualEffect Component : com.sonymobile.addoncamera.dualcameraeffect Not Found"

    .line 327
    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    :cond_3a
    :goto_3a
    return v1

    nop

    :pswitch_data_3c
    .packed-switch 0x2
        :pswitch_2e
        :pswitch_2d
    .end packed-switch
.end method

.method public static isPortraitSelfieAvailable(Landroid/content/Context;)Z
    .registers 4

    .line 264
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sonymobile.addoncamera.portraitselfie"

    const-string v2, "com.arcsoft.camera.CameraActivity"

    .line 265
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 267
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x10000

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-nez v0, :cond_1a

    const/4 p0, 0x0

    return p0

    :cond_1a
    const-string v0, "com.sonymobile.addoncamera.portraitselfie"

    .line 273
    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera/util/SignatureUtil;->isAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static launchAlbum(Landroid/app/Activity;Ljava/lang/String;Landroid/net/Uri;ILjava/lang/String;)V
    .registers 5

    .line 107
    invoke-static {p4}, Lcom/sonyericsson/cameracommon/storage/ManualBurstPathBuilder;->isBurstCaptureImage(Ljava/lang/String;)Z

    move-result p4

    .line 108
    invoke-static {p0, p2, p1, p3, p4}, Lcom/sonyericsson/android/camera/controller/album/AlbumLauncher;->launchAlbum(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;IZ)V

    return-void
.end method

.method public static launchAlbum(Landroid/app/Activity;Ljava/lang/String;Landroid/net/Uri;ILjava/lang/String;Z)V
    .registers 12

    .line 122
    invoke-static {p4}, Lcom/sonyericsson/cameracommon/storage/ManualBurstPathBuilder;->isBurstCaptureImage(Ljava/lang/String;)Z

    move-result v4

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    move v3, p3

    move v5, p5

    .line 123
    invoke-static/range {v0 .. v5}, Lcom/sonyericsson/android/camera/controller/album/AlbumLauncher;->launchAlbum(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;IZZ)V

    return-void
.end method

.method public static launchExternalCamera(Lcom/sonyericsson/android/camera/CameraActivity;ILcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)V
    .registers 16

    .line 341
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 342
    sget-object v1, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;->DATA_STORAGE:Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;->intentKey:Ljava/lang/String;

    const-string v2, "internal"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    packed-switch p1, :pswitch_data_1f0

    .line 362
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The request code \'"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\' is incorrect"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 349
    :pswitch_2d
    sget-object v1, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;->PHOTO:Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;

    .line 350
    invoke-static {p0, p2}, Lcom/sonyericsson/android/camera/controller/launcher/ApplicationLauncher;->getPortraitSelfieIntent(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/setting/UserSettings;)Landroid/content/Intent;

    move-result-object v2

    goto :goto_48

    .line 357
    :pswitch_34
    invoke-static {p1, p3}, Lcom/sonyericsson/android/camera/controller/launcher/ApplicationLauncher;->getDualCameraEffectIntent(ILcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Landroid/content/Intent;

    move-result-object v2

    .line 358
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne p3, v1, :cond_3f

    sget-object v1, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;->VIDEO:Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;

    goto :goto_48

    :cond_3f
    sget-object v1, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;->PHOTO:Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;

    goto :goto_48

    .line 353
    :pswitch_42
    sget-object v1, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;->PHOTO:Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;

    .line 354
    invoke-static {p1, p3}, Lcom/sonyericsson/android/camera/controller/launcher/ApplicationLauncher;->getDualCameraEffectIntent(ILcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Landroid/content/Intent;

    move-result-object v2

    .line 365
    :goto_48
    invoke-static {}, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;->values()[Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_4f
    if-ge v6, v4, :cond_ce

    aget-object v7, v3, v6

    .line 366
    iget-object v8, v7, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;->intentKey:Ljava/lang/String;

    invoke-interface {v0, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_cb

    .line 367
    invoke-virtual {v7, v1}, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;->isShared(Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;)Z

    move-result v8

    if-eqz v8, :cond_cb

    const/16 v8, 0x10

    if-eq p1, v8, :cond_75

    const/16 v8, 0x11

    if-ne p1, v8, :cond_6a

    goto :goto_75

    .line 374
    :cond_6a
    iget-object v8, v7, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;->key:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p2, v8}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;->toIntentValue(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Ljava/lang/Object;

    move-result-object v8

    goto :goto_7f

    .line 372
    :cond_75
    :goto_75
    iget-object v8, v7, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;->key:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p2, p3, v8}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;->toIntentValue(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Ljava/lang/Object;

    move-result-object v8

    .line 376
    :goto_7f
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-class v10, Ljava/lang/Boolean;

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_97

    .line 377
    iget-object v7, v7, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;->intentKey:Ljava/lang/String;

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_cb

    .line 378
    :cond_97
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-class v10, Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_ab

    .line 379
    iget-object v7, v7, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;->intentKey:Ljava/lang/String;

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_cb

    .line 381
    :cond_ab
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "One of the external app values was neither a boolean nor a String. It was a "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_cb
    :goto_cb
    add-int/lit8 v6, v6, 0x1

    goto :goto_4f

    .line 387
    :cond_ce
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_14c

    .line 388
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_dc
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_14c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 389
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10c

    .line 390
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-virtual {v2, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_dc

    .line 391
    :cond_10c
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12c

    .line 392
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {v2, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_dc

    .line 394
    :cond_12c
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "One of the Force settings values was neither a boolean nor a String. It was a "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 400
    :cond_14c
    sget-boolean p2, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 p3, 0x1

    if-eqz p2, :cond_1dc

    const-string p2, "Launch external camera application"

    .line 401
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 402
    new-array p2, p3, [Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  action:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v5

    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 403
    new-array p2, p3, [Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  component:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v5

    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    const-string p2, "  extra:"

    .line 404
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 405
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1a7
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1dc

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 406
    new-array v1, p3, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v5

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_1a7

    .line 412
    :cond_1dc
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getCameraDevice()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->closeCamera(Z)V

    if-eqz p4, :cond_1e9

    .line 415
    invoke-virtual {p0, v2, p1}, Lcom/sonyericsson/android/camera/CameraActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1ec

    .line 417
    :cond_1e9
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera/CameraActivity;->startActivity(Landroid/content/Intent;)V

    .line 419
    :goto_1ec
    invoke-virtual {p0, v5, v5}, Lcom/sonyericsson/android/camera/CameraActivity;->overridePendingTransition(II)V

    return-void

    :pswitch_data_1f0
    .packed-switch 0x10
        :pswitch_42
        :pswitch_34
        :pswitch_2d
    .end packed-switch
.end method

.method public static launchLocationSourceSettings(Landroid/app/Activity;)V
    .registers 5

    .line 127
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    .line 128
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/sonyericsson/cameracommon/utility/CommonUtility;->isActivityAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 135
    :try_start_16
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 136
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_43

    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "ApplicationLauncher"

    aput-object v2, p0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "launchLocationSourceSettings: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p0, v1

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V
    :try_end_3c
    .catch Landroid/content/ActivityNotFoundException; {:try_start_16 .. :try_end_3c} :catch_3d

    goto :goto_43

    :catch_3d
    move-exception p0

    const-string v0, "launchLocationSourceSettings: failed."

    .line 139
    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_43
    :goto_43
    return-void
.end method

.method public static launchSideSenseSettings(Landroid/app/Activity;)V
    .registers 5

    .line 145
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonymobile.sidesenseapp.action.LAUNCH_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    .line 146
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/sonyericsson/cameracommon/utility/CommonUtility;->isActivityAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 153
    :try_start_16
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 154
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_43

    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "ApplicationLauncher"

    aput-object v2, p0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "launchSideSenseSettings: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p0, v1

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V
    :try_end_3c
    .catch Landroid/content/ActivityNotFoundException; {:try_start_16 .. :try_end_3c} :catch_3d

    goto :goto_43

    :catch_3d
    move-exception p0

    const-string v0, "launchSideSenseSettings: failed."

    .line 157
    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_43
    :goto_43
    return-void
.end method

.method public static launchVideoEditor(Landroid/app/Activity;Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)Z
    .registers 6

    .line 182
    :try_start_0
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->getUri()Landroid/net/Uri;

    move-result-object v0

    .line 183
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->getMimeType()Ljava/lang/String;

    move-result-object p1

    const-string v1, "video/mp4"

    .line 185
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 186
    invoke-static {p0, v0, p1}, Lcom/sonyericsson/android/camera/controller/launcher/ApplicationLauncher;->isEditorAvailable(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_49

    const v1, 0x7f01000f

    const v2, 0x7f010010

    .line 190
    invoke-static {p0, v1, v2}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v1

    .line 193
    new-instance v2, Landroid/content/Intent;

    sget-object v3, Lcom/sonyericsson/android/camera/controller/launcher/ApplicationLauncher;->ACTION_EDIT_HIGH_FRAME_RATE:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 194
    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x3

    .line 195
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 199
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/sonyericsson/cameracommon/utility/CommonUtility;->isActivityAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_49

    const/16 p1, 0xe

    .line 203
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 202
    invoke-virtual {p0, v2, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    :try_end_41
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_41} :catch_43

    const/4 p0, 0x1

    return p0

    :catch_43
    move-exception p0

    const-string p1, "openReviewWindow: failed."

    .line 209
    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_49
    const/4 p0, 0x0

    return p0
.end method
