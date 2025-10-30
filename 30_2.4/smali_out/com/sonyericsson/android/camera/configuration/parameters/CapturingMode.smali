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

.field private static final sParameterTextId:I = 0x7f0e009b

.field private static final sPhotoOptions:[Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;


# instance fields
.field private final mCameraId:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

.field private final mIconId:I

.field private final mTextId:I

.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .registers 15

    .line 28
    new-instance v7, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    const-string v1, "UNKNOWN"

    sget-object v6, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->BACK:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;-><init>(Ljava/lang/String;IIIILcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V

    sput-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->UNKNOWN:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 33
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    const-string v9, "SCENE_RECOGNITION"

    sget-object v14, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->BACK:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    const/4 v10, 0x1

    const/4 v11, -0x1

    const v12, 0x7f0e00dc

    const/4 v13, 0x1

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;-><init>(Ljava/lang/String;IIIILcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 38
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    const-string v2, "NORMAL"

    sget-object v7, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->BACK:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    const/4 v3, 0x2

    const v4, 0x7f0800b9

    const v5, 0x7f0e00d6

    const/4 v6, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;-><init>(Ljava/lang/String;IIIILcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->NORMAL:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 43
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    const-string v9, "VIDEO"

    sget-object v14, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->BACK:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    const/4 v10, 0x3

    const v12, 0x7f0e00d6

    const/4 v13, 0x2

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;-><init>(Ljava/lang/String;IIIILcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 48
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    const-string v2, "SUPERIOR_FRONT"

    sget-object v7, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->FRONT:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    const/4 v3, 0x4

    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;-><init>(Ljava/lang/String;IIIILcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SUPERIOR_FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 53
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    const-string v9, "FRONT_VIDEO"

    sget-object v14, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->FRONT:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    const/4 v10, 0x5

    const/4 v12, -0x1

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;-><init>(Ljava/lang/String;IIIILcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 60
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    const-string v2, "SLOW_MOTION"

    sget-object v7, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->BACK:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    const/4 v3, 0x6

    const v4, 0x7f0800bb

    const v5, 0x7f0e007d

    const/4 v6, 0x2

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;-><init>(Ljava/lang/String;IIIILcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 67
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    const-string v9, "FRONT_PHOTO"

    sget-object v14, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->FRONT:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    const/4 v10, 0x7

    const/4 v13, 0x1

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;-><init>(Ljava/lang/String;IIIILcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 73
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    const-string v2, "WIDE_PHOTO"

    sget-object v7, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->WIDE:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    const/16 v3, 0x8

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;-><init>(Ljava/lang/String;IIIILcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->WIDE_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 79
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    const-string v9, "WIDE_VIDEO"

    sget-object v14, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->WIDE:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    const/16 v10, 0x9

    const/4 v13, 0x2

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;-><init>(Ljava/lang/String;IIIILcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->WIDE_VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    const/16 v0, 0xa

    .line 26
    new-array v0, v0, [Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->UNKNOWN:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->NORMAL:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    const/4 v5, 0x2

    aput-object v4, v0, v5

    sget-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    const/4 v7, 0x3

    aput-object v6, v0, v7

    sget-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SUPERIOR_FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    const/4 v7, 0x4

    aput-object v6, v0, v7

    sget-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    const/4 v7, 0x5

    aput-object v6, v0, v7

    sget-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    const/4 v7, 0x6

    aput-object v6, v0, v7

    sget-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    const/4 v7, 0x7

    aput-object v6, v0, v7

    sget-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->WIDE_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    const/16 v7, 0x8

    aput-object v6, v0, v7

    sget-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->WIDE_VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    const/16 v7, 0x9

    aput-object v6, v0, v7

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 87
    new-array v0, v5, [Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    aput-object v1, v0, v2

    aput-object v4, v0, v3

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->sPhotoOptions:[Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIILcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;",
            ")V"
        }
    .end annotation

    .line 119
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 120
    iput p3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->mIconId:I

    .line 121
    iput p4, p0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->mTextId:I

    .line 122
    iput p5, p0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->mType:I

    .line 123
    iput-object p6, p0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->mCameraId:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    return-void
.end method

.method public static convertFrom(Ljava/lang/String;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    .registers 6

    .line 265
    :try_start_0
    invoke-static {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_4} :catch_5

    goto :goto_24

    :catch_5
    const/4 v0, 0x1

    .line 267
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mode["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] is not supported."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    :goto_24
    return-object p1
.end method

.method public static getPhotoOptions()[Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    .registers 1

    .line 179
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

    .line 197
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 199
    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->BACK:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isSceneRecognitionSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v1

    if-nez v1, :cond_16

    const-string v1, "Back camera doesn\'t support Scene recognition."

    .line 200
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    .line 202
    :cond_16
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isFrontCameraSupported()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 205
    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->FRONT:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isSceneRecognitionSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v1

    if-nez v1, :cond_32

    const-string v1, "Front camera doesn\'t support Scene recognition."

    .line 206
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    .line 208
    :cond_32
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SUPERIOR_FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    :cond_37
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isFrontCameraSupported()Z

    move-result v1

    if-eqz v1, :cond_47

    .line 214
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    :cond_47
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->NORMAL:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isFrontCameraSupported()Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 222
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    :cond_5c
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isWideCameraSupported()Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 226
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->WIDE_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->WIDE_VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6c
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    .registers 2

    .line 26
    const-class v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    .registers 1

    .line 26
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;)V
    .registers 2

    .line 133
    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;->set(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    return-void
.end method

.method public getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;
    .registers 2

    .line 193
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->mCameraId:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    return-object v0
.end method

.method public getIconId()I
    .registers 2

    .line 151
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->mIconId:I

    return v0
.end method

.method public getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;
    .registers 2

    .line 141
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    return-object v0
.end method

.method public getKeyTextId()I
    .registers 2

    const v0, 0x7f0e009b

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 184
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhysicalCamera()I
    .registers 2

    .line 246
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->mCameraId:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->getCameraDeviceIdApi1()I

    move-result v0

    return v0
.end method

.method public getTextId()I
    .registers 2

    .line 161
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->mTextId:I

    return v0
.end method

.method public getType()I
    .registers 2

    .line 175
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->mType:I

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .line 171
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isFront()Z
    .registers 2

    .line 242
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->mCameraId:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->isFront()Z

    move-result v0

    return v0
.end method

.method public isMainPhoto()Z
    .registers 4

    .line 234
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    .line 235
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v0

    sget-object v2, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->BACK:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    if-ne v0, v2, :cond_10

    return v1

    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public isSuperiorAuto()Z
    .registers 2

    .line 250
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq p0, v0, :cond_b

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SUPERIOR_FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne p0, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    return v0

    :cond_b
    :goto_b
    const/4 v0, 0x1

    return v0
.end method

.method public isVideo()Z
    .registers 3

    .line 257
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method
