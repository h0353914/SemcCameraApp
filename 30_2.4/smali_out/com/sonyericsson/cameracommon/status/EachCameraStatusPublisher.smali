.class public Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;
.super Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;
.source "EachCameraStatusPublisher.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher<",
        "Lcom/sonyericsson/cameracommon/status/EachCameraStatusValue;",
        ">;"
    }
.end annotation


# static fields
.field private static final KEY_PREFIX_BACK:Ljava/lang/String; = "camera0_"

.field private static final KEY_PREFIX_FRONT:Ljava/lang/String; = "camera1_"


# instance fields
.field private final mKeyPrefix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V
    .registers 4

    .line 58
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;-><init>(Landroid/content/Context;)V

    .line 60
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->getCameraCommonVersion()I

    move-result p1

    const/16 v0, 0xa

    if-lt p1, v0, :cond_1b

    .line 62
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->isFront()Z

    move-result p1

    if-eqz p1, :cond_16

    const-string p1, "camera1_"

    .line 63
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->mKeyPrefix:Ljava/lang/String;

    goto :goto_1e

    :cond_16
    const-string p1, "camera0_"

    .line 65
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->mKeyPrefix:Ljava/lang/String;

    goto :goto_1e

    :cond_1b
    const/4 p1, 0x0

    .line 69
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->mKeyPrefix:Ljava/lang/String;

    :goto_1e
    return-void
.end method


# virtual methods
.method protected keyPrefix()Ljava/lang/String;
    .registers 2

    .line 138
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->mKeyPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public putDefaultAll()Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher<",
            "Lcom/sonyericsson/cameracommon/status/EachCameraStatusValue;",
            ">;"
        }
    .end annotation

    .line 111
    new-instance v0, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus;

    sget-object v1, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus;->DEFAULT_VALUE:Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    .line 112
    new-instance v0, Lcom/sonyericsson/cameracommon/status/eachcamera/PreviewResolution;

    sget-object v1, Lcom/sonyericsson/cameracommon/status/eachcamera/PreviewResolution;->DEFAULT_VALUE:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/status/eachcamera/PreviewResolution;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    .line 113
    new-instance v0, Lcom/sonyericsson/cameracommon/status/eachcamera/PictureResolution;

    sget-object v1, Lcom/sonyericsson/cameracommon/status/eachcamera/PictureResolution;->DEFAULT_VALUE:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/status/eachcamera/PictureResolution;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    .line 114
    new-instance v0, Lcom/sonyericsson/cameracommon/status/eachcamera/VideoResolution;

    sget-object v1, Lcom/sonyericsson/cameracommon/status/eachcamera/VideoResolution;->DEFAULT_VALUE:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/status/eachcamera/VideoResolution;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    .line 115
    new-instance v0, Lcom/sonyericsson/cameracommon/status/eachcamera/PreviewMaxFps;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/status/eachcamera/PreviewMaxFps;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    .line 116
    new-instance v0, Lcom/sonyericsson/cameracommon/status/eachcamera/VideoRecordingFps;

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/status/eachcamera/VideoRecordingFps;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    .line 117
    new-instance v0, Lcom/sonyericsson/cameracommon/status/eachcamera/BurstShooting;

    sget-object v1, Lcom/sonyericsson/cameracommon/status/eachcamera/BurstShooting;->DEFAULT_VALUE:Lcom/sonyericsson/cameracommon/status/eachcamera/BurstShooting$Value;

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/status/eachcamera/BurstShooting;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/BurstShooting$Value;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    .line 118
    new-instance v0, Lcom/sonyericsson/cameracommon/status/eachcamera/FaceIdentification;

    sget-object v1, Lcom/sonyericsson/cameracommon/status/eachcamera/FaceIdentification;->DEFAULT_VALUE:Lcom/sonyericsson/cameracommon/status/eachcamera/FaceIdentification$Value;

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/status/eachcamera/FaceIdentification;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/FaceIdentification$Value;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    .line 119
    new-instance v0, Lcom/sonyericsson/cameracommon/status/eachcamera/FaceDetection;

    sget-object v1, Lcom/sonyericsson/cameracommon/status/eachcamera/FaceDetection;->DEFAULT_VALUE:Lcom/sonyericsson/cameracommon/status/eachcamera/FaceDetection$Value;

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/status/eachcamera/FaceDetection;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/FaceDetection$Value;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    .line 120
    new-instance v0, Lcom/sonyericsson/cameracommon/status/eachcamera/SceneRecognition;

    sget-object v1, Lcom/sonyericsson/cameracommon/status/eachcamera/SceneRecognition;->DEFAULT_VALUE:Lcom/sonyericsson/cameracommon/status/eachcamera/SceneRecognition$Value;

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/status/eachcamera/SceneRecognition;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/SceneRecognition$Value;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    .line 121
    new-instance v0, Lcom/sonyericsson/cameracommon/status/eachcamera/ObjectTracking;

    sget-object v1, Lcom/sonyericsson/cameracommon/status/eachcamera/ObjectTracking;->DEFAULT_VALUE:Lcom/sonyericsson/cameracommon/status/eachcamera/ObjectTracking$Value;

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/status/eachcamera/ObjectTracking;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/ObjectTracking$Value;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    .line 122
    new-instance v0, Lcom/sonyericsson/cameracommon/status/eachcamera/VideoStabilizerStatus;

    sget-object v1, Lcom/sonyericsson/cameracommon/status/eachcamera/VideoStabilizerStatus;->DEFAULT_VALUE:Lcom/sonyericsson/cameracommon/status/eachcamera/VideoStabilizerStatus$Value;

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/status/eachcamera/VideoStabilizerStatus;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/VideoStabilizerStatus$Value;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    .line 123
    new-instance v0, Lcom/sonyericsson/cameracommon/status/eachcamera/PhotoLight;

    sget-object v1, Lcom/sonyericsson/cameracommon/status/eachcamera/PhotoLight;->DEFAULT_VALUE:Lcom/sonyericsson/cameracommon/status/eachcamera/PhotoLight$Value;

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/status/eachcamera/PhotoLight;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/PhotoLight$Value;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    .line 124
    new-instance v0, Lcom/sonyericsson/cameracommon/status/eachcamera/VideoNoiseReduction;

    sget-object v1, Lcom/sonyericsson/cameracommon/status/eachcamera/VideoNoiseReduction;->DEFAULT_VALUE:Lcom/sonyericsson/cameracommon/status/eachcamera/VideoNoiseReduction$Value;

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/status/eachcamera/VideoNoiseReduction;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/VideoNoiseReduction$Value;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    .line 125
    new-instance v0, Lcom/sonyericsson/cameracommon/status/eachcamera/Metadata;

    sget-object v1, Lcom/sonyericsson/cameracommon/status/eachcamera/Metadata;->DEFAULT_VALUE:Lcom/sonyericsson/cameracommon/status/eachcamera/Metadata$Value;

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/status/eachcamera/Metadata;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/Metadata$Value;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    .line 126
    new-instance v0, Lcom/sonyericsson/cameracommon/status/eachcamera/ArtFilter;

    sget-object v1, Lcom/sonyericsson/cameracommon/status/eachcamera/ArtFilter;->DEFAULT_VALUE:Lcom/sonyericsson/cameracommon/status/eachcamera/ArtFilter$Value;

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/status/eachcamera/ArtFilter;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/ArtFilter$Value;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    .line 127
    new-instance v0, Lcom/sonyericsson/cameracommon/status/eachcamera/TimeShift;

    sget-object v1, Lcom/sonyericsson/cameracommon/status/eachcamera/TimeShift;->DEFAULT_VALUE:Lcom/sonyericsson/cameracommon/status/eachcamera/TimeShift$Value;

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/status/eachcamera/TimeShift;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/TimeShift$Value;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    .line 128
    new-instance v0, Lcom/sonyericsson/cameracommon/status/eachcamera/SoundPhoto;

    sget-object v1, Lcom/sonyericsson/cameracommon/status/eachcamera/SoundPhoto;->DEFAULT_VALUE:Lcom/sonyericsson/cameracommon/status/eachcamera/SoundPhoto$Value;

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/status/eachcamera/SoundPhoto;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/SoundPhoto$Value;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    .line 129
    new-instance v0, Lcom/sonyericsson/cameracommon/status/eachcamera/OnlineRemote;

    sget-object v1, Lcom/sonyericsson/cameracommon/status/eachcamera/OnlineRemote;->DEFAULT_VALUE:Lcom/sonyericsson/cameracommon/status/eachcamera/OnlineRemote$Value;

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/status/eachcamera/OnlineRemote;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/OnlineRemote$Value;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    .line 130
    new-instance v0, Lcom/sonyericsson/cameracommon/status/eachcamera/SlowMotion;

    sget-object v1, Lcom/sonyericsson/cameracommon/status/eachcamera/SlowMotion$Value;->OFF:Lcom/sonyericsson/cameracommon/status/eachcamera/SlowMotion$Value;

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/status/eachcamera/SlowMotion;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/SlowMotion$Value;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    .line 131
    new-instance v0, Lcom/sonyericsson/cameracommon/status/eachcamera/Hdr;

    sget-object v1, Lcom/sonyericsson/cameracommon/status/eachcamera/Hdr$Value;->OFF:Lcom/sonyericsson/cameracommon/status/eachcamera/Hdr$Value;

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/status/eachcamera/Hdr;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/Hdr$Value;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    .line 132
    new-instance v0, Lcom/sonyericsson/cameracommon/status/eachcamera/Bokeh;

    sget-object v1, Lcom/sonyericsson/cameracommon/status/eachcamera/Bokeh$Value;->OFF:Lcom/sonyericsson/cameracommon/status/eachcamera/Bokeh$Value;

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/status/eachcamera/Bokeh;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/Bokeh$Value;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    return-object p0
.end method

.method public putFromParameter(Lcom/sonyericsson/android/camera/device/CameraParameters;Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Z)Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;
    .registers 6

    if-eqz p1, :cond_3b

    .line 87
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPreviewSize()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 89
    new-instance v1, Lcom/sonyericsson/cameracommon/status/eachcamera/PreviewResolution;

    invoke-direct {v1, v0}, Lcom/sonyericsson/cameracommon/status/eachcamera/PreviewResolution;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v1}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    .line 90
    new-instance v0, Lcom/sonyericsson/cameracommon/status/eachcamera/PreviewMaxFps;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->getFacingId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p2

    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getMaxPreviewFps(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)I

    move-result p2

    invoke-direct {v0, p2}, Lcom/sonyericsson/cameracommon/status/eachcamera/PreviewMaxFps;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    :cond_20
    if-eqz p3, :cond_2d

    .line 93
    new-instance p1, Lcom/sonyericsson/cameracommon/status/eachcamera/PictureResolution;

    sget-object p2, Lcom/sonyericsson/cameracommon/status/eachcamera/PictureResolution;->DEFAULT_VALUE:Landroid/graphics/Rect;

    invoke-direct {p1, p2}, Lcom/sonyericsson/cameracommon/status/eachcamera/PictureResolution;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    goto :goto_3b

    .line 95
    :cond_2d
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPictureSize()Landroid/graphics/Rect;

    move-result-object p1

    if-eqz p1, :cond_3b

    .line 97
    new-instance p2, Lcom/sonyericsson/cameracommon/status/eachcamera/PictureResolution;

    invoke-direct {p2, p1}, Lcom/sonyericsson/cameracommon/status/eachcamera/PictureResolution;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p0, p2}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    :cond_3b
    :goto_3b
    return-object p0
.end method
