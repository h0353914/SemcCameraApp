.class public Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;
.super Ljava/lang/Object;
.source "QrDetectionController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController$QrDetectResultListener;
    }
.end annotation


# instance fields
.field private mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

.field private mImageRetriever:Lcom/sonyericsson/android/camera/device/ImageRetriever;

.field private mIsOneShot:Z

.field private mIsPreviewing:Z

.field private mIsQRDetectionOn:Z

.field private mQrDetectResultListener:Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController$QrDetectResultListener;

.field private mQrDetector:Lcom/sonyericsson/android/camera/qrdetection/QrDetector;

.field private mQrResultListener:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$QrResultListener;

.field private mUiScheduler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$QrResultListener;)V
    .registers 5

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;->mIsQRDetectionOn:Z

    .line 25
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;->mIsOneShot:Z

    .line 26
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->UNKNOWN:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    iput-object v1, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    const/4 v1, 0x0

    .line 27
    iput-object v1, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;->mImageRetriever:Lcom/sonyericsson/android/camera/device/ImageRetriever;

    .line 28
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;->mIsPreviewing:Z

    .line 30
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;->mUiScheduler:Landroid/os/Handler;

    .line 31
    iput-object v1, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;->mQrDetector:Lcom/sonyericsson/android/camera/qrdetection/QrDetector;

    .line 47
    new-instance v0, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController$1;-><init>(Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;->mQrDetectResultListener:Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController$QrDetectResultListener;

    .line 35
    iput-object p1, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;->mQrResultListener:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$QrResultListener;

    return-void
.end method

.method static synthetic access$002(Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;Z)Z
    .registers 2

    .line 22
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;->mIsPreviewing:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;Lcom/google/zxing/Result;)Ljava/lang/String;
    .registers 2

    .line 22
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;)Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$QrResultListener;
    .registers 1

    .line 22
    iget-object p0, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;->mQrResultListener:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$QrResultListener;

    return-object p0
.end method

.method private getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;
    .registers 2

    .line 106
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "\ufeff"

    .line 108
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_12

    const/4 p1, 0x1

    .line 109
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_12
    return-object p0
.end method

.method private isOperableMode()Z
    .registers 3

    .line 126
    iget-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq v0, v1, :cond_c

    iget-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->WIDE_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne v0, v1, :cond_12

    :cond_c
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;->mIsOneShot:Z

    if-nez p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method private shouldPerformDetection()Z
    .registers 2

    .line 131
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;->mIsQRDetectionOn:Z

    if-eqz v0, :cond_c

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;->isOperableMode()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method


# virtual methods
.method public handlePreviewStarted(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)V
    .registers 4

    .line 76
    iget-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;->mImageRetriever:Lcom/sonyericsson/android/camera/device/ImageRetriever;

    if-nez v0, :cond_5

    return-void

    .line 79
    :cond_5
    iput-object p1, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 80
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;->mIsOneShot:Z

    .line 81
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;->shouldPerformDetection()Z

    move-result p1

    if-eqz p1, :cond_29

    const/4 p1, 0x1

    .line 82
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;->mIsPreviewing:Z

    .line 83
    iget-object p1, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;->mQrDetector:Lcom/sonyericsson/android/camera/qrdetection/QrDetector;

    if-nez p1, :cond_21

    .line 84
    new-instance p1, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;->mQrDetectResultListener:Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController$QrDetectResultListener;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;->mUiScheduler:Landroid/os/Handler;

    invoke-direct {p1, p2, v0}, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;-><init>(Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController$QrDetectResultListener;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;->mQrDetector:Lcom/sonyericsson/android/camera/qrdetection/QrDetector;

    .line 86
    :cond_21
    iget-object p1, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;->mQrDetector:Lcom/sonyericsson/android/camera/qrdetection/QrDetector;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;->mImageRetriever:Lcom/sonyericsson/android/camera/device/ImageRetriever;

    invoke-virtual {p1, p0}, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->startDetect(Lcom/sonyericsson/android/camera/device/ImageRetriever;)V

    goto :goto_38

    .line 88
    :cond_29
    iget-object p1, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;->mQrDetector:Lcom/sonyericsson/android/camera/qrdetection/QrDetector;

    if-eqz p1, :cond_38

    .line 89
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->stopDetect()V

    .line 90
    iget-object p1, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;->mQrDetector:Lcom/sonyericsson/android/camera/qrdetection/QrDetector;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->release()V

    const/4 p1, 0x0

    .line 91
    iput-object p1, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;->mQrDetector:Lcom/sonyericsson/android/camera/qrdetection/QrDetector;

    :cond_38
    :goto_38
    return-void
.end method

.method public handlePreviewStarted(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;ZZLcom/sonyericsson/android/camera/device/ImageRetriever;)V
    .registers 5

    .line 57
    iput-object p4, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;->mImageRetriever:Lcom/sonyericsson/android/camera/device/ImageRetriever;

    .line 58
    iput-object p1, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 59
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;->mIsOneShot:Z

    .line 60
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;->shouldPerformDetection()Z

    move-result p1

    if-eqz p1, :cond_26

    if-nez p3, :cond_26

    const/4 p1, 0x1

    .line 61
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;->mIsPreviewing:Z

    .line 62
    iget-object p1, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;->mQrDetector:Lcom/sonyericsson/android/camera/qrdetection/QrDetector;

    if-nez p1, :cond_20

    .line 63
    new-instance p1, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;->mQrDetectResultListener:Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController$QrDetectResultListener;

    iget-object p3, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;->mUiScheduler:Landroid/os/Handler;

    invoke-direct {p1, p2, p3}, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;-><init>(Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController$QrDetectResultListener;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;->mQrDetector:Lcom/sonyericsson/android/camera/qrdetection/QrDetector;

    .line 65
    :cond_20
    iget-object p0, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;->mQrDetector:Lcom/sonyericsson/android/camera/qrdetection/QrDetector;

    invoke-virtual {p0, p4}, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->startDetect(Lcom/sonyericsson/android/camera/device/ImageRetriever;)V

    goto :goto_35

    .line 67
    :cond_26
    iget-object p1, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;->mQrDetector:Lcom/sonyericsson/android/camera/qrdetection/QrDetector;

    if-eqz p1, :cond_35

    .line 68
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->stopDetect()V

    .line 69
    iget-object p1, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;->mQrDetector:Lcom/sonyericsson/android/camera/qrdetection/QrDetector;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->release()V

    const/4 p1, 0x0

    .line 70
    iput-object p1, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;->mQrDetector:Lcom/sonyericsson/android/camera/qrdetection/QrDetector;

    :cond_35
    :goto_35
    return-void
.end method

.method public handlePreviewStopped()V
    .registers 2

    const/4 v0, 0x0

    .line 97
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;->mIsPreviewing:Z

    .line 98
    iget-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;->mQrDetector:Lcom/sonyericsson/android/camera/qrdetection/QrDetector;

    if-eqz v0, :cond_12

    .line 99
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->stopDetect()V

    .line 100
    iget-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;->mQrDetector:Lcom/sonyericsson/android/camera/qrdetection/QrDetector;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->release()V

    const/4 v0, 0x0

    .line 101
    iput-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;->mQrDetector:Lcom/sonyericsson/android/camera/qrdetection/QrDetector;

    :cond_12
    return-void
.end method

.method public handleSettingsChanged(Z)V
    .registers 2

    .line 122
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;->mIsQRDetectionOn:Z

    return-void
.end method

.method public isPreviewing()Z
    .registers 1

    .line 115
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;->mIsPreviewing:Z

    return p0
.end method

.method public release()V
    .registers 3

    const/4 v0, 0x0

    .line 135
    iput-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;->mImageRetriever:Lcom/sonyericsson/android/camera/device/ImageRetriever;

    .line 136
    iget-object v1, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;->mQrDetector:Lcom/sonyericsson/android/camera/qrdetection/QrDetector;

    if-eqz v1, :cond_11

    .line 137
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->stopDetect()V

    .line 138
    iget-object v1, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;->mQrDetector:Lcom/sonyericsson/android/camera/qrdetection/QrDetector;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->release()V

    .line 139
    iput-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;->mQrDetector:Lcom/sonyericsson/android/camera/qrdetection/QrDetector;

    :cond_11
    return-void
.end method
