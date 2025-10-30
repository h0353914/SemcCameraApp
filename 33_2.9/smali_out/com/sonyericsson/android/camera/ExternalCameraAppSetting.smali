.class public final enum Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;
.super Ljava/lang/Enum;
.source "ExternalCameraAppSetting.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;,
        Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;

.field public static final enum AUTO_PHOTO_PREVIEW:Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;

.field public static final enum DATA_STORAGE:Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;

.field public static final enum DISTORTION_CORRECTION_MODE:Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;

.field public static final enum FLASH:Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;

.field public static final enum FRONT_ANGLE:Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;

.field public static final enum GRID_LINES:Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;

.field private static final INTENT_KEY_PREFIX:Ljava/lang/String; = "com.sonyericsson.android.camera.extra."

.field public static final enum SAVE_LOCATION:Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;

.field public static final enum SOUND:Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;

.field public static final enum USE_VOLUME_KEY_AS:Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;


# instance fields
.field public final intentKey:Ljava/lang/String;

.field public final key:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

.field private final mIntentToUserSetting:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettingCategory:Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;


# direct methods
.method static constructor <clinit>()V
    .registers 23

    .line 28
    new-instance v7, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FLASH:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v5, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;->PHOTO:Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;

    .line 30
    invoke-static {}, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;->items()Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    const-string v2, "auto"

    .line 31
    invoke-virtual {v0, v2, v1}, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;->add(Ljava/lang/Object;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    const-string v2, "fill_flash"

    .line 32
    invoke-virtual {v0, v2, v1}, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;->add(Ljava/lang/Object;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->LED_ON:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    const-string v2, "flashlight"

    .line 33
    invoke-virtual {v0, v2, v1}, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;->add(Ljava/lang/Object;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->RED_EYE:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    const-string v2, "red_eye"

    .line 34
    invoke-virtual {v0, v2, v1}, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;->add(Ljava/lang/Object;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    const-string v8, "off"

    .line 35
    invoke-virtual {v0, v8, v1}, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;->add(Ljava/lang/Object;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;

    move-result-object v6

    const-string v1, "FLASH"

    const/4 v2, 0x0

    const-string v3, "FLASH_MODE"

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;)V

    sput-object v7, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;->FLASH:Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;

    .line 36
    new-instance v0, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FRONT_ANGLE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v14, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;->COMMON:Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;

    .line 38
    invoke-static {}, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;->items()Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;->SUPER_WIDE:Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;

    const-string v3, "default"

    .line 39
    invoke-virtual {v1, v3, v2}, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;->add(Ljava/lang/Object;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;->WIDE:Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;

    const-string v3, "cropped"

    .line 40
    invoke-virtual {v1, v3, v2}, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;->add(Ljava/lang/Object;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;

    move-result-object v15

    const-string v10, "FRONT_ANGLE"

    const/4 v11, 0x1

    const-string v12, "FRONT_ANGLE"

    move-object v9, v0

    invoke-direct/range {v9 .. v15}, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;)V

    sput-object v0, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;->FRONT_ANGLE:Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;

    .line 41
    new-instance v1, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;

    sget-object v20, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->GRID_LINE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v21, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;->COMMON:Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;

    .line 43
    invoke-static {}, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;->items()Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/GridLine;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/GridLine;

    .line 44
    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;->add(Ljava/lang/Object;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/GridLine;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/GridLine;

    .line 45
    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;->add(Ljava/lang/Object;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;

    move-result-object v22

    const-string v17, "GRID_LINES"

    const/16 v18, 0x2

    const-string v19, "GRID_LINES"

    move-object/from16 v16, v1

    invoke-direct/range {v16 .. v22}, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;)V

    sput-object v1, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;->GRID_LINES:Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;

    .line 46
    new-instance v2, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SHUTTER_SOUND:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v14, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;->COMMON:Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;

    .line 48
    invoke-static {}, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;->items()Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v5, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;

    .line 49
    invoke-virtual {v3, v4, v5}, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;->add(Ljava/lang/Object;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v5, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;->SOUND1:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;

    .line 50
    invoke-virtual {v3, v4, v5}, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;->add(Ljava/lang/Object;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;

    move-result-object v15

    const-string v10, "SOUND"

    const/4 v11, 0x3

    const-string v12, "SOUND"

    move-object v9, v2

    invoke-direct/range {v9 .. v15}, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;)V

    sput-object v2, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;->SOUND:Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;

    .line 51
    new-instance v3, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;

    sget-object v20, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->GEO_TAG:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v21, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;->COMMON:Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;

    .line 53
    invoke-static {}, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;->items()Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    .line 54
    invoke-virtual {v4, v5, v6}, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;->add(Ljava/lang/Object;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    .line 55
    invoke-virtual {v4, v5, v6}, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;->add(Ljava/lang/Object;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;

    move-result-object v22

    const-string v17, "SAVE_LOCATION"

    const/16 v18, 0x4

    const-string v19, "SAVE_LOCATION"

    move-object/from16 v16, v3

    invoke-direct/range {v16 .. v22}, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;)V

    sput-object v3, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;->SAVE_LOCATION:Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;

    .line 56
    new-instance v4, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->DESTINATION_TO_SAVE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v14, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;->COMMON:Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;

    .line 58
    invoke-static {}, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;->items()Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;

    move-result-object v5

    sget-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->SDCARD:Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    const-string v9, "sdcard"

    .line 59
    invoke-virtual {v5, v9, v6}, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;->add(Ljava/lang/Object;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;

    move-result-object v5

    sget-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->EMMC:Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    const-string v9, "internal"

    .line 60
    invoke-virtual {v5, v9, v6}, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;->add(Ljava/lang/Object;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;

    move-result-object v15

    const-string v10, "DATA_STORAGE"

    const/4 v11, 0x5

    const-string v12, "DATA_STORAGE"

    move-object v9, v4

    invoke-direct/range {v9 .. v15}, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;)V

    sput-object v4, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;->DATA_STORAGE:Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;

    .line 61
    new-instance v5, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;

    sget-object v20, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VOLUME_KEY:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v21, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;->COMMON:Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;

    .line 63
    invoke-static {}, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;->items()Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;

    move-result-object v6

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;->HW_CAMERA_KEY:Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;

    const-string v10, "shutter"

    .line 64
    invoke-virtual {v6, v10, v9}, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;->add(Ljava/lang/Object;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;

    move-result-object v6

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;->VOLUME:Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;

    const-string/jumbo v10, "volume"

    .line 65
    invoke-virtual {v6, v10, v9}, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;->add(Ljava/lang/Object;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;

    move-result-object v6

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;->ZOOM:Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;

    const-string/jumbo v10, "zoom"

    .line 66
    invoke-virtual {v6, v10, v9}, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;->add(Ljava/lang/Object;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;

    move-result-object v22

    const-string v17, "USE_VOLUME_KEY_AS"

    const/16 v18, 0x6

    const-string v19, "USE_VOLUME_KEY_AS"

    move-object/from16 v16, v5

    invoke-direct/range {v16 .. v22}, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;)V

    sput-object v5, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;->USE_VOLUME_KEY_AS:Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;

    .line 67
    new-instance v6, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->AUTO_REVIEW:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v14, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;->COMMON:Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;

    .line 69
    invoke-static {}, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;->items()Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;

    move-result-object v9

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

    .line 70
    invoke-virtual {v9, v8, v10}, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;->add(Ljava/lang/Object;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;

    move-result-object v8

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;->ALWAYS:Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

    const-string v10, "on"

    .line 71
    invoke-virtual {v8, v10, v9}, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;->add(Ljava/lang/Object;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;

    move-result-object v8

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;->FRONT_ONLY:Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

    const-string v10, "only_front_camera"

    .line 72
    invoke-virtual {v8, v10, v9}, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;->add(Ljava/lang/Object;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;

    move-result-object v15

    const-string v10, "AUTO_PHOTO_PREVIEW"

    const/4 v11, 0x7

    const-string v12, "AUTO_PHOTO_PREVIEW"

    move-object v9, v6

    invoke-direct/range {v9 .. v15}, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;)V

    sput-object v6, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;->AUTO_PHOTO_PREVIEW:Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;

    .line 73
    new-instance v8, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;

    sget-object v20, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->LENS_CORRECTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v21, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;->PHOTO:Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;

    .line 75
    invoke-static {}, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;->items()Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;

    move-result-object v9

    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v11, Lcom/sonyericsson/android/camera/configuration/parameters/DistortionCorrection;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/DistortionCorrection;

    .line 76
    invoke-virtual {v9, v10, v11}, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;->add(Ljava/lang/Object;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;

    move-result-object v9

    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v11, Lcom/sonyericsson/android/camera/configuration/parameters/DistortionCorrection;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/DistortionCorrection;

    .line 77
    invoke-virtual {v9, v10, v11}, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;->add(Ljava/lang/Object;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;

    move-result-object v22

    const-string v17, "DISTORTION_CORRECTION_MODE"

    const/16 v18, 0x8

    const-string v19, "DISTORTION_CORRECTION_MODE"

    move-object/from16 v16, v8

    invoke-direct/range {v16 .. v22}, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;)V

    sput-object v8, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;->DISTORTION_CORRECTION_MODE:Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;

    const/16 v9, 0x9

    new-array v9, v9, [Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;

    const/4 v10, 0x0

    aput-object v7, v9, v10

    const/4 v7, 0x1

    aput-object v0, v9, v7

    const/4 v0, 0x2

    aput-object v1, v9, v0

    const/4 v0, 0x3

    aput-object v2, v9, v0

    const/4 v0, 0x4

    aput-object v3, v9, v0

    const/4 v0, 0x5

    aput-object v4, v9, v0

    const/4 v0, 0x6

    aput-object v5, v9, v0

    const/4 v0, 0x7

    aput-object v6, v9, v0

    const/16 v0, 0x8

    aput-object v8, v9, v0

    .line 27
    sput-object v9, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;->$VALUES:[Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sonyericsson/android/camera/configuration/UserSettingKey;",
            "Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;",
            "Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;",
            ")V"
        }
    .end annotation

    .line 85
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 86
    iput-object p4, p0, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;->key:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 87
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "com.sonyericsson.android.camera.extra."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;->intentKey:Ljava/lang/String;

    .line 88
    iput-object p5, p0, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;->mSettingCategory:Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;

    .line 89
    iget-object p1, p6, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;->entries:Ljava/util/Map;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;->mIntentToUserSetting:Ljava/util/Map;

    return-void
.end method

.method private static items()Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;
    .registers 2

    .line 153
    new-instance v0, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;-><init>(Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$1;)V

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;
    .registers 2

    .line 27
    const-class v0, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;
    .registers 1

    .line 27
    sget-object v0, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;->$VALUES:[Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;

    return-object v0
.end method


# virtual methods
.method public isShared(Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;)Z
    .registers 2

    .line 116
    iget-object p0, p0, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;->mSettingCategory:Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;->isAccepted(Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;)Z

    move-result p0

    return p0
.end method

.method public toIntentValue(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Ljava/lang/Object;
    .registers 4

    .line 103
    iget-object p0, p0, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;->mIntentToUserSetting:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 104
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 105
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_27
    const/4 p0, 0x0

    return-object p0
.end method

.method public toValue(Ljava/lang/Object;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;
    .registers 2

    .line 96
    iget-object p0, p0, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;->mIntentToUserSetting:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    return-object p0
.end method
