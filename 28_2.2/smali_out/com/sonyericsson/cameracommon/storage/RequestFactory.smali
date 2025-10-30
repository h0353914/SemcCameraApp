.class public Lcom/sonyericsson/cameracommon/storage/RequestFactory;
.super Ljava/lang/Object;
.source "RequestFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;,
        Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;,
        Lcom/sonyericsson/cameracommon/storage/RequestFactory$RequestBuilder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RequestFactory"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createSavingRequest(Lcom/sonyericsson/cameracommon/storage/RequestFactory$RequestBuilder;)Lcom/sonyericsson/cameracommon/storage/SavingRequest;
    .registers 6

    .line 42
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$RequestBuilder;->mCommonStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    .line 44
    instance-of v1, p0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

    if-eqz v1, :cond_18

    .line 46
    move-object v1, p0

    check-cast v1, Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

    .line 47
    iget-object v2, v1, Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;->mVideoStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;

    .line 48
    new-instance v3, Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;

    invoke-direct {v3, v0, v2}, Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;)V

    .line 49
    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;->isOneShot()Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->setOneShot(Z)V

    goto :goto_38

    .line 51
    :cond_18
    move-object v1, p0

    check-cast v1, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    .line 52
    new-instance v3, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    iget-object v2, v1, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mPhotoStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;

    .line 53
    # getter for: Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mShouldUpdateOrientationBeforeStoring:Z
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->access$000(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)Z

    move-result v4

    invoke-direct {v3, v0, v2, v4}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;Z)V

    .line 54
    # getter for: Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mImageReader:Landroid/media/ImageReader;
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->access$100(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)Landroid/media/ImageReader;

    move-result-object v0

    .line 55
    # getter for: Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mOnImageReaderDettachedListener:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest$OnImageReaderDetachedListener;
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->access$200(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest$OnImageReaderDetachedListener;

    move-result-object v2

    .line 54
    invoke-virtual {v3, v0, v2}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->attachImageReader(Landroid/media/ImageReader;Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest$OnImageReaderDetachedListener;)V

    .line 56
    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->isOneShot()Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->setOneShot(Z)V

    .line 60
    :goto_38
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$RequestBuilder;->isFinalInSavingGroup()Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->setFinalInSavingGroup(Z)V

    .line 61
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$RequestBuilder;->getStorageType()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->setStorageType(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)V

    return-object v3
.end method
