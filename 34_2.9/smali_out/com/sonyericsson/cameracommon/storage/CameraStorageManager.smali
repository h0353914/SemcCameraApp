.class public Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;
.super Ljava/lang/Object;
.source "CameraStorageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;,
        Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateInterval;,
        Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;,
        Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$CheckFsDirectoryTask;
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
.method static bridge synthetic -$$Nest$fgetmWritableCheckResult(Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mWritableCheckResult:Ljava/util/Map;

    return-object p0
.end method

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

.method private changeReadyStateTo(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;)Z
    .registers 9

    .line 798
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mStorageController:Lcom/sonyericsson/cameracommon/storage/StorageController;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/storage/StorageController;->getStorageReadyState(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;

    move-result-object v0

    .line 799
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_3e

    .line 800
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "changeReadyStateTo: type = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", from = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", to = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Reason = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 806
    :cond_3e
    sget-object v1, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$1;->$SwitchMap$com$sonyericsson$cameracommon$storage$Storage$StorageReadyState:[I

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_c6

    const/4 v4, 0x2

    if-eq v1, v4, :cond_b4

    const/4 v4, 0x3

    if-eq v1, v4, :cond_9c

    const/4 p3, 0x4

    if-eq v1, p3, :cond_87

    const/4 p3, 0x5

    if-eq v1, p3, :cond_72

    .line 850
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, " is not supported."

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    goto/16 :goto_dd

    .line 842
    :cond_72
    sget-object p3, Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;->SUSPENDED:Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;

    if-ne p2, p3, :cond_82

    .line 843
    iget-object p3, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mStorageUpdaterMap:Ljava/util/Map;

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater;

    invoke-virtual {p3, v2}, Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater;->setAutoUpdateEnabled(Z)V

    goto :goto_d7

    .line 845
    :cond_82
    sget-object p3, Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;->PREPARING:Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;

    if-ne p2, p3, :cond_dd

    goto :goto_9b

    .line 834
    :cond_87
    sget-object p3, Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;->SUSPENDED:Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;

    if-ne p2, p3, :cond_97

    .line 835
    iget-object p3, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mStorageUpdaterMap:Ljava/util/Map;

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater;

    invoke-virtual {p3, v2}, Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater;->setAutoUpdateEnabled(Z)V

    goto :goto_d7

    .line 837
    :cond_97
    sget-object p3, Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;->COMPLETED:Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;

    if-ne p2, p3, :cond_dd

    :goto_9b
    goto :goto_d7

    .line 825
    :cond_9c
    sget-object v0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;->SUSPENDED:Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;

    if-ne p2, v0, :cond_ac

    .line 826
    iget-object p3, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mStorageUpdaterMap:Ljava/util/Map;

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater;

    invoke-virtual {p3, v2}, Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater;->setAutoUpdateEnabled(Z)V

    goto :goto_d7

    .line 828
    :cond_ac
    sget-object v0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;->ACCESSIBLE:Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;

    if-ne p2, v0, :cond_dd

    .line 829
    invoke-virtual {p0, p1, p3}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->requestWriteCheck(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;)V

    goto :goto_d7

    .line 818
    :cond_b4
    sget-object v0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;->PREPARING:Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;

    if-ne p2, v0, :cond_dd

    .line 819
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mStorageUpdaterMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater;

    sget-object v1, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateInterval;->IMMEDIATE:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateInterval;

    invoke-virtual {v0, v1, p3}, Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater;->requestVolumeCheck(Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateInterval;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;)V

    goto :goto_d7

    .line 808
    :cond_c6
    sget-object v0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;->PREPARING:Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;

    if-ne p2, v0, :cond_d9

    .line 809
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mStorageUpdaterMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater;

    sget-object v1, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateInterval;->IMMEDIATE:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateInterval;

    invoke-virtual {v0, v1, p3}, Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater;->requestVolumeCheck(Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateInterval;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;)V

    :goto_d7
    move v2, v3

    goto :goto_dd

    .line 813
    :cond_d9
    sget-boolean p3, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-nez p3, :cond_ea

    :cond_dd
    :goto_dd
    if-eqz v2, :cond_e9

    .line 855
    iget-object p3, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mStorageController:Lcom/sonyericsson/cameracommon/storage/StorageController;

    invoke-virtual {p3, p1, p2}, Lcom/sonyericsson/cameracommon/storage/StorageController;->setStorageReadyState(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;)V

    .line 856
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mStorageController:Lcom/sonyericsson/cameracommon/storage/StorageController;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/storage/StorageController;->checkAndNotifyReadyStateChanged(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)V

    :cond_e9
    return v2

    .line 814
    :cond_ea
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Incorrect state : "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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

    if-eqz p1, :cond_30

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "getNextStateFromRemain() newState = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_30
    return-object p0
.end method

.method private getNextStateFromVolume(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;
    .registers 4

    .line 417
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mContext:Landroid/content/Context;

    invoke-static {p1, p0}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->getVolumeState(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 418
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_2a

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getNextStateFromVolume() storage = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " , volume state = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 422
    :cond_2a
    const-string p1, "bad_removal"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_35

    .line 423
    sget-object p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_ERR_NO_MEMORY_CARD:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    goto :goto_92

    .line 424
    :cond_35
    const-string p1, "mounted_ro"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_40

    .line 425
    sget-object p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_ERR_READ_ONLY:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    goto :goto_92

    .line 426
    :cond_40
    const-string p1, "removed"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4b

    .line 427
    sget-object p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_ERR_NO_MEMORY_CARD:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    goto :goto_92

    .line 428
    :cond_4b
    const-string/jumbo p1, "shared"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_57

    .line 429
    sget-object p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_ERR_SHARED:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    goto :goto_92

    .line 430
    :cond_57
    const-string/jumbo p1, "unmountable"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_63

    .line 431
    sget-object p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_ERR_FORMAT:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    goto :goto_92

    .line 432
    :cond_63
    const-string/jumbo p1, "unmounted"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6f

    .line 433
    sget-object p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_ERR_NO_MEMORY_CARD:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    goto :goto_92

    .line 434
    :cond_6f
    const-string p1, "checking"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7a

    .line 435
    sget-object p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_CHECKING:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    goto :goto_92

    .line 436
    :cond_7a
    const-string p1, "mounted"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_85

    .line 437
    sget-object p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_READY:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    goto :goto_92

    .line 438
    :cond_85
    const-string p1, "ejecting"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_90

    .line 439
    sget-object p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_ERR_NO_MEMORY_CARD:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    goto :goto_92

    .line 441
    :cond_90
    sget-object p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_ERR_ACCESS:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    :goto_92
    return-object p0
.end method

.method private getNextStateFromWritable(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;
    .registers 8

    const-string v0, "getNextStateFromWritable: timed out or fatal error, type = "

    .line 464
    const-string v1, "SM#ChkWritable"

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/ThreadUtil;->buildExecutor(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    .line 465
    new-instance v2, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$CheckFsDirectoryTask;

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3, p1}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$CheckFsDirectoryTask;-><init>(Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;Landroid/content/Context;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)V

    .line 466
    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    const/4 v2, 0x1

    .line 470
    :try_start_14
    sget-object v3, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->INTERNAL:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    if-ne p1, v3, :cond_1f

    .line 472
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    goto :goto_29

    .line 475
    :cond_1f
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1388

    invoke-interface {p0, v4, v5, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;
    :try_end_29
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_29} :catch_32
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_14 .. :try_end_29} :catch_32
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_14 .. :try_end_29} :catch_32
    .catchall {:try_start_14 .. :try_end_29} :catchall_30

    .line 481
    :goto_29
    invoke-interface {p0, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 482
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    goto :goto_46

    :catchall_30
    move-exception p1

    goto :goto_47

    :catch_32
    move-exception v3

    .line 478
    :try_start_33
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 479
    sget-object v3, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_ERR_TIMED_OUT:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;
    :try_end_45
    .catchall {:try_start_33 .. :try_end_45} :catchall_30

    goto :goto_29

    :goto_46
    return-object v3

    .line 481
    :goto_47
    invoke-interface {p0, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 482
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

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
    .registers 7

    .line 542
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_5f

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

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_49

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    .line 546
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mLastStorageStates:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 549
    :cond_49
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "logStorageState "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->v([Ljava/lang/String;)V

    :cond_5f
    return-void
.end method

.method private setLastStorageState(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;)V
    .registers 5

    .line 532
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_25

    .line 533
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updateLastStorageState storage: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 536
    :cond_25
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mLastStorageStates:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_31

    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->logStorageState()V

    .line 538
    :cond_31
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
    .registers 4

    .line 576
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "checkAndNotifyStateChanged : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 577
    :cond_1a
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mStorageController:Lcom/sonyericsson/cameracommon/storage/StorageController;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/cameracommon/storage/StorageController;->checkAndNotifyStateChanged(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Z)V

    return-void
.end method

.method public checkRemain(ZLcom/sonyericsson/cameracommon/storage/Storage$StorageType;)J
    .registers 5

    .line 564
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_1a

    .line 565
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "checkRemain: storage: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 566
    :cond_1a
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

    const/4 v0, 0x1

    .line 757
    :try_start_2
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "doResume"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 758
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mReadyStateLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_56

    .line 759
    :try_start_f
    iget-boolean v2, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mIsApplicationForeground:Z

    if-eqz v2, :cond_16

    .line 760
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    monitor-exit p0

    return-void

    .line 762
    :cond_16
    :try_start_16
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mIsApplicationForeground:Z

    .line 763
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_53

    .line 765
    :try_start_19
    invoke-static {}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->getMountableStorageTypes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_51

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    .line 766
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mReadyStateLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_30
    .catchall {:try_start_19 .. :try_end_30} :catchall_56

    .line 767
    :try_start_30
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mStorageController:Lcom/sonyericsson/cameracommon/storage/StorageController;

    invoke-virtual {v4, v2}, Lcom/sonyericsson/cameracommon/storage/StorageController;->getStorageReadyState(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;

    move-result-object v4

    sget-object v5, Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;->SUSPENDED:Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;

    if-ne v4, v5, :cond_41

    .line 768
    sget-object v4, Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;->PREPARING:Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;

    sget-object v5, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;->APP_LAUNCH:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;

    invoke-direct {p0, v2, v4, v5}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->changeReadyStateTo(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;)Z

    .line 771
    :cond_41
    monitor-exit v3
    :try_end_42
    .catchall {:try_start_30 .. :try_end_42} :catchall_4e

    .line 773
    :try_start_42
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mStorageUpdaterMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater;

    invoke-virtual {v2, v0}, Lcom/sonyericsson/cameracommon/storage/updater/StorageStateUpdater;->setAutoUpdateEnabled(Z)V
    :try_end_4d
    .catchall {:try_start_42 .. :try_end_4d} :catchall_56

    goto :goto_21

    :catchall_4e
    move-exception v0

    .line 771
    :try_start_4f
    monitor-exit v3
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    :try_start_50
    throw v0
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_56

    .line 775
    :cond_51
    monitor-exit p0

    return-void

    :catchall_53
    move-exception v0

    .line 763
    :try_start_54
    monitor-exit v1
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_53

    :try_start_55
    throw v0
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_56

    :catchall_56
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
    .registers 7

    .line 592
    const-string p0, "GetStatFsTask failed."

    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getStatFs: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 595
    :cond_1c
    const-string v0, "SM#ChkRemain"

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/ThreadUtil;->buildExecutor(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 596
    new-instance v1, Lcom/sonyericsson/cameracommon/storage/StorageUtil$GetStatFsTask;

    invoke-direct {v1, p1}, Lcom/sonyericsson/cameracommon/storage/StorageUtil$GetStatFsTask;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    const/4 v1, 0x1

    .line 601
    :try_start_2c
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0xdac

    invoke-interface {p1, v3, v4, v2}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/StatFs;
    :try_end_36
    .catch Ljava/lang/InterruptedException; {:try_start_2c .. :try_end_36} :catch_49
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2c .. :try_end_36} :catch_44
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2c .. :try_end_36} :catch_3f
    .catchall {:try_start_2c .. :try_end_36} :catchall_3d

    .line 609
    invoke-interface {p1, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 610
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    goto :goto_56

    :catchall_3d
    move-exception p0

    goto :goto_57

    :catch_3f
    move-exception v2

    .line 607
    :try_start_40
    invoke-static {p0, v2}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4f

    :catch_44
    move-exception v2

    .line 605
    invoke-static {p0, v2}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4f

    :catch_49
    move-exception p0

    .line 603
    const-string v2, "GetStatFsTask has been interrupted."

    invoke-static {v2, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4f
    .catchall {:try_start_40 .. :try_end_4f} :catchall_3d

    .line 609
    :goto_4f
    invoke-interface {p1, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 610
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    const/4 v2, 0x0

    :goto_56
    return-object v2

    .line 609
    :goto_57
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
    .registers 10

    .line 625
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->getPathFromType(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_21

    .line 627
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Storage is not mounted. : "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return-wide v1

    .line 630
    :cond_21
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->getStatFs(Ljava/lang/String;)Landroid/os/StatFs;

    move-result-object v3

    if-nez v3, :cond_3e

    .line 634
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Failed to get StatFs: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return-wide v1

    .line 639
    :cond_3e
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mContext:Landroid/content/Context;

    invoke-static {p1, p0}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->getVolumeState(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 640
    const-string p1, "mounted"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4d

    return-wide v1

    .line 644
    :cond_4d
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide p0

    .line 645
    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v3

    .line 647
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_6f

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "getAvailableSize size: "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 648
    :cond_6f
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_89

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "getAvailableSize num: "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_89
    mul-long/2addr p0, v3

    sub-long/2addr p0, p2

    const-wide/16 p2, 0x400

    .line 651
    div-long/2addr p0, p2

    invoke-static {v1, v2, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    .line 652
    sget-boolean p2, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p2, :cond_ac

    .line 653
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "getAvailableSize total[KB]: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_ac
    return-wide p0
.end method

.method public declared-synchronized updateStateByVolumeInfo(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;JLcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;)Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;
    .registers 12

    const-string v0, "lastState = "

    const-string v1, "invoke: type = "

    monitor-enter p0

    .line 335
    :try_start_5
    sget-boolean v2, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_33

    .line 336
    new-array v2, v4, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", reservedSize = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", reason = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 340
    :cond_33
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mStateLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_36
    .catchall {:try_start_5 .. :try_end_36} :catchall_ec

    .line 341
    :try_start_36
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->getLastStorageState(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    move-result-object v2

    .line 342
    sget-boolean v5, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v5, :cond_52

    new-array v5, v4, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v3

    invoke-static {v5}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_52
    const/4 v0, 0x0

    if-eqz v2, :cond_7f

    .line 343
    sget-object v3, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_READY:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    if-eq v2, v3, :cond_7f

    sget-object v3, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_READY_LOW:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    if-eq v2, v3, :cond_7f

    sget-object v3, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_ERR_FULL:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    if-eq v2, v3, :cond_7f

    .line 348
    sget-object v3, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$1;->$SwitchMap$com$sonyericsson$cameracommon$storage$CameraStorageManager$UpdateRequestReason:[I

    invoke-virtual {p4}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;->ordinal()I

    move-result v5

    aget v3, v3, v5

    if-eq v3, v4, :cond_75

    const/4 v4, 0x2

    if-eq v3, v4, :cond_7f

    const/4 v4, 0x3

    if-eq v3, v4, :cond_7f

    const/4 v4, 0x4

    if-eq v3, v4, :cond_7f

    goto :goto_80

    .line 350
    :cond_75
    sget-object v3, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_ERR_READ_ONLY:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    if-eq v2, v3, :cond_7d

    sget-object v3, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_ERR_TIMED_OUT:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    if-ne v2, v3, :cond_7f

    .line 353
    :cond_7d
    sget-object p4, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;->APP_LAUNCH_WITH_UNTRUSTED:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;

    :cond_7f
    move-object v2, v0

    .line 367
    :goto_80
    sget-object v0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->EXTERNAL_CARD:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    if-ne p1, v0, :cond_8e

    .line 368
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->isExistRemovableStorage(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_8e

    .line 369
    sget-object v2, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_ERR_NO_MEMORY_CARD:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    :cond_8e
    if-nez v2, :cond_c0

    .line 375
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->getNextStateFromVolume(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    move-result-object v0

    .line 378
    sget-object v2, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;->RECEIVE_STORAGE_EJECTED:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;

    if-ne p4, v2, :cond_a5

    .line 379
    sget-object v2, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_ERR_NO_MEMORY_CARD:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 380
    sget-object v0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_ERR_NO_MEMORY_CARD:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    goto :goto_a5

    .line 382
    :cond_a3
    sget-object v0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_ERR_SHARED:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    .line 387
    :cond_a5
    :goto_a5
    sget-object v2, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_READY:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    if-eq v0, v2, :cond_b2

    sget-object v2, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_READY_LOW:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    if-ne v0, v2, :cond_ae

    goto :goto_b2

    :cond_ae
    const-wide/16 p2, 0x0

    :goto_b0
    move-object v2, v0

    goto :goto_bb

    .line 389
    :cond_b2
    :goto_b2
    invoke-virtual {p0, p1, p2, p3}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->updateAvailableStorageSize(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;J)J

    move-result-wide p2

    .line 390
    invoke-direct {p0, p2, p3}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->getNextStateFromRemain(J)Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    move-result-object v0

    goto :goto_b0

    .line 394
    :goto_bb
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mStorageController:Lcom/sonyericsson/cameracommon/storage/StorageController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sonyericsson/cameracommon/storage/StorageController;->setAvailableStorageSize(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;J)V

    .line 398
    :cond_c0
    invoke-direct {p0, p1, v2}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->setLastStorageState(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;)V

    .line 400
    iget-object p2, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mReadyStateLock:Ljava/lang/Object;

    monitor-enter p2
    :try_end_c6
    .catchall {:try_start_36 .. :try_end_c6} :catchall_e9

    .line 401
    :try_start_c6
    iget-boolean p3, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mIsApplicationForeground:Z

    if-eqz p3, :cond_d0

    .line 402
    sget-object p3, Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;->ACCESSIBLE:Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;

    invoke-direct {p0, p1, p3, p4}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->changeReadyStateTo(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;)Z

    goto :goto_d5

    .line 404
    :cond_d0
    sget-object p3, Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;->SUSPENDED:Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;

    invoke-direct {p0, p1, p3, p4}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->changeReadyStateTo(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;)Z

    .line 406
    :goto_d5
    monitor-exit p2
    :try_end_d6
    .catchall {:try_start_c6 .. :try_end_d6} :catchall_e6

    .line 408
    :try_start_d6
    sget-object p2, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;->RECEIVE_STORAGE_MOUNTED:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;

    if-ne p4, p2, :cond_e3

    .line 409
    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->calculateNextPollingInterval(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateInterval;

    move-result-object p2

    sget-object p3, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;->PERIODIC_UPDATE:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->requestVolumeCheck(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateInterval;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;)V

    .line 412
    :cond_e3
    monitor-exit v1
    :try_end_e4
    .catchall {:try_start_d6 .. :try_end_e4} :catchall_e9

    .line 413
    monitor-exit p0

    return-object v2

    :catchall_e6
    move-exception p1

    .line 406
    :try_start_e7
    monitor-exit p2
    :try_end_e8
    .catchall {:try_start_e7 .. :try_end_e8} :catchall_e6

    :try_start_e8
    throw p1

    :catchall_e9
    move-exception p1

    .line 412
    monitor-exit v1
    :try_end_eb
    .catchall {:try_start_e8 .. :try_end_eb} :catchall_e9

    :try_start_eb
    throw p1
    :try_end_ec
    .catchall {:try_start_eb .. :try_end_ec} :catchall_ec

    :catchall_ec
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public updateStorageState(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;)V
    .registers 5

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

    .line 278
    :cond_11
    :goto_11
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mSavingTaskInquiry:Lcom/sonyericsson/cameracommon/storage/SavingTaskInquiry;

    if-eqz v0, :cond_1a

    .line 279
    invoke-interface {v0, p1}, Lcom/sonyericsson/cameracommon/storage/SavingTaskInquiry;->getReservedSize(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)J

    move-result-wide v0

    goto :goto_25

    .line 283
    :cond_1a
    const-string v0, "called before initializing."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    const-wide/16 v0, 0x0

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

    .line 229
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 230
    sget-object p1, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;->RECEIVE_STORAGE_MOUNTED:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;

    goto :goto_27

    .line 231
    :cond_1a
    const-string v1, "android.intent.action.MEDIA_EJECT"

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

    .line 241
    :catch_34
    const-string p0, "Failed to acquire of storage access permit."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    :goto_3d
    return-void
.end method

.method public declared-synchronized updateStorageStateByWriting(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;)V
    .registers 11

    const-string v0, "isWritable: "

    const-string/jumbo v1, "updateStorageStateByWriting StorageType = "

    monitor-enter p0

    .line 297
    :try_start_6
    sget-boolean v2, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2a

    new-array v2, v4, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", reason = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 300
    :cond_2a
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mStateLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_2d
    .catchall {:try_start_6 .. :try_end_2d} :catchall_8a

    .line 301
    :try_start_2d
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->getLastStorageState(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    move-result-object v2

    .line 302
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->isWritableCheckNeeded(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z

    move-result v5

    .line 303
    sget-boolean v6, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v6, :cond_4d

    new-array v6, v4, [Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v3

    invoke-static {v6}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_4d
    if-eqz v5, :cond_66

    .line 305
    invoke-direct {p0, p2}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->decideForceFsWritingCheck(Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 307
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mWritableCheckResult:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    :cond_5a
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->getNextStateFromWritable(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    move-result-object v0

    .line 311
    sget-object v3, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_READY:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    if-eq v0, v3, :cond_63

    move-object v2, v0

    .line 315
    :cond_63
    invoke-direct {p0, p1, v2}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->setLastStorageState(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;)V

    .line 317
    :cond_66
    monitor-exit v1
    :try_end_67
    .catchall {:try_start_2d .. :try_end_67} :catchall_87

    .line 319
    :try_start_67
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mReadyStateLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_6a
    .catchall {:try_start_67 .. :try_end_6a} :catchall_8a

    .line 320
    :try_start_6a
    iget-boolean v1, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mIsApplicationForeground:Z

    if-eqz v1, :cond_7c

    .line 321
    sget-object v1, Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;->COMPLETED:Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;

    invoke-direct {p0, p1, v1, p2}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->changeReadyStateTo(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;)Z

    move-result p2

    if-eqz p2, :cond_81

    .line 322
    iget-object p2, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mStorageController:Lcom/sonyericsson/cameracommon/storage/StorageController;

    invoke-virtual {p2, p1, v4}, Lcom/sonyericsson/cameracommon/storage/StorageController;->checkAndNotifyStateChanged(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Z)V

    goto :goto_81

    .line 325
    :cond_7c
    sget-object v1, Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;->SUSPENDED:Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;

    invoke-direct {p0, p1, v1, p2}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->changeReadyStateTo(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;)Z

    .line 327
    :cond_81
    :goto_81
    monitor-exit v0
    :try_end_82
    .catchall {:try_start_6a .. :try_end_82} :catchall_84

    .line 329
    monitor-exit p0

    return-void

    :catchall_84
    move-exception p1

    .line 327
    :try_start_85
    monitor-exit v0
    :try_end_86
    .catchall {:try_start_85 .. :try_end_86} :catchall_84

    :try_start_86
    throw p1
    :try_end_87
    .catchall {:try_start_86 .. :try_end_87} :catchall_8a

    :catchall_87
    move-exception p1

    .line 317
    :try_start_88
    monitor-exit v1
    :try_end_89
    .catchall {:try_start_88 .. :try_end_89} :catchall_87

    :try_start_89
    throw p1
    :try_end_8a
    .catchall {:try_start_89 .. :try_end_8a} :catchall_8a

    :catchall_8a
    move-exception p1

    monitor-exit p0

    throw p1
.end method
