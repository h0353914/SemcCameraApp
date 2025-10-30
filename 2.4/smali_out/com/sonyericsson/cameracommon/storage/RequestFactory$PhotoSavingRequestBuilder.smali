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
.field private mIsTransferAndTagging:Z

.field mPhotoStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;

.field private mShouldUpdateOrientationBeforeStoring:Z

.field private mSourceAdapter:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest$ImageSourceLifeCycleAdapter;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;Z)V
    .registers 4

    .line 268
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$RequestBuilder;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;)V

    const/4 p1, 0x0

    .line 263
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mIsTransferAndTagging:Z

    .line 269
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mPhotoStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;

    .line 270
    iput-boolean p3, p0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mShouldUpdateOrientationBeforeStoring:Z

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)Z
    .registers 1

    .line 259
    iget-boolean p0, p0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mShouldUpdateOrientationBeforeStoring:Z

    return p0
.end method

.method static synthetic access$100(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest$ImageSourceLifeCycleAdapter;
    .registers 1

    .line 259
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mSourceAdapter:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest$ImageSourceLifeCycleAdapter;

    return-object p0
.end method


# virtual methods
.method public close()V
    .registers 2

    .line 323
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mSourceAdapter:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest$ImageSourceLifeCycleAdapter;

    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest$ImageSourceLifeCycleAdapter;->releaseImageSource()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 324
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mSourceAdapter:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest$ImageSourceLifeCycleAdapter;

    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest$ImageSourceLifeCycleAdapter;->onRecycled()V

    :cond_d
    return-void
.end method

.method public getCaptureIdForPredictiveCapture()I
    .registers 2

    .line 290
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mCommonStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget v0, v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mCaptureIdForPredictiveCapture:I

    return v0
.end method

.method public getImageData()Ljava/nio/ByteBuffer;
    .registers 2

    .line 294
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mSourceAdapter:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest$ImageSourceLifeCycleAdapter;

    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest$ImageSourceLifeCycleAdapter;->getImageData()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getSaveTimeForPredictiveCapture()Ljava/lang/String;
    .registers 2

    .line 282
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mCommonStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mSaveTimeForPredictiveCapture:Ljava/lang/String;

    return-object v0
.end method

.method public getShouldUpdateOrientationBeforeStoring()Z
    .registers 2

    .line 274
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mShouldUpdateOrientationBeforeStoring:Z

    return v0
.end method

.method public isTransferAndTagging()Z
    .registers 2

    .line 316
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mIsTransferAndTagging:Z

    return v0
.end method

.method public setCaptureIdForCaptureGourp(I)V
    .registers 3

    .line 286
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mCommonStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iput p1, v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mCaptureIdForPredictiveCapture:I

    return-void
.end method

.method public setImageSource(Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest$ImageSourceLifeCycleAdapter;)V
    .registers 2

    .line 298
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mSourceAdapter:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest$ImageSourceLifeCycleAdapter;

    return-void
.end method

.method public setSaveTimeForCaptureGroup(Ljava/lang/String;)V
    .registers 3

    .line 278
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mCommonStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iput-object p1, v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mSaveTimeForPredictiveCapture:Ljava/lang/String;

    return-void
.end method

.method public setTransferAndTagging(Z)V
    .registers 2

    .line 307
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mIsTransferAndTagging:Z

    return-void
.end method
