.class public Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CameraButtonIntentReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$CameraDeviceReleaseTimerTask;,
        Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;,
        Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;
    }
.end annotation


# static fields
.field private static final CAMERA_DEVICE_AUTO_RELEASE_TIMER_DURATION:I = 0x1388

.field private static final NORMAL_LAUNCH_FAST_CAPTURE_START_SUBJECT:Ljava/lang/String; = "start"

.field private static final START_UP_WAKE_LOCK_DURATION_MILLIS:J = 0x3e8L

.field private static final TAG:Ljava/lang/String; = "CameraButtonIntentReceiver"

.field private static sCurrentState:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

.field private static sLatestIntent:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

.field private static sReleaseTimer:Ljava/util/Timer;

.field private static final sReleaseTimerLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sReleaseTimerLock:Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;->IDLE:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    sput-object v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sCurrentState:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    .line 82
    sget-object v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;->NULL:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    sput-object v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sLatestIntent:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 92
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .registers 1

    .line 40
    sget-object v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sReleaseTimerLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/Timer;
    .registers 1

    .line 40
    sget-object v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sReleaseTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$202(Ljava/util/Timer;)Ljava/util/Timer;
    .registers 1

    .line 40
    sput-object p0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sReleaseTimer:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic access$300(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;)V
    .registers 1

    .line 40
    invoke-static {p0}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->changeStateTo(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;)V

    return-void
.end method

.method private static changeStateTo(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;)V
    .registers 5

    .line 85
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_2c

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeTo:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sCurrentState:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 86
    :cond_2c
    sput-object p0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sCurrentState:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    return-void
.end method

.method private isInLockTaskMode(Landroid/content/Context;)Z
    .registers 2

    const-string p0, "activity"

    .line 548
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 550
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getLockTaskModeState()I

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method private isQuickLaunchValid(Lcom/sonyericsson/android/camera/setting/LastSettings;)Z
    .registers 2

    .line 533
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/setting/LastSettings;->getFastCapture()Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    move-result-object p0

    .line 534
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    if-eq p0, p1, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method private onCancelReceived(Landroid/content/Context;)V
    .registers 2

    .line 683
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/CameraApplication;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraApplication;->getCameraDevice()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->closeCamera()V

    .line 686
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->releaseCameraDeviceReleaseTimer()V

    return-void
.end method

.method private onDirectStartReceived(Landroid/content/Context;Ljava/lang/String;Lcom/sonyericsson/android/camera/setting/LastSettings;)V
    .registers 7

    .line 651
    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/setting/LastSettings;->getFastCapture()Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    move-result-object p0

    .line 652
    sget-object p3, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_AND_CAPTURE:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p3, :cond_1a

    .line 654
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    check-cast p3, Lcom/sonyericsson/android/camera/CameraApplication;

    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/CameraApplication;->getCameraDevice()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p3

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {p3, p1, v1, v2, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->preloadCamera(Landroid/content/Context;Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    goto :goto_2d

    .line 659
    :cond_1a
    sget-object p3, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_AND_RECORDING:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    if-ne p0, p3, :cond_2d

    .line 661
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    check-cast p3, Lcom/sonyericsson/android/camera/CameraApplication;

    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/CameraApplication;->getCameraDevice()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p3

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {p3, p1, v1, v2, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->preloadCamera(Landroid/content/Context;Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    .line 668
    :cond_2d
    :goto_2d
    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    .line 669
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_AND_CAPTURE:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    if-ne p0, v0, :cond_3c

    const-string p0, "com.sonyericsson.android.camera.intent.action.QUICK_LAUNCH_AND_CAPTURE"

    .line 670
    invoke-virtual {p3, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_41

    :cond_3c
    const-string p0, "com.sonyericsson.android.camera.intent.action.QUICK_LAUNCH"

    .line 672
    invoke-virtual {p3, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 674
    :goto_41
    const-class p0, Lcom/sonyericsson/android/camera/CameraGestureTriggerActivity;

    invoke-virtual {p3, p1, p0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string p0, "android.intent.category.LAUNCHER"

    .line 675
    invoke-virtual {p3, p0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p0, 0x10000000

    .line 676
    invoke-virtual {p3, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string p0, "android.intent.extra.SUBJECT"

    .line 677
    invoke-virtual {p3, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 678
    sget-object p0, Lcom/sonyericsson/android/camera/LaunchTrigger;->LOCK_SCREEN:Lcom/sonyericsson/android/camera/LaunchTrigger;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/LaunchTrigger;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "com.sonyericsson.android.camera.extra.launchTrigger"

    invoke-virtual {p3, p2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 679
    invoke-virtual {p1, p3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private onNullReceived(Landroid/content/Context;Lcom/sonyericsson/android/camera/setting/LastSettings;)V
    .registers 6

    .line 554
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/setting/LastSettings;->getFastCapture()Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    move-result-object p0

    .line 555
    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_AND_CAPTURE:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p2, :cond_1a

    .line 557
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    check-cast p2, Lcom/sonyericsson/android/camera/CameraApplication;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/CameraApplication;->getCameraDevice()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p2

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {p2, p1, v1, v2, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->preloadCamera(Landroid/content/Context;Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    goto :goto_2d

    .line 562
    :cond_1a
    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_AND_RECORDING:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    if-ne p0, p2, :cond_2d

    .line 564
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    check-cast p2, Lcom/sonyericsson/android/camera/CameraApplication;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/CameraApplication;->getCameraDevice()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p2

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {p2, p1, v1, v2, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->preloadCamera(Landroid/content/Context;Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    .line 572
    :cond_2d
    :goto_2d
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 573
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_AND_CAPTURE:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    if-ne p0, v0, :cond_3c

    const-string p0, "com.sonyericsson.android.camera.intent.action.QUICK_LAUNCH_AND_CAPTURE"

    .line 574
    invoke-virtual {p2, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_41

    :cond_3c
    const-string p0, "com.sonyericsson.android.camera.intent.action.QUICK_LAUNCH"

    .line 576
    invoke-virtual {p2, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 578
    :goto_41
    const-class p0, Lcom/sonyericsson/android/camera/CameraGestureTriggerActivity;

    invoke-virtual {p2, p1, p0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string p0, "android.intent.category.LAUNCHER"

    .line 579
    invoke-virtual {p2, p0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p0, 0x10000000

    .line 580
    invoke-virtual {p2, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string p0, "android.intent.extra.SUBJECT"

    const-string v0, "start"

    .line 581
    invoke-virtual {p2, p0, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 582
    sget-object p0, Lcom/sonyericsson/android/camera/LaunchTrigger;->HW_CAMERA_KEY:Lcom/sonyericsson/android/camera/LaunchTrigger;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/LaunchTrigger;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.sonyericsson.android.camera.extra.launchTrigger"

    invoke-virtual {p2, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 583
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private onPrepareReceived(Landroid/content/Context;Lcom/sonyericsson/android/camera/setting/LastSettings;)V
    .registers 6

    .line 588
    new-instance p0, Landroid/content/Intent;

    const-string v0, "com.sonymobile.cameracommon.intent.ACTION_FORCE_EXIT_REQUEST"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x10000000

    .line 589
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 590
    invoke-virtual {p1, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 592
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/setting/LastSettings;->getFastCapture()Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    move-result-object p0

    .line 593
    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_AND_CAPTURE:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p2, :cond_29

    .line 595
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    check-cast p2, Lcom/sonyericsson/android/camera/CameraApplication;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/CameraApplication;->getCameraDevice()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p2

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {p2, p1, v1, v2, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->preloadCamera(Landroid/content/Context;Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    goto :goto_3c

    .line 600
    :cond_29
    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_AND_RECORDING:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    if-ne p0, p2, :cond_3c

    .line 601
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    check-cast p2, Lcom/sonyericsson/android/camera/CameraApplication;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/CameraApplication;->getCameraDevice()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p2

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {p2, p1, v1, v2, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->preloadCamera(Landroid/content/Context;Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    .line 612
    :cond_3c
    :goto_3c
    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_AND_CAPTURE:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    if-eq p0, p2, :cond_44

    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_AND_RECORDING:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    if-ne p0, p2, :cond_47

    .line 614
    :cond_44
    invoke-static {p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->startCameraDeviceReleaseTimer(Landroid/content/Context;)V

    :cond_47
    return-void
.end method

.method private onStartReceived(Landroid/content/Context;Ljava/lang/String;Lcom/sonyericsson/android/camera/setting/LastSettings;)V
    .registers 7

    .line 619
    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/setting/LastSettings;->getFastCapture()Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    move-result-object p0

    .line 620
    sget-object p3, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_AND_CAPTURE:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p3, :cond_1a

    .line 622
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    check-cast p3, Lcom/sonyericsson/android/camera/CameraApplication;

    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/CameraApplication;->getCameraDevice()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p3

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {p3, p1, v1, v2, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->preloadCamera(Landroid/content/Context;Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    goto :goto_2d

    .line 627
    :cond_1a
    sget-object p3, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_AND_RECORDING:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    if-ne p0, p3, :cond_2d

    .line 629
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    check-cast p3, Lcom/sonyericsson/android/camera/CameraApplication;

    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/CameraApplication;->getCameraDevice()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p3

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {p3, p1, v1, v2, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->preloadCamera(Landroid/content/Context;Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    .line 636
    :cond_2d
    :goto_2d
    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    .line 637
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_AND_CAPTURE:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    if-ne p0, v0, :cond_3c

    const-string p0, "com.sonyericsson.android.camera.intent.action.QUICK_LAUNCH_AND_CAPTURE"

    .line 638
    invoke-virtual {p3, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_41

    :cond_3c
    const-string p0, "com.sonyericsson.android.camera.intent.action.QUICK_LAUNCH"

    .line 640
    invoke-virtual {p3, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 642
    :goto_41
    const-class p0, Lcom/sonyericsson/android/camera/CameraGestureTriggerActivity;

    invoke-virtual {p3, p1, p0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string p0, "android.intent.category.LAUNCHER"

    .line 643
    invoke-virtual {p3, p0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p0, 0x10000000

    .line 644
    invoke-virtual {p3, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string p0, "android.intent.extra.SUBJECT"

    .line 645
    invoke-virtual {p3, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 646
    sget-object p0, Lcom/sonyericsson/android/camera/LaunchTrigger;->HW_CAMERA_KEY_LOCK:Lcom/sonyericsson/android/camera/LaunchTrigger;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/LaunchTrigger;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "com.sonyericsson.android.camera.extra.launchTrigger"

    invoke-virtual {p3, p2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 647
    invoke-virtual {p1, p3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static final preload()V
    .registers 0

    return-void
.end method

.method public static declared-synchronized releaseCameraDeviceReleaseTimer()V
    .registers 3

    const-class v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;

    monitor-enter v0

    .line 710
    :try_start_3
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_10

    const-string v1, "Cancel camera release due to timeout."

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 715
    :cond_10
    sget-object v1, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sReleaseTimerLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_28

    .line 716
    :try_start_13
    sget-object v2, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sReleaseTimer:Ljava/util/Timer;

    if-eqz v2, :cond_22

    .line 717
    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    .line 718
    sget-object v2, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sReleaseTimer:Ljava/util/Timer;

    invoke-virtual {v2}, Ljava/util/Timer;->purge()I

    const/4 v2, 0x0

    .line 719
    sput-object v2, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sReleaseTimer:Ljava/util/Timer;

    .line 721
    :cond_22
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_13 .. :try_end_23} :catchall_25

    .line 722
    monitor-exit v0

    return-void

    :catchall_25
    move-exception v2

    .line 721
    :try_start_26
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    :try_start_27
    throw v2
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_28

    :catchall_28
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static setLatestIntent(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;)V
    .registers 1

    .line 96
    sput-object p0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sLatestIntent:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    return-void
.end method

.method private showScreenPinnedToastMessage(Landroid/content/Context;)V
    .registers 3

    .line 539
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->isInLockTaskMode(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_11

    const p0, 0x7f0f038e

    const/4 v0, 0x0

    .line 540
    invoke-static {p1, p0, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 541
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_11
    return-void
.end method

.method private static declared-synchronized startCameraDeviceReleaseTimer(Landroid/content/Context;)V
    .registers 7

    const-class v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;

    monitor-enter v0

    .line 690
    :try_start_3
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_10

    const-string v1, "Schedule camera release due to timeout."

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 696
    :cond_10
    sget-object v1, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sReleaseTimerLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_30

    .line 697
    :try_start_13
    sget-object v2, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sReleaseTimer:Ljava/util/Timer;

    if-nez v2, :cond_2a

    .line 699
    new-instance v2, Ljava/util/Timer;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/Timer;-><init>(Z)V

    sput-object v2, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sReleaseTimer:Ljava/util/Timer;

    .line 702
    new-instance v3, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$CameraDeviceReleaseTimerTask;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$CameraDeviceReleaseTimerTask;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$1;)V

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 706
    :cond_2a
    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_13 .. :try_end_2b} :catchall_2d

    .line 707
    monitor-exit v0

    return-void

    :catchall_2d
    move-exception p0

    .line 706
    :try_start_2e
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    :try_start_2f
    throw p0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_30

    :catchall_30
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private startMeasurement(Landroid/content/Context;Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;)V
    .registers 3

    .line 496
    sget-object p0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$1;->$SwitchMap$com$sonyericsson$android$camera$CameraButtonIntentReceiver$IntentKind:[I

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_3b

    const/4 p1, 0x2

    if-eq p0, p1, :cond_28

    const/4 p1, 0x3

    if-eq p0, p1, :cond_15

    const/4 p1, 0x4

    if-eq p0, p1, :cond_15

    goto :goto_4d

    .line 514
    :cond_15
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_COLD_BOOT_FROM_LOCKSCREEN_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->startMeasurement(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    .line 516
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_WARM_BOOT_FROM_LOCKSCREEN_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->startMeasurement(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    goto :goto_4d

    .line 505
    :cond_28
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_COLD_BOOT_FROM_CAMERAKEY_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->startMeasurement(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    .line 507
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_WARM_BOOT_FROM_CAMERAKEY_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->startMeasurement(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    goto :goto_4d

    .line 498
    :cond_3b
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_COLD_BOOT_FROM_CAMERAKEY_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->startMeasurement(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    .line 500
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_WARM_BOOT_FROM_CAMERAKEY_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->startMeasurement(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    :goto_4d
    return-void
.end method

.method private wakeUpAndVibrateOnLaunch(Landroid/content/Context;)V
    .registers 4

    const-string p0, "power"

    .line 486
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    const v0, 0x1000001a

    const-string v1, "CameraButtonIntentReceiver"

    .line 487
    invoke-virtual {p0, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p0

    const-wide/16 v0, 0x3e8

    .line 489
    invoke-virtual {p0, v0, v1}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 491
    sget-object p0, Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;->EFFECT_STANDARD:Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;

    .line 492
    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera/controller/VibrationManager;->vibrate(Landroid/content/Context;Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12

    monitor-enter p0

    .line 109
    :try_start_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->isOrderedBroadcast()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 110
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->abortBroadcast()V

    .line 111
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_17

    const-string v0, "Intent has been aborted."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 115
    :cond_17
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 116
    const-class v1, Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 118
    invoke-static {p1, v0}, Lcom/sonyericsson/cameracommon/utility/CommonUtility;->isActivityAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_34

    const-string p1, "Camera is disabled, so the request to start camera is refused."

    .line 120
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V
    :try_end_32
    .catchall {:try_start_1 .. :try_end_32} :catchall_317

    .line 121
    monitor-exit p0

    return-void

    :cond_34
    :try_start_34
    const-string v0, "android.intent.extra.SUBJECT"

    .line 125
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "prepare"

    .line 126
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 127
    sget-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->FAST_CAMERA_BUTTON_INTENT_RECEIVED:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/PerfLog;->transit()V

    .line 128
    sget-object v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;->PREPARE:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->setLatestIntent(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;)V

    goto :goto_98

    :cond_4d
    const-string v0, "start"

    .line 129
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 130
    sget-object v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;->START:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->setLatestIntent(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;)V

    goto :goto_98

    :cond_5b
    const-string v0, "start-secure"

    .line 131
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 132
    sget-object v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;->START_SECURE:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->setLatestIntent(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;)V

    goto :goto_98

    :cond_69
    const-string v0, "cancel"

    .line 133
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_77

    .line 134
    sget-object v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;->CANCEL:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->setLatestIntent(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;)V

    goto :goto_98

    :cond_77
    const-string v0, "activity-resumed"

    .line 135
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_85

    .line 136
    sget-object v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;->ACTIVITY_RESUMED:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->setLatestIntent(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;)V

    goto :goto_98

    :cond_85
    const-string v0, "activity-paused"

    .line 137
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_93

    .line 138
    sget-object v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;->ACTIVITY_PAUSED:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->setLatestIntent(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;)V

    goto :goto_98

    .line 140
    :cond_93
    sget-object v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;->NULL:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->setLatestIntent(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;)V

    .line 144
    :goto_98
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/CameraApplication;

    .line 145
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraApplication;->getStorage()Lcom/sonyericsson/cameracommon/storage/Storage;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/setting/SettingsFactory;->create(Landroid/content/Context;Lcom/sonyericsson/cameracommon/storage/Storage;)Lcom/sonyericsson/android/camera/setting/StoredSettings;

    move-result-object v0

    .line 146
    invoke-interface {v0}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getLastSettings()Lcom/sonyericsson/android/camera/setting/LastSettings;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 148
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Receive intent for camera. kind:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sLatestIntent:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " state:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sCurrentState:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " lastMode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 151
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/setting/LastSettings;->getFastCapture()Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " inLockMode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 152
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->isInLockTaskMode(Landroid/content/Context;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 148
    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    .line 155
    sget-object v2, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$1;->$SwitchMap$com$sonyericsson$android$camera$CameraButtonIntentReceiver$ReceiverState:[I

    sget-object v3, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sCurrentState:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x6

    const/4 v5, 0x4

    const/4 v6, 0x3

    if-eq v2, v1, :cond_25b

    if-eq v2, v3, :cond_1f1

    const/4 v7, 0x7

    if-eq v2, v6, :cond_125

    if-eq v2, v5, :cond_109

    goto/16 :goto_315

    .line 440
    :cond_109
    sget-object p1, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$1;->$SwitchMap$com$sonyericsson$android$camera$CameraButtonIntentReceiver$IntentKind:[I

    sget-object p2, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sLatestIntent:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;->ordinal()I

    move-result p2

    aget p1, p1, p2

    if-eq p1, v4, :cond_120

    if-eq p1, v7, :cond_119

    goto/16 :goto_315

    .line 468
    :cond_119
    sget-object p1, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;->IDLE:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->changeStateTo(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;)V

    goto/16 :goto_315

    .line 463
    :cond_120
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->releaseCameraDeviceReleaseTimer()V

    goto/16 :goto_315

    .line 328
    :cond_125
    sget-object v2, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$1;->$SwitchMap$com$sonyericsson$android$camera$CameraButtonIntentReceiver$IntentKind:[I

    sget-object v8, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sLatestIntent:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;->ordinal()I

    move-result v8

    aget v2, v2, v8

    if-eq v2, v1, :cond_1c5

    if-eq v2, v3, :cond_199

    if-eq v2, v6, :cond_172

    if-eq v2, v5, :cond_14b

    if-eq v2, v4, :cond_144

    if-eq v2, v7, :cond_13d

    goto/16 :goto_315

    .line 430
    :cond_13d
    sget-object p1, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;->IDLE:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->changeStateTo(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;)V

    goto/16 :goto_315

    .line 425
    :cond_144
    sget-object p1, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;->ACTIVE:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->changeStateTo(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;)V

    goto/16 :goto_315

    .line 400
    :cond_14b
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->releaseCameraDeviceReleaseTimer()V

    .line 402
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->isQuickLaunchValid(Lcom/sonyericsson/android/camera/setting/LastSettings;)Z

    move-result v1
    :try_end_152
    .catchall {:try_start_34 .. :try_end_152} :catchall_317

    if-nez v1, :cond_156

    .line 403
    monitor-exit p0

    return-void

    .line 408
    :cond_156
    :try_start_156
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->isInLockTaskMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_168

    .line 410
    sget-object p1, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;->IDLE:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->changeStateTo(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;)V

    .line 411
    sget-object p1, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;->NULL:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->setLatestIntent(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;)V

    goto/16 :goto_315

    .line 415
    :cond_168
    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->onDirectStartReceived(Landroid/content/Context;Ljava/lang/String;Lcom/sonyericsson/android/camera/setting/LastSettings;)V

    .line 416
    sget-object p2, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sLatestIntent:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->startMeasurement(Landroid/content/Context;Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;)V

    goto/16 :goto_315

    .line 378
    :cond_172
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->releaseCameraDeviceReleaseTimer()V

    .line 380
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->isQuickLaunchValid(Lcom/sonyericsson/android/camera/setting/LastSettings;)Z

    move-result v1
    :try_end_179
    .catchall {:try_start_156 .. :try_end_179} :catchall_317

    if-nez v1, :cond_17d

    .line 381
    monitor-exit p0

    return-void

    .line 386
    :cond_17d
    :try_start_17d
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->isInLockTaskMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_18f

    .line 388
    sget-object p1, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;->IDLE:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->changeStateTo(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;)V

    .line 389
    sget-object p1, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;->NULL:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->setLatestIntent(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;)V

    goto/16 :goto_315

    .line 393
    :cond_18f
    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->onDirectStartReceived(Landroid/content/Context;Ljava/lang/String;Lcom/sonyericsson/android/camera/setting/LastSettings;)V

    .line 394
    sget-object p2, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sLatestIntent:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->startMeasurement(Landroid/content/Context;Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;)V

    goto/16 :goto_315

    .line 355
    :cond_199
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->releaseCameraDeviceReleaseTimer()V

    .line 357
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->isQuickLaunchValid(Lcom/sonyericsson/android/camera/setting/LastSettings;)Z

    move-result p2
    :try_end_1a0
    .catchall {:try_start_17d .. :try_end_1a0} :catchall_317

    if-nez p2, :cond_1a4

    .line 358
    monitor-exit p0

    return-void

    .line 363
    :cond_1a4
    :try_start_1a4
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->isInLockTaskMode(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1b6

    .line 365
    sget-object p1, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;->IDLE:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->changeStateTo(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;)V

    .line 366
    sget-object p1, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;->NULL:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->setLatestIntent(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;)V

    goto/16 :goto_315

    .line 370
    :cond_1b6
    sget-object p2, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;->PREPARE:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    invoke-static {p2}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->changeStateTo(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;)V

    .line 371
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->onPrepareReceived(Landroid/content/Context;Lcom/sonyericsson/android/camera/setting/LastSettings;)V

    .line 372
    sget-object p2, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sLatestIntent:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->startMeasurement(Landroid/content/Context;Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;)V

    goto/16 :goto_315

    .line 331
    :cond_1c5
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->releaseCameraDeviceReleaseTimer()V

    .line 333
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->isQuickLaunchValid(Lcom/sonyericsson/android/camera/setting/LastSettings;)Z

    move-result p2
    :try_end_1cc
    .catchall {:try_start_1a4 .. :try_end_1cc} :catchall_317

    if-nez p2, :cond_1d0

    .line 334
    monitor-exit p0

    return-void

    .line 339
    :cond_1d0
    :try_start_1d0
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->isInLockTaskMode(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1e2

    .line 341
    sget-object p1, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;->IDLE:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->changeStateTo(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;)V

    .line 342
    sget-object p1, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;->NULL:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->setLatestIntent(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;)V

    goto/16 :goto_315

    .line 347
    :cond_1e2
    sget-object p2, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;->IDLE:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    invoke-static {p2}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->changeStateTo(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;)V

    .line 348
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->onNullReceived(Landroid/content/Context;Lcom/sonyericsson/android/camera/setting/LastSettings;)V

    .line 349
    sget-object p2, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sLatestIntent:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->startMeasurement(Landroid/content/Context;Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;)V

    goto/16 :goto_315

    .line 262
    :cond_1f1
    sget-object v1, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$1;->$SwitchMap$com$sonyericsson$android$camera$CameraButtonIntentReceiver$IntentKind:[I

    sget-object v2, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sLatestIntent:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;->ordinal()I

    move-result v2

    aget v1, v1, v2

    if-eq v1, v6, :cond_23c

    if-eq v1, v5, :cond_21d

    const/4 p2, 0x5

    if-eq v1, p2, :cond_213

    if-eq v1, v4, :cond_206

    goto/16 :goto_315

    .line 312
    :cond_206
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->releaseCameraDeviceReleaseTimer()V

    .line 313
    sget-object p2, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;->ACTIVE:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    invoke-static {p2}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->changeStateTo(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;)V

    .line 314
    invoke-static {p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->startCameraDeviceReleaseTimer(Landroid/content/Context;)V

    goto/16 :goto_315

    .line 306
    :cond_213
    sget-object p2, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;->IDLE:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    invoke-static {p2}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->changeStateTo(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;)V

    .line 307
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->onCancelReceived(Landroid/content/Context;)V

    goto/16 :goto_315

    .line 290
    :cond_21d
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->isInLockTaskMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_22f

    .line 292
    sget-object p1, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;->IDLE:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->changeStateTo(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;)V

    .line 293
    sget-object p1, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;->NULL:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->setLatestIntent(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;)V

    goto/16 :goto_315

    .line 297
    :cond_22f
    sget-object v1, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;->STARTING:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->changeStateTo(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;)V

    .line 298
    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->onStartReceived(Landroid/content/Context;Ljava/lang/String;Lcom/sonyericsson/android/camera/setting/LastSettings;)V

    .line 299
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->wakeUpAndVibrateOnLaunch(Landroid/content/Context;)V

    goto/16 :goto_315

    .line 274
    :cond_23c
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->isInLockTaskMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_24e

    .line 276
    sget-object p1, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;->IDLE:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->changeStateTo(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;)V

    .line 277
    sget-object p1, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;->NULL:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->setLatestIntent(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;)V

    goto/16 :goto_315

    .line 281
    :cond_24e
    sget-object v1, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;->STARTING:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->changeStateTo(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;)V

    .line 282
    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->onStartReceived(Landroid/content/Context;Ljava/lang/String;Lcom/sonyericsson/android/camera/setting/LastSettings;)V

    .line 283
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->wakeUpAndVibrateOnLaunch(Landroid/content/Context;)V

    goto/16 :goto_315

    .line 157
    :cond_25b
    sget-object v2, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$1;->$SwitchMap$com$sonyericsson$android$camera$CameraButtonIntentReceiver$IntentKind:[I

    sget-object v7, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sLatestIntent:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    invoke-virtual {v7}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;->ordinal()I

    move-result v7

    aget v2, v2, v7

    if-eq v2, v1, :cond_2f4

    if-eq v2, v3, :cond_2cd

    if-eq v2, v6, :cond_2a3

    if-eq v2, v5, :cond_278

    if-eq v2, v4, :cond_271

    goto/16 :goto_315

    .line 248
    :cond_271
    sget-object p1, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;->ACTIVE:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->changeStateTo(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;)V

    goto/16 :goto_315

    .line 221
    :cond_278
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->isQuickLaunchValid(Lcom/sonyericsson/android/camera/setting/LastSettings;)Z

    move-result v1
    :try_end_27c
    .catchall {:try_start_1d0 .. :try_end_27c} :catchall_317

    if-nez v1, :cond_280

    .line 222
    monitor-exit p0

    return-void

    .line 227
    :cond_280
    :try_start_280
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->isInLockTaskMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_291

    .line 229
    sget-object p2, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;->IDLE:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    invoke-static {p2}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->changeStateTo(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;)V

    .line 230
    sget-object p2, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;->NULL:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    invoke-static {p2}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->setLatestIntent(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;)V

    goto :goto_29e

    .line 234
    :cond_291
    sget-object v1, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;->STARTING:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->changeStateTo(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;)V

    .line 235
    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->onDirectStartReceived(Landroid/content/Context;Ljava/lang/String;Lcom/sonyericsson/android/camera/setting/LastSettings;)V

    .line 236
    sget-object p2, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sLatestIntent:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->startMeasurement(Landroid/content/Context;Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;)V

    .line 239
    :goto_29e
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->showScreenPinnedToastMessage(Landroid/content/Context;)V

    goto/16 :goto_315

    .line 199
    :cond_2a3
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->isQuickLaunchValid(Lcom/sonyericsson/android/camera/setting/LastSettings;)Z

    move-result v1
    :try_end_2a7
    .catchall {:try_start_280 .. :try_end_2a7} :catchall_317

    if-nez v1, :cond_2ab

    .line 200
    monitor-exit p0

    return-void

    .line 205
    :cond_2ab
    :try_start_2ab
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->isInLockTaskMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2bc

    .line 207
    sget-object p2, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;->IDLE:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    invoke-static {p2}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->changeStateTo(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;)V

    .line 208
    sget-object p2, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;->NULL:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    invoke-static {p2}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->setLatestIntent(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;)V

    goto :goto_2c9

    .line 212
    :cond_2bc
    sget-object v1, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;->STARTING:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->changeStateTo(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;)V

    .line 213
    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->onDirectStartReceived(Landroid/content/Context;Ljava/lang/String;Lcom/sonyericsson/android/camera/setting/LastSettings;)V

    .line 214
    sget-object p2, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sLatestIntent:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->startMeasurement(Landroid/content/Context;Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;)V

    .line 217
    :goto_2c9
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->showScreenPinnedToastMessage(Landroid/content/Context;)V

    goto :goto_315

    .line 179
    :cond_2cd
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->isQuickLaunchValid(Lcom/sonyericsson/android/camera/setting/LastSettings;)Z

    move-result p2
    :try_end_2d1
    .catchall {:try_start_2ab .. :try_end_2d1} :catchall_317

    if-nez p2, :cond_2d5

    .line 180
    monitor-exit p0

    return-void

    .line 185
    :cond_2d5
    :try_start_2d5
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->isInLockTaskMode(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_2e6

    .line 187
    sget-object p1, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;->IDLE:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->changeStateTo(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;)V

    .line 188
    sget-object p1, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;->NULL:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->setLatestIntent(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;)V

    goto :goto_315

    .line 192
    :cond_2e6
    sget-object p2, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;->PREPARE:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    invoke-static {p2}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->changeStateTo(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;)V

    .line 193
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->onPrepareReceived(Landroid/content/Context;Lcom/sonyericsson/android/camera/setting/LastSettings;)V

    .line 194
    sget-object p2, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sLatestIntent:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->startMeasurement(Landroid/content/Context;Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;)V

    goto :goto_315

    .line 159
    :cond_2f4
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->isQuickLaunchValid(Lcom/sonyericsson/android/camera/setting/LastSettings;)Z

    move-result p2
    :try_end_2f8
    .catchall {:try_start_2d5 .. :try_end_2f8} :catchall_317

    if-nez p2, :cond_2fc

    .line 160
    monitor-exit p0

    return-void

    .line 165
    :cond_2fc
    :try_start_2fc
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->isInLockTaskMode(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_30d

    .line 167
    sget-object p1, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;->IDLE:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->changeStateTo(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;)V

    .line 168
    sget-object p1, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;->NULL:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->setLatestIntent(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;)V

    goto :goto_315

    .line 173
    :cond_30d
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->onNullReceived(Landroid/content/Context;Lcom/sonyericsson/android/camera/setting/LastSettings;)V

    .line 174
    sget-object p2, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sLatestIntent:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->startMeasurement(Landroid/content/Context;Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;)V
    :try_end_315
    .catchall {:try_start_2fc .. :try_end_315} :catchall_317

    .line 482
    :goto_315
    monitor-exit p0

    return-void

    :catchall_317
    move-exception p1

    monitor-exit p0

    throw p1
.end method
