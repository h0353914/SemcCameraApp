.class public Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;
.super Lcom/sonyericsson/cameracommon/storage/SavingRequest;
.source "PhotoSavingRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest$OnImageReaderDetachedListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "PhotoSavingRequest"


# instance fields
.field private mImage:Landroid/media/Image;

.field private mImageReader:Landroid/media/ImageReader;

.field private mIsOneShot:Z

.field private mOnImageReaderDettachedListener:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest$OnImageReaderDetachedListener;

.field public final photo:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;

.field public final shouldUpdateOrientationBeforeStoring:Z


# direct methods
.method public constructor <init>(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;Z)V
    .registers 4

    .line 75
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/storage/SavingRequest;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;)V

    const/4 p1, 0x0

    .line 50
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->mIsOneShot:Z

    .line 78
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->photo:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;

    .line 79
    iput-boolean p3, p0, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->shouldUpdateOrientationBeforeStoring:Z

    .line 81
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_17

    const-string p1, "PhotoSavingRequest: at created."

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 82
    :cond_17
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->log()V

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;)V
    .registers 4

    .line 91
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/storage/SavingRequest;-><init>(Lcom/sonyericsson/cameracommon/storage/SavingRequest;)V

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->mIsOneShot:Z

    .line 92
    new-instance v1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;

    iget-object p1, p1, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->photo:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;

    invoke-direct {v1, p1}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;)V

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->photo:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;

    .line 93
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->shouldUpdateOrientationBeforeStoring:Z

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;I)V
    .registers 4

    .line 103
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/storage/SavingRequest;-><init>(Lcom/sonyericsson/cameracommon/storage/SavingRequest;I)V

    const/4 p2, 0x0

    .line 50
    iput-boolean p2, p0, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->mIsOneShot:Z

    .line 104
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;

    iget-object p1, p1, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->photo:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;

    invoke-direct {v0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->photo:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;

    .line 105
    iput-boolean p2, p0, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->shouldUpdateOrientationBeforeStoring:Z

    return-void
.end method


# virtual methods
.method public attachImageReader(Landroid/media/ImageReader;Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest$OnImageReaderDetachedListener;)V
    .registers 3

    .line 122
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->mImageReader:Landroid/media/ImageReader;

    .line 123
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->mOnImageReaderDettachedListener:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest$OnImageReaderDetachedListener;

    return-void
.end method

.method public close()V
    .registers 4

    .line 162
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->mImage:Landroid/media/Image;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 163
    invoke-virtual {v0}, Landroid/media/Image;->close()V

    .line 164
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->mImage:Landroid/media/Image;

    .line 168
    :cond_a
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->photo:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;->mImage:[B

    if-eqz v0, :cond_14

    .line 169
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->photo:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;

    iput-object v1, v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;->mImage:[B

    .line 171
    :cond_14
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->mOnImageReaderDettachedListener:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest$OnImageReaderDetachedListener;

    if-eqz v0, :cond_1d

    .line 172
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->mImageReader:Landroid/media/ImageReader;

    invoke-interface {v0, v2}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest$OnImageReaderDetachedListener;->onDetached(Landroid/media/ImageReader;)V

    .line 174
    :cond_1d
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->mImageReader:Landroid/media/ImageReader;

    return-void
.end method

.method public getImageData()[B
    .registers 2

    .line 109
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->photo:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;->mImage:[B

    return-object v0
.end method

.method public getImageReaderData()Ljava/nio/ByteBuffer;
    .registers 3

    .line 142
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->mImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_26

    .line 143
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->mImage:Landroid/media/Image;

    if-nez v1, :cond_e

    .line 144
    invoke-virtual {v0}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->mImage:Landroid/media/Image;

    .line 147
    :cond_e
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->mImage:Landroid/media/Image;

    if-eqz v0, :cond_1e

    .line 148
    invoke-virtual {v0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    const/4 v1, 0x0

    .line 149
    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_27

    .line 152
    :cond_1e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ImageReader maybe closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_26
    const/4 v0, 0x0

    :goto_27
    return-object v0
.end method

.method public isImageReaderUsing()Z
    .registers 2

    .line 132
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->mImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isOneShot()Z
    .registers 2

    .line 56
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->mIsOneShot:Z

    return v0
.end method

.method public isPredictiveCaptureCoverImage()Z
    .registers 2

    .line 189
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/storage/PredictiveCapturePathBuilder;->isPredictiveCaptureCoverImage(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isPredictiveCaptureImage()Z
    .registers 2

    .line 185
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/storage/PredictiveCapturePathBuilder;->isPredictiveCaptureImage(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public log()V
    .registers 2

    .line 180
    invoke-super {p0}, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->log()V

    .line 181
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->photo:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;->log()V

    return-void
.end method

.method public setImageData([B)V
    .registers 6

    .line 113
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_1f

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setImageData size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 114
    :cond_1f
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->photo:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;

    iput-object p1, v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;->mImage:[B

    return-void
.end method

.method public setOneShot(Z)V
    .registers 2

    .line 53
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->mIsOneShot:Z

    return-void
.end method
