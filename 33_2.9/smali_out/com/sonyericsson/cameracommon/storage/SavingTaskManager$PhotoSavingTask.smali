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

    .line 176
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 173
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mIsCanceled:Z

    .line 177
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    .line 178
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mIsRunning:Z

    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;)I
    .registers 1

    .line 171
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->getExpectedFileSize()I

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;)V
    .registers 1

    .line 171
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->release()V

    return-void
.end method

.method private assignOutput()Landroid/net/Uri;
    .registers 6

    .line 185
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->getExtraOutput()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_9f

    .line 186
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_15

    const-string v0, "assignOutput getExtraOutput != null"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 187
    :cond_15
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->getExtraOutput()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_98

    .line 188
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_34

    const-string v0, "assignOutput getExtraOutput != null 2"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 190
    :cond_34
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->getExtraOutput()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 191
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_76

    .line 192
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v1, :cond_98

    new-array v1, v3, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Create dir: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 193
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    .line 192
    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_98

    :cond_76
    new-array v1, v3, [Ljava/lang/String;

    .line 195
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Filed mkdirs() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 198
    :cond_98
    :goto_98
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->getExtraOutput()Landroid/net/Uri;

    move-result-object p0

    return-object p0

    .line 200
    :cond_9f
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_ac

    const-string v0, "assignOutput getExtraOutput == null"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 204
    :cond_ac
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->isOneShot()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d2

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    # getter for: Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mCallingPackageName:Ljava/lang/String;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->access$200(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.android.cts.verifier"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d2

    .line 205
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_d0

    const-string p0, "assignOutput CTS verifier do not need store image"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_d0
    move-object p0, v1

    goto :goto_11d

    .line 207
    :cond_d2
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->savedFileType:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    sget-object v2, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->BURST:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    const-string v3, "assignOutput getSaveTimeForPredictiveCapture() =  null"

    if-ne v0, v2, :cond_f0

    .line 208
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_e9

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 210
    :cond_e9
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-static {p0}, Lcom/sonyericsson/cameracommon/storage/ManualBurstPathBuilder;->getPhotoPath(Lcom/sonyericsson/cameracommon/storage/SavingRequest;)Ljava/lang/String;

    move-result-object p0

    goto :goto_11d

    .line 211
    :cond_f0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->getSaveTimeForPredictiveCapture()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_10a

    .line 212
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_103

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 214
    :cond_103
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-static {p0}, Lcom/sonyericsson/cameracommon/storage/SinglePhotoPathBuilder;->getPhotoPath(Lcom/sonyericsson/cameracommon/storage/SavingRequest;)Ljava/lang/String;

    move-result-object p0

    goto :goto_11d

    .line 216
    :cond_10a
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_117

    const-string v0, "assignOutput getSaveTimeForPredictiveCapture() !=  null"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 218
    :cond_117
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-static {p0}, Lcom/sonyericsson/cameracommon/storage/PredictiveCapturePathBuilder;->getPhotoPath(Lcom/sonyericsson/cameracommon/storage/SavingRequest;)Ljava/lang/String;

    move-result-object p0

    :goto_11d
    if-nez p0, :cond_12d

    .line 221
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_12c

    const-string p0, "assignOutput path =  null"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_12c
    return-object v1

    .line 225
    :cond_12d
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 226
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private getExpectedFileSize()I
    .registers 2

    .line 358
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mIsRunning:Z

    if-eqz v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 363
    :cond_6
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->isImageReaderUsing()Z

    move-result v0

    if-eqz v0, :cond_11

    const/high16 p0, 0xf00000

    return p0

    .line 366
    :cond_11
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->getImageData()[B

    move-result-object p0

    array-length p0, p0

    return p0
.end method

.method private release()V
    .registers 2

    .line 450
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->isUsingProcessingMediaAPI()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->photo:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;

    iget-boolean v0, v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;->mIsSmallImage:Z

    if-nez v0, :cond_1a

    const-string p0, "Caused by Final imageData is received, so can not set image to null"

    .line 451
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    return-void

    .line 454
    :cond_1a
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->close()V

    return-void
.end method

.method private store(Landroid/net/Uri;)V
    .registers 12

    const-string v0, " time:"

    const-string v1, "store() E"

    .line 371
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 374
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger;->get(Lcom/sonyericsson/cameracommon/storage/SavingRequest;)Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$TimeLog;

    move-result-object v1

    if-eqz v1, :cond_1f

    .line 375
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger;->get(Lcom/sonyericsson/cameracommon/storage/SavingRequest;)Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$TimeLog;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$TimeLog;->startSave:J

    .line 378
    :cond_1f
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_43

    new-array v1, v3, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "storeContent E URI:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 380
    :cond_43
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v4, "file"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7b

    .line 381
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v1, :cond_71

    new-array v1, v3, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "This uri is file path. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 382
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    .line 381
    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 383
    :cond_71
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->setFilePath(Ljava/lang/String;)V

    goto :goto_b2

    .line 384
    :cond_7b
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v4, "content"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b2

    .line 385
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v1, :cond_a9

    new-array v1, v3, [Ljava/lang/String;

    .line 386
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "This uri is file content. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 387
    :cond_a9
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->setFilePath(Ljava/lang/String;)V

    :cond_b2
    :goto_b2
    new-array v1, v3, [Ljava/lang/String;

    .line 390
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[datetaken:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {v6}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->getDateTaken()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "]start saving"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 392
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-direct {p0, v1, p1}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->writeToStorage(Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;Landroid/net/Uri;)Landroid/util/Pair;

    move-result-object p1

    .line 394
    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_f4

    .line 395
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->FAIL:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    # invokes: Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->notifyStoreComplete(Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/storage/SavingRequest;)V
    invoke-static {p1, v0, v1, p0}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->access$700(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/storage/SavingRequest;)V

    return-void

    .line 400
    :cond_f4
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger;->get(Lcom/sonyericsson/cameracommon/storage/SavingRequest;)Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$TimeLog;

    move-result-object v1

    if-eqz v1, :cond_108

    .line 401
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger;->get(Lcom/sonyericsson/cameracommon/storage/SavingRequest;)Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$TimeLog;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iput-wide v6, v1, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$TimeLog;->writeFileDone:J

    :cond_108
    new-array v1, v3, [Ljava/lang/String;

    .line 404
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {v5}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->getDateTaken()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]store is success"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 406
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-boolean v1, v1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->addToMediaStore:Z

    if-nez v1, :cond_14e

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->getExtraOutput()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_13d

    goto :goto_14e

    .line 442
    :cond_13d
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->SUCCESS:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    .line 443
    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->getExtraOutput()Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    .line 442
    # invokes: Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->notifyStoreComplete(Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/storage/SavingRequest;)V
    invoke-static {p1, v0, v1, p0}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->access$700(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/storage/SavingRequest;)V

    goto/16 :goto_1fc

    .line 408
    :cond_14e
    :goto_14e
    :try_start_14e
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->getFilePath()Ljava/lang/String;

    move-result-object v1

    .line 413
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/storage/PredictiveCapturePathBuilder;->isPredictiveCaptureImage(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1e3

    .line 414
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "yyyyMMddHHmmssSSS"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
    :try_end_162
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_14e .. :try_end_162} :catch_1f1

    const/4 v5, 0x0

    .line 418
    :try_start_163
    iget-object v6, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {v6}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->getSaveTimeForPredictiveCapture()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4
    :try_end_16d
    .catch Ljava/text/ParseException; {:try_start_163 .. :try_end_16d} :catch_16e
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_163 .. :try_end_16d} :catch_1f1

    goto :goto_197

    :catch_16e
    :try_start_16e
    new-array v4, v3, [Ljava/lang/String;

    .line 420
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "store: parse failed. filePath:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    .line 421
    invoke-virtual {v7}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->getSaveTimeForPredictiveCapture()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v2

    .line 420
    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    move-object v4, v5

    :goto_197
    if-eqz v4, :cond_1e3

    .line 424
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string v7, "date_modified"

    .line 425
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 426
    iget-object v7, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    iget-object v7, v7, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 427
    iget-object v8, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Landroid/net/Uri;

    invoke-virtual {v7, v8, v6, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    if-gtz v5, :cond_1e3

    new-array v3, v3, [Ljava/lang/String;

    .line 429
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "store: setLastModified failed. filePath:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 430
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v2

    .line 429
    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 435
    :cond_1e3
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->SUCCESS:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroid/net/Uri;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    # invokes: Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->notifyStoreComplete(Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/storage/SavingRequest;)V
    invoke-static {v0, v1, p1, v2}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->access$700(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/storage/SavingRequest;)V
    :try_end_1f0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_16e .. :try_end_1f0} :catch_1f1

    goto :goto_1fc

    .line 437
    :catch_1f1
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->FAIL_MEMORY_FULL:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    # invokes: Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->notifyStoreComplete(Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/storage/SavingRequest;)V
    invoke-static {p1, v0, v1, p0}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->access$700(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/storage/SavingRequest;)V

    :goto_1fc
    const-string p0, "store() X"

    .line 446
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    return-void
.end method

.method private verifyImageDataBeforeStoring(Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;Landroid/net/Uri;)I
    .registers 4

    .line 238
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->isImageReaderUsing()Z

    move-result p0

    if-eqz p0, :cond_f

    .line 239
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->getImageReaderData()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result p0

    goto :goto_14

    .line 241
    :cond_f
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->getImageData()[B

    move-result-object p0

    array-length p0, p0

    :goto_14
    if-nez p0, :cond_8c

    .line 246
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The image data is empty. Camera will create broken file."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " uri:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 248
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->getImageReaderData()Ljava/nio/ByteBuffer;

    move-result-object p1

    if-eqz p1, :cond_86

    .line 250
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, " buff.capacity:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 251
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, " buff.limit:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 252
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, " buff.position:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 255
    :cond_86
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8c
    return p0
.end method

.method private writeToStorage(Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;Landroid/net/Uri;)Landroid/util/Pair;
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 271
    :try_start_2
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->verifyImageDataBeforeStoring(Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;Landroid/net/Uri;)I

    move-result v2

    .line 272
    new-instance v3, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    invoke-direct {v3, p0, p1, p2}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;-><init>(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;Landroid/net/Uri;)V

    invoke-virtual {v3, v1}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->storeData(Ljava/lang/Exception;)Landroid/util/Pair;

    move-result-object p0

    .line 273
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->close()V

    .line 275
    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger;->get(Lcom/sonyericsson/cameracommon/storage/SavingRequest;)Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$TimeLog;

    move-result-object p2

    if-eqz p2, :cond_3e

    .line 276
    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger;->get(Lcom/sonyericsson/cameracommon/storage/SavingRequest;)Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$TimeLog;

    move-result-object p1

    iput v2, p1, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$TimeLog;->fileSize:I
    :try_end_20
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_20} :catch_21

    goto :goto_3e

    :catch_21
    move-exception p0

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    .line 280
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to store image. : "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, v0

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    move-object p0, v1

    :cond_3e
    :goto_3e
    if-eqz p0, :cond_41

    goto :goto_4a

    .line 283
    :cond_41
    new-instance p0, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_4a
    return-object p0
.end method


# virtual methods
.method public cancel()V
    .registers 2

    const/4 v0, 0x1

    .line 354
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mIsCanceled:Z

    return-void
.end method

.method public final run()V
    .registers 9

    .line 288
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mIsCanceled:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 291
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mIsRunning:Z

    .line 293
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->getStorageType()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v1

    .line 294
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    # getter for: Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mStorageAccessSemaphoreMap:Ljava/util/Map;
    invoke-static {v2}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->access$300(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Semaphore;

    .line 297
    :try_start_1a
    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 298
    sget-boolean v3, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z
    :try_end_1f
    .catch Ljava/lang/InterruptedException; {:try_start_1a .. :try_end_1f} :catch_e9

    const-string v4, "PhotoSavingTask["

    const/4 v5, 0x0

    if-eqz v3, :cond_42

    :try_start_24
    new-array v3, v0, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]: E"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V
    :try_end_42
    .catch Ljava/lang/InterruptedException; {:try_start_24 .. :try_end_42} :catch_e9

    .line 305
    :cond_42
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->assignOutput()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_8c

    .line 307
    invoke-direct {p0, v3}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->store(Landroid/net/Uri;)V

    .line 309
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->getSavedFileType()Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    move-result-object v3

    sget-object v6, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->BURST:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    if-ne v3, v6, :cond_72

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    .line 310
    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->isFinalInSavingGroup()Z

    move-result v3

    if-eqz v3, :cond_72

    .line 311
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    .line 312
    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->getSaveTimeForPredictiveCapture()Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    .line 313
    invoke-virtual {v6}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->getCaptureIdForPredictiveCapture()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    .line 311
    invoke-static {v3, v6}, Lcom/sonyericsson/cameracommon/storage/ManualBurstPathBuilder;->getPhotoPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 314
    invoke-static {v3}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->updateBurstCaptureName(Ljava/lang/String;)Z

    .line 317
    :cond_72
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    # invokes: Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->popPhotoSavingTask(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;)V
    invoke-static {v3, p0}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->access$400(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;)V

    .line 320
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    # getter for: Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mStorageManager:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;
    invoke-static {v3}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->access$500(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;)Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

    move-result-object v3

    sget-object v6, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;->PHOTO_STORING_COMPLETED:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;

    .line 321
    invoke-virtual {v3, v1, v6}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->updateStorageState(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;)V

    .line 323
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    # getter for: Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mStorageManager:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->access$500(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;)Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->checkAndNotifyStateChanged(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)V

    goto :goto_c3

    .line 325
    :cond_8c
    sget-boolean v3, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v3, :cond_99

    const-string v3, "assignOutput() is null"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 327
    :cond_99
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    # invokes: Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->popPhotoSavingTask(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;)V
    invoke-static {v3, p0}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->access$400(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;)V

    .line 331
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    # getter for: Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mStorageManager:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;
    invoke-static {v3}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->access$500(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;)Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

    move-result-object v3

    sget-object v6, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;->PHOTO_STORING_COMPLETED:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;

    .line 332
    invoke-virtual {v3, v1, v6}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->updateStorageState(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;)V

    .line 334
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->close()V

    .line 335
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    new-instance v6, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask$1;

    invoke-direct {v6, p0, v1}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask$1;-><init>(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)V

    # invokes: Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->runOnUiThread(Ljava/lang/Runnable;)V
    invoke-static {v3, v6}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->access$600(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;Ljava/lang/Runnable;)V

    .line 343
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    sget-object v6, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->FAIL:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    sget-object v7, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    # invokes: Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->notifyStoreComplete(Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/storage/SavingRequest;)V
    invoke-static {v3, v6, v7, p0}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->access$700(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/storage/SavingRequest;)V

    .line 346
    :goto_c3
    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 347
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_e8

    new-array p0, v0, [Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]: X"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p0, v5

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_e8
    return-void

    :catch_e9
    const-string p0, "Failed to acquire of storage access permit."

    .line 301
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return-void
.end method
