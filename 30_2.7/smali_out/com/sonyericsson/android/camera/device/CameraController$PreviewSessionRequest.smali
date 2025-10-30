.class Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;
.super Ljava/lang/Object;
.source "CameraController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PreviewSessionRequest"
.end annotation


# static fields
.field public static final OPERATION_MODE_SOMC_CAMERA_BT601:I = 0x8000

.field public static final OPERATION_MODE_SOMC_CAMERA_BT709:I = 0x8003

.field public static final OPERATION_MODE_SOMC_CAMERA_STEADY_SHOT:I = 0x9001

.field public static final OPERATION_MODE_SOMC_CAMERA_SUPER_NIGHT:I = 0x9002

.field public static final OPERATION_MODE_SOMC_CAMERA_VIDEO_HDR:I = 0x8002


# instance fields
.field private mIsNeedCapturedFrame:Z

.field private mIsSteadyShot:Z

.field private mIsSuperNightMode:Z

.field private mIsVideoHdr:Z

.field private mNeedSlowMotion:Z

.field private final mSessionIdTag:Ljava/lang/String;

.field private mSessionType:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

.field private mVideoSize:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

.field private misLogicCameraOperationMode:Z


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .registers 2

    .line 2310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2312
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->mSessionIdTag:Ljava/lang/String;

    .line 2313
    sget-object p1, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;->SESSION_TYPE_NORMAL:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->mSessionType:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    const/4 p1, 0x0

    .line 2314
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->mVideoSize:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 2315
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->clear()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraController$1;)V
    .registers 3

    .line 2285
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method

.method static synthetic access$10000(Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;Z)V
    .registers 2

    .line 2285
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->needSteadyShot(Z)V

    return-void
.end method

.method static synthetic access$10100(Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;)Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;
    .registers 1

    .line 2285
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->getSessionType()Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$10300(Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;)Z
    .registers 1

    .line 2285
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->isNeedCapturedFrame()Z

    move-result p0

    return p0
.end method

.method static synthetic access$11100(Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;)Z
    .registers 1

    .line 2285
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->isVideoHdr()Z

    move-result p0

    return p0
.end method

.method static synthetic access$11700(Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;)I
    .registers 1

    .line 2285
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->getOperationMode()I

    move-result p0

    return p0
.end method

.method static synthetic access$11800(Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;)Z
    .registers 1

    .line 2285
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->isSlowMotion()Z

    move-result p0

    return p0
.end method

.method static synthetic access$7800(Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;)V
    .registers 2

    .line 2285
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->setSessionType(Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;)V

    return-void
.end method

.method static synthetic access$9400(Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)V
    .registers 2

    .line 2285
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->needVideo(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)V

    return-void
.end method

.method static synthetic access$9500(Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;Z)V
    .registers 2

    .line 2285
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->needVideoHdr(Z)V

    return-void
.end method

.method static synthetic access$9600(Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;Z)V
    .registers 2

    .line 2285
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->needCapturedFrame(Z)V

    return-void
.end method

.method static synthetic access$9700(Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;Z)V
    .registers 2

    .line 2285
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->needSlowMotion(Z)V

    return-void
.end method

.method static synthetic access$9800(Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;Z)V
    .registers 2

    .line 2285
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->needLogicCameraOperationMode(Z)V

    return-void
.end method

.method static synthetic access$9900(Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;Z)V
    .registers 2

    .line 2285
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->needSuperNight(Z)V

    return-void
.end method

.method private clear()V
    .registers 2

    const/4 v0, 0x0

    .line 2383
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->mIsNeedCapturedFrame:Z

    .line 2384
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->mIsVideoHdr:Z

    const/4 v0, 0x0

    .line 2385
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->mVideoSize:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    return-void
.end method

.method private getOperationMode()I
    .registers 2

    .line 2368
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->mIsVideoHdr:Z

    if-eqz v0, :cond_8

    const v0, 0x8002

    goto :goto_1b

    .line 2370
    :cond_8
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->mIsSuperNightMode:Z

    if-eqz v0, :cond_10

    const v0, 0x9002

    goto :goto_1b

    .line 2372
    :cond_10
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->mIsSteadyShot:Z

    if-eqz v0, :cond_18

    const v0, 0x9001

    goto :goto_1b

    :cond_18
    const v0, 0x8000

    :goto_1b
    return v0
.end method

.method private getSessionType()Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;
    .registers 2

    .line 2323
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->mSessionType:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    return-object v0
.end method

.method private isNeedCapturedFrame()Z
    .registers 2

    .line 2343
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->mIsNeedCapturedFrame:Z

    return v0
.end method

.method private isSlowMotion()Z
    .registers 2

    .line 2355
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->mNeedSlowMotion:Z

    return v0
.end method

.method private isVideoHdr()Z
    .registers 2

    .line 2347
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->mIsVideoHdr:Z

    return v0
.end method

.method private needCapturedFrame(Z)V
    .registers 2

    .line 2331
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->mIsNeedCapturedFrame:Z

    return-void
.end method

.method private needLogicCameraOperationMode(Z)V
    .registers 2

    .line 2327
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->misLogicCameraOperationMode:Z

    return-void
.end method

.method private needSlowMotion(Z)V
    .registers 2

    .line 2351
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->mNeedSlowMotion:Z

    return-void
.end method

.method private needSteadyShot(Z)V
    .registers 2

    .line 2363
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->mIsSteadyShot:Z

    return-void
.end method

.method private needSuperNight(Z)V
    .registers 2

    .line 2359
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->mIsSuperNightMode:Z

    return-void
.end method

.method private needVideo(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)V
    .registers 2

    .line 2339
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->mVideoSize:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    return-void
.end method

.method private needVideoHdr(Z)V
    .registers 2

    .line 2335
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->mIsVideoHdr:Z

    return-void
.end method

.method private setSessionType(Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;)V
    .registers 2

    .line 2319
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->mSessionType:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 2398
    instance-of v0, p1, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    const/4 p1, 0x1

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    :goto_15
    return p1
.end method

.method public hashCode()I
    .registers 2

    .line 2403
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 2390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{sessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->mSessionIdTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isNeedCapturedFrame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->mIsNeedCapturedFrame:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isVideoHdr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->mIsVideoHdr:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", OperationMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2392
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->getOperationMode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mSessionType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->mSessionType:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
