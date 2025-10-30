.class public Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;
.super Ljava/lang/Object;
.source "CameraExtensionServiceUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil$UpdateCameraStatusTask;,
        Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil$OnScreenOffTask;,
        Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil$ServiceConnectionCallback;
    }
.end annotation


# static fields
.field private static final CAMERA_COMMON_PACKAGE:Ljava/lang/String; = "com.sonymobile.cameracommon"

.field private static final CAMERA_EXTENSION_SERVICE_CLASS:Ljava/lang/String; = "com.sonymobile.cameracommon.CameraExtensionService"

.field private static final CAMERA_EXTENSION_SERVICE_WAIT_TIMEOUT_MILLIS:I = 0xbb8

.field private static final sInstance:Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;


# instance fields
.field private mBackWorker:Ljava/util/concurrent/ExecutorService;

.field private mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

.field private mService:Lcom/sonymobile/cameracommon/ICameraExtensionService;

.field private mServiceConnection:Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil$ServiceConnectionCallback;

.field private mShouldUnbind:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 23
    new-instance v0, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;->sInstance:Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    const-string v0, "CameraExtensionService-Thread"

    .line 40
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/ThreadUtil;->buildExecutor(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic access$102(Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;Lcom/sonymobile/cameracommon/ICameraExtensionService;)Lcom/sonymobile/cameracommon/ICameraExtensionService;
    .registers 2

    .line 18
    iput-object p1, p0, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;->mService:Lcom/sonymobile/cameracommon/ICameraExtensionService;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;)Ljava/util/concurrent/CountDownLatch;
    .registers 1

    .line 18
    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method static synthetic access$400(Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;)Lcom/sonymobile/cameracommon/ICameraExtensionService;
    .registers 1

    .line 18
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;->getService()Lcom/sonymobile/cameracommon/ICameraExtensionService;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;)V
    .registers 1

    .line 18
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;->startService()V

    return-void
.end method

.method static synthetic access$600(Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;)V
    .registers 1

    .line 18
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;->stopService()V

    return-void
.end method

.method public static getInstance()Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;
    .registers 1

    .line 35
    sget-object v0, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;->sInstance:Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;

    return-object v0
.end method

.method private getService()Lcom/sonymobile/cameracommon/ICameraExtensionService;
    .registers 7

    .line 94
    iget-object v0, p0, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;->mService:Lcom/sonymobile/cameracommon/ICameraExtensionService;

    if-nez v0, :cond_42

    .line 95
    iget-object v0, p0, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_42

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_42

    const/4 v0, 0x0

    .line 97
    :try_start_13
    iget-object v1, p0, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v2, 0xbb8

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1c
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_1c} :catch_21
    .catchall {:try_start_13 .. :try_end_1c} :catchall_1f

    .line 102
    :goto_1c
    iput-object v0, p0, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    goto :goto_42

    :catchall_1f
    move-exception v1

    goto :goto_3f

    :catch_21
    move-exception v1

    const/4 v2, 0x1

    :try_start_23
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 100
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCameraExtensionService fail "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V
    :try_end_3e
    .catchall {:try_start_23 .. :try_end_3e} :catchall_1f

    goto :goto_1c

    .line 102
    :goto_3f
    iput-object v0, p0, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    .line 103
    throw v1

    .line 106
    :cond_42
    :goto_42
    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;->mService:Lcom/sonymobile/cameracommon/ICameraExtensionService;

    return-object p0
.end method

.method private startService()V
    .registers 5

    .line 45
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    .line 46
    new-instance v0, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil$ServiceConnectionCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil$ServiceConnectionCallback;-><init>(Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;->mServiceConnection:Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil$ServiceConnectionCallback;

    .line 48
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sonymobile.cameracommon"

    const-string v2, "com.sonymobile.cameracommon.CameraExtensionService"

    .line 49
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 52
    iget-object v2, p0, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;->mServiceConnection:Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil$ServiceConnectionCallback;

    const/16 v3, 0x201

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;->mShouldUnbind:Z

    if-eqz v0, :cond_3a

    .line 55
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_3f

    const-string p0, "bind Camera extension service succeed"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_3f

    .line 58
    :cond_3a
    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;->mServiceConnection:Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil$ServiceConnectionCallback;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_3f
    :goto_3f
    return-void
.end method

.method private stopService()V
    .registers 3

    .line 63
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;->mShouldUnbind:Z

    if-eqz v0, :cond_24

    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;->mShouldUnbind:Z

    .line 65
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 66
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_18

    const-string v1, "unbindService Camera extension service"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 67
    :cond_18
    iget-object v1, p0, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;->mServiceConnection:Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil$ServiceConnectionCallback;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 68
    iput-object v0, p0, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;->mServiceConnection:Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil$ServiceConnectionCallback;

    .line 69
    iput-object v0, p0, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;->mService:Lcom/sonymobile/cameracommon/ICameraExtensionService;

    .line 70
    iput-object v0, p0, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    :cond_24
    return-void
.end method


# virtual methods
.method public bindService()V
    .registers 3

    .line 153
    iget-object v0, p0, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil$1;-><init>(Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public screenOff()V
    .registers 4

    .line 110
    iget-object v0, p0, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil$OnScreenOffTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil$OnScreenOffTask;-><init>(Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public unBindService()V
    .registers 3

    .line 162
    iget-object v0, p0, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil$2;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil$2;-><init>(Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateCameraStatus(Landroid/content/ContentValues;)V
    .registers 4

    .line 128
    iget-object v0, p0, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil$UpdateCameraStatusTask;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil$UpdateCameraStatusTask;-><init>(Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;Landroid/content/ContentValues;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
