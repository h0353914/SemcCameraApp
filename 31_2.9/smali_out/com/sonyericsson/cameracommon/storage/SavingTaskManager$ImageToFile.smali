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
    .registers 5

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

    const-string v0, "file"

    .line 482
    invoke-virtual {p3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_33

    .line 483
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mUri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mPath:Ljava/lang/String;

    .line 484
    invoke-virtual {p2}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->getStorageType()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mStorageType:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    goto :goto_39

    .line 486
    :cond_33
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mPath:Ljava/lang/String;

    .line 487
    sget-object p1, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->UNKNOWN:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mStorageType:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    :goto_39
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

    const/4 p1, 0x0

    return-object p1

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

    const-string v3, "mime_type"

    .line 600
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    iget-object v5, v5, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v5, v5, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mimeType:Ljava/lang/String;

    invoke-virtual {v1, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "relative_path"

    .line 602
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "is_pending"

    .line 603
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 606
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->isUsingProcessingMediaAPI()Z

    move-result v2

    if-eqz v2, :cond_98

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->isSmallJpegData()Z

    move-result v2

    if-eqz v2, :cond_98

    const-string v2, "date_modified"

    .line 607
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 608
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 607
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "datetaken"

    .line 609
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "orientation"

    .line 610
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    iget-object v3, v3, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget v3, v3, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->orientation:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

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

    if-eqz v0, :cond_bd

    new-array v0, v4, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ProcessingMedia insert uri:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 619
    :cond_bd
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->isUsingProcessingMediaAPI()Z

    move-result v0

    if-eqz v0, :cond_ee

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->isSmallJpegData()Z

    move-result v0

    if-eqz v0, :cond_ee

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
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;->notifyMediaStoreChange(Landroid/content/Context;)V

    :cond_ee
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
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_e

    .line 495
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_e
    const-string v0, "Save path and uri is not set."

    .line 497
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
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

    if-eqz v4, :cond_29

    new-array v4, v2, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Store create file:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 515
    :cond_29
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mPath:Ljava/lang/String;

    if-eqz v4, :cond_60

    .line 516
    sget-boolean v4, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v4, :cond_4b

    new-array v4, v2, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Store create by path:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 518
    :cond_4b
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->insertPhotoMedia(Landroid/content/ContentResolver;)Landroid/net/Uri;

    move-result-object v4
    :try_end_4f
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_4f} :catch_25d
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_4f} :catch_1d9
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_4f} :catch_152
    .catchall {:try_start_b .. :try_end_4f} :catchall_14e

    .line 519
    :try_start_4f
    new-instance v5, Ljava/io/FileOutputStream;

    const-string v6, "rw"

    .line 520
    invoke-virtual {v0, v4, v6, v1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_5e
    .catch Ljava/io/FileNotFoundException; {:try_start_4f .. :try_end_5e} :catch_14b
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_5e} :catch_1da
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_5e} :catch_149
    .catchall {:try_start_4f .. :try_end_5e} :catchall_2f5

    move-object v0, v5

    goto :goto_94

    .line 521
    :cond_60
    :try_start_60
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_92

    .line 522
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_82

    new-array v0, v2, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Store create by uri:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 524
    :cond_82
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v4}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v0
    :try_end_90
    .catch Ljava/io/FileNotFoundException; {:try_start_60 .. :try_end_90} :catch_25d
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_90} :catch_1d9
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_90} :catch_152
    .catchall {:try_start_60 .. :try_end_90} :catchall_14e

    move-object v4, v1

    goto :goto_94

    :cond_92
    move-object v0, v1

    move-object v4, v0

    .line 527
    :goto_94
    :try_start_94
    monitor-enter p0
    :try_end_95
    .catch Ljava/io/FileNotFoundException; {:try_start_94 .. :try_end_95} :catch_14b
    .catch Ljava/io/IOException; {:try_start_94 .. :try_end_95} :catch_1da
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_95} :catch_149
    .catchall {:try_start_94 .. :try_end_95} :catchall_2f5

    .line 528
    :try_start_95
    new-instance v5, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    invoke-direct {v5, v0}, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v5, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    .line 529
    monitor-exit p0
    :try_end_9d
    .catchall {:try_start_95 .. :try_end_9d} :catchall_146

    if-nez p1, :cond_145

    .line 533
    :try_start_9f
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mBuffer:Ljava/nio/ByteBuffer;

    if-nez p1, :cond_ae

    .line 534
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mJpegData:[B

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mJpegData:[B

    array-length v5, v5

    invoke-virtual {p1, v0, v3, v5}, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;->write([BII)V

    goto :goto_d9

    .line 536
    :cond_ae
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mPath:Ljava/lang/String;

    if-eqz p1, :cond_be

    .line 537
    check-cast v0, Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    goto :goto_d9

    .line 539
    :cond_be
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p1

    .line 540
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mJpegData:[B

    .line 541
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mBuffer:Ljava/nio/ByteBuffer;

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mJpegData:[B

    invoke-virtual {v0, v5, v3, p1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 542
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mJpegData:[B

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mJpegData:[B

    array-length v5, v5

    invoke-virtual {p1, v0, v3, v5}, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;->write([BII)V

    .line 546
    :goto_d9
    new-instance p1, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p1, v0, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_e2
    .catch Ljava/io/FileNotFoundException; {:try_start_9f .. :try_end_e2} :catch_14b
    .catch Ljava/io/IOException; {:try_start_9f .. :try_end_e2} :catch_1da
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_e2} :catch_149
    .catchall {:try_start_9f .. :try_end_e2} :catchall_2f5

    .line 563
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    if-eqz v0, :cond_fa

    .line 565
    :try_start_e6
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;->flush()V

    .line 566
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;->close()V
    :try_end_ee
    .catch Ljava/io/IOException; {:try_start_e6 .. :try_end_ee} :catch_ef

    goto :goto_fa

    :catch_ef
    const-string v0, "IOException occured when closing."

    .line 569
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 571
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    .line 574
    :cond_fa
    :goto_fa
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->isUsingProcessingMediaAPI()Z

    move-result v0

    if-nez v0, :cond_124

    .line 576
    :try_start_102
    invoke-static {v4}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->releasePending(Landroid/net/Uri;)V
    :try_end_105
    .catch Ljava/lang/SecurityException; {:try_start_102 .. :try_end_105} :catch_106
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_102 .. :try_end_105} :catch_106

    goto :goto_140

    :catch_106
    move-exception v0

    .line 578
    new-array v2, v2, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "storeData error :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    goto :goto_140

    .line 581
    :cond_124
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_140

    .line 582
    new-array v0, v2, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ProcessingMedia skip release ProcessingMediaManager:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 584
    :cond_140
    :goto_140
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mJpegData:[B

    move-object v1, p1

    goto/16 :goto_2e8

    .line 531
    :cond_145
    :try_start_145
    throw p1
    :try_end_146
    .catch Ljava/io/FileNotFoundException; {:try_start_145 .. :try_end_146} :catch_14b
    .catch Ljava/io/IOException; {:try_start_145 .. :try_end_146} :catch_1da
    .catch Ljava/lang/Exception; {:try_start_145 .. :try_end_146} :catch_149
    .catchall {:try_start_145 .. :try_end_146} :catchall_2f5

    :catchall_146
    move-exception p1

    .line 529
    :try_start_147
    monitor-exit p0
    :try_end_148
    .catchall {:try_start_147 .. :try_end_148} :catchall_146

    :try_start_148
    throw p1
    :try_end_149
    .catch Ljava/io/FileNotFoundException; {:try_start_148 .. :try_end_149} :catch_14b
    .catch Ljava/io/IOException; {:try_start_148 .. :try_end_149} :catch_1da
    .catch Ljava/lang/Exception; {:try_start_148 .. :try_end_149} :catch_149
    .catchall {:try_start_148 .. :try_end_149} :catchall_2f5

    :catch_149
    move-exception p1

    goto :goto_154

    :catch_14b
    move-exception p1

    goto/16 :goto_25f

    :catchall_14e
    move-exception p1

    move-object v4, v1

    goto/16 :goto_2f6

    :catch_152
    move-exception p1

    move-object v4, v1

    .line 558
    :goto_154
    :try_start_154
    new-array v0, v2, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Occurred other exception:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v3

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 559
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->isOneShot()Z

    move-result p1

    if-nez p1, :cond_17d

    .line 560
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mStorageType:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->requestCheckStorage(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)V
    :try_end_17d
    .catchall {:try_start_154 .. :try_end_17d} :catchall_2f5

    .line 563
    :cond_17d
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    if-eqz p1, :cond_195

    .line 565
    :try_start_181
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;->flush()V

    .line 566
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;->close()V
    :try_end_189
    .catch Ljava/io/IOException; {:try_start_181 .. :try_end_189} :catch_18a

    goto :goto_195

    :catch_18a
    const-string p1, "IOException occured when closing."

    .line 569
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 571
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    .line 574
    :cond_195
    :goto_195
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->isUsingProcessingMediaAPI()Z

    move-result p1

    if-nez p1, :cond_1be

    .line 576
    :try_start_19d
    invoke-static {v4}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->releasePending(Landroid/net/Uri;)V
    :try_end_1a0
    .catch Ljava/lang/SecurityException; {:try_start_19d .. :try_end_1a0} :catch_1a2
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_19d .. :try_end_1a0} :catch_1a2

    goto/16 :goto_2e6

    :catch_1a2
    move-exception p1

    .line 578
    new-array v0, v2, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "storeData error :"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v3

    goto/16 :goto_2c6

    .line 581
    :cond_1be
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_2e6

    .line 582
    new-array p1, v2, [Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ProcessingMedia skip release ProcessingMediaManager:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v3

    goto/16 :goto_2e3

    :catch_1d9
    move-object v4, v1

    .line 553
    :catch_1da
    :try_start_1da
    new-array p1, v2, [Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Store fail I/O Exception:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v3

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 554
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->isOneShot()Z

    move-result p1

    if-nez p1, :cond_201

    .line 555
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mStorageType:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->requestCheckStorage(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)V
    :try_end_201
    .catchall {:try_start_1da .. :try_end_201} :catchall_2f5

    .line 563
    :cond_201
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    if-eqz p1, :cond_219

    .line 565
    :try_start_205
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;->flush()V

    .line 566
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;->close()V
    :try_end_20d
    .catch Ljava/io/IOException; {:try_start_205 .. :try_end_20d} :catch_20e

    goto :goto_219

    :catch_20e
    const-string p1, "IOException occured when closing."

    .line 569
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 571
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    .line 574
    :cond_219
    :goto_219
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->isUsingProcessingMediaAPI()Z

    move-result p1

    if-nez p1, :cond_242

    .line 576
    :try_start_221
    invoke-static {v4}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->releasePending(Landroid/net/Uri;)V
    :try_end_224
    .catch Ljava/lang/SecurityException; {:try_start_221 .. :try_end_224} :catch_226
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_221 .. :try_end_224} :catch_226

    goto/16 :goto_2e6

    :catch_226
    move-exception p1

    .line 578
    new-array v0, v2, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "storeData error :"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v3

    goto/16 :goto_2c6

    .line 581
    :cond_242
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_2e6

    .line 582
    new-array p1, v2, [Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ProcessingMedia skip release ProcessingMediaManager:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v3

    goto/16 :goto_2e3

    :catch_25d
    move-exception p1

    move-object v4, v1

    .line 548
    :goto_25f
    :try_start_25f
    new-array v0, v2, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Store fail file not found:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v3

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 549
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->isOneShot()Z

    move-result p1

    if-nez p1, :cond_288

    .line 550
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mStorageType:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->requestCheckStorage(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)V
    :try_end_288
    .catchall {:try_start_25f .. :try_end_288} :catchall_2f5

    .line 563
    :cond_288
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    if-eqz p1, :cond_2a0

    .line 565
    :try_start_28c
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;->flush()V

    .line 566
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;->close()V
    :try_end_294
    .catch Ljava/io/IOException; {:try_start_28c .. :try_end_294} :catch_295

    goto :goto_2a0

    :catch_295
    const-string p1, "IOException occured when closing."

    .line 569
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 571
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    .line 574
    :cond_2a0
    :goto_2a0
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->isUsingProcessingMediaAPI()Z

    move-result p1

    if-nez p1, :cond_2ca

    .line 576
    :try_start_2a8
    invoke-static {v4}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->releasePending(Landroid/net/Uri;)V
    :try_end_2ab
    .catch Ljava/lang/SecurityException; {:try_start_2a8 .. :try_end_2ab} :catch_2ac
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_2a8 .. :try_end_2ab} :catch_2ac

    goto :goto_2e6

    :catch_2ac
    move-exception p1

    .line 578
    new-array v0, v2, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "storeData error :"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v3

    :goto_2c6
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    goto :goto_2e6

    .line 581
    :cond_2ca
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_2e6

    .line 582
    new-array p1, v2, [Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ProcessingMedia skip release ProcessingMediaManager:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v3

    :goto_2e3
    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 584
    :cond_2e6
    :goto_2e6
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mJpegData:[B

    :goto_2e8
    if-eqz v1, :cond_2eb

    goto :goto_2f4

    .line 587
    :cond_2eb
    new-instance v1, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {v1, p1, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_2f4
    return-object v1

    :catchall_2f5
    move-exception p1

    .line 563
    :goto_2f6
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    if-eqz v0, :cond_30e

    .line 565
    :try_start_2fa
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;->flush()V

    .line 566
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;->close()V
    :try_end_302
    .catch Ljava/io/IOException; {:try_start_2fa .. :try_end_302} :catch_303

    goto :goto_30e

    :catch_303
    const-string v0, "IOException occured when closing."

    .line 569
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 571
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    .line 574
    :cond_30e
    :goto_30e
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->isUsingProcessingMediaAPI()Z

    move-result v0

    if-eqz v0, :cond_333

    .line 581
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_354

    .line 582
    new-array v0, v2, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ProcessingMedia skip release ProcessingMediaManager:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_354

    .line 576
    :cond_333
    :try_start_333
    invoke-static {v4}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->releasePending(Landroid/net/Uri;)V
    :try_end_336
    .catch Ljava/lang/SecurityException; {:try_start_333 .. :try_end_336} :catch_337
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_333 .. :try_end_336} :catch_337

    goto :goto_354

    :catch_337
    move-exception v0

    .line 578
    new-array v2, v2, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "storeData error :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 584
    :cond_354
    :goto_354
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mJpegData:[B

    .line 585
    throw p1
.end method
