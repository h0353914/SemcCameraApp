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


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createSavingRequest(Lcom/sonyericsson/cameracommon/storage/RequestFactory$RequestBuilder;Lcom/sonyericsson/cameracommon/storage/Storage$OnStoreCompletedListener;)Lcom/sonyericsson/cameracommon/storage/SavingRequest;
    .registers 11

    .line 41
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$RequestBuilder;->mCommonStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    .line 43
    instance-of v0, p0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

    if-eqz v0, :cond_18

    .line 44
    move-object v0, p0

    check-cast v0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

    .line 45
    iget-object v2, v0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;->mVideoStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;

    .line 46
    new-instance v3, Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;

    invoke-direct {v3, v1, v2, p0, p1}, Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;Lcom/sonyericsson/cameracommon/storage/RequestFactory$RequestBuilder;Lcom/sonyericsson/cameracommon/storage/Storage$OnStoreCompletedListener;)V

    .line 47
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;->isOneShot()Z

    move-result p0

    invoke-virtual {v3, p0}, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->setOneShot(Z)V

    goto :goto_3c

    .line 49
    :cond_18
    move-object v7, p0

    check-cast v7, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    .line 50
    new-instance v8, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    iget-object v2, v7, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mPhotoStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;

    .line 52
    # getter for: Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mShouldUpdateOrientationBeforeStoring:Z
    invoke-static {v7}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->access$000(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)Z

    move-result v3

    # getter for: Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mSourceAdapter:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest$ImageSourceLifeCycleAdapter;
    invoke-static {v7}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->access$100(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest$ImageSourceLifeCycleAdapter;

    move-result-object v4

    move-object v0, v8

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;ZLcom/sonyericsson/cameracommon/storage/PhotoSavingRequest$ImageSourceLifeCycleAdapter;Lcom/sonyericsson/cameracommon/storage/RequestFactory$RequestBuilder;Lcom/sonyericsson/cameracommon/storage/Storage$OnStoreCompletedListener;)V

    .line 54
    invoke-virtual {v7}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->isTransferAndTagging()Z

    move-result p0

    invoke-virtual {v8, p0}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->setTransferAndTagging(Z)V

    .line 56
    invoke-virtual {v7}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->isOneShot()Z

    move-result p0

    invoke-virtual {v8, p0}, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->setOneShot(Z)V

    move-object v3, v8

    :goto_3c
    return-object v3
.end method
