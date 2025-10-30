.class public Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;
.super Lcom/sonyericsson/cameracommon/storage/RequestFactory$RequestBuilder;
.source "RequestFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/storage/RequestFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhotoSavingRequestBuilder"
.end annotation


# instance fields
.field private mImage:Landroid/media/Image;

.field private mImageReader:Landroid/media/ImageReader;

.field private mIsOneshot:Z

.field private mOnImageReaderDettachedListener:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest$OnImageReaderDetachedListener;

.field public mPhotoStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;

.field private mShouldUpdateOrientationBeforeStoring:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmImageReader(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)Landroid/media/ImageReader;
    .registers 1

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mImageReader:Landroid/media/ImageReader;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOnImageReaderDettachedListener(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest$OnImageReaderDetachedListener;
    .registers 1

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mOnImageReaderDettachedListener:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest$OnImageReaderDetachedListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmShouldUpdateOrientationBeforeStoring(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mShouldUpdateOrientationBeforeStoring:Z

    return p0
.end method

.method public constructor <init>(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;Z)V
    .registers 4

    .line 306
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$RequestBuilder;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;)V

    const/4 p1, 0x0

    .line 302
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mIsOneshot:Z

    .line 307
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mPhotoStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;

    .line 308
    iput-boolean p3, p0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mShouldUpdateOrientationBeforeStoring:Z

    return-void
.end method


# virtual methods
.method public attachImageReader(Landroid/media/ImageReader;Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest$OnImageReaderDetachedListener;)V
    .registers 3

    .line 340
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mImageReader:Landroid/media/ImageReader;

    .line 341
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mOnImageReaderDettachedListener:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest$OnImageReaderDetachedListener;

    return-void
.end method

.method public close()V
    .registers 4

    .line 370
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mImage:Landroid/media/Image;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 371
    invoke-virtual {v0}, Landroid/media/Image;->close()V

    .line 372
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mImage:Landroid/media/Image;

    .line 374
    :cond_a
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mOnImageReaderDettachedListener:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest$OnImageReaderDetachedListener;

    if-eqz v0, :cond_13

    .line 375
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mImageReader:Landroid/media/ImageReader;

    invoke-interface {v0, v2}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest$OnImageReaderDetachedListener;->onDetached(Landroid/media/ImageReader;)V

    .line 377
    :cond_13
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mImageReader:Landroid/media/ImageReader;

    return-void
.end method

.method public getCaptureIdForPredictiveCapture()I
    .registers 1

    .line 328
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mCommonStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget p0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mCaptureIdForPredictiveCapture:I

    return p0
.end method

.method public getImageData()[B
    .registers 1

    .line 336
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mPhotoStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;->mImage:[B

    return-object p0
.end method

.method public getImageReaderData()Ljava/nio/ByteBuffer;
    .registers 3

    .line 351
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_26

    .line 352
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mImage:Landroid/media/Image;

    if-nez v1, :cond_e

    .line 353
    invoke-virtual {v0}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mImage:Landroid/media/Image;

    .line 356
    :cond_e
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mImage:Landroid/media/Image;

    if-eqz p0, :cond_1e

    .line 357
    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object p0

    const/4 v0, 0x0

    .line 358
    aget-object p0, p0, v0

    invoke-virtual {p0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    goto :goto_27

    .line 360
    :cond_1e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "ImageReader maybe closed"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_26
    const/4 p0, 0x0

    :goto_27
    return-object p0
.end method

.method public getSaveTimeForPredictiveCapture()Ljava/lang/String;
    .registers 1

    .line 320
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mCommonStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mSaveTimeForPredictiveCapture:Ljava/lang/String;

    return-object p0
.end method

.method public getShouldUpdateOrientationBeforeStoring()Z
    .registers 1

    .line 312
    iget-boolean p0, p0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mShouldUpdateOrientationBeforeStoring:Z

    return p0
.end method

.method public setCaptureIdForCaptureGourp(I)V
    .registers 2

    .line 324
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mCommonStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iput p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mCaptureIdForPredictiveCapture:I

    return-void
.end method

.method public setImageData([B)V
    .registers 2

    .line 332
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mPhotoStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;->mImage:[B

    return-void
.end method

.method public setSaveTimeForCaptureGroup(Ljava/lang/String;)V
    .registers 2

    .line 316
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mCommonStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mSaveTimeForPredictiveCapture:Ljava/lang/String;

    return-void
.end method
