.class public Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;
.super Ljava/lang/Object;
.source "SavingTaskManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PhotoSavingTask"
.end annotation


# instance fields
.field private volatile mIsCanceled:Z

.field private volatile mIsRunning:Z

.field private final mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

.field final synthetic this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;)V
    .registers 3

    .line 153
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 150
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mIsCanceled:Z

    .line 154
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    .line 155
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mIsRunning:Z

    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;)I
    .registers 1

    .line 148
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->getExpectedFileSize()I

    move-result p0

    return p0
.end method

.method private assignOutput()Landroid/net/Uri;
    .registers 6

    .line 162
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->getExtraOutput()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_9b

    .line 163
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_15

    const-string v0, "assignOutput getExtraOutput != null"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_15
    const-string v0, "file"

    .line 164
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->getExtraOutput()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_94

    .line 165
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_34

    const-string v0, "assignOutput getExtraOutput != null 2"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 167
    :cond_34
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->getExtraOutput()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 168
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_74

    .line 169
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v1, :cond_94

    new-array v1, v3, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Create dir: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    .line 169
    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_94

    .line 172
    :cond_74
    new-array v1, v3, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Filed mkdirs() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 175
    :cond_94
    :goto_94
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->getExtraOutput()Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 177
    :cond_9b
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_a8

    const-string v0, "assignOutput getExtraOutput != null"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 180
    :cond_a8
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->savedFileType:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    sget-object v1, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->BURST:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    if-ne v0, v1, :cond_c6

    .line 181
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_bf

    const-string v0, "assignOutput getSaveTimeForPredictiveCapture() =  null"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 183
    :cond_bf
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/storage/ManualBurstPathBuilder;->getPhotoPath(Lcom/sonyericsson/cameracommon/storage/SavingRequest;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10e

    .line 184
    :cond_c6
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->isTransferAndTagging()Z

    move-result v0

    if-eqz v0, :cond_d5

    .line 185
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/storage/TransferAndTaggingPathBuilder;->getPhotoPath(Lcom/sonyericsson/cameracommon/storage/SavingRequest;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10e

    .line 186
    :cond_d5
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->getSaveTimeForPredictiveCapture()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_fb

    .line 187
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_ea

    const-string v0, "assignOutput getSaveTimeForPredictiveCapture() =  null"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 189
    :cond_ea
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    # getter for: Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mStorageManager:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->access$200(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;)Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->getStorageType()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->getPhotoPath(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10e

    .line 191
    :cond_fb
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_108

    const-string v0, "assignOutput getSaveTimeForPredictiveCapture() !=  null"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 193
    :cond_108
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/storage/PredictiveCapturePathBuilder;->getPhotoPath(Lcom/sonyericsson/cameracommon/storage/SavingRequest;)Ljava/lang/String;

    move-result-object v0

    :goto_10e
    if-nez v0, :cond_11f

    .line 196
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_11d

    const-string v0, "assignOutput path =  null"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_11d
    const/4 v0, 0x0

    return-object v0

    .line 200
    :cond_11f
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 201
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private getExpectedFileSize()I
    .registers 2

    .line 326
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mIsRunning:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 331
    :cond_6
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->getCalculatedFileSize()I

    move-result v0

    return v0
.end method

.method private store(Landroid/net/Uri;)V
    .registers 11

    const-string v0, "store() E"

    .line 335
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 338
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger;->get(Lcom/sonyericsson/cameracommon/storage/SavingRequest;)Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$TimeLog;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 339
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger;->get(Lcom/sonyericsson/cameracommon/storage/SavingRequest;)Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$TimeLog;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$TimeLog;->startSave:J

    .line 342
    :cond_1d
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3f

    new-array v0, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "storeContent E URI:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_3f
    const-string v0, "file"

    .line 345
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_71

    .line 346
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_6c

    new-array v0, v2, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "This uri is file path. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    .line 346
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 348
    :cond_6c
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_a3

    :cond_71
    const-string v0, "content"

    .line 349
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a2

    .line 350
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_9d

    .line 351
    new-array v0, v2, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "This uri is file content. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 352
    :cond_9d
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_a3

    :cond_a2
    move-object v0, v3

    .line 355
    :goto_a3
    new-array v4, v2, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[datetaken:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {v6}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->getDateTaken()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "]start saving"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 357
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-direct {p0, v4, p1}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->writeToStorage(Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;Landroid/net/Uri;)Landroid/util/Pair;

    move-result-object p1

    .line 358
    iget-object v4, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_e2

    .line 359
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->FAIL:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    # invokes: Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->notifyStoreComplete(Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/storage/SavingRequest;Ljava/lang/String;)V
    invoke-static {p1, v1, v2, v3, v0}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->access$600(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/storage/SavingRequest;Ljava/lang/String;)V

    return-void

    .line 364
    :cond_e2
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger;->get(Lcom/sonyericsson/cameracommon/storage/SavingRequest;)Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$TimeLog;

    move-result-object v4

    if-eqz v4, :cond_f6

    .line 365
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger;->get(Lcom/sonyericsson/cameracommon/storage/SavingRequest;)Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$TimeLog;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iput-wide v5, v4, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$TimeLog;->writeFileDone:J

    .line 368
    :cond_f6
    new-array v4, v2, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[datetaken:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {v6}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->getDateTaken()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "]store is success"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 370
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    iget-object v4, v4, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-boolean v4, v4, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->addToMediaStore:Z

    if-nez v4, :cond_13b

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->getExtraOutput()Landroid/net/Uri;

    move-result-object v4

    if-nez v4, :cond_12a

    goto :goto_13b

    .line 406
    :cond_12a
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->SUCCESS:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->getExtraOutput()Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    # invokes: Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->notifyStoreComplete(Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/storage/SavingRequest;Ljava/lang/String;)V
    invoke-static {p1, v1, v2, v3, v0}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->access$600(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/storage/SavingRequest;Ljava/lang/String;)V

    goto/16 :goto_1dd

    .line 376
    :cond_13b
    :goto_13b
    :try_start_13b
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/storage/PredictiveCapturePathBuilder;->isPredictiveCaptureImage(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1c4

    .line 377
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyyMMddHHmmssSSS"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
    :try_end_148
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_13b .. :try_end_148} :catch_1d2

    .line 381
    :try_start_148
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {v5}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->getSaveTimeForPredictiveCapture()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4
    :try_end_152
    .catch Ljava/text/ParseException; {:try_start_148 .. :try_end_152} :catch_153
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_148 .. :try_end_152} :catch_1d2

    goto :goto_17a

    .line 383
    :catch_153
    :try_start_153
    new-array v4, v2, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "store: parse failed. filePath:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " time:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    .line 384
    invoke-virtual {v6}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->getSaveTimeForPredictiveCapture()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 383
    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    move-object v4, v3

    :goto_17a
    if-eqz v4, :cond_1c4

    .line 387
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "date_modified"

    .line 388
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 389
    iget-object v6, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    iget-object v6, v6, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 390
    iget-object v7, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Landroid/net/Uri;

    invoke-virtual {v6, v7, v5, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    if-gtz v3, :cond_1c4

    .line 392
    new-array v2, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "store: setLastModified failed. filePath:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " time:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 392
    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 398
    :cond_1c4
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->SUCCESS:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroid/net/Uri;

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    # invokes: Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->notifyStoreComplete(Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/storage/SavingRequest;Ljava/lang/String;)V
    invoke-static {v1, v2, p1, v3, v0}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->access$600(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/storage/SavingRequest;Ljava/lang/String;)V
    :try_end_1d1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_153 .. :try_end_1d1} :catch_1d2

    goto :goto_1dd

    .line 401
    :catch_1d2
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->FAIL_MEMORY_FULL:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    # invokes: Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->notifyStoreComplete(Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/storage/SavingRequest;Ljava/lang/String;)V
    invoke-static {p1, v1, v2, v3, v0}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->access$600(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/storage/SavingRequest;Ljava/lang/String;)V

    :goto_1dd
    const-string p1, "store() X"

    .line 410
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    return-void
.end method

.method private verifyImageDataBeforeStoring(Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;Landroid/net/Uri;)I
    .registers 5

    .line 211
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->getDataSourceCapacity()I

    move-result v0

    if-nez v0, :cond_70

    const-string v0, "The image data is empty. Camera will create broken file."

    .line 214
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " uri:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 216
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->getImageData()Ljava/nio/ByteBuffer;

    move-result-object p1

    if-eqz p1, :cond_6a

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " buff.capacity:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " buff.limit:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " buff.position:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 223
    :cond_6a
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_70
    return v0
.end method

.method private writeToStorage(Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;Landroid/net/Uri;)Landroid/util/Pair;
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 240
    :try_start_2
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->verifyImageDataBeforeStoring(Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;Landroid/net/Uri;)I

    move-result v2

    .line 241
    new-instance v3, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    invoke-direct {v3, v4, p1, p2}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;-><init>(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;Landroid/net/Uri;)V

    invoke-virtual {v3, v1}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->storeData(Ljava/lang/Exception;)Landroid/util/Pair;

    move-result-object p2

    .line 242
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->close()V

    .line 243
    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger;->get(Lcom/sonyericsson/cameracommon/storage/SavingRequest;)Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$TimeLog;

    move-result-object v3

    if-eqz v3, :cond_3c

    .line 244
    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger;->get(Lcom/sonyericsson/cameracommon/storage/SavingRequest;)Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$TimeLog;

    move-result-object p1

    iput v2, p1, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$TimeLog;->fileSize:I
    :try_end_20
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_20} :catch_21

    goto :goto_3c

    :catch_21
    move-exception p1

    const/4 p2, 0x1

    .line 248
    new-array p2, p2, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to store image. : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v0

    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    move-object p2, v1

    :cond_3c
    :goto_3c
    if-eqz p2, :cond_3f

    goto :goto_48

    .line 251
    :cond_3f
    new-instance p2, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p2, p1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_48
    return-object p2
.end method


# virtual methods
.method public cancel()V
    .registers 2

    const/4 v0, 0x1

    .line 322
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mIsCanceled:Z

    return-void
.end method

.method public final run()V
    .registers 10

    .line 256
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mIsCanceled:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 259
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mIsRunning:Z

    .line 261
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->getStorageType()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v1

    .line 262
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    # getter for: Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mStorageAccessSemaphoreMap:Ljava/util/Map;
    invoke-static {v2}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->access$300(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Semaphore;

    .line 265
    :try_start_1a
    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 266
    sget-boolean v3, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_3f

    new-array v3, v0, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PhotoSavingTask["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "]: E"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V
    :try_end_3f
    .catch Ljava/lang/InterruptedException; {:try_start_1a .. :try_end_3f} :catch_e6

    .line 273
    :cond_3f
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->assignOutput()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_89

    .line 275
    invoke-direct {p0, v3}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->store(Landroid/net/Uri;)V

    .line 277
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->getSavedFileType()Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    move-result-object v3

    sget-object v5, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->BURST:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    if-ne v3, v5, :cond_6f

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    .line 278
    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->isFinalInSavingGroup()Z

    move-result v3

    if-eqz v3, :cond_6f

    .line 279
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    .line 280
    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->getSaveTimeForPredictiveCapture()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    .line 281
    invoke-virtual {v5}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->getCaptureIdForPredictiveCapture()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    .line 279
    invoke-static {v3, v5}, Lcom/sonyericsson/cameracommon/storage/ManualBurstPathBuilder;->getPhotoPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 282
    invoke-static {v3}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->updateBurstCaptureName(Ljava/lang/String;)Z

    .line 285
    :cond_6f
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    # invokes: Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->popPhotoSavingTask(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;)V
    invoke-static {v3, p0}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->access$400(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;)V

    .line 288
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    # getter for: Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mStorageManager:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;
    invoke-static {v3}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->access$200(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;)Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

    move-result-object v3

    sget-object v5, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;->PHOTO_STORING_COMPLETED:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;

    .line 289
    invoke-virtual {v3, v1, v5}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->updateStorageState(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;)V

    .line 291
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    # getter for: Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mStorageManager:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;
    invoke-static {v3}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->access$200(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;)Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->checkAndNotifyStateChanged(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)V

    goto :goto_c1

    .line 293
    :cond_89
    sget-boolean v3, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v3, :cond_96

    const-string v3, "assignOutput() is null"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 295
    :cond_96
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    # invokes: Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->popPhotoSavingTask(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;)V
    invoke-static {v3, p0}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->access$400(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;)V

    .line 299
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    # getter for: Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mStorageManager:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;
    invoke-static {v3}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->access$200(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;)Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

    move-result-object v3

    sget-object v5, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;->PHOTO_STORING_COMPLETED:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;

    .line 300
    invoke-virtual {v3, v1, v5}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->updateStorageState(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;)V

    .line 302
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->close()V

    .line 303
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    new-instance v5, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask$1;

    invoke-direct {v5, p0, v1}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask$1;-><init>(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)V

    # invokes: Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->runOnUiThread(Ljava/lang/Runnable;)V
    invoke-static {v3, v5}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->access$500(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;Ljava/lang/Runnable;)V

    .line 311
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    sget-object v5, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->FAIL:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    sget-object v6, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iget-object v7, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    const/4 v8, 0x0

    # invokes: Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->notifyStoreComplete(Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/storage/SavingRequest;Ljava/lang/String;)V
    invoke-static {v3, v5, v6, v7, v8}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->access$600(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/storage/SavingRequest;Ljava/lang/String;)V

    .line 314
    :goto_c1
    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 315
    sget-boolean v2, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v2, :cond_e5

    new-array v0, v0, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PhotoSavingTask["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]: X"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_e5
    return-void

    :catch_e6
    const-string v0, "Failed to acquire of storage access permit."

    .line 269
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return-void
.end method
