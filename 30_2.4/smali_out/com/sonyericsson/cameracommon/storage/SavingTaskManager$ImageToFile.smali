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

    .line 433
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 418
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    .line 434
    invoke-virtual {p2}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->getImageData()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mBuffer:Ljava/nio/ByteBuffer;

    .line 435
    iput-object p3, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mUri:Landroid/net/Uri;

    .line 436
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    const-string v0, "file"

    .line 437
    invoke-virtual {p3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2d

    .line 438
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mUri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mPath:Ljava/lang/String;

    .line 439
    invoke-virtual {p2}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->getStorageType()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mStorageType:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    goto :goto_33

    .line 441
    :cond_2d
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mPath:Ljava/lang/String;

    .line 442
    sget-object p1, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->UNKNOWN:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mStorageType:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    :goto_33
    return-void
.end method

.method private cutOffXmpData()I
    .registers 4

    .line 580
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    .line 581
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/JpegXMPRemover;->cutOffXmpData(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    if-eqz v1, :cond_10

    move-object v2, v1

    goto :goto_12

    .line 582
    :cond_10
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mBuffer:Ljava/nio/ByteBuffer;

    :goto_12
    iput-object v2, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mBuffer:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_1c

    .line 583
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_1d

    :cond_1c
    const/4 v0, -0x1

    :goto_1d
    return v0
.end method

.method private insertPhotoMedia(Landroid/content/ContentResolver;)Landroid/net/Uri;
    .registers 8

    .line 549
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mStorageType:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->getVolume(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_e

    const/4 p1, 0x0

    return-object p1

    .line 554
    :cond_e
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 555
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mPath:Ljava/lang/String;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 556
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mPath:Ljava/lang/String;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "_display_name"

    .line 557
    invoke-virtual {v1, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "mime_type"

    .line 558
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    iget-object v5, v5, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v5, v5, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mimeType:Ljava/lang/String;

    invoke-virtual {v1, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "relative_path"

    .line 560
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "is_pending"

    .line 561
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 563
    invoke-static {v0}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 564
    invoke-virtual {p1, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method private requestCheckStorage(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)V
    .registers 4

    .line 568
    sget-object v0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->UNKNOWN:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    if-eq p1, v0, :cond_f

    .line 569
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    # getter for: Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mStorageManager:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->access$200(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;)Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;->STORING_FAILED:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;

    invoke-virtual {v0, p1, v1}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->updateStorageState(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;)V

    .line 571
    :cond_f
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    new-instance v1, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile$1;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile$1;-><init>(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)V

    # invokes: Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->runOnUiThread(Ljava/lang/Runnable;)V
    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->access$500(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public getPath()Ljava/lang/String;
    .registers 2

    .line 447
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mPath:Ljava/lang/String;

    if-eqz v0, :cond_5

    return-object v0

    .line 449
    :cond_5
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_e

    .line 450
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_e
    const-string v0, "Save path and uri is not set."

    .line 452
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public storeData(Ljava/lang/Exception;)Landroid/util/Pair;
    .registers 9

    .line 463
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 467
    :try_start_b
    sget-boolean v4, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v4, :cond_29

    new-array v4, v1, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Store create file:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 469
    :cond_29
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->isTransferAndTagging()Z

    move-result v4

    if-eqz v4, :cond_5b

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mBuffer:Ljava/nio/ByteBuffer;

    if-eqz v4, :cond_5b

    .line 470
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->cutOffXmpData()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_5b

    .line 471
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_53

    .line 472
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    iget-object p1, p1, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mContext:Landroid/content/Context;

    const-string v0, "RemoveXMPFailure.JPG"

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object p1

    .line 475
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 477
    :cond_53
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Failed to remove xmp data."

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 482
    :cond_5b
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mPath:Ljava/lang/String;

    if-eqz v4, :cond_92

    .line 483
    sget-boolean v4, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v4, :cond_7d

    new-array v4, v1, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Store create by path:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 485
    :cond_7d
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->insertPhotoMedia(Landroid/content/ContentResolver;)Landroid/net/Uri;

    move-result-object v4
    :try_end_81
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_81} :catch_1af
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_81} :catch_17a
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_81} :catch_141
    .catchall {:try_start_b .. :try_end_81} :catchall_13d

    .line 486
    :try_start_81
    new-instance v5, Ljava/io/FileOutputStream;

    const-string v6, "rw"

    .line 487
    invoke-virtual {v0, v4, v6, v3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_90
    .catch Ljava/io/FileNotFoundException; {:try_start_81 .. :try_end_90} :catch_13a
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_90} :catch_17b
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_90} :catch_138
    .catchall {:try_start_81 .. :try_end_90} :catchall_204

    move-object v0, v5

    goto :goto_c6

    .line 488
    :cond_92
    :try_start_92
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_c4

    .line 489
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_b4

    new-array v0, v1, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Store create by uri:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 491
    :cond_b4
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v4}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v0
    :try_end_c2
    .catch Ljava/io/FileNotFoundException; {:try_start_92 .. :try_end_c2} :catch_1af
    .catch Ljava/io/IOException; {:try_start_92 .. :try_end_c2} :catch_17a
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_c2} :catch_141
    .catchall {:try_start_92 .. :try_end_c2} :catchall_13d

    move-object v4, v3

    goto :goto_c6

    :cond_c4
    move-object v0, v3

    move-object v4, v0

    .line 494
    :goto_c6
    :try_start_c6
    monitor-enter p0
    :try_end_c7
    .catch Ljava/io/FileNotFoundException; {:try_start_c6 .. :try_end_c7} :catch_13a
    .catch Ljava/io/IOException; {:try_start_c6 .. :try_end_c7} :catch_17b
    .catch Ljava/lang/Exception; {:try_start_c6 .. :try_end_c7} :catch_138
    .catchall {:try_start_c6 .. :try_end_c7} :catchall_204

    .line 495
    :try_start_c7
    new-instance v5, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    invoke-direct {v5, v0}, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v5, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    .line 496
    monitor-exit p0
    :try_end_cf
    .catchall {:try_start_c7 .. :try_end_cf} :catchall_135

    if-nez p1, :cond_134

    .line 500
    :try_start_d1
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mBuffer:Ljava/nio/ByteBuffer;

    if-nez p1, :cond_e0

    .line 501
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mJpegData:[B

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mJpegData:[B

    array-length v5, v5

    invoke-virtual {p1, v0, v2, v5}, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;->write([BII)V

    goto :goto_10b

    .line 503
    :cond_e0
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mPath:Ljava/lang/String;

    if-eqz p1, :cond_f0

    .line 504
    check-cast v0, Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    goto :goto_10b

    .line 506
    :cond_f0
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p1

    .line 507
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mJpegData:[B

    .line 508
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mBuffer:Ljava/nio/ByteBuffer;

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mJpegData:[B

    invoke-virtual {v0, v5, v2, p1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 509
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mJpegData:[B

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mJpegData:[B

    array-length v5, v5

    invoke-virtual {p1, v0, v2, v5}, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;->write([BII)V

    .line 513
    :goto_10b
    new-instance p1, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p1, v0, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_114
    .catch Ljava/io/FileNotFoundException; {:try_start_d1 .. :try_end_114} :catch_13a
    .catch Ljava/io/IOException; {:try_start_d1 .. :try_end_114} :catch_17b
    .catch Ljava/lang/Exception; {:try_start_d1 .. :try_end_114} :catch_138
    .catchall {:try_start_d1 .. :try_end_114} :catchall_204

    .line 530
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    if-eqz v0, :cond_12c

    .line 532
    :try_start_118
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;->flush()V

    .line 533
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;->close()V
    :try_end_120
    .catch Ljava/io/IOException; {:try_start_118 .. :try_end_120} :catch_121

    goto :goto_12c

    :catch_121
    const-string v0, "IOException occured when closing."

    .line 536
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 538
    iput-object v3, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    .line 541
    :cond_12c
    :goto_12c
    invoke-static {v4}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->releasePending(Landroid/net/Uri;)V

    .line 542
    iput-object v3, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mJpegData:[B

    move-object v3, p1

    goto/16 :goto_1f7

    .line 498
    :cond_134
    :try_start_134
    throw p1
    :try_end_135
    .catch Ljava/io/FileNotFoundException; {:try_start_134 .. :try_end_135} :catch_13a
    .catch Ljava/io/IOException; {:try_start_134 .. :try_end_135} :catch_17b
    .catch Ljava/lang/Exception; {:try_start_134 .. :try_end_135} :catch_138
    .catchall {:try_start_134 .. :try_end_135} :catchall_204

    :catchall_135
    move-exception p1

    .line 496
    :try_start_136
    monitor-exit p0
    :try_end_137
    .catchall {:try_start_136 .. :try_end_137} :catchall_135

    :try_start_137
    throw p1
    :try_end_138
    .catch Ljava/io/FileNotFoundException; {:try_start_137 .. :try_end_138} :catch_13a
    .catch Ljava/io/IOException; {:try_start_137 .. :try_end_138} :catch_17b
    .catch Ljava/lang/Exception; {:try_start_137 .. :try_end_138} :catch_138
    .catchall {:try_start_137 .. :try_end_138} :catchall_204

    :catch_138
    move-exception p1

    goto :goto_143

    :catch_13a
    move-exception p1

    goto/16 :goto_1b1

    :catchall_13d
    move-exception p1

    move-object v4, v3

    goto/16 :goto_205

    :catch_141
    move-exception p1

    move-object v4, v3

    .line 525
    :goto_143
    :try_start_143
    new-array v0, v1, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Occurred other exception:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 526
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->isOneShot()Z

    move-result p1

    if-nez p1, :cond_16c

    .line 527
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mStorageType:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->requestCheckStorage(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)V
    :try_end_16c
    .catchall {:try_start_143 .. :try_end_16c} :catchall_204

    .line 530
    :cond_16c
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    if-eqz p1, :cond_1f2

    .line 532
    :try_start_170
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;->flush()V

    .line 533
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;->close()V
    :try_end_178
    .catch Ljava/io/IOException; {:try_start_170 .. :try_end_178} :catch_1e7

    goto/16 :goto_1f2

    :catch_17a
    move-object v4, v3

    .line 520
    :catch_17b
    :try_start_17b
    new-array p1, v1, [Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Store fail I/O Exception:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v2

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 521
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->isOneShot()Z

    move-result p1

    if-nez p1, :cond_1a2

    .line 522
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mStorageType:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->requestCheckStorage(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)V
    :try_end_1a2
    .catchall {:try_start_17b .. :try_end_1a2} :catchall_204

    .line 530
    :cond_1a2
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    if-eqz p1, :cond_1f2

    .line 532
    :try_start_1a6
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;->flush()V

    .line 533
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;->close()V
    :try_end_1ae
    .catch Ljava/io/IOException; {:try_start_1a6 .. :try_end_1ae} :catch_1e7

    goto :goto_1f2

    :catch_1af
    move-exception p1

    move-object v4, v3

    .line 515
    :goto_1b1
    :try_start_1b1
    new-array v0, v1, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Store fail file not found:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 516
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->isOneShot()Z

    move-result p1

    if-nez p1, :cond_1da

    .line 517
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mStorageType:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->requestCheckStorage(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)V
    :try_end_1da
    .catchall {:try_start_1b1 .. :try_end_1da} :catchall_204

    .line 530
    :cond_1da
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    if-eqz p1, :cond_1f2

    .line 532
    :try_start_1de
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;->flush()V

    .line 533
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;->close()V
    :try_end_1e6
    .catch Ljava/io/IOException; {:try_start_1de .. :try_end_1e6} :catch_1e7

    goto :goto_1f2

    :catch_1e7
    const-string p1, "IOException occured when closing."

    .line 536
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 538
    iput-object v3, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    .line 541
    :cond_1f2
    :goto_1f2
    invoke-static {v4}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->releasePending(Landroid/net/Uri;)V

    .line 542
    iput-object v3, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mJpegData:[B

    :goto_1f7
    if-eqz v3, :cond_1fa

    goto :goto_203

    .line 545
    :cond_1fa
    new-instance v3, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {v3, p1, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_203
    return-object v3

    :catchall_204
    move-exception p1

    .line 530
    :goto_205
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    if-eqz v0, :cond_21d

    .line 532
    :try_start_209
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;->flush()V

    .line 533
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;->close()V
    :try_end_211
    .catch Ljava/io/IOException; {:try_start_209 .. :try_end_211} :catch_212

    goto :goto_21d

    :catch_212
    const-string v0, "IOException occured when closing."

    .line 536
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 538
    iput-object v3, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    .line 541
    :cond_21d
    :goto_21d
    invoke-static {v4}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->releasePending(Landroid/net/Uri;)V

    .line 542
    iput-object v3, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;->mJpegData:[B

    .line 543
    throw p1
.end method
