.class public Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;
.super Ljava/lang/Object;
.source "StoreDataResult.java"


# instance fields
.field private final mFilePath:Ljava/lang/String;

.field private final mSavingRequest:Lcom/sonyericsson/cameracommon/storage/SavingRequest;

.field private final mStoreResult:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

.field private final mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/storage/SavingRequest;Ljava/lang/String;)V
    .registers 5

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->mStoreResult:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    .line 30
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->isSuccess()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 31
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->mUri:Landroid/net/Uri;

    goto :goto_12

    .line 33
    :cond_e
    sget-object p1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->mUri:Landroid/net/Uri;

    .line 36
    :goto_12
    iput-object p3, p0, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->mSavingRequest:Lcom/sonyericsson/cameracommon/storage/SavingRequest;

    .line 37
    iput-object p4, p0, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->mFilePath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getExtraOutput()Landroid/net/Uri;
    .registers 2

    .line 139
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->mSavingRequest:Lcom/sonyericsson/cameracommon/storage/SavingRequest;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->getExtraOutput()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .registers 2

    .line 123
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->mSavingRequest:Lcom/sonyericsson/cameracommon/storage/SavingRequest;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget v0, v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->height:I

    return v0
.end method

.method public getMediaSavingResult()Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;
    .registers 2

    .line 41
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->mStoreResult:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .registers 2

    .line 95
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->mSavingRequest:Lcom/sonyericsson/cameracommon/storage/SavingRequest;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getOrientation()I
    .registers 2

    .line 111
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->mSavingRequest:Lcom/sonyericsson/cameracommon/storage/SavingRequest;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget v0, v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->orientation:I

    return v0
.end method

.method public getPredictiveCaptureGroupIdPath()Ljava/lang/String;
    .registers 2

    .line 88
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->mFilePath:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 89
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/storage/PredictiveCapturePathBuilder;->getPredictiveCaptureGroupIdPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRequestedId()I
    .registers 2

    .line 65
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->mSavingRequest:Lcom/sonyericsson/cameracommon/storage/SavingRequest;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget v0, v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mRequestId:I

    return v0
.end method

.method public getResultCode()I
    .registers 2

    .line 49
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->mStoreResult:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    iget v0, v0, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->mResultCode:I

    return v0
.end method

.method public getSavedFilePath()Ljava/lang/String;
    .registers 2

    .line 61
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getSavedFileType()Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;
    .registers 2

    .line 127
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->mSavingRequest:Lcom/sonyericsson/cameracommon/storage/SavingRequest;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->savedFileType:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    return-object v0
.end method

.method public getSavingRequest()Lcom/sonyericsson/cameracommon/storage/SavingRequest;
    .registers 2

    .line 99
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->mSavingRequest:Lcom/sonyericsson/cameracommon/storage/SavingRequest;

    return-object v0
.end method

.method public getStorageType()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;
    .registers 2

    .line 103
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->mSavingRequest:Lcom/sonyericsson/cameracommon/storage/SavingRequest;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->getStorageType()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v0

    return-object v0
.end method

.method public getTextId()I
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->mStoreResult:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    iget v0, v0, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->mTextId:I

    return v0
.end method

.method public getUri()Landroid/net/Uri;
    .registers 2

    .line 45
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getWidth()I
    .registers 2

    .line 119
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->mSavingRequest:Lcom/sonyericsson/cameracommon/storage/SavingRequest;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget v0, v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->width:I

    return v0
.end method

.method public isFastCapture()Z
    .registers 2

    .line 107
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->mSavingRequest:Lcom/sonyericsson/cameracommon/storage/SavingRequest;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-boolean v0, v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->takenByFastCapture:Z

    return v0
.end method

.method public isFinalInSavingGroup()Z
    .registers 2

    .line 131
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->mSavingRequest:Lcom/sonyericsson/cameracommon/storage/SavingRequest;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->isFinalInSavingGroup()Z

    move-result v0

    return v0
.end method

.method public isFront()Z
    .registers 2

    .line 115
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->isPhotoSavingResult()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->mSavingRequest:Lcom/sonyericsson/cameracommon/storage/SavingRequest;

    check-cast v0, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->photo:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;->isFront()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method public isPhotoSavingResult()Z
    .registers 2

    .line 69
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->mSavingRequest:Lcom/sonyericsson/cameracommon/storage/SavingRequest;

    instance-of v0, v0, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    return v0
.end method

.method public isPredictiveCaptureCoverImage()Z
    .registers 2

    .line 78
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->mFilePath:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 79
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/storage/PredictiveCapturePathBuilder;->isPredictiveCaptureCoverImage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public isPredictiveCaptureImage()Z
    .registers 2

    .line 73
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->mFilePath:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 74
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/storage/PredictiveCapturePathBuilder;->isPredictiveCaptureImage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public isPredictiveCaptureLastImage()Z
    .registers 2

    .line 83
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->mFilePath:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 84
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/storage/PredictiveCapturePathBuilder;->isPredictiveCaptureLastImage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public isSameSaveTimeForPredictiveCapture(Ljava/lang/String;)Z
    .registers 3

    .line 135
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->mSavingRequest:Lcom/sonyericsson/cameracommon/storage/SavingRequest;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->getSaveTimeForPredictiveCapture()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isSuccess()Z
    .registers 3

    .line 53
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->mStoreResult:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->SUCCESS:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method
