.class Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;
.super Ljava/lang/Object;
.source "SavingTaskManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageToFile"
.end annotation


# instance fields
.field private mBuffer:Ljava/nio/ByteBuffer;

.field private mJpegData:[B

.field mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

.field private mPath:Ljava/lang/String;

.field private final mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

.field private final mStorageType:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

.field private final mUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;Landroid/net/Uri;)V
    .registers 6

    .line 477
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 462
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    .line 478
    invoke-virtual {p2}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->getImageReaderData()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mBuffer:Ljava/nio/ByteBuffer;

    .line 479
    invoke-virtual {p2}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->getImageData()[B

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mJpegData:[B

    .line 480
    iput-object p3, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mUri:Landroid/net/Uri;

    .line 481
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    .line 482
    invoke-virtual {p3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 483
    invoke-virtual {p3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mPath:Ljava/lang/String;

    .line 484
    invoke-virtual {p2}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->getStorageType()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mStorageType:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    goto :goto_37

    .line 486
    :cond_31
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mPath:Ljava/lang/String;

    .line 487
    sget-object p1, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->UNKNOWN:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mStorageType:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    :goto_37
    return-void
.end method

.method private insertPhotoMedia(Landroid/content/ContentResolver;)Landroid/net/Uri;
    .registers 9

    .line 591
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mStorageType:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->getVolume(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 596
    :cond_e
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 597
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mPath:Ljava/lang/String;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 598
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mPath:Ljava/lang/String;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "_display_name"

    .line 599
    invoke-virtual {v1, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    iget-object v3, v3, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v3, v3, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mimeType:Ljava/lang/String;

    const-string v5, "mime_type"

    invoke-virtual {v1, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "relative_path"

    .line 602
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "is_pending"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 606
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->isUsingProcessingMediaAPI()Z

    move-result v2

    if-eqz v2, :cond_98

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->isSmallJpegData()Z

    move-result v2

    if-eqz v2, :cond_98

    .line 607
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 608
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "date_modified"

    .line 607
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 609
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "datetaken"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 610
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    iget-object v2, v2, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget v2, v2, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->orientation:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "orientation"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 611
    sget-boolean v2, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v2, :cond_98

    const-string v2, "ProcessingMedia insert small jpeg"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 615
    :cond_98
    invoke-static {v0}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 616
    invoke-virtual {p1, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    .line 617
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_bf

    new-array v0, v4, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ProcessingMedia insert uri:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 619
    :cond_bf
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->isUsingProcessingMediaAPI()Z

    move-result v0

    if-eqz v0, :cond_f0

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->isSmallJpegData()Z

    move-result v0

    if-eqz v0, :cond_f0

    .line 620
    invoke-static {}, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;->getInstance()Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;

    move-result-object v0

    .line 621
    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;->add(Landroid/net/Uri;)Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;

    move-result-object v0

    .line 622
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget v1, v1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->orientation:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;->setOrientation(I)V

    .line 623
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->getImageData()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;->createTempThumb([B)V

    .line 624
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;->notifyMediaStoreChange(Landroid/content/Context;)V

    :cond_f0
    return-object p1
.end method

.method private requestCheckStorage(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)V
    .registers 4

    .line 630
    sget-object v0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->UNKNOWN:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    if-eq p1, v0, :cond_f

    .line 631
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    # getter for: Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mStorageManager:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->access$500(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;)Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;->STORING_FAILED:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;

    invoke-virtual {v0, p1, v1}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->updateStorageState(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;)V

    .line 633
    :cond_f
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    new-instance v1, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile$1;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile$1;-><init>(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)V

    # invokes: Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->runOnUiThread(Ljava/lang/Runnable;)V
    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->access$600(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public getPath()Ljava/lang/String;
    .registers 2

    .line 492
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mPath:Ljava/lang/String;

    if-eqz v0, :cond_5

    return-object v0

    .line 494
    :cond_5
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mUri:Landroid/net/Uri;

    if-eqz p0, :cond_e

    .line 495
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_e
    const-string p0, "Save path and uri is not set."

    .line 497
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public storeData(Ljava/lang/Exception;)Landroid/util/Pair;
    .registers 9

    .line 508
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 512
    :try_start_b
    sget-boolean v4, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v4, :cond_2b

    new-array v4, v2, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Store create file:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 515
    :cond_2b
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mPath:Ljava/lang/String;

    if-eqz v4, :cond_63

    .line 516
    sget-boolean v4, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v4, :cond_4f

    new-array v4, v2, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Store create by path:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 518
    :cond_4f
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->insertPhotoMedia(Landroid/content/ContentResolver;)Landroid/net/Uri;

    move-result-object v4
    :try_end_53
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_53} :catch_274
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_53} :catch_1e4
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_53} :catch_151
    .catchall {:try_start_b .. :try_end_53} :catchall_14d

    .line 519
    :try_start_53
    new-instance v5, Ljava/io/FileOutputStream;

    const-string v6, "rw"

    .line 520
    invoke-virtual {v0, v4, v6, v1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_62
    .catch Ljava/io/FileNotFoundException; {:try_start_53 .. :try_end_62} :catch_14a
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_62} :catch_1e5
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_62} :catch_148
    .catchall {:try_start_53 .. :try_end_62} :catchall_312

    goto :goto_99

    .line 521
    :cond_63
    :try_start_63
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_97

    .line 522
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_87

    new-array v0, v2, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Store create by uri:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 524
    :cond_87
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v4}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v5
    :try_end_95
    .catch Ljava/io/FileNotFoundException; {:try_start_63 .. :try_end_95} :catch_274
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_95} :catch_1e4
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_95} :catch_151
    .catchall {:try_start_63 .. :try_end_95} :catchall_14d

    move-object v4, v1

    goto :goto_99

    :cond_97
    move-object v4, v1

    move-object v5, v4

    .line 527
    :goto_99
    :try_start_99
    monitor-enter p0
    :try_end_9a
    .catch Ljava/io/FileNotFoundException; {:try_start_99 .. :try_end_9a} :catch_14a
    .catch Ljava/io/IOException; {:try_start_99 .. :try_end_9a} :catch_1e5
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_9a} :catch_148
    .catchall {:try_start_99 .. :try_end_9a} :catchall_312

    .line 528
    :try_start_9a
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    invoke-direct {v0, v5}, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    .line 529
    monitor-exit p0
    :try_end_a2
    .catchall {:try_start_9a .. :try_end_a2} :catchall_145

    if-nez p1, :cond_144

    .line 533
    :try_start_a4
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mBuffer:Ljava/nio/ByteBuffer;

    if-nez p1, :cond_af

    .line 534
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mJpegData:[B

    array-length v5, p1

    invoke-virtual {v0, p1, v3, v5}, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;->write([BII)V

    goto :goto_d4

    .line 536
    :cond_af
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mPath:Ljava/lang/String;

    if-eqz v0, :cond_bf

    .line 537
    check-cast v5, Ljava/io/FileOutputStream;

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    goto :goto_d4

    .line 539
    :cond_bf
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p1

    .line 540
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mJpegData:[B

    .line 541
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v0, v3, p1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 542
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mJpegData:[B

    array-length v5, v0

    invoke-virtual {p1, v0, v3, v5}, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;->write([BII)V

    .line 546
    :goto_d4
    new-instance p1, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p1, v0, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_dd
    .catch Ljava/io/FileNotFoundException; {:try_start_a4 .. :try_end_dd} :catch_14a
    .catch Ljava/io/IOException; {:try_start_a4 .. :try_end_dd} :catch_1e5
    .catch Ljava/lang/Exception; {:try_start_a4 .. :try_end_dd} :catch_148
    .catchall {:try_start_a4 .. :try_end_dd} :catchall_312

    .line 563
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    if-eqz v0, :cond_f5

    .line 565
    :try_start_e1
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;->flush()V

    .line 566
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;->close()V
    :try_end_e9
    .catch Ljava/io/IOException; {:try_start_e1 .. :try_end_e9} :catch_ea

    goto :goto_f5

    :catch_ea
    const-string v0, "IOException occured when closing."

    .line 569
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 571
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    .line 574
    :cond_f5
    :goto_f5
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->isUsingProcessingMediaAPI()Z

    move-result v0

    if-nez v0, :cond_121

    .line 576
    :try_start_fd
    invoke-static {v4}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->releasePending(Landroid/net/Uri;)V
    :try_end_100
    .catch Ljava/lang/SecurityException; {:try_start_fd .. :try_end_100} :catch_101
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_fd .. :try_end_100} :catch_101

    goto :goto_13f

    :catch_101
    move-exception v0

    new-array v2, v2, [Ljava/lang/String;

    .line 578
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "storeData error :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    goto :goto_13f

    .line 581
    :cond_121
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_13f

    new-array v0, v2, [Ljava/lang/String;

    .line 582
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ProcessingMedia skip release ProcessingMediaManager:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 584
    :cond_13f
    :goto_13f
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mJpegData:[B

    move-object v1, p1

    goto/16 :goto_305

    .line 531
    :cond_144
    :try_start_144
    throw p1
    :try_end_145
    .catch Ljava/io/FileNotFoundException; {:try_start_144 .. :try_end_145} :catch_14a
    .catch Ljava/io/IOException; {:try_start_144 .. :try_end_145} :catch_1e5
    .catch Ljava/lang/Exception; {:try_start_144 .. :try_end_145} :catch_148
    .catchall {:try_start_144 .. :try_end_145} :catchall_312

    :catchall_145
    move-exception p1

    .line 529
    :try_start_146
    monitor-exit p0
    :try_end_147
    .catchall {:try_start_146 .. :try_end_147} :catchall_145

    :try_start_147
    throw p1
    :try_end_148
    .catch Ljava/io/FileNotFoundException; {:try_start_147 .. :try_end_148} :catch_14a
    .catch Ljava/io/IOException; {:try_start_147 .. :try_end_148} :catch_1e5
    .catch Ljava/lang/Exception; {:try_start_147 .. :try_end_148} :catch_148
    .catchall {:try_start_147 .. :try_end_148} :catchall_312

    :catch_148
    move-exception p1

    goto :goto_153

    :catch_14a
    move-exception p1

    goto/16 :goto_276

    :catchall_14d
    move-exception p1

    move-object v4, v1

    goto/16 :goto_313

    :catch_151
    move-exception p1

    move-object v4, v1

    :goto_153
    :try_start_153
    new-array v0, v2, [Ljava/lang/String;

    .line 558
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Occurred other exception:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v3

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 559
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->isOneShot()Z

    move-result p1

    if-nez p1, :cond_17e

    .line 560
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mStorageType:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->requestCheckStorage(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)V
    :try_end_17e
    .catchall {:try_start_153 .. :try_end_17e} :catchall_312

    .line 563
    :cond_17e
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    if-eqz p1, :cond_196

    .line 565
    :try_start_182
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;->flush()V

    .line 566
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;->close()V
    :try_end_18a
    .catch Ljava/io/IOException; {:try_start_182 .. :try_end_18a} :catch_18b

    goto :goto_196

    :catch_18b
    const-string p1, "IOException occured when closing."

    .line 569
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 571
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    .line 574
    :cond_196
    :goto_196
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->isUsingProcessingMediaAPI()Z

    move-result p1

    if-nez p1, :cond_1c4

    .line 576
    :try_start_19e
    invoke-static {v4}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->releasePending(Landroid/net/Uri;)V
    :try_end_1a1
    .catch Ljava/lang/SecurityException; {:try_start_19e .. :try_end_1a1} :catch_1a3
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_19e .. :try_end_1a1} :catch_1a3

    goto/16 :goto_303

    :catch_1a3
    move-exception p1

    new-array v0, v2, [Ljava/lang/String;

    .line 578
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "storeData error :"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v3

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    goto/16 :goto_303

    .line 581
    :cond_1c4
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_303

    new-array p1, v2, [Ljava/lang/String;

    .line 582
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ProcessingMedia skip release ProcessingMediaManager:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v3

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto/16 :goto_303

    :catch_1e4
    move-object v4, v1

    :catch_1e5
    :try_start_1e5
    new-array p1, v2, [Ljava/lang/String;

    .line 553
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Store fail I/O Exception:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v3

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 554
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->isOneShot()Z

    move-result p1

    if-nez p1, :cond_20e

    .line 555
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mStorageType:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->requestCheckStorage(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)V
    :try_end_20e
    .catchall {:try_start_1e5 .. :try_end_20e} :catchall_312

    .line 563
    :cond_20e
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    if-eqz p1, :cond_226

    .line 565
    :try_start_212
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;->flush()V

    .line 566
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;->close()V
    :try_end_21a
    .catch Ljava/io/IOException; {:try_start_212 .. :try_end_21a} :catch_21b

    goto :goto_226

    :catch_21b
    const-string p1, "IOException occured when closing."

    .line 569
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 571
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    .line 574
    :cond_226
    :goto_226
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->isUsingProcessingMediaAPI()Z

    move-result p1

    if-nez p1, :cond_254

    .line 576
    :try_start_22e
    invoke-static {v4}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->releasePending(Landroid/net/Uri;)V
    :try_end_231
    .catch Ljava/lang/SecurityException; {:try_start_22e .. :try_end_231} :catch_233
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_22e .. :try_end_231} :catch_233

    goto/16 :goto_303

    :catch_233
    move-exception p1

    new-array v0, v2, [Ljava/lang/String;

    .line 578
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "storeData error :"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v3

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    goto/16 :goto_303

    .line 581
    :cond_254
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_303

    new-array p1, v2, [Ljava/lang/String;

    .line 582
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ProcessingMedia skip release ProcessingMediaManager:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v3

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto/16 :goto_303

    :catch_274
    move-exception p1

    move-object v4, v1

    :goto_276
    :try_start_276
    new-array v0, v2, [Ljava/lang/String;

    .line 548
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Store fail file not found:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v3

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 549
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->isOneShot()Z

    move-result p1

    if-nez p1, :cond_2a1

    .line 550
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mStorageType:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->requestCheckStorage(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)V
    :try_end_2a1
    .catchall {:try_start_276 .. :try_end_2a1} :catchall_312

    .line 563
    :cond_2a1
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    if-eqz p1, :cond_2b9

    .line 565
    :try_start_2a5
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;->flush()V

    .line 566
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;->close()V
    :try_end_2ad
    .catch Ljava/io/IOException; {:try_start_2a5 .. :try_end_2ad} :catch_2ae

    goto :goto_2b9

    :catch_2ae
    const-string p1, "IOException occured when closing."

    .line 569
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 571
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    .line 574
    :cond_2b9
    :goto_2b9
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->isUsingProcessingMediaAPI()Z

    move-result p1

    if-nez p1, :cond_2e5

    .line 576
    :try_start_2c1
    invoke-static {v4}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->releasePending(Landroid/net/Uri;)V
    :try_end_2c4
    .catch Ljava/lang/SecurityException; {:try_start_2c1 .. :try_end_2c4} :catch_2c5
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_2c1 .. :try_end_2c4} :catch_2c5

    goto :goto_303

    :catch_2c5
    move-exception p1

    new-array v0, v2, [Ljava/lang/String;

    .line 578
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "storeData error :"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v3

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    goto :goto_303

    .line 581
    :cond_2e5
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_303

    new-array p1, v2, [Ljava/lang/String;

    .line 582
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ProcessingMedia skip release ProcessingMediaManager:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v3

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 584
    :cond_303
    :goto_303
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mJpegData:[B

    :goto_305
    if-eqz v1, :cond_308

    goto :goto_311

    .line 587
    :cond_308
    new-instance v1, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-direct {v1, p0, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_311
    return-object v1

    :catchall_312
    move-exception p1

    .line 563
    :goto_313
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    if-eqz v0, :cond_32b

    .line 565
    :try_start_317
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;->flush()V

    .line 566
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;->close()V
    :try_end_31f
    .catch Ljava/io/IOException; {:try_start_317 .. :try_end_31f} :catch_320

    goto :goto_32b

    :catch_320
    const-string v0, "IOException occured when closing."

    .line 569
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 571
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    .line 574
    :cond_32b
    :goto_32b
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->isUsingProcessingMediaAPI()Z

    move-result v0

    if-eqz v0, :cond_352

    .line 581
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_375

    new-array v0, v2, [Ljava/lang/String;

    .line 582
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ProcessingMedia skip release ProcessingMediaManager:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_375

    .line 576
    :cond_352
    :try_start_352
    invoke-static {v4}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->releasePending(Landroid/net/Uri;)V
    :try_end_355
    .catch Ljava/lang/SecurityException; {:try_start_352 .. :try_end_355} :catch_356
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_352 .. :try_end_355} :catch_356

    goto :goto_375

    :catch_356
    move-exception v0

    new-array v2, v2, [Ljava/lang/String;

    .line 578
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "storeData error :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 584
    :cond_375
    :goto_375
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mJpegData:[B

    .line 585
    throw p1
.end method
