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
    const-string v0, "file"

    invoke-virtual {p3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

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
    .registers 8

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

    .line 599
    const-string v5, "_display_name"

    invoke-virtual {v1, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    iget-object v3, v3, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v3, v3, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mimeType:Ljava/lang/String;

    const-string v5, "mime_type"

    invoke-virtual {v1, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    const-string v3, "relative_path"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    const-string v2, "is_pending"

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

    .line 607
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 608
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 607
    const-string v3, "date_modified"

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

    if-eqz v0, :cond_ba

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ProcessingMedia insert uri:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 619
    :cond_ba
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->isUsingProcessingMediaAPI()Z

    move-result v0

    if-eqz v0, :cond_eb

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->isSmallJpegData()Z

    move-result v0

    if-eqz v0, :cond_eb

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

    :cond_eb
    return-object p1
.end method

.method private requestCheckStorage(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)V
    .registers 4

    .line 630
    sget-object v0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->UNKNOWN:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    if-eq p1, v0, :cond_f

    .line 631
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->-$$Nest$fgetmStorageManager(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;)Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;->STORING_FAILED:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;

    invoke-virtual {v0, p1, v1}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->updateStorageState(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;)V

    .line 633
    :cond_f
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    new-instance v1, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile$1;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile$1;-><init>(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)V

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->-$$Nest$mrunOnUiThread(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;Ljava/lang/Runnable;)V

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

    .line 497
    :cond_e
    const-string p0, "Save path and uri is not set."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public storeData(Ljava/lang/Exception;)Landroid/util/Pair;
    .registers 11

    const-string v0, "Store create by uri:"

    const-string v1, "Store create by path:"

    const-string v2, "Store create file:"

    .line 508
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    iget-object v3, v3, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 512
    :try_start_11
    sget-boolean v7, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v7, :cond_2b

    new-array v7, v4, [Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mPath:Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v5

    invoke-static {v7}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 515
    :cond_2b
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mPath:Ljava/lang/String;

    if-eqz v2, :cond_5d

    .line 516
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_49

    new-array v0, v4, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mPath:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 518
    :cond_49
    invoke-direct {p0, v3}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->insertPhotoMedia(Landroid/content/ContentResolver;)Landroid/net/Uri;

    move-result-object v0
    :try_end_4d
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_4d} :catch_253
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_4d} :catch_1ca
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_4d} :catch_13e
    .catchall {:try_start_11 .. :try_end_4d} :catchall_13a

    .line 519
    :try_start_4d
    new-instance v1, Ljava/io/FileOutputStream;

    const-string v2, "rw"

    .line 520
    invoke-virtual {v3, v0, v2, v6}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_5c
    .catch Ljava/io/FileNotFoundException; {:try_start_4d .. :try_end_5c} :catch_137
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_5c} :catch_1cb
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_5c} :catch_135
    .catchall {:try_start_4d .. :try_end_5c} :catchall_2ea

    goto :goto_8d

    .line 521
    :cond_5d
    :try_start_5d
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mUri:Landroid/net/Uri;

    if-eqz v1, :cond_8b

    .line 522
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v1, :cond_7b

    new-array v1, v4, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v5

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 524
    :cond_7b
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v1
    :try_end_89
    .catch Ljava/io/FileNotFoundException; {:try_start_5d .. :try_end_89} :catch_253
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_89} :catch_1ca
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_89} :catch_13e
    .catchall {:try_start_5d .. :try_end_89} :catchall_13a

    move-object v0, v6

    goto :goto_8d

    :cond_8b
    move-object v0, v6

    move-object v1, v0

    .line 527
    :goto_8d
    :try_start_8d
    monitor-enter p0
    :try_end_8e
    .catch Ljava/io/FileNotFoundException; {:try_start_8d .. :try_end_8e} :catch_137
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_8e} :catch_1cb
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_8e} :catch_135
    .catchall {:try_start_8d .. :try_end_8e} :catchall_2ea

    .line 528
    :try_start_8e
    new-instance v2, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    invoke-direct {v2, v1}, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v2, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    .line 529
    monitor-exit p0
    :try_end_96
    .catchall {:try_start_8e .. :try_end_96} :catchall_132

    if-nez p1, :cond_131

    .line 533
    :try_start_98
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mBuffer:Ljava/nio/ByteBuffer;

    if-nez p1, :cond_a3

    .line 534
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mJpegData:[B

    array-length v1, p1

    invoke-virtual {v2, p1, v5, v1}, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;->write([BII)V

    goto :goto_c8

    .line 536
    :cond_a3
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mPath:Ljava/lang/String;

    if-eqz v2, :cond_b3

    .line 537
    check-cast v1, Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    goto :goto_c8

    .line 539
    :cond_b3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p1

    .line 540
    new-array v1, p1, [B

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mJpegData:[B

    .line 541
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1, v5, p1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 542
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mJpegData:[B

    array-length v2, v1

    invoke-virtual {p1, v1, v5, v2}, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;->write([BII)V

    .line 546
    :goto_c8
    new-instance p1, Landroid/util/Pair;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p1, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_d1
    .catch Ljava/io/FileNotFoundException; {:try_start_98 .. :try_end_d1} :catch_137
    .catch Ljava/io/IOException; {:try_start_98 .. :try_end_d1} :catch_1cb
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_d1} :catch_135
    .catchall {:try_start_98 .. :try_end_d1} :catchall_2ea

    .line 563
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    if-eqz v1, :cond_e9

    .line 565
    :try_start_d5
    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;->flush()V

    .line 566
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;->close()V
    :try_end_dd
    .catch Ljava/io/IOException; {:try_start_d5 .. :try_end_dd} :catch_de

    goto :goto_e9

    .line 569
    :catch_de
    const-string v1, "IOException occured when closing."

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 571
    iput-object v6, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    .line 574
    :cond_e9
    :goto_e9
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->isUsingProcessingMediaAPI()Z

    move-result v1

    if-nez v1, :cond_112

    .line 576
    :try_start_f1
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->releasePending(Landroid/net/Uri;)V
    :try_end_f4
    .catch Ljava/lang/SecurityException; {:try_start_f1 .. :try_end_f4} :catch_f5
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_f1 .. :try_end_f4} :catch_f5

    goto :goto_12c

    :catch_f5
    move-exception v1

    .line 578
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "storeData error :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    goto :goto_12c

    .line 581
    :cond_112
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_12c

    .line 582
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ProcessingMedia skip release ProcessingMediaManager:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 584
    :cond_12c
    :goto_12c
    iput-object v6, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mJpegData:[B

    move-object v6, p1

    goto/16 :goto_2dd

    .line 531
    :cond_131
    :try_start_131
    throw p1
    :try_end_132
    .catch Ljava/io/FileNotFoundException; {:try_start_131 .. :try_end_132} :catch_137
    .catch Ljava/io/IOException; {:try_start_131 .. :try_end_132} :catch_1cb
    .catch Ljava/lang/Exception; {:try_start_131 .. :try_end_132} :catch_135
    .catchall {:try_start_131 .. :try_end_132} :catchall_2ea

    :catchall_132
    move-exception p1

    .line 529
    :try_start_133
    monitor-exit p0
    :try_end_134
    .catchall {:try_start_133 .. :try_end_134} :catchall_132

    :try_start_134
    throw p1
    :try_end_135
    .catch Ljava/io/FileNotFoundException; {:try_start_134 .. :try_end_135} :catch_137
    .catch Ljava/io/IOException; {:try_start_134 .. :try_end_135} :catch_1cb
    .catch Ljava/lang/Exception; {:try_start_134 .. :try_end_135} :catch_135
    .catchall {:try_start_134 .. :try_end_135} :catchall_2ea

    :catch_135
    move-exception p1

    goto :goto_140

    :catch_137
    move-exception p1

    goto/16 :goto_255

    :catchall_13a
    move-exception p1

    move-object v0, v6

    goto/16 :goto_2eb

    :catch_13e
    move-exception p1

    move-object v0, v6

    .line 558
    :goto_140
    :try_start_140
    new-array v1, v4, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Occurred other exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v5

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 559
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->isOneShot()Z

    move-result p1

    if-nez p1, :cond_16b

    .line 560
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mStorageType:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->requestCheckStorage(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)V
    :try_end_16b
    .catchall {:try_start_140 .. :try_end_16b} :catchall_2ea

    .line 563
    :cond_16b
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    if-eqz p1, :cond_183

    .line 565
    :try_start_16f
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;->flush()V

    .line 566
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;->close()V
    :try_end_177
    .catch Ljava/io/IOException; {:try_start_16f .. :try_end_177} :catch_178

    goto :goto_183

    .line 569
    :catch_178
    const-string p1, "IOException occured when closing."

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 571
    iput-object v6, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    .line 574
    :cond_183
    :goto_183
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->isUsingProcessingMediaAPI()Z

    move-result p1

    if-nez p1, :cond_1ae

    .line 576
    :try_start_18b
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->releasePending(Landroid/net/Uri;)V
    :try_end_18e
    .catch Ljava/lang/SecurityException; {:try_start_18b .. :try_end_18e} :catch_190
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_18b .. :try_end_18e} :catch_190

    goto/16 :goto_2db

    :catch_190
    move-exception p1

    .line 578
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "storeData error :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    goto/16 :goto_2db

    .line 581
    :cond_1ae
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_2db

    .line 582
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "ProcessingMedia skip release ProcessingMediaManager:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto/16 :goto_2db

    :catch_1ca
    move-object v0, v6

    .line 553
    :catch_1cb
    :try_start_1cb
    new-array p1, v4, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Store fail I/O Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v5

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 554
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->isOneShot()Z

    move-result p1

    if-nez p1, :cond_1f4

    .line 555
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mStorageType:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->requestCheckStorage(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)V
    :try_end_1f4
    .catchall {:try_start_1cb .. :try_end_1f4} :catchall_2ea

    .line 563
    :cond_1f4
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    if-eqz p1, :cond_20c

    .line 565
    :try_start_1f8
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;->flush()V

    .line 566
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;->close()V
    :try_end_200
    .catch Ljava/io/IOException; {:try_start_1f8 .. :try_end_200} :catch_201

    goto :goto_20c

    .line 569
    :catch_201
    const-string p1, "IOException occured when closing."

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 571
    iput-object v6, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    .line 574
    :cond_20c
    :goto_20c
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->isUsingProcessingMediaAPI()Z

    move-result p1

    if-nez p1, :cond_237

    .line 576
    :try_start_214
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->releasePending(Landroid/net/Uri;)V
    :try_end_217
    .catch Ljava/lang/SecurityException; {:try_start_214 .. :try_end_217} :catch_219
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_214 .. :try_end_217} :catch_219

    goto/16 :goto_2db

    :catch_219
    move-exception p1

    .line 578
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "storeData error :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    goto/16 :goto_2db

    .line 581
    :cond_237
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_2db

    .line 582
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "ProcessingMedia skip release ProcessingMediaManager:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto/16 :goto_2db

    :catch_253
    move-exception p1

    move-object v0, v6

    .line 548
    :goto_255
    :try_start_255
    new-array v1, v4, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Store fail file not found:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v5

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 549
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->isOneShot()Z

    move-result p1

    if-nez p1, :cond_280

    .line 550
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mStorageType:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->requestCheckStorage(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)V
    :try_end_280
    .catchall {:try_start_255 .. :try_end_280} :catchall_2ea

    .line 563
    :cond_280
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    if-eqz p1, :cond_298

    .line 565
    :try_start_284
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;->flush()V

    .line 566
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;->close()V
    :try_end_28c
    .catch Ljava/io/IOException; {:try_start_284 .. :try_end_28c} :catch_28d

    goto :goto_298

    .line 569
    :catch_28d
    const-string p1, "IOException occured when closing."

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 571
    iput-object v6, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    .line 574
    :cond_298
    :goto_298
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->isUsingProcessingMediaAPI()Z

    move-result p1

    if-nez p1, :cond_2c1

    .line 576
    :try_start_2a0
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->releasePending(Landroid/net/Uri;)V
    :try_end_2a3
    .catch Ljava/lang/SecurityException; {:try_start_2a0 .. :try_end_2a3} :catch_2a4
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_2a0 .. :try_end_2a3} :catch_2a4

    goto :goto_2db

    :catch_2a4
    move-exception p1

    .line 578
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "storeData error :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    goto :goto_2db

    .line 581
    :cond_2c1
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_2db

    .line 582
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "ProcessingMedia skip release ProcessingMediaManager:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 584
    :cond_2db
    :goto_2db
    iput-object v6, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mJpegData:[B

    :goto_2dd
    if-eqz v6, :cond_2e0

    goto :goto_2e9

    .line 587
    :cond_2e0
    new-instance v6, Landroid/util/Pair;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-direct {v6, p0, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_2e9
    return-object v6

    :catchall_2ea
    move-exception p1

    .line 563
    :goto_2eb
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    if-eqz v1, :cond_303

    .line 565
    :try_start_2ef
    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;->flush()V

    .line 566
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;->close()V
    :try_end_2f7
    .catch Ljava/io/IOException; {:try_start_2ef .. :try_end_2f7} :catch_2f8

    goto :goto_303

    .line 569
    :catch_2f8
    const-string v1, "IOException occured when closing."

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 571
    iput-object v6, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    .line 574
    :cond_303
    :goto_303
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->isUsingProcessingMediaAPI()Z

    move-result v1

    if-eqz v1, :cond_326

    .line 581
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_346

    .line 582
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ProcessingMedia skip release ProcessingMediaManager:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_346

    .line 576
    :cond_326
    :try_start_326
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->releasePending(Landroid/net/Uri;)V
    :try_end_329
    .catch Ljava/lang/SecurityException; {:try_start_326 .. :try_end_329} :catch_32a
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_326 .. :try_end_329} :catch_32a

    goto :goto_346

    :catch_32a
    move-exception v0

    .line 578
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "storeData error :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 584
    :cond_346
    :goto_346
    iput-object v6, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mJpegData:[B

    .line 585
    throw p1
.end method
