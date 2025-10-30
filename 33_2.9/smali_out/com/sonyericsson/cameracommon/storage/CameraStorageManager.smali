.class public Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;
.super Ljava/lang/Object;
.source "CameraStorageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$CheckFsDirectoryTask;,
        Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateInterval;,
        Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;,
        Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "CameraStorageManager"

.field private static final THREAD_NAME_CHECK_REMAIN:Ljava/lang/String; = "SM#ChkRemain"

.field private static final THREAD_NAME_CHECK_WRITABLE:Ljava/lang/String; = "SM#ChkWritable"

.field private static final TIMEOUT_CHECK_WRITABLE:I = 0x1388

.field public static final TIMEOUT_GET_STATFS:I = 0xdac

.field public static final TIMEOUT_SEMAPHORE_ACQUIRE_MS:I = 0xfa0


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsApplicationForeground:Z

.field private mLastStorageStates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;",
            "Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;",
            ">;"
        }
    .end annotation
.end field

.field private final mReadyStateLock:Ljava/lang/Object;

.field private mSavingTaskInquiry:Lcom/sonyericsson/cameracommon/storage/SavingTaskInquiry;

.field private final mSlowMotionPathBuilder:Lcom/sonyericsson/cameracommon/storage/SlowMotionPathBuilder;

.field private final mStateLock:Ljava/lang/Object;

.field private mStorageController:Lcom/sonyericsson/cameracommon/storage/StorageController;

.field private mStorageUpdaterMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;",
            "Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater;",
            ">;"
        }
    .end annotation
.end field

.field private mWritableCheckResult:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;",
            "Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/storage/StorageController;)V
    .registers 5

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 139
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mLastStorageStates:Ljava/util/Map;

    .line 143
    new-instance v0, Lcom/sonyericsson/cameracommon/storage/SlowMotionPathBuilder;

    const-string v1, ".mp4"

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/storage/SlowMotionPathBuilder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mSlowMotionPathBuilder:Lcom/sonyericsson/cameracommon/storage/SlowMotionPathBuilder;

    .line 146
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mWritableCheckResult:Ljava/util/Map;

    const/4 v0, 0x0

    .line 152
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mIsApplicationForeground:Z

    .line 157
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mStateLock:Ljava/lang/Object;

    .line 159
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mReadyStateLock:Ljava/lang/Object;

    .line 173
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mContext:Landroid/content/Context;

    .line 174
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mStorageController:Lcom/sonyericsson/cameracommon/storage/StorageController;

    .line 175
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mLastStorageStates:Ljava/util/Map;

    .line 176
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mStorageUpdaterMap:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;)Ljava/util/Map;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mWritableCheckResult:Ljava/util/Map;

    return-object p0
.end method

.method private changeReadyStateTo(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;)Z
    .registers 10

    .line 798
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mStorageController:Lcom/sonyericsson/cameracommon/storage/StorageController;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/storage/StorageController;->getStorageReadyState(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;

    move-result-object v0

    .line 799
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_44

    new-array v1, v3, [Ljava/lang/String;

    .line 800
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "changeReadyStateTo: type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", from = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", to = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Reason = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 806
    :cond_44
    sget-object v1, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$1;->$SwitchMap$com$sonyericsson$cameracommon$storage$Storage$StorageReadyState:[I

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;->ordinal()I

    move-result v4

    aget v1, v1, v4

    if-eq v1, v3, :cond_ca

    const/4 v4, 0x2

    if-eq v1, v4, :cond_b8

    const/4 v4, 0x3

    if-eq v1, v4, :cond_a0

    const/4 p3, 0x4

    if-eq v1, p3, :cond_8b

    const/4 p3, 0x5

    if-eq v1, p3, :cond_76

    new-array p3, v3, [Ljava/lang/String;

    .line 850
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is not supported."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, v2

    invoke-static {p3}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    goto/16 :goto_e1

    .line 842
    :cond_76
    sget-object p3, Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;->SUSPENDED:Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;

    if-ne p2, p3, :cond_86

    .line 843
    iget-object p3, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mStorageUpdaterMap:Ljava/util/Map;

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater;

    invoke-virtual {p3, v2}, Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater;->setAutoUpdateEnabled(Z)V

    goto :goto_db

    .line 845
    :cond_86
    sget-object p3, Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;->PREPARING:Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;

    if-ne p2, p3, :cond_e1

    goto :goto_9f

    .line 834
    :cond_8b
    sget-object p3, Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;->SUSPENDED:Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;

    if-ne p2, p3, :cond_9b

    .line 835
    iget-object p3, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mStorageUpdaterMap:Ljava/util/Map;

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater;

    invoke-virtual {p3, v2}, Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater;->setAutoUpdateEnabled(Z)V

    goto :goto_db

    .line 837
    :cond_9b
    sget-object p3, Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;->COMPLETED:Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;

    if-ne p2, p3, :cond_e1

    :goto_9f
    goto :goto_db

    .line 825
    :cond_a0
    sget-object v0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;->SUSPENDED:Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;

    if-ne p2, v0, :cond_b0

    .line 826
    iget-object p3, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mStorageUpdaterMap:Ljava/util/Map;

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater;

    invoke-virtual {p3, v2}, Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater;->setAutoUpdateEnabled(Z)V

    goto :goto_db

    .line 828
    :cond_b0
    sget-object v0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;->ACCESSIBLE:Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;

    if-ne p2, v0, :cond_e1

    .line 829
    invoke-virtual {p0, p1, p3}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->requestWriteCheck(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;)V

    goto :goto_db

    .line 818
    :cond_b8
    sget-object v0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;->PREPARING:Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;

    if-ne p2, v0, :cond_e1

    .line 819
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mStorageUpdaterMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater;

    sget-object v1, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateInterval;->IMMEDIATE:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateInterval;

    invoke-virtual {v0, v1, p3}, Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater;->requestVolumeCheck(Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateInterval;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;)V

    goto :goto_db

    .line 808
    :cond_ca
    sget-object v0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;->PREPARING:Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;

    if-ne p2, v0, :cond_dd

    .line 809
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mStorageUpdaterMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater;

    sget-object v1, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateInterval;->IMMEDIATE:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateInterval;

    invoke-virtual {v0, v1, p3}, Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater;->requestVolumeCheck(Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateInterval;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;)V

    :goto_db
    move v2, v3

    goto :goto_e1

    .line 813
    :cond_dd
    sget-boolean p3, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-nez p3, :cond_ee

    :cond_e1
    :goto_e1
    if-eqz v2, :cond_ed

    .line 855
    iget-object p3, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mStorageController:Lcom/sonyericsson/cameracommon/storage/StorageController;

    invoke-virtual {p3, p1, p2}, Lcom/sonyericsson/cameracommon/storage/StorageController;->setStorageReadyState(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;)V

    .line 856
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mStorageController:Lcom/sonyericsson/cameracommon/storage/StorageController;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/storage/StorageController;->checkAndNotifyReadyStateChanged(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)V

    :cond_ed
    return v2

    .line 814
    :cond_ee
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Incorrect state : "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private decideForceFsWritingCheck(Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;)Z
    .registers 2

    .line 449
    sget-object p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$1;->$SwitchMap$com$sonyericsson$cameracommon$storage$CameraStorageManager$UpdateRequestReason:[I

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x2

    if-eq p0, p1, :cond_13

    const/4 p1, 0x3

    if-eq p0, p1, :cond_13

    const/4 p1, 0x5

    if-eq p0, p1, :cond_13

    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method

.method private getLastStorageState(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;
    .registers 2

    .line 581
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mLastStorageStates:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    return-object p0
.end method

.method private getNextStateFromRemain(J)Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;
    .registers 5

    const-wide/32 v0, 0x25800

    cmp-long p0, p1, v0

    if-lez p0, :cond_a

    .line 519
    sget-object p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_READY:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    goto :goto_16

    :cond_a
    const-wide/32 v0, 0xf000

    cmp-long p0, p1, v0

    if-lez p0, :cond_14

    .line 521
    sget-object p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_READY_LOW:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    goto :goto_16

    .line 523
    :cond_14
    sget-object p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_ERR_FULL:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    .line 526
    :goto_16
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_36

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    const/4 p2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getNextStateFromRemain() newState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, p2

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_36
    return-object p0
.end method

.method private getNextStateFromVolume(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;
    .registers 6

    .line 417
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mContext:Landroid/content/Context;

    invoke-static {p1, p0}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->getVolumeState(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 418
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_30

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNextStateFromVolume() storage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " , volume state = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_30
    const-string p1, "bad_removal"

    .line 422
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3b

    .line 423
    sget-object p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_ERR_NO_MEMORY_CARD:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    goto :goto_95

    :cond_3b
    const-string p1, "mounted_ro"

    .line 424
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_46

    .line 425
    sget-object p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_ERR_READ_ONLY:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    goto :goto_95

    :cond_46
    const-string p1, "removed"

    .line 426
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_51

    .line 427
    sget-object p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_ERR_NO_MEMORY_CARD:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    goto :goto_95

    :cond_51
    const-string p1, "shared"

    .line 428
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5c

    .line 429
    sget-object p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_ERR_SHARED:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    goto :goto_95

    :cond_5c
    const-string p1, "unmountable"

    .line 430
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_67

    .line 431
    sget-object p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_ERR_FORMAT:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    goto :goto_95

    :cond_67
    const-string p1, "unmounted"

    .line 432
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_72

    .line 433
    sget-object p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_ERR_NO_MEMORY_CARD:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    goto :goto_95

    :cond_72
    const-string p1, "checking"

    .line 434
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7d

    .line 435
    sget-object p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_CHECKING:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    goto :goto_95

    :cond_7d
    const-string p1, "mounted"

    .line 436
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_88

    .line 437
    sget-object p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_READY:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    goto :goto_95

    :cond_88
    const-string p1, "ejecting"

    .line 438
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_93

    .line 439
    sget-object p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_ERR_NO_MEMORY_CARD:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    goto :goto_95

    .line 441
    :cond_93
    sget-object p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_ERR_ACCESS:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    :goto_95
    return-object p0
.end method

.method private getNextStateFromWritable(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;
    .registers 7

    const-string v0, "SM#ChkWritable"

    .line 464
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/ThreadUtil;->buildExecutor(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 465
    new-instance v1, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$CheckFsDirectoryTask;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2, p1}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$CheckFsDirectoryTask;-><init>(Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;Landroid/content/Context;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)V

    .line 466
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    const/4 v1, 0x1

    .line 470
    :try_start_12
    sget-object v2, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->INTERNAL:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    if-ne p1, v2, :cond_1d

    .line 472
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    goto :goto_27

    :cond_1d
    const-wide/16 v2, 0x1388

    .line 475
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v2, v3, v4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;
    :try_end_27
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_27} :catch_30
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_12 .. :try_end_27} :catch_30
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_12 .. :try_end_27} :catch_30
    .catchall {:try_start_12 .. :try_end_27} :catchall_2e

    .line 481
    :goto_27
    invoke-interface {p0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 482
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    goto :goto_4a

    :catchall_2e
    move-exception p1

    goto :goto_4b

    :catch_30
    move-exception v2

    .line 478
    :try_start_31
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNextStateFromWritable: timed out or fatal error, type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 479
    sget-object v2, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_ERR_TIMED_OUT:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;
    :try_end_49
    .catchall {:try_start_31 .. :try_end_49} :catchall_2e

    goto :goto_27

    :goto_4a
    return-object v2

    .line 481
    :goto_4b
    invoke-interface {p0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 482
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 483
    throw p1
.end method

.method private isReadable(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 667
    :cond_4
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mLastStorageStates:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    .line 668
    sget-object p1, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$1;->$SwitchMap$com$sonyericsson$cameracommon$storage$CameraStorageManager$DetailStorageState:[I

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->ordinal()I

    move-result p0

    aget p0, p1, p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_24

    const/4 v1, 0x2

    if-eq p0, v1, :cond_24

    const/4 v1, 0x3

    if-eq p0, v1, :cond_24

    const/4 v1, 0x4

    if-eq p0, v1, :cond_24

    const/4 v1, 0x5

    if-eq p0, v1, :cond_24

    return v0

    :cond_24
    return p1
.end method

.method private isWritableCheckNeeded(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 688
    :cond_4
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mLastStorageStates:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    .line 689
    sget-object p1, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$1;->$SwitchMap$com$sonyericsson$cameracommon$storage$CameraStorageManager$DetailStorageState:[I

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->ordinal()I

    move-result p0

    aget p0, p1, p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_21

    const/4 v1, 0x2

    if-eq p0, v1, :cond_21

    const/4 v1, 0x3

    if-eq p0, v1, :cond_21

    const/4 v1, 0x4

    if-eq p0, v1, :cond_21

    return v0

    :cond_21
    return p1
.end method

.method private logStorageState()V
    .registers 9

    .line 542
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_64

    .line 543
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 545
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mLastStorageStates:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_4a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    .line 546
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mLastStorageStates:Ljava/util/Map;

    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v3, v5

    goto :goto_15

    :cond_4a
    new-array p0, v5, [Ljava/lang/String;

    .line 549
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "logStorageState "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p0, v2

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->v([Ljava/lang/String;)V

    :cond_64
    return-void
.end method

.method private setLastStorageState(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;)V
    .registers 7

    .line 532
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_2a

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 533
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateLastStorageState storage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 536
    :cond_2a
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mLastStorageStates:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_36

    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->logStorageState()V

    .line 538
    :cond_36
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mStorageController:Lcom/sonyericsson/cameracommon/storage/StorageController;

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/cameracommon/storage/StorageController;->setStorageState(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;)V

    return-void
.end method


# virtual methods
.method public calculateNextPollingInterval(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateInterval;
    .registers 2

    .line 753
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mStorageController:Lcom/sonyericsson/cameracommon/storage/StorageController;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/storage/StorageController;->getAvailableStorageSize(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateInterval;->decide(J)Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateInterval;

    move-result-object p0

    return-object p0
.end method

.method public checkAndNotifyStateChanged(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)V
    .registers 6

    .line 576
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_20

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkAndNotifyStateChanged : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 577
    :cond_20
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mStorageController:Lcom/sonyericsson/cameracommon/storage/StorageController;

    invoke-virtual {p0, p1, v1}, Lcom/sonyericsson/cameracommon/storage/StorageController;->checkAndNotifyStateChanged(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Z)V

    return-void
.end method

.method public checkRemain(ZLcom/sonyericsson/cameracommon/storage/Storage$StorageType;)J
    .registers 7

    .line 564
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_20

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 565
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkRemain: storage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 566
    :cond_20
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mStorageController:Lcom/sonyericsson/cameracommon/storage/StorageController;

    invoke-virtual {v0, p2, p1}, Lcom/sonyericsson/cameracommon/storage/StorageController;->checkAndNotifyStateChanged(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Z)V

    .line 567
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mStorageController:Lcom/sonyericsson/cameracommon/storage/StorageController;

    invoke-virtual {p0, p2}, Lcom/sonyericsson/cameracommon/storage/StorageController;->getAvailableStorageSize(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)J

    move-result-wide p0

    return-wide p0
.end method

.method public declared-synchronized doPause()V
    .registers 6

    monitor-enter p0

    .line 778
    :try_start_1
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mReadyStateLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_3a

    const/4 v1, 0x0

    .line 779
    :try_start_5
    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mIsApplicationForeground:Z

    .line 780
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_37

    .line 782
    :try_start_8
    invoke-static {}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->getMountableStorageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    .line 784
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mReadyStateLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_3a

    .line 785
    :try_start_1f
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mStorageController:Lcom/sonyericsson/cameracommon/storage/StorageController;

    invoke-virtual {v3, v1}, Lcom/sonyericsson/cameracommon/storage/StorageController;->getStorageReadyState(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;

    move-result-object v3

    sget-object v4, Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;->COMPLETED:Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;

    if-ne v3, v4, :cond_30

    .line 786
    sget-object v3, Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;->SUSPENDED:Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;

    sget-object v4, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;->APP_CLOSE:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;

    invoke-direct {p0, v1, v3, v4}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->changeReadyStateTo(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;)Z

    .line 789
    :cond_30
    monitor-exit v2

    goto :goto_10

    :catchall_32
    move-exception v0

    monitor-exit v2
    :try_end_34
    .catchall {:try_start_1f .. :try_end_34} :catchall_32

    :try_start_34
    throw v0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_3a

    .line 791
    :cond_35
    monitor-exit p0

    return-void

    :catchall_37
    move-exception v1

    .line 780
    :try_start_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    :try_start_39
    throw v1
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_3a

    :catchall_3a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized doResume()V
    .registers 7

    monitor-enter p0

    :try_start_1
    const-string v0, "doResume"

    .line 757
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 758
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mReadyStateLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_55

    .line 759
    :try_start_d
    iget-boolean v1, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mIsApplicationForeground:Z

    if-eqz v1, :cond_14

    .line 760
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_52

    monitor-exit p0

    return-void

    :cond_14
    const/4 v1, 0x1

    .line 762
    :try_start_15
    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mIsApplicationForeground:Z

    .line 763
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_52

    .line 765
    :try_start_18
    invoke-static {}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->getMountableStorageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_50

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    .line 766
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mReadyStateLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_2f
    .catchall {:try_start_18 .. :try_end_2f} :catchall_55

    .line 767
    :try_start_2f
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mStorageController:Lcom/sonyericsson/cameracommon/storage/StorageController;

    invoke-virtual {v4, v2}, Lcom/sonyericsson/cameracommon/storage/StorageController;->getStorageReadyState(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;

    move-result-object v4

    sget-object v5, Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;->SUSPENDED:Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;

    if-ne v4, v5, :cond_40

    .line 768
    sget-object v4, Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;->PREPARING:Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;

    sget-object v5, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;->APP_LAUNCH:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;

    invoke-direct {p0, v2, v4, v5}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->changeReadyStateTo(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;)Z

    .line 771
    :cond_40
    monitor-exit v3
    :try_end_41
    .catchall {:try_start_2f .. :try_end_41} :catchall_4d

    .line 773
    :try_start_41
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mStorageUpdaterMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater;

    invoke-virtual {v2, v1}, Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater;->setAutoUpdateEnabled(Z)V
    :try_end_4c
    .catchall {:try_start_41 .. :try_end_4c} :catchall_55

    goto :goto_20

    :catchall_4d
    move-exception v0

    .line 771
    :try_start_4e
    monitor-exit v3
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    :try_start_4f
    throw v0
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_55

    .line 775
    :cond_50
    monitor-exit p0

    return-void

    :catchall_52
    move-exception v1

    .line 763
    :try_start_53
    monitor-exit v0
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    :try_start_54
    throw v1
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_55

    :catchall_55
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getReadableStorageVolumes()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 709
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 710
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mLastStorageStates:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    .line 711
    invoke-direct {p0, v2}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->isReadable(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 712
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->getVolume(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 714
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_2d
    return-object v0
.end method

.method public getSlowMotionPath(Ljava/lang/String;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Ljava/lang/String;
    .registers 5

    .line 736
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 737
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mSlowMotionPathBuilder:Lcom/sonyericsson/cameracommon/storage/SlowMotionPathBuilder;

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/sonyericsson/cameracommon/storage/SlowMotionPathBuilder;->get(Ljava/lang/String;JLcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getStatFs(Ljava/lang/String;)Landroid/os/StatFs;
    .registers 8

    const-string p0, "GetStatFsTask failed."

    .line 592
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_22

    new-array v0, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getStatFs: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_22
    const-string v0, "SM#ChkRemain"

    .line 595
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/ThreadUtil;->buildExecutor(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 596
    new-instance v2, Lcom/sonyericsson/cameracommon/storage/StorageUtil$GetStatFsTask;

    invoke-direct {v2, p1}, Lcom/sonyericsson/cameracommon/storage/StorageUtil$GetStatFsTask;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    const/4 v2, 0x0

    const-wide/16 v3, 0xdac

    .line 601
    :try_start_34
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v3, v4, v5}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/StatFs;
    :try_end_3c
    .catch Ljava/lang/InterruptedException; {:try_start_34 .. :try_end_3c} :catch_50
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_34 .. :try_end_3c} :catch_4b
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_34 .. :try_end_3c} :catch_46
    .catchall {:try_start_34 .. :try_end_3c} :catchall_44

    .line 609
    invoke-interface {p1, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 610
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    move-object v2, v3

    goto :goto_5c

    :catchall_44
    move-exception p0

    goto :goto_5d

    :catch_46
    move-exception v3

    .line 607
    :try_start_47
    invoke-static {p0, v3}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_56

    :catch_4b
    move-exception v3

    .line 605
    invoke-static {p0, v3}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_56

    :catch_50
    move-exception p0

    const-string v3, "GetStatFsTask has been interrupted."

    .line 603
    invoke-static {v3, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_56
    .catchall {:try_start_47 .. :try_end_56} :catchall_44

    .line 609
    :goto_56
    invoke-interface {p1, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 610
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :goto_5c
    return-object v2

    .line 609
    :goto_5d
    invoke-interface {p1, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 610
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 611
    throw p0
.end method

.method initialize(Lcom/sonyericsson/cameracommon/storage/SavingTaskInquiry;Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/cameracommon/storage/SavingTaskInquiry;",
            "Ljava/util/Map<",
            "Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;",
            "Ljava/util/concurrent/Semaphore;",
            ">;)V"
        }
    .end annotation

    .line 188
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "CameraStorageManager initialize"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 189
    :cond_d
    sget-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->STORAGE_MANAGER_SETUP:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/PerfLog;->begin()V

    .line 191
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mStorageController:Lcom/sonyericsson/cameracommon/storage/StorageController;

    sget-object v1, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->EXTERNAL_CARD:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonyericsson/cameracommon/storage/StorageController;->setAvailableStorageSize(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;J)V

    .line 192
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mStorageController:Lcom/sonyericsson/cameracommon/storage/StorageController;

    sget-object v1, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->INTERNAL:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonyericsson/cameracommon/storage/StorageController;->setAvailableStorageSize(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;J)V

    .line 194
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mLastStorageStates:Ljava/util/Map;

    .line 195
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mSavingTaskInquiry:Lcom/sonyericsson/cameracommon/storage/SavingTaskInquiry;

    .line 197
    invoke-static {}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->getMountableStorageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_33
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    .line 198
    new-instance v2, Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater;

    .line 199
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Semaphore;

    invoke-direct {v2, v1, p0, p1, v3}, Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater;-><init>(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;Lcom/sonyericsson/cameracommon/storage/SavingTaskInquiry;Ljava/util/concurrent/Semaphore;)V

    .line 201
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mStorageUpdaterMap:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mReadyStateLock:Ljava/lang/Object;

    monitor-enter v2

    .line 203
    :try_start_52
    sget-object v3, Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;->PREPARING:Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;

    sget-object v4, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;->APP_LAUNCH:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;

    invoke-direct {p0, v1, v3, v4}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->changeReadyStateTo(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;)Z

    .line 205
    monitor-exit v2

    goto :goto_33

    :catchall_5b
    move-exception p0

    monitor-exit v2
    :try_end_5d
    .catchall {:try_start_52 .. :try_end_5d} :catchall_5b

    throw p0

    .line 208
    :cond_5e
    sget-object p0, Lcom/sonyericsson/android/camera/util/PerfLog;->STORAGE_MANAGER_SETUP:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/PerfLog;->end()V

    return-void
.end method

.method public release()V
    .registers 4

    .line 722
    invoke-static {}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->getMountableStorageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    .line 723
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mStorageUpdaterMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater;->release()V

    goto :goto_8

    .line 725
    :cond_20
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mStorageController:Lcom/sonyericsson/cameracommon/storage/StorageController;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/storage/StorageController;->release()V

    return-void
.end method

.method public requestVolumeCheck(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateInterval;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;)V
    .registers 4

    .line 253
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mStorageUpdaterMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater;

    invoke-virtual {p0, p2, p3}, Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater;->requestVolumeCheck(Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateInterval;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;)V

    return-void
.end method

.method public requestWriteCheck(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;)V
    .registers 3

    .line 262
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mStorageUpdaterMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater;

    invoke-virtual {p0, p2}, Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater;->requestWriteCheck(Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;)V

    return-void
.end method

.method public updateAvailableStorageSize(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;J)J
    .registers 13

    .line 625
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->getPathFromType(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_27

    new-array p0, v4, [Ljava/lang/String;

    .line 627
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Storage is not mounted. : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v3

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return-wide v1

    .line 630
    :cond_27
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->getStatFs(Ljava/lang/String;)Landroid/os/StatFs;

    move-result-object v5

    if-nez v5, :cond_48

    new-array p0, v4, [Ljava/lang/String;

    .line 634
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to get StatFs: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v3

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return-wide v1

    .line 639
    :cond_48
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mContext:Landroid/content/Context;

    invoke-static {p1, p0}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->getVolumeState(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "mounted"

    .line 640
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_57

    return-wide v1

    .line 644
    :cond_57
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide p0

    .line 645
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v5

    .line 647
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_7d

    new-array v0, v4, [Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getAvailableSize size: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v3

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 648
    :cond_7d
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_9b

    new-array v0, v4, [Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getAvailableSize num: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v3

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_9b
    mul-long/2addr p0, v5

    sub-long/2addr p0, p2

    const-wide/16 p2, 0x400

    .line 651
    div-long/2addr p0, p2

    invoke-static {v1, v2, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    .line 652
    sget-boolean p2, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p2, :cond_c2

    new-array p2, v4, [Ljava/lang/String;

    .line 653
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getAvailableSize total[KB]: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, v3

    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_c2
    return-wide p0
.end method

.method public declared-synchronized updateStateByVolumeInfo(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;JLcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;)Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;
    .registers 15

    monitor-enter p0

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 335
    :try_start_4
    sget-boolean v3, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_38

    new-array v3, v5, [Ljava/lang/String;

    .line 336
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "invoke: type = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", reservedSize = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", reason = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 340
    :cond_38
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mStateLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_3b
    .catchall {:try_start_4 .. :try_end_3b} :catchall_f1

    .line 341
    :try_start_3b
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->getLastStorageState(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    move-result-object v6

    .line 342
    sget-boolean v7, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v7, :cond_5d

    new-array v7, v5, [Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "lastState = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-static {v7}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_5d
    if-eqz v6, :cond_8a

    .line 343
    sget-object v4, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_READY:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    if-eq v6, v4, :cond_8a

    sget-object v4, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_READY_LOW:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    if-eq v6, v4, :cond_8a

    sget-object v4, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_ERR_FULL:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    if-eq v6, v4, :cond_8a

    .line 348
    sget-object v4, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$1;->$SwitchMap$com$sonyericsson$cameracommon$storage$CameraStorageManager$UpdateRequestReason:[I

    invoke-virtual {p4}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;->ordinal()I

    move-result v7

    aget v4, v4, v7

    if-eq v4, v5, :cond_80

    const/4 v5, 0x2

    if-eq v4, v5, :cond_8a

    const/4 v5, 0x3

    if-eq v4, v5, :cond_8a

    const/4 v5, 0x4

    if-eq v4, v5, :cond_8a

    move-object v2, v6

    goto :goto_8a

    .line 350
    :cond_80
    sget-object v4, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_ERR_READ_ONLY:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    if-eq v6, v4, :cond_88

    sget-object v4, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_ERR_TIMED_OUT:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    if-ne v6, v4, :cond_8a

    .line 353
    :cond_88
    sget-object p4, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;->APP_LAUNCH_WITH_UNTRUSTED:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;

    .line 367
    :cond_8a
    :goto_8a
    sget-object v4, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->EXTERNAL_CARD:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    if-ne p1, v4, :cond_98

    .line 368
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->isExistRemovableStorage(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_98

    .line 369
    sget-object v2, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_ERR_NO_MEMORY_CARD:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    :cond_98
    if-nez v2, :cond_c5

    .line 375
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->getNextStateFromVolume(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    move-result-object v2

    .line 378
    sget-object v4, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;->RECEIVE_STORAGE_EJECTED:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;

    if-ne p4, v4, :cond_af

    .line 379
    sget-object v4, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_ERR_NO_MEMORY_CARD:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    invoke-virtual {v2, v4}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ad

    .line 380
    sget-object v2, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_ERR_NO_MEMORY_CARD:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    goto :goto_af

    .line 382
    :cond_ad
    sget-object v2, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_ERR_SHARED:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    .line 387
    :cond_af
    :goto_af
    sget-object v4, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_READY:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    if-eq v2, v4, :cond_b7

    sget-object v4, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_READY_LOW:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    if-ne v2, v4, :cond_c0

    .line 389
    :cond_b7
    invoke-virtual {p0, p1, p2, p3}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->updateAvailableStorageSize(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;J)J

    move-result-wide v0

    .line 390
    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->getNextStateFromRemain(J)Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    move-result-object p2

    move-object v2, p2

    .line 394
    :cond_c0
    iget-object p2, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mStorageController:Lcom/sonyericsson/cameracommon/storage/StorageController;

    invoke-virtual {p2, p1, v0, v1}, Lcom/sonyericsson/cameracommon/storage/StorageController;->setAvailableStorageSize(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;J)V

    .line 398
    :cond_c5
    invoke-direct {p0, p1, v2}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->setLastStorageState(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;)V

    .line 400
    iget-object p2, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mReadyStateLock:Ljava/lang/Object;

    monitor-enter p2
    :try_end_cb
    .catchall {:try_start_3b .. :try_end_cb} :catchall_ee

    .line 401
    :try_start_cb
    iget-boolean p3, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mIsApplicationForeground:Z

    if-eqz p3, :cond_d5

    .line 402
    sget-object p3, Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;->ACCESSIBLE:Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;

    invoke-direct {p0, p1, p3, p4}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->changeReadyStateTo(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;)Z

    goto :goto_da

    .line 404
    :cond_d5
    sget-object p3, Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;->SUSPENDED:Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;

    invoke-direct {p0, p1, p3, p4}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->changeReadyStateTo(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;)Z

    .line 406
    :goto_da
    monitor-exit p2
    :try_end_db
    .catchall {:try_start_cb .. :try_end_db} :catchall_eb

    .line 408
    :try_start_db
    sget-object p2, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;->RECEIVE_STORAGE_MOUNTED:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;

    if-ne p4, p2, :cond_e8

    .line 409
    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->calculateNextPollingInterval(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateInterval;

    move-result-object p2

    sget-object p3, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;->PERIODIC_UPDATE:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->requestVolumeCheck(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateInterval;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;)V

    .line 412
    :cond_e8
    monitor-exit v3
    :try_end_e9
    .catchall {:try_start_db .. :try_end_e9} :catchall_ee

    .line 413
    monitor-exit p0

    return-object v2

    :catchall_eb
    move-exception p1

    .line 406
    :try_start_ec
    monitor-exit p2
    :try_end_ed
    .catchall {:try_start_ec .. :try_end_ed} :catchall_eb

    :try_start_ed
    throw p1

    :catchall_ee
    move-exception p1

    .line 412
    monitor-exit v3
    :try_end_f0
    .catchall {:try_start_ed .. :try_end_f0} :catchall_ee

    :try_start_f0
    throw p1
    :try_end_f1
    .catchall {:try_start_f0 .. :try_end_f1} :catchall_f1

    :catchall_f1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public updateStorageState(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;)V
    .registers 6

    .line 272
    sget-object v0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;->RECEIVE_STORAGE_MOUNTED:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;

    if-ne p2, v0, :cond_11

    .line 273
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mReadyStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 274
    :try_start_7
    sget-object v1, Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;->PREPARING:Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;

    invoke-direct {p0, p1, v1, p2}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->changeReadyStateTo(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;)Z

    .line 275
    monitor-exit v0

    goto :goto_11

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw p0

    :cond_11
    :goto_11
    const-wide/16 v0, 0x0

    .line 278
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mSavingTaskInquiry:Lcom/sonyericsson/cameracommon/storage/SavingTaskInquiry;

    if-eqz v2, :cond_1c

    .line 279
    invoke-interface {v2, p1}, Lcom/sonyericsson/cameracommon/storage/SavingTaskInquiry;->getReservedSize(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)J

    move-result-wide v0

    goto :goto_25

    :cond_1c
    const-string v2, "called before initializing."

    .line 283
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    .line 285
    :goto_25
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->updateStateByVolumeInfo(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;JLcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;)Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    .line 286
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->updateStorageStateByWriting(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;)V

    return-void
.end method

.method updateStorageStateByAction(Ljava/lang/String;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)V
    .registers 5

    .line 222
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mStorageUpdaterMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater;->getAccessSemaphore()Ljava/util/concurrent/Semaphore;

    move-result-object v0

    .line 227
    :try_start_c
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    .line 229
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 230
    sget-object p1, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;->RECEIVE_STORAGE_MOUNTED:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;

    goto :goto_27

    :cond_1a
    const-string v1, "android.intent.action.MEDIA_EJECT"

    .line 231
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_25

    .line 232
    sget-object p1, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;->RECEIVE_STORAGE_EJECTED:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;

    goto :goto_27

    .line 234
    :cond_25
    sget-object p1, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;->RECEIVE_OTHER_ACTION:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;

    .line 236
    :goto_27
    invoke-virtual {p0, p2, p1}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->updateStorageState(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;)V

    .line 237
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mStorageController:Lcom/sonyericsson/cameracommon/storage/StorageController;

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, Lcom/sonyericsson/cameracommon/storage/StorageController;->checkAndNotifyStateChanged(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Z)V

    .line 238
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_33
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_33} :catch_34

    goto :goto_3d

    :catch_34
    const-string p0, "Failed to acquire of storage access permit."

    .line 241
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    :goto_3d
    return-void
.end method

.method public declared-synchronized updateStorageStateByWriting(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;)V
    .registers 11

    monitor-enter p0

    .line 297
    :try_start_1
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2c

    new-array v0, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateStorageStateByWriting StorageType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", reason = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 300
    :cond_2c
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mStateLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_92

    .line 301
    :try_start_2f
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->getLastStorageState(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    move-result-object v3

    .line 302
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->isWritableCheckNeeded(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z

    move-result v4

    .line 303
    sget-boolean v5, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v5, :cond_55

    new-array v5, v2, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isWritable: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v5}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_55
    if-eqz v4, :cond_6e

    .line 305
    invoke-direct {p0, p2}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->decideForceFsWritingCheck(Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;)Z

    move-result v1

    if-eqz v1, :cond_62

    .line 307
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mWritableCheckResult:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    :cond_62
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->getNextStateFromWritable(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    move-result-object v1

    .line 311
    sget-object v4, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_READY:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    if-eq v1, v4, :cond_6b

    move-object v3, v1

    .line 315
    :cond_6b
    invoke-direct {p0, p1, v3}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->setLastStorageState(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;)V

    .line 317
    :cond_6e
    monitor-exit v0
    :try_end_6f
    .catchall {:try_start_2f .. :try_end_6f} :catchall_8f

    .line 319
    :try_start_6f
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mReadyStateLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_72
    .catchall {:try_start_6f .. :try_end_72} :catchall_92

    .line 320
    :try_start_72
    iget-boolean v1, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mIsApplicationForeground:Z

    if-eqz v1, :cond_84

    .line 321
    sget-object v1, Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;->COMPLETED:Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;

    invoke-direct {p0, p1, v1, p2}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->changeReadyStateTo(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;)Z

    move-result p2

    if-eqz p2, :cond_89

    .line 322
    iget-object p2, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mStorageController:Lcom/sonyericsson/cameracommon/storage/StorageController;

    invoke-virtual {p2, p1, v2}, Lcom/sonyericsson/cameracommon/storage/StorageController;->checkAndNotifyStateChanged(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Z)V

    goto :goto_89

    .line 325
    :cond_84
    sget-object v1, Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;->SUSPENDED:Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;

    invoke-direct {p0, p1, v1, p2}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->changeReadyStateTo(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;)Z

    .line 327
    :cond_89
    :goto_89
    monitor-exit v0
    :try_end_8a
    .catchall {:try_start_72 .. :try_end_8a} :catchall_8c

    .line 329
    monitor-exit p0

    return-void

    :catchall_8c
    move-exception p1

    .line 327
    :try_start_8d
    monitor-exit v0
    :try_end_8e
    .catchall {:try_start_8d .. :try_end_8e} :catchall_8c

    :try_start_8e
    throw p1
    :try_end_8f
    .catchall {:try_start_8e .. :try_end_8f} :catchall_92

    :catchall_8f
    move-exception p1

    .line 317
    :try_start_90
    monitor-exit v0
    :try_end_91
    .catchall {:try_start_90 .. :try_end_91} :catchall_8f

    :try_start_91
    throw p1
    :try_end_92
    .catchall {:try_start_91 .. :try_end_92} :catchall_92

    :catchall_92
    move-exception p1

    monitor-exit p0

    throw p1
.end method
