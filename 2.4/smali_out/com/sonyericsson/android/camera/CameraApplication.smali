.class public Lcom/sonyericsson/android/camera/CameraApplication;
.super Landroid/app/Application;
.source "CameraApplication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/CameraApplication$CreateCameraDeviceThread;,
        Lcom/sonyericsson/android/camera/CameraApplication$CreateUserSettingsLoaderThread;,
        Lcom/sonyericsson/android/camera/CameraApplication$CreateStorageThread;,
        Lcom/sonyericsson/android/camera/CameraApplication$ClassPreloadDoneCallback;,
        Lcom/sonyericsson/android/camera/CameraApplication$ActivityLifeCycleCallbackImpl;,
        Lcom/sonyericsson/android/camera/CameraApplication$Pausable;
    }
.end annotation


# static fields
.field private static final CLASS_PRELOAD_WAKELOCK_TIMEOUT_MILLIS:I = 0x7d0

.field public static final TAG:Ljava/lang/String; = "CameraApplication"

.field private static final THREAD_NAME:Ljava/lang/String; = "SETUP_"

.field private static sContext:Landroid/content/Context;

.field private static final sUiThreadHandler:Landroid/os/Handler;


# instance fields
.field private mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

.field private mClassPreloadDoneCallback:Lcom/sonyericsson/android/camera/ClassStaticBlockPreLoadThread$PreloadDoneCallback;

.field private mClassPreloadThread:Lcom/sonyericsson/android/camera/ClassStaticBlockPreLoadThread;

.field private mCreateCameraDeviceTask:Ljava/util/concurrent/Future;

.field private mCreateStorageTask:Ljava/util/concurrent/Future;

.field private mCreateUserSettingsLoaderTask:Ljava/util/concurrent/Future;

.field private mStorage:Lcom/sonyericsson/cameracommon/storage/StorageImpl;

.field private mUserSettingsLoader:Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 50
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/sonyericsson/android/camera/CameraApplication;->sUiThreadHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 76
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraApplication;->mClassPreloadThread:Lcom/sonyericsson/android/camera/ClassStaticBlockPreLoadThread;

    .line 60
    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraApplication;->mClassPreloadDoneCallback:Lcom/sonyericsson/android/camera/ClassStaticBlockPreLoadThread$PreloadDoneCallback;

    .line 77
    sput-object p0, Lcom/sonyericsson/android/camera/CameraApplication;->sContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera/CameraApplication;)Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraApplication;->mUserSettingsLoader:Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;

    return-object p0
.end method

.method static synthetic access$002(Lcom/sonyericsson/android/camera/CameraApplication;Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;)Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;
    .registers 2

    .line 43
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraApplication;->mUserSettingsLoader:Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;

    return-object p1
.end method

.method static synthetic access$1002(Lcom/sonyericsson/android/camera/CameraApplication;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;
    .registers 2

    .line 43
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraApplication;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/sonyericsson/android/camera/CameraApplication;Ljava/util/concurrent/Future;)Ljava/util/concurrent/Future;
    .registers 2

    .line 43
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraApplication;->mCreateCameraDeviceTask:Ljava/util/concurrent/Future;

    return-object p1
.end method

.method static synthetic access$202(Lcom/sonyericsson/android/camera/CameraApplication;Lcom/sonyericsson/android/camera/ClassStaticBlockPreLoadThread;)Lcom/sonyericsson/android/camera/ClassStaticBlockPreLoadThread;
    .registers 2

    .line 43
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraApplication;->mClassPreloadThread:Lcom/sonyericsson/android/camera/ClassStaticBlockPreLoadThread;

    return-object p1
.end method

.method static synthetic access$302(Lcom/sonyericsson/android/camera/CameraApplication;Lcom/sonyericsson/android/camera/ClassStaticBlockPreLoadThread$PreloadDoneCallback;)Lcom/sonyericsson/android/camera/ClassStaticBlockPreLoadThread$PreloadDoneCallback;
    .registers 2

    .line 43
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraApplication;->mClassPreloadDoneCallback:Lcom/sonyericsson/android/camera/ClassStaticBlockPreLoadThread$PreloadDoneCallback;

    return-object p1
.end method

.method static synthetic access$400(Lcom/sonyericsson/android/camera/CameraApplication;)Lcom/sonyericsson/cameracommon/storage/StorageImpl;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraApplication;->mStorage:Lcom/sonyericsson/cameracommon/storage/StorageImpl;

    return-object p0
.end method

.method static synthetic access$402(Lcom/sonyericsson/android/camera/CameraApplication;Lcom/sonyericsson/cameracommon/storage/StorageImpl;)Lcom/sonyericsson/cameracommon/storage/StorageImpl;
    .registers 2

    .line 43
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraApplication;->mStorage:Lcom/sonyericsson/cameracommon/storage/StorageImpl;

    return-object p1
.end method

.method static synthetic access$602(Lcom/sonyericsson/android/camera/CameraApplication;Ljava/util/concurrent/Future;)Ljava/util/concurrent/Future;
    .registers 2

    .line 43
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraApplication;->mCreateStorageTask:Ljava/util/concurrent/Future;

    return-object p1
.end method

.method static synthetic access$700()Landroid/content/Context;
    .registers 1

    .line 43
    sget-object v0, Lcom/sonyericsson/android/camera/CameraApplication;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$902(Lcom/sonyericsson/android/camera/CameraApplication;Ljava/util/concurrent/Future;)Ljava/util/concurrent/Future;
    .registers 2

    .line 43
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraApplication;->mCreateUserSettingsLoaderTask:Ljava/util/concurrent/Future;

    return-object p1
.end method

.method public static getContext()Landroid/content/Context;
    .registers 1

    .line 182
    sget-object v0, Lcom/sonyericsson/android/camera/CameraApplication;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method public static final getUiThreadHandler()Landroid/os/Handler;
    .registers 1

    .line 82
    sget-object v0, Lcom/sonyericsson/android/camera/CameraApplication;->sUiThreadHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method getCameraDevice()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;
    .registers 3

    .line 227
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraApplication;->mCreateCameraDeviceTask:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_e

    .line 229
    :try_start_4
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_e

    :catch_8
    move-exception v0

    const-string v1, "failed create camera device"

    .line 231
    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 234
    :cond_e
    :goto_e
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraApplication;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    return-object v0
.end method

.method getStorage()Lcom/sonyericsson/cameracommon/storage/Storage;
    .registers 3

    .line 209
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraApplication;->mCreateStorageTask:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_e

    .line 211
    :try_start_4
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_e

    :catch_8
    move-exception v0

    const-string v1, "failed create storage"

    .line 213
    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 216
    :cond_e
    :goto_e
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraApplication;->mStorage:Lcom/sonyericsson/cameracommon/storage/StorageImpl;

    return-object v0
.end method

.method public getUserSettingsLoader()Lcom/sonyericsson/android/camera/setting/UserSettingsLoader;
    .registers 3

    .line 191
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraApplication;->mCreateUserSettingsLoaderTask:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_e

    .line 193
    :try_start_4
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_e

    :catch_8
    move-exception v0

    const-string v1, "failed create UserSettingLoader"

    .line 195
    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 198
    :cond_e
    :goto_e
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraApplication;->mUserSettingsLoader:Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;

    return-object v0
.end method

.method public onCreate()V
    .registers 4

    .line 91
    sget-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->APPLICATION_ON_CREATE:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/PerfLog;->begin()V

    .line 92
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_12

    const-string v0, "onCreate() : E"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_12
    const-string v0, "SETUP__STORAGE"

    .line 94
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/ThreadUtil;->buildExecutor(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 95
    new-instance v1, Lcom/sonyericsson/android/camera/CameraApplication$CreateStorageThread;

    invoke-direct {v1, p0, v0}, Lcom/sonyericsson/android/camera/CameraApplication$CreateStorageThread;-><init>(Lcom/sonyericsson/android/camera/CameraApplication;Ljava/util/concurrent/ExecutorService;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraApplication;->mCreateStorageTask:Ljava/util/concurrent/Future;

    const-string v0, "SETUP__LOADER"

    .line 97
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/ThreadUtil;->buildExecutor(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 98
    new-instance v1, Lcom/sonyericsson/android/camera/CameraApplication$CreateUserSettingsLoaderThread;

    invoke-direct {v1, p0, v0}, Lcom/sonyericsson/android/camera/CameraApplication$CreateUserSettingsLoaderThread;-><init>(Lcom/sonyericsson/android/camera/CameraApplication;Ljava/util/concurrent/ExecutorService;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraApplication;->mCreateUserSettingsLoaderTask:Ljava/util/concurrent/Future;

    const-string v0, "SETUP__DEVICE"

    .line 100
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/ThreadUtil;->buildExecutor(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 101
    new-instance v1, Lcom/sonyericsson/android/camera/CameraApplication$CreateCameraDeviceThread;

    invoke-direct {v1, p0, v0}, Lcom/sonyericsson/android/camera/CameraApplication$CreateCameraDeviceThread;-><init>(Lcom/sonyericsson/android/camera/CameraApplication;Ljava/util/concurrent/ExecutorService;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraApplication;->mCreateCameraDeviceTask:Ljava/util/concurrent/Future;

    .line 103
    new-instance v0, Lcom/sonyericsson/android/camera/CameraApplication$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/CameraApplication$1;-><init>(Lcom/sonyericsson/android/camera/CameraApplication;)V

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->prepareAsync(Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$OnPlatformCapabilityPreparedCallback;)V

    .line 115
    new-instance v0, Lcom/sonyericsson/android/camera/CameraApplication$ClassPreloadDoneCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/CameraApplication$ClassPreloadDoneCallback;-><init>(Lcom/sonyericsson/android/camera/CameraApplication;Lcom/sonyericsson/android/camera/CameraApplication$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraApplication;->mClassPreloadDoneCallback:Lcom/sonyericsson/android/camera/ClassStaticBlockPreLoadThread$PreloadDoneCallback;

    .line 116
    new-instance v0, Lcom/sonyericsson/android/camera/ClassStaticBlockPreLoadThread;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraApplication;->mClassPreloadDoneCallback:Lcom/sonyericsson/android/camera/ClassStaticBlockPreLoadThread$PreloadDoneCallback;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/ClassStaticBlockPreLoadThread;-><init>(Lcom/sonyericsson/android/camera/ClassStaticBlockPreLoadThread$PreloadDoneCallback;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraApplication;->mClassPreloadThread:Lcom/sonyericsson/android/camera/ClassStaticBlockPreLoadThread;

    .line 117
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraApplication;->mClassPreloadThread:Lcom/sonyericsson/android/camera/ClassStaticBlockPreLoadThread;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/ClassStaticBlockPreLoadThread;->setPriority(I)V

    .line 118
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraApplication;->mClassPreloadThread:Lcom/sonyericsson/android/camera/ClassStaticBlockPreLoadThread;

    const-string v1, "ClassStaticBlockPreLoadThread"

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/ClassStaticBlockPreLoadThread;->setName(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraApplication;->mClassPreloadThread:Lcom/sonyericsson/android/camera/ClassStaticBlockPreLoadThread;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/ClassStaticBlockPreLoadThread;->start()V

    const-string v0, "power"

    .line 122
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/CameraApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "ClassStaticBlockPreLoadThread"

    .line 124
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    const-wide/16 v1, 0x7d0

    .line 127
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 146
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 149
    sget-object v0, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->INSTANCE:Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->preload(Landroid/content/Context;)V

    .line 154
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 155
    new-instance v1, Lcom/sonyericsson/android/camera/CameraApplication$2;

    invoke-direct {v1, p0, v0}, Lcom/sonyericsson/android/camera/CameraApplication$2;-><init>(Lcom/sonyericsson/android/camera/CameraApplication;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 164
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_a6

    const-string v0, "onCreate() : X"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 165
    :cond_a6
    sget-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->APPLICATION_ON_CREATE:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/PerfLog;->end()V

    return-void
.end method

.method public onTerminate()V
    .registers 2

    .line 170
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 171
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraApplication;->mUserSettingsLoader:Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->release()V

    .line 172
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraApplication;->mStorage:Lcom/sonyericsson/cameracommon/storage/StorageImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->close()V

    .line 173
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraApplication;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->release()V

    return-void
.end method
