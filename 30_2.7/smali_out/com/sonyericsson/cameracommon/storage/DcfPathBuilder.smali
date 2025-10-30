.class public Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;
.super Ljava/lang/Object;
.source "DcfPathBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanTask;,
        Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$DcfFileNameQuery;,
        Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanResult;,
        Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanResultState;
    }
.end annotation


# static fields
.field public static final DCF_DIR_NAME_FREE_WORD:Ljava/lang/String; = "ANDRO"

.field public static final DCF_FILE_NAME_FREE_WORD_MOVIE:Ljava/lang/String; = "MOV_"

.field public static final DCF_FILE_NAME_FREE_WORD_PICTURE:Ljava/lang/String; = "DSC_"

.field public static final LENGTH_OF_DIR_NAME:I = 0x8

.field public static final LENGTH_OF_FILE_NAME:I = 0xc

.field public static final MAX_DIR_NAME:I = 0x3e7

.field public static final MAX_FILE_NAME:I = 0x270f

.field public static final MIN_DIR_NAME:I = 0x64

.field public static final MIN_FILE_NAME:I = 0x1

.field private static final SCAN_RESULT_FAILED:Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanResult;

.field private static final SCAN_WAIT_TIME:I = 0xea60

.field public static final TAG:Ljava/lang/String; = "DcfPathBuilder"

.field public static final TYPE_PICTURE:I = 0x0

.field public static final TYPE_VIDEO:I = 0x1


# instance fields
.field private mDirNo:I

.field private mFileNameQuery:Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$DcfFileNameQuery;

.field private mFileNo:I

.field private mScanExecutor:Ljava/util/concurrent/ExecutorService;

.field private mScanFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private mScanResult:Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanResult;

.field private final mStorageType:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 85
    new-instance v0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanResult;

    sget-object v1, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanResultState;->SCAN_FAILED:Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanResultState;

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanResult;-><init>(Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanResultState;II)V

    sput-object v0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->SCAN_RESULT_FAILED:Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanResult;

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)V
    .registers 4

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 83
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->mScanResult:Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanResult;

    .line 202
    new-instance v1, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$DcfFileNameQuery;

    invoke-direct {v1, p0, v0}, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$DcfFileNameQuery;-><init>(Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$1;)V

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->mFileNameQuery:Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$DcfFileNameQuery;

    .line 204
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->mStorageType:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    const-string p1, "DCF Path Builder"

    .line 206
    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/ThreadUtil;->buildExecutor(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->mScanExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->mStorageType:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;)Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$DcfFileNameQuery;
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->mFileNameQuery:Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$DcfFileNameQuery;

    return-object p0
.end method

.method private assignImageFilePath(I)Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 451
    monitor-enter p0

    .line 452
    :try_start_1
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->mScanFuture:Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    .line 453
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->mScanFuture:Ljava/util/concurrent/Future;

    .line 454
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_17b

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_99

    .line 458
    :try_start_b
    sget-object v4, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->SCAN_RESULT_FAILED:Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanResult;

    iput-object v4, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->mScanResult:Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanResult;

    const-wide/32 v4, 0xea60

    .line 459
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v4, v5, v6}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanResult;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->mScanResult:Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanResult;

    .line 460
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->mScanResult:Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanResult;

    iget v0, v0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanResult;->resultDirNo:I

    iput v0, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->mDirNo:I

    .line 461
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->mScanResult:Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanResult;

    iget v0, v0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanResult;->resultFileNo:I

    iput v0, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->mFileNo:I

    .line 462
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_99

    new-array v0, v3, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ScanResult is updated. mDirNo: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->mDirNo:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mFileNo: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->mFileNo:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V
    :try_end_50
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_50} :catch_81
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_b .. :try_end_50} :catch_69
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_b .. :try_end_50} :catch_51

    goto :goto_99

    :catch_51
    move-exception p1

    .line 469
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to scan."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_69
    move-exception p1

    .line 467
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to scan."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_81
    move-exception p1

    .line 465
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to scan."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 473
    :cond_99
    :goto_99
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->mScanResult:Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanResult;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanResult;->resultState:Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanResultState;

    sget-object v4, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanResultState;->SCAN_SUCCEEDED:Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanResultState;

    if-eq v0, v4, :cond_ab

    const-string p1, "assignImageFilePath scan failed."

    .line 474
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return-object v1

    .line 479
    :cond_ab
    iget v0, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->mDirNo:I

    const/16 v4, 0x3e7

    if-le v0, v4, :cond_cc

    .line 480
    new-array p1, v3, [Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "assignImageFilePath over max dir. "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->mDirNo:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v2

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return-object v1

    .line 486
    :cond_cc
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%03d"

    new-array v6, v3, [Ljava/lang/Object;

    iget v7, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->mDirNo:I

    .line 487
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "ANDRO"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    packed-switch p1, :pswitch_data_17e

    .line 497
    new-array v0, v3, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "assignImageFilePath type failed. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return-object v1

    .line 494
    :pswitch_11a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "MOV_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_147

    .line 491
    :pswitch_131
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "DSC_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 500
    :goto_147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%04d"

    new-array v4, v3, [Ljava/lang/Object;

    iget v5, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->mFileNo:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {p1, v1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 503
    iget v0, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->mFileNo:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->mFileNo:I

    .line 504
    iget v0, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->mFileNo:I

    const/16 v1, 0x270f

    if-le v0, v1, :cond_17a

    .line 505
    iget v0, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->mDirNo:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->mDirNo:I

    .line 506
    iput v3, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->mFileNo:I

    :cond_17a
    return-object p1

    :catchall_17b
    move-exception p1

    .line 454
    :try_start_17c
    monitor-exit p0
    :try_end_17d
    .catchall {:try_start_17c .. :try_end_17d} :catchall_17b

    throw p1

    :pswitch_data_17e
    .packed-switch 0x0
        :pswitch_131
        :pswitch_11a
    .end packed-switch
.end method

.method public static isAlreadyLastFileExist(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z
    .registers 12

    .line 393
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->getVolume(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%03d"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/16 v5, 0x3e7

    .line 395
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v1, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ANDRO"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 399
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DSC_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%04d"

    new-array v5, v3, [Ljava/lang/Object;

    const/16 v7, 0x270f

    .line 400
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v6

    invoke-static {v2, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".JPG"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 404
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MOV_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%04d"

    new-array v8, v3, [Ljava/lang/Object;

    .line 405
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-static {v4, v5, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".mp4"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 408
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MOV_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "%04d"

    new-array v9, v3, [Ljava/lang/Object;

    .line 409
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v9, v6

    invoke-static {v5, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".3gp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 412
    new-instance v5, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;

    invoke-direct {v5}, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;-><init>()V

    const-string v7, "_id"

    .line 414
    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->projection:[Ljava/lang/String;

    .line 418
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "(%s like \'%s\' OR %s like \'%s\' OR %s like \'%s\') AND %s like \'%s\' AND %s like \'%s\'"

    const/16 v9, 0xa

    new-array v9, v9, [Ljava/lang/Object;

    const-string v10, "_display_name"

    aput-object v10, v9, v6

    aput-object v1, v9, v3

    const-string v1, "_display_name"

    const/4 v10, 0x2

    aput-object v1, v9, v10

    const/4 v1, 0x3

    aput-object v2, v9, v1

    const-string v1, "_display_name"

    const/4 v2, 0x4

    aput-object v1, v9, v2

    const/4 v1, 0x5

    aput-object v4, v9, v1

    const-string v1, "volume_name"

    const/4 v2, 0x6

    aput-object v1, v9, v2

    const/4 v1, 0x7

    aput-object p0, v9, v1

    const-string p0, "relative_path"

    const/16 v1, 0x8

    aput-object p0, v9, v1

    const/16 p0, 0x9

    aput-object v0, v9, p0

    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v5, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->where:Ljava/lang/String;

    const-string p0, "external"

    .line 427
    invoke-static {p0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 426
    invoke-static {p0}, Landroid/provider/MediaStore;->setIncludePending(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p0

    .line 429
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 428
    invoke-static {v0, p0, v5}, Lcom/sonyericsson/cameracommon/contentsview/PhotoStackQueryHelper;->crQuery(Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_115

    .line 431
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_115

    .line 432
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return v3

    :cond_115
    if-eqz p0, :cond_11a

    .line 435
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_11a
    return v6
.end method

.method private isAssignedFileAlreadyExist(Ljava/lang/String;)Z
    .registers 11

    .line 575
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->mStorageType:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->getVolume(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 577
    new-instance v1, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;

    invoke-direct {v1}, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;-><init>()V

    const-string v2, "_id"

    .line 578
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->projection:[Ljava/lang/String;

    .line 581
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 582
    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 583
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%s like \'%s\' AND %s like \'%s\' AND %s like \'%s\'"

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "volume_name"

    const/4 v8, 0x0

    aput-object v7, v6, v8

    aput-object v0, v6, v3

    const-string v0, "relative_path"

    const/4 v7, 0x2

    aput-object v0, v6, v7

    const/4 v0, 0x3

    aput-object v2, v6, v0

    const-string v0, "_display_name"

    const/4 v2, 0x4

    aput-object v0, v6, v2

    const/4 v0, 0x5

    aput-object p1, v6, v0

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->where:Ljava/lang/String;

    const-string p1, "external"

    .line 589
    invoke-static {p1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 588
    invoke-static {p1}, Landroid/provider/MediaStore;->setIncludePending(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    .line 591
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 590
    invoke-static {v0, p1, v1}, Lcom/sonyericsson/cameracommon/contentsview/PhotoStackQueryHelper;->crQuery(Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_74

    .line 593
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_74

    .line 594
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return v3

    :cond_74
    if-eqz p1, :cond_79

    .line 597
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_79
    return v8
.end method


# virtual methods
.method public getPhotoPath()Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x0

    .line 522
    :try_start_2
    invoke-direct {p0, v1}, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->assignImageFilePath(I)Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_6} :catch_7

    goto :goto_d

    :catch_7
    move-exception v2

    const-string v3, "getPhotoPath failed."

    .line 524
    invoke-static {v3, v2}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_d
    if-eqz v0, :cond_20

    .line 527
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".JPG"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 529
    :cond_20
    sget-boolean v2, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v2, :cond_3d

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPhotoPath: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_3d
    if-eqz v0, :cond_57

    .line 532
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->isAssignedFileAlreadyExist(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_46

    goto :goto_57

    .line 535
    :cond_46
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v1, :cond_53

    const-string v1, "Assigned file is exist. Try again."

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 536
    :cond_53
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->startScan()V

    goto :goto_1

    :cond_57
    :goto_57
    return-object v0
.end method

.method public getVideoPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const-string v0, "/dev/null"

    :goto_2
    const/4 v1, 0x1

    .line 553
    :try_start_3
    invoke-direct {p0, v1}, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->assignImageFilePath(I)Ljava/lang/String;

    move-result-object v0
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_7} :catch_8

    goto :goto_e

    :catch_8
    move-exception v2

    const-string v3, "getVideoPath failed."

    .line 555
    invoke-static {v3, v2}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_e
    if-nez v0, :cond_13

    const-string v0, "/dev/null"

    goto :goto_22

    .line 560
    :cond_13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 562
    :goto_22
    sget-boolean v2, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v2, :cond_3f

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVideoPath: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_3f
    const-string v1, "/dev/null"

    if-eq v0, v1, :cond_5b

    .line 566
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->isAssignedFileAlreadyExist(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4a

    goto :goto_5b

    .line 569
    :cond_4a
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v1, :cond_57

    const-string v1, "Assigned file is exist. Try again"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 570
    :cond_57
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->startScan()V

    goto :goto_2

    :cond_5b
    :goto_5b
    return-object v0
.end method

.method public startScan()V
    .registers 3

    .line 215
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "startScan is called."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 217
    :cond_d
    monitor-enter p0

    .line 219
    :try_start_e
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->mScanFuture:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_3a

    .line 220
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->mScanFuture:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 221
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_27

    const-string v0, "Discard previous unread scan result."

    .line 222
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_27
    const/4 v0, 0x0

    .line 223
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->mScanFuture:Ljava/util/concurrent/Future;

    goto :goto_3a

    .line 225
    :cond_2b
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_38

    const-string v0, "Now scanning. Ignore."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 226
    :cond_38
    monitor-exit p0

    return-void

    .line 230
    :cond_3a
    :goto_3a
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->mScanFuture:Ljava/util/concurrent/Future;

    if-nez v0, :cond_58

    .line 231
    new-instance v0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanTask;

    invoke-direct {v0, p0}, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanTask;-><init>(Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;)V

    .line 232
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->mScanExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->mScanFuture:Ljava/util/concurrent/Future;

    .line 233
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_58

    const-string v0, "Scan has submitted."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 235
    :cond_58
    monitor-exit p0

    return-void

    :catchall_5a
    move-exception v0

    monitor-exit p0
    :try_end_5c
    .catchall {:try_start_e .. :try_end_5c} :catchall_5a

    throw v0
.end method
