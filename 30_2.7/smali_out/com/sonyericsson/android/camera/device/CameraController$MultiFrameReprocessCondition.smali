.class Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;
.super Ljava/lang/Object;
.source "CameraController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MultiFrameReprocessCondition"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition$Type;
    }
.end annotation


# instance fields
.field private mImageNum:I

.field private final mReprocessData:Lcom/sonyericsson/android/camera/device/zsl/ReprocessData;

.field private mResultNum:I

.field private mType:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition$Type;


# direct methods
.method public constructor <init>(ILcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition$Type;)V
    .registers 5

    .line 1088
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1085
    new-instance v0, Lcom/sonyericsson/android/camera/device/zsl/ReprocessData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/device/zsl/ReprocessData;-><init>(Lcom/sonyericsson/android/camera/device/zsl/ImageToken;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;->mReprocessData:Lcom/sonyericsson/android/camera/device/zsl/ReprocessData;

    .line 1089
    iput p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;->mImageNum:I

    .line 1090
    iput p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;->mResultNum:I

    .line 1091
    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;->mType:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition$Type;

    return-void
.end method

.method private acceptable(Landroid/hardware/camera2/TotalCaptureResult;)Z
    .registers 4

    .line 1120
    iget v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;->mResultNum:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;->mResultNum:I

    if-nez v0, :cond_e

    .line 1121
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;->mReprocessData:Lcom/sonyericsson/android/camera/device/zsl/ReprocessData;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/zsl/ReprocessData;->setResult(Landroid/hardware/camera2/TotalCaptureResult;)V

    return v1

    :cond_e
    const/4 p1, 0x0

    return p1
.end method

.method private acceptable(Landroid/media/Image;)Z
    .registers 4

    .line 1104
    iget v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;->mImageNum:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;->mImageNum:I

    if-nez v0, :cond_e

    .line 1105
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;->mReprocessData:Lcom/sonyericsson/android/camera/device/zsl/ReprocessData;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/zsl/ReprocessData;->setImage(Landroid/media/Image;)V

    return v1

    .line 1109
    :cond_e
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    const/4 p1, 0x0

    return p1
.end method

.method static synthetic access$2200(Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;Landroid/media/Image;)Z
    .registers 2

    .line 1072
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;->acceptable(Landroid/media/Image;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2300(Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;)Z
    .registers 1

    .line 1072
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;->isPrepared()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2400(Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;)V
    .registers 1

    .line 1072
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;->recycle()V

    return-void
.end method

.method static synthetic access$2600(Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;Landroid/hardware/camera2/TotalCaptureResult;)Z
    .registers 2

    .line 1072
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;->acceptable(Landroid/hardware/camera2/TotalCaptureResult;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$3100(Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;)Lcom/sonyericsson/android/camera/device/zsl/ReprocessData;
    .registers 1

    .line 1072
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;->getData()Lcom/sonyericsson/android/camera/device/zsl/ReprocessData;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3300(Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;)Z
    .registers 1

    .line 1072
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;->isLLS()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3700(Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;Landroid/os/Handler;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;)V
    .registers 3

    .line 1072
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;->notifyShutter(Landroid/os/Handler;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;)V

    return-void
.end method

.method private getData()Lcom/sonyericsson/android/camera/device/zsl/ReprocessData;
    .registers 2

    .line 1149
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;->mReprocessData:Lcom/sonyericsson/android/camera/device/zsl/ReprocessData;

    return-object v0
.end method

.method private isLLS()Z
    .registers 3

    .line 1095
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;->mType:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition$Type;

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition$Type;->LLS:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition$Type;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private isPrepared()Z
    .registers 2

    .line 1140
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;->mReprocessData:Lcom/sonyericsson/android/camera/device/zsl/ReprocessData;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/zsl/ReprocessData;->isValid()Z

    move-result v0

    return v0
.end method

.method private notifyShutter(Landroid/os/Handler;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;)V
    .registers 4

    .line 1157
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;->isLLS()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1158
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition$1;

    invoke-direct {v0, p0, p2}, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition$1;-><init>(Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_e
    return-void
.end method

.method private recycle()V
    .registers 2

    .line 1132
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;->mReprocessData:Lcom/sonyericsson/android/camera/device/zsl/ReprocessData;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/zsl/ReprocessData;->recycle()V

    return-void
.end method
