.class public Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;
.super Lcom/sonyericsson/cameracommon/storage/SavingRequest;
.source "PhotoSavingRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest$ImageSourceLifeCycleAdapter;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "PhotoSavingRequest"


# instance fields
.field private mIsTransferAndTagging:Z

.field private final mShouldUpdateOrientationBeforeStoring:Z

.field private mSourceAdapter:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest$ImageSourceLifeCycleAdapter;

.field public final photo:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;ZLcom/sonyericsson/cameracommon/storage/PhotoSavingRequest$ImageSourceLifeCycleAdapter;Lcom/sonyericsson/cameracommon/storage/RequestFactory$RequestBuilder;Lcom/sonyericsson/cameracommon/storage/Storage$OnStoreCompletedListener;)V
    .registers 7

    .line 111
    invoke-direct {p0, p1, p5, p6}, Lcom/sonyericsson/cameracommon/storage/SavingRequest;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;Lcom/sonyericsson/cameracommon/storage/RequestFactory$RequestBuilder;Lcom/sonyericsson/cameracommon/storage/Storage$OnStoreCompletedListener;)V

    const/4 p1, 0x0

    .line 36
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->mIsTransferAndTagging:Z

    .line 114
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->photo:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;

    .line 115
    iput-boolean p3, p0, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->mShouldUpdateOrientationBeforeStoring:Z

    .line 116
    iput-object p4, p0, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->mSourceAdapter:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest$ImageSourceLifeCycleAdapter;

    .line 118
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_19

    const-string p1, "PhotoSavingRequest: at created."

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 119
    :cond_19
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->log()V

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;)V
    .registers 5

    .line 128
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/storage/SavingRequest;-><init>(Lcom/sonyericsson/cameracommon/storage/SavingRequest;)V

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->mIsTransferAndTagging:Z

    .line 129
    new-instance v1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;

    iget-object v2, p1, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->photo:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;

    invoke-direct {v1, v2}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;)V

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->photo:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;

    .line 130
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->mShouldUpdateOrientationBeforeStoring:Z

    .line 131
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->getSavingSourceLifecycleAdapter()Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest$ImageSourceLifeCycleAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->mSourceAdapter:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest$ImageSourceLifeCycleAdapter;

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;I)V
    .registers 5

    .line 141
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/storage/SavingRequest;-><init>(Lcom/sonyericsson/cameracommon/storage/SavingRequest;I)V

    const/4 p2, 0x0

    .line 36
    iput-boolean p2, p0, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->mIsTransferAndTagging:Z

    .line 142
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;

    iget-object v1, p1, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->photo:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->photo:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;

    .line 143
    iput-boolean p2, p0, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->mShouldUpdateOrientationBeforeStoring:Z

    .line 144
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->getSavingSourceLifecycleAdapter()Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest$ImageSourceLifeCycleAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->mSourceAdapter:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest$ImageSourceLifeCycleAdapter;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    .line 175
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->mSourceAdapter:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest$ImageSourceLifeCycleAdapter;

    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest$ImageSourceLifeCycleAdapter;->releaseImageSource()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 176
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->mSourceAdapter:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest$ImageSourceLifeCycleAdapter;

    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest$ImageSourceLifeCycleAdapter;->onRecycled()V

    :cond_d
    return-void
.end method

.method public getCalculatedFileSize()I
    .registers 2

    .line 164
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->mSourceAdapter:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest$ImageSourceLifeCycleAdapter;

    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest$ImageSourceLifeCycleAdapter;->calculateFileSize()I

    move-result v0

    return v0
.end method

.method public getDataSourceCapacity()I
    .registers 2

    .line 152
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->mSourceAdapter:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest$ImageSourceLifeCycleAdapter;

    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest$ImageSourceLifeCycleAdapter;->capacity()I

    move-result v0

    return v0
.end method

.method public getImageData()Ljava/nio/ByteBuffer;
    .registers 2

    .line 148
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->mSourceAdapter:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest$ImageSourceLifeCycleAdapter;

    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest$ImageSourceLifeCycleAdapter;->getImageData()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getSavingSourceLifecycleAdapter()Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest$ImageSourceLifeCycleAdapter;
    .registers 2

    .line 156
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->mSourceAdapter:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest$ImageSourceLifeCycleAdapter;

    return-object v0
.end method

.method public hasImageSource()Z
    .registers 2

    .line 160
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->mSourceAdapter:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest$ImageSourceLifeCycleAdapter;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isTransferAndTagging()Z
    .registers 2

    .line 54
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->mIsTransferAndTagging:Z

    return v0
.end method

.method public log()V
    .registers 2

    .line 183
    invoke-super {p0}, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->log()V

    .line 184
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->photo:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;->log()V

    return-void
.end method

.method public setTransferAndTagging(Z)V
    .registers 2

    .line 45
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->mIsTransferAndTagging:Z

    return-void
.end method

.method public shouldUpdateOrientationBeforeStoring()Z
    .registers 2

    .line 168
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->mShouldUpdateOrientationBeforeStoring:Z

    return v0
.end method
