.class public Lcom/sonyericsson/android/camera/device/virtual/FinalImageSaver;
.super Ljava/lang/Object;
.source "FinalImageSaver.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/device/virtual/VirtualTakePictureListener;


# static fields
.field private static final sFinalImageSaver:Lcom/sonyericsson/android/camera/device/virtual/FinalImageSaver;


# instance fields
.field private mDelayToSaveImage:Z

.field private mImageData:[B

.field private mOnStoreCompletedListener:Lcom/sonyericsson/cameracommon/storage/Storage$OnStoreCompletedListener;

.field private final mSavingPhotoRequestForFinalJpegQueue:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 21
    new-instance v0, Lcom/sonyericsson/android/camera/device/virtual/FinalImageSaver;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/device/virtual/FinalImageSaver;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera/device/virtual/FinalImageSaver;->sFinalImageSaver:Lcom/sonyericsson/android/camera/device/virtual/FinalImageSaver;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/virtual/FinalImageSaver;->mDelayToSaveImage:Z

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/virtual/FinalImageSaver;->mImageData:[B

    .line 28
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/virtual/FinalImageSaver;->mSavingPhotoRequestForFinalJpegQueue:Ljava/util/Deque;

    return-void
.end method

.method public static getFinalImageSaver()Lcom/sonyericsson/android/camera/device/virtual/FinalImageSaver;
    .registers 1

    .line 24
    sget-object v0, Lcom/sonyericsson/android/camera/device/virtual/FinalImageSaver;->sFinalImageSaver:Lcom/sonyericsson/android/camera/device/virtual/FinalImageSaver;

    return-object v0
.end method


# virtual methods
.method public addSavingPhotoRequestForFinalJpegQueue(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)V
    .registers 6

    .line 37
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/virtual/FinalImageSaver;->mSavingPhotoRequestForFinalJpegQueue:Ljava/util/Deque;

    monitor-enter v0

    .line 38
    :try_start_3
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/virtual/FinalImageSaver;->mSavingPhotoRequestForFinalJpegQueue:Ljava/util/Deque;

    invoke-interface {v1, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 39
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_2c

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Need HAL doing background task, Add to mSavingPhotoRequestForSmallJpegQueue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/virtual/FinalImageSaver;->mSavingPhotoRequestForFinalJpegQueue:Ljava/util/Deque;

    .line 40
    invoke-interface {v3}, Ljava/util/Deque;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v1

    .line 39
    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 41
    :cond_2c
    monitor-exit v0

    return-void

    :catchall_2e
    move-exception p1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_2e

    throw p1
.end method

.method public clearPendingProcessingCount()V
    .registers 1

    return-void
.end method

.method public clearPendingProcessingMedia(I)V
    .registers 3

    .line 87
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/virtual/FinalImageSaver;->mSavingPhotoRequestForFinalJpegQueue:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    .line 88
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/virtual/FinalImageSaver;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    invoke-interface {v0, p1}, Lcom/sonyericsson/cameracommon/storage/Storage;->clearPendingProcessingMedia(I)V

    return-void
.end method

.method public onCaptureFailed()V
    .registers 1

    return-void
.end method

.method public onPictureTaken([B)V
    .registers 7

    .line 46
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_20

    new-array v0, v1, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPictureTaken mDelayToSaveImage: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/sonyericsson/android/camera/device/virtual/FinalImageSaver;->mDelayToSaveImage:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 47
    :cond_20
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/device/virtual/FinalImageSaver;->mDelayToSaveImage:Z

    .line 48
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/virtual/FinalImageSaver;->mSavingPhotoRequestForFinalJpegQueue:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    if-eqz v0, :cond_44

    .line 49
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->getImageData()[B

    move-result-object v0

    if-eqz v0, :cond_44

    .line 50
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/device/virtual/FinalImageSaver;->mDelayToSaveImage:Z

    .line 51
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/virtual/FinalImageSaver;->mImageData:[B

    .line 52
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_43

    const-string p1, "Small image is not stored finish, so delay to retry "

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_43
    return-void

    .line 55
    :cond_44
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/virtual/FinalImageSaver;->mSavingPhotoRequestForFinalJpegQueue:Ljava/util/Deque;

    monitor-enter v0

    .line 56
    :try_start_47
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/virtual/FinalImageSaver;->mSavingPhotoRequestForFinalJpegQueue:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    if-eqz v1, :cond_81

    .line 58
    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->setSmallJpegData(Z)V

    .line 59
    invoke-virtual {v1, p1}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->setImageData([B)V

    .line 62
    iget-object p1, v1, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mCommonStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object p1, p1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->savedFileType:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    sget-object v2, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->PHOTO_BOKEN:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    if-ne p1, v2, :cond_72

    .line 63
    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->getImageData()[B

    move-result-object p1

    iget-object v2, v1, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mCommonStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget v2, v2, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->width:I

    iget-object v3, v1, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mCommonStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget v3, v3, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->height:I

    invoke-static {p1, v2, v3}, Lcom/sonyericsson/android/camera/device/xmp/XMPController;->addXMPInfo([BII)[B

    move-result-object p1

    .line 65
    invoke-virtual {v1, p1}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->setImageData([B)V

    .line 69
    :cond_72
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/storage/RequestFactory;->createSavingRequest(Lcom/sonyericsson/cameracommon/storage/RequestFactory$RequestBuilder;)Lcom/sonyericsson/cameracommon/storage/SavingRequest;

    move-result-object p1

    .line 70
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/virtual/FinalImageSaver;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->getStorageType()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/virtual/FinalImageSaver;->mOnStoreCompletedListener:Lcom/sonyericsson/cameracommon/storage/Storage$OnStoreCompletedListener;

    invoke-interface {v1, p1, v2, v3}, Lcom/sonyericsson/cameracommon/storage/Storage;->requestStore(Lcom/sonyericsson/cameracommon/storage/SavingRequest;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/Storage$OnStoreCompletedListener;)Z

    .line 72
    :cond_81
    monitor-exit v0

    return-void

    :catchall_83
    move-exception p1

    monitor-exit v0
    :try_end_85
    .catchall {:try_start_47 .. :try_end_85} :catchall_83

    throw p1
.end method

.method public setOnStoreCompletedListener(Lcom/sonyericsson/cameracommon/storage/Storage;Lcom/sonyericsson/cameracommon/storage/Storage$OnStoreCompletedListener;)V
    .registers 3

    .line 32
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/virtual/FinalImageSaver;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    .line 33
    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/virtual/FinalImageSaver;->mOnStoreCompletedListener:Lcom/sonyericsson/cameracommon/storage/Storage$OnStoreCompletedListener;

    return-void
.end method

.method public updateSmallImageState(Z)V
    .registers 6

    .line 92
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_28

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSmallImageState storedSuccess "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", mDelayToSaveImage "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/device/virtual/FinalImageSaver;->mDelayToSaveImage:Z

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 94
    :cond_28
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/device/virtual/FinalImageSaver;->mDelayToSaveImage:Z

    if-eqz p1, :cond_42

    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/virtual/FinalImageSaver;->mImageData:[B

    if-eqz p1, :cond_42

    .line 95
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_3d

    const-string p1, "Small image is stored finish, so retry to save final image"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 96
    :cond_3d
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/virtual/FinalImageSaver;->mImageData:[B

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/virtual/FinalImageSaver;->onPictureTaken([B)V

    :cond_42
    return-void
.end method
