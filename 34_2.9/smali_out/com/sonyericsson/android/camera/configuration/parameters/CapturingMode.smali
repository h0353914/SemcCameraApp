.class public final enum Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
.super Ljava/lang/Enum;
.source "CapturingMode.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;",
        ">;",
        "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

.field public static final enum FRONT_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

.field public static final enum FRONT_VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

.field public static final enum NORMAL:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

.field public static final enum SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

.field public static final enum SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

.field public static final enum SUPERIOR_FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

.field public static final TAG:Ljava/lang/String; = "CapturingMode"

.field public static final enum UNKNOWN:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

.field public static final enum VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

.field public static final enum WIDE_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

.field public static final enum WIDE_VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

.field private static final sParameterTextId:I = 0x7f0f00ad

.field private static final sPhotoOptions:[Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;


# instance fields
.field private final mCameraId:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

.field private final mCameraMode:Ljava/lang/String;

.field private final mIconId:I

.field private final mTextId:I

.field private final mType:I

.field private mZoomStep:I


# direct methods
.method private static synthetic $values()[Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    .registers 10

    .line 30
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->UNKNOWN:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->NORMAL:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SUPERIOR_FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    sget-object v5, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    sget-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    sget-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    sget-object v8, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->WIDE_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->WIDE_VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    filled-new-array/range {v0 .. v9}, [Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 26

    .line 32
    new-instance v8, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    sget-object v6, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->BACK:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    const-string v7, "normal"

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;-><init>(Ljava/lang/String;IIIILcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Ljava/lang/String;)V

    sput-object v8, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->UNKNOWN:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 38
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    sget-object v15, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->SAT:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    const-string v16, "scene-recognition"

    const-string v10, "SCENE_RECOGNITION"

    const/4 v11, 0x1

    const/4 v12, -0x1

    const v13, 0x7f0f00fa

    const/4 v14, 0x1

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;-><init>(Ljava/lang/String;IIIILcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Ljava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 44
    new-instance v9, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    sget-object v7, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->SAT:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    const-string v8, "normal"

    const-string v2, "NORMAL"

    const/4 v3, 0x2

    const v4, 0x7f0800aa

    const v5, 0x7f0f00f3

    const/4 v6, 0x1

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;-><init>(Ljava/lang/String;IIIILcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Ljava/lang/String;)V

    sput-object v9, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->NORMAL:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 50
    new-instance v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    sget-object v16, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->SAT:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    const-string/jumbo v17, "video-camera"

    const-string v11, "VIDEO"

    const/4 v12, 0x3

    const/4 v13, -0x1

    const v14, 0x7f0f00f3

    const/4 v15, 0x2

    move-object v10, v1

    invoke-direct/range {v10 .. v17}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;-><init>(Ljava/lang/String;IIIILcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Ljava/lang/String;)V

    sput-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 56
    new-instance v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    sget-object v24, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->FRONT:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    const-string v25, "front-scene-recognition"

    const-string v19, "SUPERIOR_FRONT"

    const/16 v20, 0x4

    const/16 v21, -0x1

    const/16 v22, -0x1

    const/16 v23, 0x1

    move-object/from16 v18, v1

    invoke-direct/range {v18 .. v25}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;-><init>(Ljava/lang/String;IIIILcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Ljava/lang/String;)V

    sput-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SUPERIOR_FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 62
    new-instance v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    sget-object v16, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->FRONT:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    const-string v17, "front-camera"

    const-string v11, "FRONT_PHOTO"

    const/4 v12, 0x5

    const/4 v14, -0x1

    const/4 v15, 0x1

    move-object v10, v1

    invoke-direct/range {v10 .. v17}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;-><init>(Ljava/lang/String;IIIILcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Ljava/lang/String;)V

    sput-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 68
    new-instance v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    sget-object v24, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->FRONT:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    const-string v25, "front-video"

    const-string v19, "FRONT_VIDEO"

    const/16 v20, 0x6

    const/16 v23, 0x2

    move-object/from16 v18, v1

    invoke-direct/range {v18 .. v25}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;-><init>(Ljava/lang/String;IIIILcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Ljava/lang/String;)V

    sput-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 76
    new-instance v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    sget-object v16, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->BACK:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    const-string/jumbo v17, "slow-motion"

    const-string v11, "SLOW_MOTION"

    const/4 v12, 0x7

    const v13, 0x7f0800ad

    const v14, 0x7f0f008b

    const/4 v15, 0x2

    move-object v10, v1

    invoke-direct/range {v10 .. v17}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;-><init>(Ljava/lang/String;IIIILcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Ljava/lang/String;)V

    sput-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 83
    new-instance v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    sget-object v24, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->U_WIDE:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    const-string v25, "front-wide-scene-recognition"

    const-string v19, "WIDE_PHOTO"

    const/16 v20, 0x8

    const/16 v23, 0x1

    move-object/from16 v18, v1

    invoke-direct/range {v18 .. v25}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;-><init>(Ljava/lang/String;IIIILcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Ljava/lang/String;)V

    sput-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->WIDE_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 90
    new-instance v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    sget-object v16, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->U_WIDE:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    const-string/jumbo v17, "video-camera"

    const-string v11, "WIDE_VIDEO"

    const/16 v12, 0x9

    const/4 v13, -0x1

    const/4 v14, -0x1

    move-object v10, v1

    invoke-direct/range {v10 .. v17}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;-><init>(Ljava/lang/String;IIIILcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Ljava/lang/String;)V

    sput-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->WIDE_VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 30
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->$values()[Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v1

    sput-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 99
    filled-new-array {v0, v9}, [Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->sPhotoOptions:[Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIILcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 136
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 137
    iput p3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->mIconId:I

    .line 138
    iput p4, p0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->mTextId:I

    .line 139
    iput p5, p0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->mType:I

    .line 140
    iput-object p6, p0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->mCameraId:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    .line 141
    iput-object p7, p0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->mCameraMode:Ljava/lang/String;

    const/16 p1, 0xa8

    .line 142
    iput p1, p0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->mZoomStep:I

    return-void
.end method

.method public static convertFrom(Ljava/lang/String;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    .registers 4

    .line 295
    :try_start_0
    invoke-static {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_4} :catch_5

    goto :goto_21

    .line 297
    :catch_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Mode["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "] is not supported."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    :goto_21
    return-object p1
.end method

.method public static getPhotoOptions()[Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    .registers 1

    .line 202
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->sPhotoOptions:[Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    return-object v0
.end method

.method public static getValidOptions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;",
            ">;"
        }
    .end annotation

    .line 220
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 222
    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->BACK:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isSceneRecognitionSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 223
    const-string v1, "Back camera doesn\'t support Scene recognition."

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    .line 225
    :cond_16
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isFrontCameraSupported()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 228
    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->FRONT:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isSceneRecognitionSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v1

    if-nez v1, :cond_32

    .line 229
    const-string v1, "Front camera doesn\'t support Scene recognition."

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    .line 231
    :cond_32
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SUPERIOR_FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    :cond_37
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isFrontCameraSupported()Z

    move-result v1

    if-eqz v1, :cond_47

    .line 237
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    :cond_47
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->NORMAL:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isFrontCameraSupported()Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 245
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    :cond_5c
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isWideCameraSupported()Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 249
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->WIDE_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->WIDE_VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6c
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    .registers 2

    .line 30
    const-class v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    .registers 1

    .line 30
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;)V
    .registers 2

    .line 152
    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;->set(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    return-void
.end method

.method public getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;
    .registers 1

    .line 216
    iget-object p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->mCameraId:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    return-object p0
.end method

.method public getCameraMode()Ljava/lang/String;
    .registers 1

    .line 198
    iget-object p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->mCameraMode:Ljava/lang/String;

    return-object p0
.end method

.method public getIconId()I
    .registers 1

    .line 170
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->mIconId:I

    return p0
.end method

.method public getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;
    .registers 1

    .line 160
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    return-object p0
.end method

.method public getKeyTextId()I
    .registers 1

    const p0, 0x7f0f00ad

    return p0
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    .line 207
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPhysicalCamera()I
    .registers 1

    .line 276
    iget-object p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->mCameraId:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->getCameraDeviceIdApi1()I

    move-result p0

    return p0
.end method

.method public getTextId()I
    .registers 1

    .line 180
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->mTextId:I

    return p0
.end method

.method public getType()I
    .registers 1

    .line 194
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->mType:I

    return p0
.end method

.method public getValue()Ljava/lang/String;
    .registers 1

    .line 190
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getZoomStep()I
    .registers 1

    .line 303
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->mZoomStep:I

    return p0
.end method

.method public isFront()Z
    .registers 1

    .line 272
    iget-object p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->mCameraId:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->isFront()Z

    move-result p0

    return p0
.end method

.method public isMainPhoto()Z
    .registers 4

    .line 257
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_18

    .line 258
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v0

    sget-object v2, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->BACK:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    if-eq v0, v2, :cond_17

    .line 259
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->SAT:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    if-ne p0, v0, :cond_18

    :cond_17
    return v1

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method public isMainVideo()Z
    .registers 3

    .line 266
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_19

    .line 267
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->BACK:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    if-eq v0, v1, :cond_17

    .line 268
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->SAT:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    if-ne p0, v0, :cond_19

    :cond_17
    const/4 p0, 0x1

    goto :goto_1a

    :cond_19
    const/4 p0, 0x0

    :goto_1a
    return p0
.end method

.method public isSuperiorAuto()Z
    .registers 2

    .line 280
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq p0, v0, :cond_b

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SUPERIOR_FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne p0, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    return p0

    :cond_b
    :goto_b
    const/4 p0, 0x1

    return p0
.end method

.method public isVideo()Z
    .registers 2

    .line 287
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->mType:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public setZoomStep(I)V
    .registers 2

    .line 307
    iput p1, p0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->mZoomStep:I

    return-void
.end method
