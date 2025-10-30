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


# instance fields
.field private mIsNeedCapturedFrame:Z

.field private mIsVideoHdr:Z

.field private final mSessionIdTag:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .registers 2

    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->mSessionIdTag:Ljava/lang/String;

    .line 317
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->clear()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraController$1;)V
    .registers 3

    .line 306
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;Z)V
    .registers 2

    .line 306
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->needVideoHdr(Z)V

    return-void
.end method

.method static synthetic access$3800(Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;Z)V
    .registers 2

    .line 306
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->needCapturedFrame(Z)V

    return-void
.end method

.method static synthetic access$4000(Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;)Z
    .registers 1

    .line 306
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->isVideoHdr()Z

    move-result p0

    return p0
.end method

.method static synthetic access$4300(Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;)Z
    .registers 1

    .line 306
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->isNeedCapturedFrame()Z

    move-result p0

    return p0
.end method

.method private clear()V
    .registers 2

    const/4 v0, 0x0

    .line 340
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->mIsNeedCapturedFrame:Z

    .line 341
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->mIsVideoHdr:Z

    return-void
.end method

.method private isNeedCapturedFrame()Z
    .registers 2

    .line 329
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->mIsNeedCapturedFrame:Z

    return v0
.end method

.method private isVideoHdr()Z
    .registers 2

    .line 333
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->mIsVideoHdr:Z

    return v0
.end method

.method private needCapturedFrame(Z)V
    .registers 2

    .line 321
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->mIsNeedCapturedFrame:Z

    return-void
.end method

.method private needVideoHdr(Z)V
    .registers 2

    .line 325
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->mIsVideoHdr:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 353
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

    .line 358
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 346
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

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
