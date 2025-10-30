.class public Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;
.super Ljava/lang/Object;
.source "SavingTaskManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ClearProcessingMediaTask;,
        Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$FinalImageStoreTask;,
        Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavingVideoTask;,
        Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$NotifyStoreCompletedTask;,
        Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ImageToFile;,
        Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;,
        Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;,
        Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$GeoMode;
    }
.end annotation


# static fields
.field private static final CAN_PUSH_STORE_TASK_HPROF_FILE_NAME:Ljava/lang/String; = "/can_push_store_task.hprof"

.field private static final PKG_CTS_VERIFIER:Ljava/lang/String; = "com.android.cts.verifier"

.field private static final SUFFIX_TEMP_FILE:Ljava/lang/String; = ".rewrite-exif"

.field public static final TAG:Ljava/lang/String; = "SavingTaskManager"

.field private static final THREAD_NAME:Ljava/lang/String; = "SavingTask"

.field private static final mExecutor:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private mCallingPackageName:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mInquiry:Lcom/sonyericsson/cameracommon/storage/SavingTaskInquiry;

.field private final mSavingTaskQueueMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;",
            "Ljava/util/Queue<",
            "Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;",
            ">;>;"
        }
    .end annotation
.end field

.field private mStorageAccessSemaphoreMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;",
            "Ljava/util/concurrent/Semaphore;",
            ">;"
        }
    .end annotation
.end field

.field private mStorageManager:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

.field private mStoreDataHandler:Landroid/os/Handler;

.field private mStoreVideoThread:Ljava/lang/Thread;

.field private mUpdator:Lcom/sonyericsson/cameracommon/mediasaving/updator/MediaProviderUpdator;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "SavingTask"

    const/4 v1, 0x3

    .line 121
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/util/ThreadUtil;->buildPoolExecutor(Ljava/lang/String;I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;",
            "Ljava/util/Map<",
            "Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;",
            "Ljava/util/concurrent/Semaphore;",
            ">;)V"
        }
    .end annotation

    .line 644
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 81
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mStorageManager:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

    .line 86
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mStoreVideoThread:Ljava/lang/Thread;

    .line 95
    new-instance v1, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$1;-><init>(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;)V

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mInquiry:Lcom/sonyericsson/cameracommon/storage/SavingTaskInquiry;

    .line 126
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mStoreDataHandler:Landroid/os/Handler;

    .line 646
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mContext:Landroid/content/Context;

    .line 647
    iput-object p3, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mStorageAccessSemaphoreMap:Ljava/util/Map;

    .line 651
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mStorageManager:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

    .line 656
    new-instance p2, Landroid/os/HandlerThread;

    const-string p3, "SavingTaskManager"

    invoke-direct {p2, p3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 657
    invoke-virtual {p2}, Landroid/os/HandlerThread;->start()V

    .line 658
    new-instance p3, Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p3, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mStoreDataHandler:Landroid/os/Handler;

    .line 659
    new-instance p2, Lcom/sonyericsson/cameracommon/mediasaving/updator/MediaProviderUpdator;

    invoke-direct {p2, p1}, Lcom/sonyericsson/cameracommon/mediasaving/updator/MediaProviderUpdator;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mUpdator:Lcom/sonyericsson/cameracommon/mediasaving/updator/MediaProviderUpdator;

    .line 661
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mHandler:Landroid/os/Handler;

    .line 663
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mSavingTaskQueueMap:Ljava/util/Map;

    .line 664
    invoke-static {}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->getMountableStorageTypes()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_64

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    .line 665
    iget-object p3, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mSavingTaskQueueMap:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    invoke-interface {p3, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4d

    :cond_64
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;)Ljava/util/Map;
    .registers 1

    .line 69
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mSavingTaskQueueMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;)Lcom/sonyericsson/cameracommon/mediasaving/updator/MediaProviderUpdator;
    .registers 1

    .line 69
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mUpdator:Lcom/sonyericsson/cameracommon/mediasaving/updator/MediaProviderUpdator;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;Ljava/lang/Thread;)Ljava/lang/Thread;
    .registers 2

    .line 69
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mStoreVideoThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;)Ljava/lang/String;
    .registers 1

    .line 69
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mCallingPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;)Ljava/util/Map;
    .registers 1

    .line 69
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mStorageAccessSemaphoreMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$400(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;)V
    .registers 2

    .line 69
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->popPhotoSavingTask(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;)V

    return-void
.end method

.method static synthetic access$500(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;)Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;
    .registers 1

    .line 69
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mStorageManager:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

    return-object p0
.end method

.method static synthetic access$600(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;Ljava/lang/Runnable;)V
    .registers 2

    .line 69
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$700(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/storage/SavingRequest;)V
    .registers 4

    .line 69
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->notifyStoreComplete(Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/storage/SavingRequest;)V

    return-void
.end method

.method private static getUsedMemory()J
    .registers 4

    .line 967
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private static isEnoughMemory(J)Z
    .registers 6

    .line 977
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const-wide/16 v2, 0x7

    mul-long/2addr v0, v2

    const-wide/16 v2, 0xa

    div-long/2addr v0, v2

    cmp-long p0, p0, v0

    if-gez p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method private notifyStoreComplete(Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/storage/SavingRequest;)V
    .registers 6

    .line 750
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "onNotifyStoreComplete"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 752
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mStoreDataHandler:Landroid/os/Handler;

    if-eqz v0, :cond_31

    .line 762
    invoke-virtual {p3}, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->isOneShot()Z

    move-result v0

    if-nez v0, :cond_20

    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->SUCCESS:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    if-ne p1, v0, :cond_20

    .line 763
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/sonyericsson/cameracommon/mediasaving/updator/MediaProviderUpdator;->sendBroadcastCameraShot(Landroid/content/Context;Landroid/net/Uri;)V

    .line 765
    :cond_20
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mStoreDataHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$NotifyStoreCompletedTask;

    new-instance v1, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    invoke-direct {v1, p1, p2, p3}, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/storage/SavingRequest;)V

    const/4 p1, 0x0

    invoke-direct {v0, v1, p1}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$NotifyStoreCompletedTask;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$1;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3e

    .line 768
    :cond_31
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_3e

    const-string p0, "Maybe Main activity has gone. So cannot send complete message"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_3e
    :goto_3e
    return-void
.end method

.method private popPhotoSavingTask(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;)V
    .registers 5

    .line 732
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "### popPhotoSavingTask"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 733
    :cond_d
    invoke-static {}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->getMountableStorageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    .line 735
    # invokes: Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->release()V
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->access$800(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;)V

    .line 736
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mSavingTaskQueueMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_30
    return-void
.end method

.method private pushPhotoSavingTask(Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;)V
    .registers 6

    .line 716
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_24

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "### pushPhotoSavingTask : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 717
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->getRequestId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 716
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 719
    :cond_24
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->isOneShot()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->setOneShot(Z)V

    .line 721
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->isUsingProcessingMediaAPI()Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->isSmallJpegData()Z

    move-result v0

    if-nez v0, :cond_42

    .line 722
    new-instance v0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$FinalImageStoreTask;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$FinalImageStoreTask;-><init>(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;)V

    .line 723
    sget-object p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_5b

    .line 725
    :cond_42
    new-instance v0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;-><init>(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;)V

    .line 726
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mSavingTaskQueueMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->getStorageType()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Queue;

    invoke-interface {p0, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 727
    sget-object p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :goto_5b
    return-void
.end method

.method private runOnUiThread(Ljava/lang/Runnable;)V
    .registers 2

    .line 994
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public canPushStoreTask(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z
    .registers 9

    .line 933
    invoke-static {}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->getUsedMemory()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->isEnoughMemory(J)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    return v1

    .line 937
    :cond_c
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 939
    invoke-static {}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->getUsedMemory()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->isEnoughMemory(J)Z

    move-result v0

    if-eqz v0, :cond_1e

    return v1

    :cond_1e
    const-string v0, "Temporarily reject capture request since app is low on memory:"

    .line 943
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    new-array v0, v1, [Ljava/lang/String;

    .line 945
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\t saving: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->getRemainQueueSize(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    new-array v0, v1, [Ljava/lang/String;

    .line 946
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\tusedMemory: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->getUsedMemory()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "byte"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    new-array v0, v1, [Ljava/lang/String;

    .line 947
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\t maxMemory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 948
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_c1

    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->getRemainQueueSize(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)I

    move-result p1

    if-nez p1, :cond_c1

    .line 951
    :try_start_9a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "/can_push_store_task.hprof"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 953
    invoke-static {p0}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;)V
    :try_end_b7
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_b7} :catch_b8

    goto :goto_c1

    :catch_b8
    const-string p0, "canPushStoreTask() fail to dump hprof"

    .line 955
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    :cond_c1
    :goto_c1
    return v3
.end method

.method public clearPendingProcessingMedia(I)V
    .registers 3

    .line 1124
    new-instance v0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ClearProcessingMediaTask;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$ClearProcessingMediaTask;-><init>(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;I)V

    .line 1125
    sget-object p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getInquiry()Lcom/sonyericsson/cameracommon/storage/SavingTaskInquiry;
    .registers 1

    .line 741
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mInquiry:Lcom/sonyericsson/cameracommon/storage/SavingTaskInquiry;

    return-object p0
.end method

.method public getRemainQueueSize(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)I
    .registers 2

    .line 1003
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mSavingTaskQueueMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Queue;

    invoke-interface {p0}, Ljava/util/Queue;->size()I

    move-result p0

    return p0
.end method

.method public release()V
    .registers 3

    .line 981
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mStoreDataHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    .line 982
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_1f

    .line 983
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mStoreDataHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    :cond_1f
    const/4 v0, 0x0

    .line 985
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mStoreDataHandler:Landroid/os/Handler;

    return-void
.end method

.method public setOneShotCallerInfo(Ljava/lang/String;)V
    .registers 2

    .line 1007
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mCallingPackageName:Ljava/lang/String;

    return-void
.end method

.method public storePicture(Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;)V
    .registers 6

    .line 682
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "### storePicture() is called."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 683
    :cond_d
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_1a

    const-string v0, "PhotoSavingRequest: at storePicture."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 684
    :cond_1a
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->log()V

    .line 686
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->getImageData()[B

    move-result-object v0

    if-nez v0, :cond_7d

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->isImageReaderUsing()Z

    move-result v0

    if-eqz v0, :cond_2a

    goto :goto_7d

    :cond_2a
    const-string v0, "### can\'t store a specified image file."

    .line 693
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    const-string v0, "### so, notify a failure of storing the specified image file."

    .line 694
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 696
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mSavingTaskQueueMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->getStorageType()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;

    .line 697
    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->cancel()V

    goto :goto_4c

    .line 700
    :cond_5c
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mStorageManager:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->getStorageType()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateInterval;->IMMEDIATE:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateInterval;

    sget-object v3, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;->STORING_FAILED:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->requestVolumeCheck(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateInterval;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;)V

    .line 702
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mStorageManager:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->getStorageType()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;->STORING_FAILED:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->requestWriteCheck(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;)V

    .line 704
    new-instance v0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$2;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$2;-><init>(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;)V

    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_80

    .line 687
    :cond_7d
    :goto_7d
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->pushPhotoSavingTask(Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;)V

    :goto_80
    return-void
.end method

.method public storeVideo(Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;)V
    .registers 8

    .line 805
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "VideoSavingRequest: at storeVideo."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 806
    :cond_d
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;->log()V

    .line 808
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_34

    .line 809
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;->getFilePath()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 810
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "storeVideo: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 814
    :cond_34
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mStoreVideoThread:Ljava/lang/Thread;

    if-eqz v0, :cond_a8

    .line 815
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_45

    const-string v0, "Another thread has already started."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_45
    const/4 v0, 0x0

    .line 817
    :try_start_46
    sget-boolean v2, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v2, :cond_54

    const-string/jumbo v2, "wait for thread."

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 818
    :cond_54
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mStoreVideoThread:Ljava/lang/Thread;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v2, v3, v4}, Ljava/lang/Thread;->join(J)V

    .line 819
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mStoreVideoThread:Ljava/lang/Thread;

    if-eqz v2, :cond_84

    const-string v2, "storeVideo: mStoreVideoThread timeout."

    .line 821
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 824
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;->getStorageType()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v2

    .line 825
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mStorageManager:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

    sget-object v4, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateInterval;->IMMEDIATE:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateInterval;

    sget-object v5, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;->VIDEO_STORING_COMPLETED:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;

    invoke-virtual {v3, v2, v4, v5}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->requestVolumeCheck(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateInterval;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;)V

    .line 827
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mStorageManager:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

    sget-object v4, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;->VIDEO_STORING_COMPLETED:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;

    .line 828
    invoke-virtual {v3, v2, v4}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->requestWriteCheck(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;)V

    .line 829
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mStorageManager:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

    invoke-virtual {v3, v1, v2}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->checkRemain(ZLcom/sonyericsson/cameracommon/storage/Storage$StorageType;)J
    :try_end_81
    .catch Ljava/lang/InterruptedException; {:try_start_46 .. :try_end_81} :catch_95
    .catchall {:try_start_46 .. :try_end_81} :catchall_93

    .line 836
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mStoreVideoThread:Ljava/lang/Thread;

    return-void

    .line 832
    :cond_84
    :try_start_84
    sget-boolean v2, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v2, :cond_a2

    const-string/jumbo v2, "wait end."

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V
    :try_end_92
    .catch Ljava/lang/InterruptedException; {:try_start_84 .. :try_end_92} :catch_95
    .catchall {:try_start_84 .. :try_end_92} :catchall_93

    goto :goto_a2

    :catchall_93
    move-exception p1

    goto :goto_a5

    .line 834
    :catch_95
    :try_start_95
    sget-boolean v2, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v2, :cond_a2

    const-string v2, "Interrupted."

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V
    :try_end_a2
    .catchall {:try_start_95 .. :try_end_a2} :catchall_93

    .line 836
    :cond_a2
    :goto_a2
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mStoreVideoThread:Ljava/lang/Thread;

    goto :goto_a8

    :goto_a5
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mStoreVideoThread:Ljava/lang/Thread;

    .line 837
    throw p1

    .line 840
    :cond_a8
    :goto_a8
    new-instance v0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavingVideoTask;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavingVideoTask;-><init>(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;)V

    .line 841
    new-instance p1, Ljava/lang/Thread;

    const-string v2, "Store video thread"

    invoke-direct {p1, v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mStoreVideoThread:Ljava/lang/Thread;

    .line 842
    invoke-virtual {p1, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 843
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mStoreVideoThread:Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method
