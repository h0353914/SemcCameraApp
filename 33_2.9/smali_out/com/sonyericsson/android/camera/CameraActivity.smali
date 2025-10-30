.class public Lcom/sonyericsson/android/camera/CameraActivity;
.super Landroid/app/Activity;
.source "CameraActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Lcom/sonyericsson/cameracommon/activity/TerminateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffListenerImpl;,
        Lcom/sonyericsson/android/camera/CameraActivity$PermissionCheckCallback;,
        Lcom/sonyericsson/android/camera/CameraActivity$ExtendedOrientationEventListener;,
        Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientationChangedListener;,
        Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffTimerImpl;,
        Lcom/sonyericsson/android/camera/CameraActivity$CameraActivityFinishBroadcastReceiver;,
        Lcom/sonyericsson/android/camera/CameraActivity$ForceExitRequestReceiver;,
        Lcom/sonyericsson/android/camera/CameraActivity$CreateContentInfoTask;,
        Lcom/sonyericsson/android/camera/CameraActivity$ThermalAlertReceiverOnDestroyTask;,
        Lcom/sonyericsson/android/camera/CameraActivity$ThermalAlertReceiverOnPauseTask;,
        Lcom/sonyericsson/android/camera/CameraActivity$PostDeviceInitializationTask;,
        Lcom/sonyericsson/android/camera/CameraActivity$LazyInitializationTask;,
        Lcom/sonyericsson/android/camera/CameraActivity$ThermalAlertReceiverOnResumeTask;,
        Lcom/sonyericsson/android/camera/CameraActivity$DelayLaunchInternalModeTask;,
        Lcom/sonyericsson/android/camera/CameraActivity$OnPreviewStartedListenerImpl;,
        Lcom/sonyericsson/android/camera/CameraActivity$ViewFinderInitializationTask;,
        Lcom/sonyericsson/android/camera/CameraActivity$ThermalAlertReceiverOnCreateTask;,
        Lcom/sonyericsson/android/camera/CameraActivity$ThermalAlertReceiverCreateTask;,
        Lcom/sonyericsson/android/camera/CameraActivity$SetupAllTask;,
        Lcom/sonyericsson/android/camera/CameraActivity$HomeKeyEventReceiver;,
        Lcom/sonyericsson/android/camera/CameraActivity$ShutDownReceiver;,
        Lcom/sonyericsson/android/camera/CameraActivity$ScreenOffReceiver;,
        Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffTimerController;,
        Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;,
        Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;,
        Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;
    }
.end annotation


# static fields
.field private static final ASYNC_ACT_TIMEOUT_MILLIS:I = 0xbb8

.field private static final GET_SCREEN_STATUS_DELAY_TIME_MILLIS:I = 0x32

.field public static final INTENT_SUBJECT_CANCEL:Ljava/lang/String; = "cancel"

.field public static final INTENT_SUBJECT_PAUSED:Ljava/lang/String; = "activity-paused"

.field public static final INTENT_SUBJECT_PREPARE:Ljava/lang/String; = "prepare"

.field public static final INTENT_SUBJECT_RESUMED:Ljava/lang/String; = "activity-resumed"

.field public static final INTENT_SUBJECT_START:Ljava/lang/String; = "start"

.field public static final INTENT_SUBJECT_START_SECURE:Ljava/lang/String; = "start-secure"

.field private static final PREPARE_PLATFORM_CAPABILITY_TIMED_OUT_MILLIS:J = 0x7d0L

.field private static final RESULT_AUTO_OFF_TIMER:I = 0x2

.field public static final SETUP_DEVICE_SETUP_WAIT_TIME:I = 0x64

.field private static final SETUP_LAZY_EXECUTION_WAIT_TIME:I = 0xc8

.field private static final SYSTEM_DIALOG_REASON_HOME_KEY:Ljava/lang/String; = "homekey"

.field private static final SYSTEM_DIALOG_REASON_KEY:Ljava/lang/String; = "reason"

.field private static final TAG:Ljava/lang/String; = "CameraActivity"

.field private static sIsReportFullyDrawnAlreadyReported:Z = false


# instance fields
.field private MAX_COUNT:I

.field private final REQUESTED_CAMERA_PERMISSIONS:[Ljava/lang/String;

.field private final REQUESTED_PERMISSIONS:[Ljava/lang/String;

.field private isLaunchFromNewIntent:Z

.field private mActivityResultListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/sonyericsson/cameracommon/activity/OnActivityResultListener;",
            ">;"
        }
    .end annotation
.end field

.field private mAutoPowerOffTimer:Lcom/sonyericsson/android/camera/AutoPowerOffTimer;

.field public mAutoPowerOffTimerImpl:Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffTimerImpl;

.field private mBackgroundWorker:Ljava/util/concurrent/ExecutorService;

.field private mBatteryChangedListener:Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver$BatteryChangedReceiverListener;

.field private mBatteryChangedReceiver:Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;

.field private mCameraActivityFinishReceiver:Lcom/sonyericsson/android/camera/CameraActivity$CameraActivityFinishBroadcastReceiver;

.field private mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

.field private mCheckAndRequestSelfPermissionsTask:Ljava/lang/Runnable;

.field private mCreateContentInfoTaskFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private mCurrentCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

.field private mDelayLaunchInternalModeTask:Lcom/sonyericsson/android/camera/CameraActivity$DelayLaunchInternalModeTask;

.field private mDelayLaunchInternalModeTaskCount:I

.field private mDelayToResume:Z

.field private mDisableMultiWindow:Z

.field private mForceExitRequestReceiver:Lcom/sonyericsson/android/camera/CameraActivity$ForceExitRequestReceiver;

.field private mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

.field private mHomeKeyEventReceiver:Lcom/sonyericsson/android/camera/CameraActivity$HomeKeyEventReceiver;

.field private mIsBackDown:Z

.field private mIsCalledOnDestroy:Z

.field private mIsColdBoot:Z

.field private mIsLazyInitializationRunning:Z

.field private mIsNeedToCloseBypassCameraBecauseModeChanged:Z

.field private mIsReceiverResistered:Z

.field private mIsSaveZoomInfoNeeded:Z

.field private mIsSetupCompleted:Z

.field private final mKeyEventDispatcher:Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventDispatcher;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLastDetectedOrientation:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

.field private mLastDeterminedOrientationDegree:I

.field private mLastOrientationDegree:I

.field private mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

.field private final mLayoutOrientationChangedListenerSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientationChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLazyInitializationiTask:Lcom/sonyericsson/android/camera/CameraActivity$LazyInitializationTask;

.field private mOrientationEventListener:Landroid/view/OrientationEventListener;

.field private mPostDeviceInitializationTask:Lcom/sonyericsson/android/camera/CameraActivity$PostDeviceInitializationTask;

.field private mReturnOneShotResult:Z

.field private mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

.field private mScreenOffReceiver:Lcom/sonyericsson/android/camera/CameraActivity$ScreenOffReceiver;

.field private mSensorOrientationDegree:I

.field private mSetupAllTaskFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private mSetupWizardResultListener:Lcom/sonyericsson/cameracommon/activity/OnActivityResultListener;

.field private mShutDownReceiver:Lcom/sonyericsson/android/camera/CameraActivity$ShutDownReceiver;

.field private final mSideTouchEventDispatcher:Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventDispatcher;

.field private mSoundPlayer:Lcom/sonyericsson/cameracommon/sound/SoundPlayer;

.field protected mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

.field private mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

.field private mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

.field private mThermalAlertListener:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$ThermalAlertReceiverListener;

.field private mThermalAlertReceiver:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;

.field private mThermalAlertReceiverReadyTaskFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private mUserEventHandler:Lcom/sonyericsson/android/camera/view/UserEventHandler;

.field private mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

.field private mViewFinderInitializationTaskFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .line 147
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x1

    .line 191
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mReturnOneShotResult:Z

    const/4 v1, 0x0

    .line 193
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mDisableMultiWindow:Z

    const/4 v2, 0x0

    .line 246
    iput-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mSoundPlayer:Lcom/sonyericsson/cameracommon/sound/SoundPlayer;

    .line 263
    iput-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mPostDeviceInitializationTask:Lcom/sonyericsson/android/camera/CameraActivity$PostDeviceInitializationTask;

    .line 264
    iput-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLazyInitializationiTask:Lcom/sonyericsson/android/camera/CameraActivity$LazyInitializationTask;

    .line 266
    iput-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mDelayLaunchInternalModeTask:Lcom/sonyericsson/android/camera/CameraActivity$DelayLaunchInternalModeTask;

    .line 267
    iput v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mDelayLaunchInternalModeTaskCount:I

    const/4 v3, 0x7

    .line 268
    iput v3, p0, Lcom/sonyericsson/android/camera/CameraActivity;->MAX_COUNT:I

    .line 270
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mIsLazyInitializationRunning:Z

    .line 273
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraActivity;->getStartupPermissions()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->REQUESTED_PERMISSIONS:[Ljava/lang/String;

    const-string v0, "android.permission.CAMERA"

    .line 276
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->REQUESTED_CAMERA_PERMISSIONS:[Ljava/lang/String;

    .line 303
    iput-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mBackgroundWorker:Ljava/util/concurrent/ExecutorService;

    .line 308
    iput-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mThermalAlertReceiverReadyTaskFuture:Ljava/util/concurrent/Future;

    .line 309
    iput-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mViewFinderInitializationTaskFuture:Ljava/util/concurrent/Future;

    .line 310
    iput-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mSetupAllTaskFuture:Ljava/util/concurrent/Future;

    .line 311
    iput-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCreateContentInfoTaskFuture:Ljava/util/concurrent/Future;

    .line 322
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mDelayToResume:Z

    .line 325
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mIsColdBoot:Z

    .line 328
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mIsNeedToCloseBypassCameraBecauseModeChanged:Z

    .line 333
    iput-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 354
    sget-object v0, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->Unknown:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLastDetectedOrientation:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    .line 359
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLayoutOrientationChangedListenerSet:Ljava/util/Set;

    const/4 v0, -0x1

    .line 363
    iput v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mSensorOrientationDegree:I

    .line 365
    iput v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLastOrientationDegree:I

    .line 367
    iput v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLastDeterminedOrientationDegree:I

    .line 370
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mIsReceiverResistered:Z

    .line 374
    iput-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mForceExitRequestReceiver:Lcom/sonyericsson/android/camera/CameraActivity$ForceExitRequestReceiver;

    .line 376
    iput-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCameraActivityFinishReceiver:Lcom/sonyericsson/android/camera/CameraActivity$CameraActivityFinishBroadcastReceiver;

    .line 379
    new-instance v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventDispatcher;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventDispatcher;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mKeyEventDispatcher:Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventDispatcher;

    .line 381
    new-instance v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventDispatcher;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventDispatcher;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mSideTouchEventDispatcher:Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventDispatcher;

    .line 384
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mIsSaveZoomInfoNeeded:Z

    .line 385
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mIsSetupCompleted:Z

    .line 389
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mIsBackDown:Z

    .line 463
    new-instance v0, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffTimerImpl;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffTimerImpl;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mAutoPowerOffTimerImpl:Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffTimerImpl;

    .line 465
    new-instance v0, Lcom/sonyericsson/android/camera/CameraActivity$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/CameraActivity$1;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mThermalAlertListener:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$ThermalAlertReceiverListener;

    .line 547
    new-instance v0, Lcom/sonyericsson/android/camera/CameraActivity$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/CameraActivity$2;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mBatteryChangedListener:Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver$BatteryChangedReceiverListener;

    .line 576
    new-instance v0, Lcom/sonyericsson/android/camera/CameraActivity$3;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/CameraActivity$3;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mSetupWizardResultListener:Lcom/sonyericsson/cameracommon/activity/OnActivityResultListener;

    return-void
.end method

.method private abort(Z)V
    .registers 5

    .line 2285
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    if-eqz v0, :cond_3d

    const/4 v1, 0x0

    if-eqz p1, :cond_2f

    .line 2293
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isDeviceInSecurityLock()Z

    move-result p1

    if-nez p1, :cond_2b

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isInLockTaskMode()Z

    move-result p1

    if-eqz p1, :cond_14

    goto :goto_2b

    .line 2295
    :cond_14
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->isOneShot()Z

    move-result p1

    if-eqz p1, :cond_27

    .line 2296
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mReturnOneShotResult:Z

    if-eqz p1, :cond_23

    .line 2297
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->setResult(I)V

    .line 2299
    :cond_23
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->finishUrgently()V

    goto :goto_3d

    .line 2301
    :cond_27
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->requestSuspend()V

    goto :goto_3d

    .line 2294
    :cond_2b
    :goto_2b
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->finish()V

    goto :goto_3d

    .line 2305
    :cond_2f
    sget-object p0, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_PAUSE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, p1, v1

    invoke-virtual {v0, p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    :cond_3d
    :goto_3d
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera/CameraActivity;)Z
    .registers 1

    .line 147
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isRecording()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera/CameraActivity;)V
    .registers 1

    .line 147
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->releaseCamera()V

    return-void
.end method

.method static synthetic access$1500(Lcom/sonyericsson/android/camera/CameraActivity;)V
    .registers 1

    .line 147
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->setupAll()V

    return-void
.end method

.method static synthetic access$1600(Lcom/sonyericsson/android/camera/CameraActivity;)Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;
    .registers 1

    .line 147
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mThermalAlertReceiver:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;

    return-object p0
.end method

.method static synthetic access$1602(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;)Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;
    .registers 2

    .line 147
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mThermalAlertReceiver:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/sonyericsson/android/camera/CameraActivity;)Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$ThermalAlertReceiverListener;
    .registers 1

    .line 147
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mThermalAlertListener:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$ThermalAlertReceiverListener;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/sonyericsson/android/camera/CameraActivity;)Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;
    .registers 1

    .line 147
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mBatteryChangedReceiver:Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sonyericsson/android/camera/CameraActivity;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;
    .registers 1

    .line 147
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/sonyericsson/android/camera/CameraActivity;)Lcom/sonyericsson/cameracommon/activity/OnActivityResultListener;
    .registers 1

    .line 147
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mSetupWizardResultListener:Lcom/sonyericsson/cameracommon/activity/OnActivityResultListener;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/sonyericsson/android/camera/CameraActivity;)V
    .registers 1

    .line 147
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->unregisterScreenOffReceiver()V

    return-void
.end method

.method static synthetic access$2400(Lcom/sonyericsson/android/camera/CameraActivity;)I
    .registers 1

    .line 147
    iget p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mDelayLaunchInternalModeTaskCount:I

    return p0
.end method

.method static synthetic access$2402(Lcom/sonyericsson/android/camera/CameraActivity;I)I
    .registers 2

    .line 147
    iput p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mDelayLaunchInternalModeTaskCount:I

    return p1
.end method

.method static synthetic access$2408(Lcom/sonyericsson/android/camera/CameraActivity;)I
    .registers 3

    .line 147
    iget v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mDelayLaunchInternalModeTaskCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mDelayLaunchInternalModeTaskCount:I

    return v0
.end method

.method static synthetic access$2500(Lcom/sonyericsson/android/camera/CameraActivity;)Z
    .registers 1

    .line 147
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isKeyguardLocked()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2600(Lcom/sonyericsson/android/camera/CameraActivity;)Lcom/sonyericsson/android/camera/CameraActivity$DelayLaunchInternalModeTask;
    .registers 1

    .line 147
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mDelayLaunchInternalModeTask:Lcom/sonyericsson/android/camera/CameraActivity$DelayLaunchInternalModeTask;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/sonyericsson/android/camera/CameraActivity;)V
    .registers 1

    .line 147
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->launchInternalMode()V

    return-void
.end method

.method static synthetic access$2800(Lcom/sonyericsson/android/camera/CameraActivity;)I
    .registers 1

    .line 147
    iget p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->MAX_COUNT:I

    return p0
.end method

.method static synthetic access$2900(Lcom/sonyericsson/android/camera/CameraActivity;)Lcom/sonyericsson/android/camera/view/ViewFinder;
    .registers 1

    .line 147
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    return-object p0
.end method

.method static synthetic access$300(Lcom/sonyericsson/android/camera/CameraActivity;)Lcom/sonyericsson/android/camera/LaunchConditionImpl;
    .registers 1

    .line 147
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/sonyericsson/android/camera/CameraActivity;)V
    .registers 1

    .line 147
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->requestFinishCameraActivity()V

    return-void
.end method

.method static synthetic access$3102(Lcom/sonyericsson/android/camera/CameraActivity;Z)Z
    .registers 2

    .line 147
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mIsLazyInitializationRunning:Z

    return p1
.end method

.method static synthetic access$3200(Lcom/sonyericsson/android/camera/CameraActivity;)Lcom/sonyericsson/android/camera/setting/StoredSettings;
    .registers 1

    .line 147
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/sonyericsson/android/camera/CameraActivity;)Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;
    .registers 1

    .line 147
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/sonyericsson/android/camera/CameraActivity;)Lcom/sonyericsson/android/camera/CameraActivity$LazyInitializationTask;
    .registers 1

    .line 147
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLazyInitializationiTask:Lcom/sonyericsson/android/camera/CameraActivity$LazyInitializationTask;

    return-object p0
.end method

.method static synthetic access$3402(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/CameraActivity$LazyInitializationTask;)Lcom/sonyericsson/android/camera/CameraActivity$LazyInitializationTask;
    .registers 2

    .line 147
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLazyInitializationiTask:Lcom/sonyericsson/android/camera/CameraActivity$LazyInitializationTask;

    return-object p1
.end method

.method static synthetic access$3500(Lcom/sonyericsson/android/camera/CameraActivity;Ljava/lang/Runnable;)V
    .registers 2

    .line 147
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraActivity;->postEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/sonyericsson/android/camera/CameraActivity;)Z
    .registers 1

    .line 147
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mIsCalledOnDestroy:Z

    return p0
.end method

.method static synthetic access$3802(Lcom/sonyericsson/android/camera/CameraActivity;Z)Z
    .registers 2

    .line 147
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mIsCalledOnDestroy:Z

    return p1
.end method

.method static synthetic access$400(Lcom/sonyericsson/android/camera/CameraActivity;)V
    .registers 1

    .line 147
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->finishUrgently()V

    return-void
.end method

.method static synthetic access$4002(Lcom/sonyericsson/android/camera/CameraActivity;I)I
    .registers 2

    .line 147
    iput p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mSensorOrientationDegree:I

    return p1
.end method

.method static synthetic access$4100(Lcom/sonyericsson/android/camera/CameraActivity;)I
    .registers 1

    .line 147
    iget p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLastOrientationDegree:I

    return p0
.end method

.method static synthetic access$4102(Lcom/sonyericsson/android/camera/CameraActivity;I)I
    .registers 2

    .line 147
    iput p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLastOrientationDegree:I

    return p1
.end method

.method static synthetic access$4202(Lcom/sonyericsson/android/camera/CameraActivity;I)I
    .registers 2

    .line 147
    iput p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLastDeterminedOrientationDegree:I

    return p1
.end method

.method static synthetic access$4300(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;)V
    .registers 2

    .line 147
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraActivity;->notifyLayoutOrientationChanged(Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/sonyericsson/android/camera/CameraActivity;)Z
    .registers 1

    .line 147
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mIsSetupCompleted:Z

    return p0
.end method

.method static synthetic access$4600(Lcom/sonyericsson/android/camera/CameraActivity;)V
    .registers 1

    .line 147
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->setup()V

    return-void
.end method

.method static synthetic access$700(Lcom/sonyericsson/android/camera/CameraActivity;)Lcom/sonyericsson/cameracommon/storage/Storage;
    .registers 1

    .line 147
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    return-object p0
.end method

.method static synthetic access$802(Lcom/sonyericsson/android/camera/CameraActivity;Ljava/util/concurrent/Future;)Ljava/util/concurrent/Future;
    .registers 2

    .line 147
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mSetupAllTaskFuture:Ljava/util/concurrent/Future;

    return-object p1
.end method

.method static synthetic access$900(Lcom/sonyericsson/android/camera/CameraActivity;)Ljava/util/concurrent/ExecutorService;
    .registers 1

    .line 147
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mBackgroundWorker:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method private addActivityResultListener(ILcom/sonyericsson/cameracommon/activity/OnActivityResultListener;)Z
    .registers 4

    .line 3391
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mActivityResultListeners:Landroid/util/SparseArray;

    if-nez v0, :cond_b

    .line 3392
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mActivityResultListeners:Landroid/util/SparseArray;

    .line 3395
    :cond_b
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mActivityResultListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    const/4 p0, 0x0

    return p0

    .line 3399
    :cond_15
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mActivityResultListeners:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method private addExternalCameraAppContent(Landroid/content/Intent;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    .line 2640
    :cond_3
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isDeviceInSecurityLock()Z

    move-result v0

    if-eqz v0, :cond_24

    const-string v0, "com.sonyericsson.android.camera.extra.CAPTURED_URIS"

    .line 2643
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_24

    .line 2645
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_24

    .line 2646
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mBackgroundWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonyericsson/android/camera/CameraActivity$CreateContentInfoTask;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/android/camera/CameraActivity$CreateContentInfoTask;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;Ljava/util/ArrayList;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCreateContentInfoTaskFuture:Ljava/util/concurrent/Future;

    :cond_24
    return-void
.end method

.method private awaitCreateContentInfoReady()Z
    .registers 1

    .line 2672
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCreateContentInfoTaskFuture:Ljava/util/concurrent/Future;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getFuture(Ljava/util/concurrent/Future;)Z

    move-result p0

    return p0
.end method

.method private awaitThermalAlertReceiverReady()Z
    .registers 1

    .line 1717
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mThermalAlertReceiverReadyTaskFuture:Ljava/util/concurrent/Future;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getFuture(Ljava/util/concurrent/Future;)Z

    move-result p0

    return p0
.end method

.method private cancelDelayedEvent(Ljava/lang/Runnable;)V
    .registers 2

    .line 1802
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private changeParametersForGoogleAssistant()V
    .registers 5

    .line 3563
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getUserSettings()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    .line 3564
    invoke-interface {v0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->getParameters()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v1

    if-nez v1, :cond_12

    .line 3567
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->clearLaunchCameraMode()V

    return-void

    .line 3571
    :cond_12
    sget-object v2, Lcom/sonyericsson/android/camera/CameraActivity$12;->$SwitchMap$com$sonyericsson$android$camera$LaunchCondition$LaunchCameraMode:[I

    iget-object v3, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getLaunchCameraMode()Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2e

    const/4 p0, 0x2

    if-eq v2, p0, :cond_28

    goto/16 :goto_91

    .line 3604
    :cond_28
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->SUPER_SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    invoke-interface {v0, p0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    goto :goto_91

    .line 3573
    :cond_2e
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getVideoCodec()Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;

    move-result-object v2

    .line 3574
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getVideoSize()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v1

    if-eqz v2, :cond_92

    if-nez v1, :cond_3b

    goto :goto_92

    .line 3581
    :cond_3b
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->is4KVideo()Z

    move-result v1

    if-nez v1, :cond_8c

    .line 3582
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;->H264:Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;

    if-ne v2, v1, :cond_67

    .line 3583
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getScreenAspect()Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;->TWENTYONE_NINE:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    if-ne v1, v2, :cond_53

    .line 3584
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_ULTRA_H264:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-interface {v0, p0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    goto :goto_8c

    .line 3585
    :cond_53
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getScreenAspect()Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    move-result-object p0

    sget-object v1, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;->EIGHTEEN_NINE:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    if-ne p0, v1, :cond_61

    .line 3586
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_PLUS_H264:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-interface {v0, p0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    goto :goto_8c

    .line 3588
    :cond_61
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_H264:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-interface {v0, p0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    goto :goto_8c

    .line 3590
    :cond_67
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;->H265:Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;

    if-ne v2, v1, :cond_8c

    .line 3591
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getScreenAspect()Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;->TWENTYONE_NINE:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    if-ne v1, v2, :cond_79

    .line 3592
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_ULTRA_H265:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-interface {v0, p0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    goto :goto_8c

    .line 3593
    :cond_79
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getScreenAspect()Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    move-result-object p0

    sget-object v1, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;->EIGHTEEN_NINE:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    if-ne p0, v1, :cond_87

    .line 3594
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_PLUS_H265:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-interface {v0, p0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    goto :goto_8c

    .line 3596
    :cond_87
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_H265:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-interface {v0, p0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 3600
    :cond_8c
    :goto_8c
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    invoke-interface {v0, p0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    :goto_91
    return-void

    .line 3577
    :cond_92
    :goto_92
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->clearLaunchCameraMode()V

    return-void
.end method

.method private convertRect(Landroid/graphics/Rect;)V
    .registers 3

    .line 3695
    iget p0, p1, Landroid/graphics/Rect;->right:I

    .line 3696
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 3697
    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method private createBatteryChangedReceiver()V
    .registers 3

    .line 2804
    new-instance v0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mBatteryChangedListener:Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver$BatteryChangedReceiverListener;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;-><init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver$BatteryChangedReceiverListener;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mBatteryChangedReceiver:Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;

    return-void
.end method

.method private createLaunchCondition()V
    .registers 3

    .line 2751
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/IntentReader;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/configuration/IntentReader;-><init>()V

    .line 2753
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/configuration/IntentReader;->getVideoQualityConfigurations(Landroid/content/Intent;)Lcom/sonyericsson/android/camera/configuration/IntentReader$VideoQualityConfigurations;

    move-result-object v0

    .line 2754
    new-instance v1, Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-direct {v1, v0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;-><init>(Lcom/sonyericsson/android/camera/configuration/IntentReader$VideoQualityConfigurations;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    return-void
.end method

.method private createViewFinder()Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
    .registers 5

    .line 1216
    new-instance v0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    .line 1217
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getScreenAspect()Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getStoredSettings()Lcom/sonyericsson/android/camera/setting/StoredSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getUiControlSettings()Lcom/sonyericsson/android/camera/setting/UiControlSettings;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;Lcom/sonyericsson/android/camera/setting/UiControlSettings;Lcom/sonyericsson/android/camera/LaunchCondition;)V

    .line 1219
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->setStateMachine(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    .line 1220
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getCameraDevice()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->setCameraDevice(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)V

    .line 1222
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mBackgroundWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/sonyericsson/android/camera/CameraActivity$ViewFinderInitializationTask;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/sonyericsson/android/camera/CameraActivity$ViewFinderInitializationTask;-><init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Lcom/sonyericsson/android/camera/CameraActivity$1;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mViewFinderInitializationTaskFuture:Ljava/util/concurrent/Future;

    return-object v0
.end method

.method private disableOrientation()V
    .registers 2

    .line 3113
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "disableOrientation()"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3114
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_17

    .line 3115
    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    const/4 v0, 0x0

    .line 3116
    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    :cond_17
    return-void
.end method

.method private doPause()V
    .registers 7

    .line 1963
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getCameraDevice()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->removeOnPreviewStartedListener()V

    .line 1966
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_PAUSE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-virtual {v0, v1, v3}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 1971
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    if-eqz v0, :cond_5c

    .line 1973
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getUserSettings()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 1974
    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eqz v0, :cond_5c

    .line 1976
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mIsSaveZoomInfoNeeded:Z

    if-eqz v1, :cond_3c

    .line 1977
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    invoke-interface {v2}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getLastSettings()Lcom/sonyericsson/android/camera/setting/LastSettings;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->saveZoomSettings(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/setting/LastSettings;)V

    goto :goto_45

    .line 1979
    :cond_3c
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    invoke-interface {v1}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getLastSettings()Lcom/sonyericsson/android/camera/setting/LastSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/setting/LastSettings;->clearZoomInfo()V

    .line 1981
    :goto_45
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    invoke-interface {v2}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getUserSettings()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    .line 1982
    invoke-interface {v3}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getLastSettings()Lcom/sonyericsson/android/camera/setting/LastSettings;

    move-result-object v3

    iget-object v5, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->isOneShot()Z

    move-result v5

    .line 1981
    invoke-virtual {v1, v0, v2, v3, v5}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->savePreloadSettings(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/setting/LastSettings;Z)V

    .line 1986
    :cond_5c
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->releaseCamera()V

    const/4 v0, 0x0

    .line 1987
    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCurrentCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    .line 1990
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mBackgroundWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/sonyericsson/android/camera/CameraActivity$ThermalAlertReceiverOnPauseTask;

    invoke-direct {v2, p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity$ThermalAlertReceiverOnPauseTask;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/CameraActivity$1;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1992
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    if-eqz v0, :cond_73

    .line 1993
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->releaseResource()V

    .line 1997
    :cond_73
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mPostDeviceInitializationTask:Lcom/sonyericsson/android/camera/CameraActivity$PostDeviceInitializationTask;

    if-eqz v0, :cond_7a

    .line 1998
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->cancelDelayedEvent(Ljava/lang/Runnable;)V

    .line 2000
    :cond_7a
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLazyInitializationiTask:Lcom/sonyericsson/android/camera/CameraActivity$LazyInitializationTask;

    if-eqz v0, :cond_81

    .line 2001
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->cancelDelayedEvent(Ljava/lang/Runnable;)V

    .line 2004
    :cond_81
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mDelayLaunchInternalModeTask:Lcom/sonyericsson/android/camera/CameraActivity$DelayLaunchInternalModeTask;

    if-eqz v0, :cond_88

    .line 2005
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->cancelDelayedEvent(Ljava/lang/Runnable;)V

    .line 2008
    :cond_88
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->releaseContentsViewController()V

    .line 2011
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mIsReceiverResistered:Z

    if-eqz v0, :cond_93

    .line 2012
    iput-boolean v4, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mIsReceiverResistered:Z

    .line 2016
    :cond_93
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->disableAutoPowerOffTimer()V

    .line 2019
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 2022
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->unmuteSound()V

    .line 2024
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->clearMessageDialog()V

    .line 2027
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->disableOrientation()V

    .line 2029
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->onPause(Z)V

    .line 2035
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getUserSettings()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    if-eqz v0, :cond_d2

    .line 2036
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    invoke-interface {v1}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getUserSettings()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 2037
    invoke-interface {v1, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 2036
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 2039
    :cond_d2
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->onPause()V

    return-void
.end method

.method private doResume()V
    .registers 9

    .line 1351
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->isCorrectExtraOutputPath()Z

    move-result v0

    const/16 v1, 0x80

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v0, :cond_41

    .line 1352
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0f0181

    .line 1353
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0f0180

    .line 1354
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 1355
    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0f02ea

    .line 1356
    invoke-virtual {v3, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/sonyericsson/android/camera/CameraActivity$7;

    invoke-direct {v3, p0}, Lcom/sonyericsson/android/camera/CameraActivity$7;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;)V

    .line 1357
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 1363
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 1364
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1365
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void

    .line 1371
    :cond_41
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getStorage()Lcom/sonyericsson/cameracommon/storage/Storage;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->resume()V

    .line 1374
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->enableOrientation()V

    .line 1376
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->isLaunchInternalMode()Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 1377
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isKeyguardLocked()Z

    move-result v0

    if-nez v0, :cond_5f

    .line 1378
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->launchInternalMode()V

    goto :goto_6b

    .line 1380
    :cond_5f
    new-instance v0, Lcom/sonyericsson/android/camera/CameraActivity$DelayLaunchInternalModeTask;

    invoke-direct {v0, p0, v2}, Lcom/sonyericsson/android/camera/CameraActivity$DelayLaunchInternalModeTask;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/CameraActivity$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mDelayLaunchInternalModeTask:Lcom/sonyericsson/android/camera/CameraActivity$DelayLaunchInternalModeTask;

    const-wide/16 v4, 0x32

    .line 1381
    invoke-virtual {p0, v0, v4, v5}, Lcom/sonyericsson/android/camera/CameraActivity;->postDelayedEvent(Ljava/lang/Runnable;J)V

    .line 1386
    :cond_6b
    :goto_6b
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getLaunchTrigger()Lcom/sonyericsson/android/camera/LaunchTrigger;

    move-result-object v0

    sget-object v4, Lcom/sonyericsson/android/camera/LaunchTrigger;->VIEWER:Lcom/sonyericsson/android/camera/LaunchTrigger;

    if-eq v0, v4, :cond_7e

    .line 1387
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getUserSettings()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->clearCachedUserSetting()V

    .line 1391
    :cond_7e
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getUserSettings()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    iget-object v4, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    .line 1392
    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v4

    .line 1391
    invoke-interface {v0, v4}, Lcom/sonyericsson/android/camera/setting/UserSettings;->changeCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 1393
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getLaunchCameraMode()Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;->isLaunchedByGoogleAssistant()Z

    move-result v0

    if-eqz v0, :cond_9c

    .line 1394
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->changeParametersForGoogleAssistant()V

    .line 1398
    :cond_9c
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getLastSettings()Lcom/sonyericsson/android/camera/setting/LastSettings;

    move-result-object v0

    iget-object v4, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    .line 1399
    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getUserSetting()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v4

    sget-object v5, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v4, v5}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 1398
    invoke-virtual {v0, v4}, Lcom/sonyericsson/android/camera/setting/LastSettings;->getBokehSetting(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/Bokeh;

    move-result-object v0

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/Bokeh;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/Bokeh;

    if-ne v0, v4, :cond_cd

    .line 1401
    sget-object v0, Lcom/sonyericsson/android/camera/LaunchTrigger;->VIEWER:Lcom/sonyericsson/android/camera/LaunchTrigger;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getLaunchTrigger()Lcom/sonyericsson/android/camera/LaunchTrigger;

    move-result-object v4

    if-ne v0, v4, :cond_cd

    .line 1402
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getUserSettings()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/Bokeh;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/Bokeh;

    invoke-interface {v0, v4}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 1406
    :cond_cd
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getLaunchTrigger()Lcom/sonyericsson/android/camera/LaunchTrigger;

    move-result-object v0

    sget-object v4, Lcom/sonyericsson/android/camera/LaunchTrigger;->OTHER:Lcom/sonyericsson/android/camera/LaunchTrigger;

    if-eq v0, v4, :cond_e0

    .line 1407
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getLastSettings()Lcom/sonyericsson/android/camera/setting/LastSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/setting/LastSettings;->clearZoomInfo()V

    .line 1411
    :cond_e0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getCameraDevice()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    .line 1412
    iget-object v4, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {v0, v4}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setStateMachine(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    .line 1415
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isLaunchAndCapture()Z

    move-result v0

    .line 1416
    iget-object v4, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getExtraOperation()Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;

    move-result-object v4

    sget-object v5, Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;->LAUNCH_AND_CAPTURE:Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;

    if-ne v4, v5, :cond_fc

    .line 1417
    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_AND_CAPTURE:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    goto :goto_fe

    .line 1419
    :cond_fc
    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_ONLY:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    .line 1424
    :goto_fe
    iget-object v5, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    .line 1425
    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v5

    iget-object v6, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    .line 1426
    invoke-interface {v6}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getUserSettings()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v6

    .line 1424
    invoke-virtual {p0, v4, v5, v6}, Lcom/sonyericsson/android/camera/CameraActivity;->prepareCameraDeviceHandler(Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/setting/UserSettings;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object v4

    iput-object v4, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCurrentCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    .line 1427
    iget-object v4, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    new-instance v5, Lcom/sonyericsson/android/camera/CameraActivity$OnPreviewStartedListenerImpl;

    iget-object v6, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCurrentCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {v5, p0, v6}, Lcom/sonyericsson/android/camera/CameraActivity$OnPreviewStartedListenerImpl;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    invoke-virtual {v4, v5}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setOnPreviewStartedListener(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnPreviewStartedListener;)V

    .line 1430
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    .line 1433
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1435
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getCameraDevice()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->awaitLoadSettingsThread()Z

    .line 1437
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    if-eqz v1, :cond_138

    .line 1438
    invoke-virtual {v1, p0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->readLocationSettings(Landroid/content/Context;)V

    .line 1441
    :cond_138
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->isSmartLaunch()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->setupAutoPowerOffTimeOutDuration(Z)V

    .line 1444
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->enableAutoPowerOffTimer()V

    .line 1446
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->onResume(Z)V

    .line 1449
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getCameraDevice()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->disableFpsLimitation()V

    .line 1452
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    check-cast v1, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->updatePreviewLayoutParams()V

    .line 1454
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isDeviceInSecurityLock()Z

    move-result v1

    if-eqz v1, :cond_176

    .line 1455
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getLaunchTrigger()Lcom/sonyericsson/android/camera/LaunchTrigger;

    move-result-object v1

    sget-object v4, Lcom/sonyericsson/android/camera/LaunchTrigger;->DUAL_CAMERA_EFFECT:Lcom/sonyericsson/android/camera/LaunchTrigger;

    if-eq v1, v4, :cond_173

    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    .line 1456
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getLaunchTrigger()Lcom/sonyericsson/android/camera/LaunchTrigger;

    move-result-object v1

    sget-object v4, Lcom/sonyericsson/android/camera/LaunchTrigger;->PORTRAIT_SELFIE:Lcom/sonyericsson/android/camera/LaunchTrigger;

    if-ne v1, v4, :cond_176

    .line 1457
    :cond_173
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->awaitCreateContentInfoReady()Z

    .line 1461
    :cond_176
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v1

    sget-object v4, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_COLD_BOOT_FROM_HOME_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {v1, v4}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->isMeasurementValid(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)Z

    move-result v1

    if-eqz v1, :cond_197

    .line 1463
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v1

    sget-object v4, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_WARM_BOOT_FROM_HOME_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {v1, v4}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->isMeasurementValid(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)Z

    move-result v1

    if-eqz v1, :cond_197

    .line 1465
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v1

    sget-object v4, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_COLD_BOOT_FROM_HOME_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {v1, v4}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setMeasurementInvalid(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    .line 1469
    :cond_197
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v1

    iget-object v4, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getLaunchTrigger()Lcom/sonyericsson/android/camera/LaunchTrigger;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setLaunchBy(Lcom/sonyericsson/android/camera/LaunchTrigger;)V

    .line 1470
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v1

    iget-object v4, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setView(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 1472
    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StartupAction;->NONE:Lcom/sonyericsson/android/camera/controller/StateMachine$StartupAction;

    .line 1473
    iget-object v4, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getGoogleAssistantSelfTimer()I

    move-result v4

    if-lez v4, :cond_1be

    .line 1474
    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StartupAction;->CAPTURE:Lcom/sonyericsson/android/camera/controller/StateMachine$StartupAction;

    goto :goto_1d4

    .line 1475
    :cond_1be
    iget-object v4, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->isGoogleAssistantLaunchOnly()Z

    move-result v4

    if-nez v4, :cond_1d4

    iget-object v4, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    .line 1476
    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isVideo()Z

    move-result v4

    if-eqz v4, :cond_1d4

    .line 1477
    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StartupAction;->RECORD:Lcom/sonyericsson/android/camera/controller/StateMachine$StartupAction;

    .line 1480
    :cond_1d4
    :goto_1d4
    iget-object v4, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v5, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_RESUME:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCurrentCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    aput-object v7, v6, v3

    .line 1483
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v3, 0x1

    aput-object v0, v6, v3

    const/4 v0, 0x2

    aput-object v1, v6, v0

    .line 1480
    invoke-virtual {v4, v5, v6}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 1488
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLastDetectedOrientation:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    sget-object v4, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->Unknown:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    if-ne v1, v4, :cond_20f

    .line 1489
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getConfigurationOrientation()I

    move-result v1

    if-ne v1, v0, :cond_206

    .line 1491
    sget-object v0, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->Landscape:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->setLayoutOrientation(Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;)V

    .line 1492
    sget-object v0, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->Landscape:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLastDetectedOrientation:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    goto :goto_20f

    .line 1494
    :cond_206
    sget-object v0, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->Portrait:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->setLayoutOrientation(Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;)V

    .line 1495
    sget-object v0, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->Portrait:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLastDetectedOrientation:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    .line 1501
    :cond_20f
    :goto_20f
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_21c

    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mDisableMultiWindow:Z

    if-nez v0, :cond_21c

    .line 1502
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->launchMultiWindow()V

    .line 1505
    :cond_21c
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mBatteryChangedReceiver:Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->checkStartupStatus()V

    .line 1508
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getStoredSettings()Lcom/sonyericsson/android/camera/setting/StoredSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getMessageSettings()Lcom/sonyericsson/android/camera/setting/MessageSettings;

    move-result-object v0

    .line 1509
    sget-object v1, Lcom/sonyericsson/android/camera/setting/MessageType;->SETUP_WIZARD:Lcom/sonyericsson/android/camera/setting/MessageType;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/MessageSettings;->isNeverShow(Lcom/sonyericsson/android/camera/setting/MessageType;)Z

    move-result v0

    xor-int/2addr v0, v3

    .line 1512
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isLiftTriggerSupported()Z

    move-result v1

    if-eqz v1, :cond_259

    .line 1513
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    invoke-interface {v1}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getUserSettings()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v1

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->PREDICTIVE_LAUNCH:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v1, v3}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v1

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveLaunch;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveLaunch;

    if-ne v1, v3, :cond_259

    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    .line 1514
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->isSmartLaunch()Z

    move-result v1

    if-eqz v1, :cond_259

    .line 1515
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getCameraDevice()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->screenOff()V

    .line 1516
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->terminateApplication()V

    return-void

    :cond_259
    if-eqz v0, :cond_282

    .line 1521
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mBatteryChangedReceiver:Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->isAlreadyBcl()Z

    move-result v0

    if-nez v0, :cond_282

    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    .line 1522
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->isOneShot()Z

    move-result v0

    if-nez v0, :cond_282

    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->isGoogleAssistantLaunch()Z

    move-result v0

    if-nez v0, :cond_282

    .line 1524
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isInteractive()Z

    move-result v0

    if-eqz v0, :cond_28f

    .line 1525
    new-instance v0, Lcom/sonyericsson/android/camera/CameraActivity$8;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/CameraActivity$8;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;)V

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->postEvent(Ljava/lang/Runnable;)V

    goto :goto_28f

    .line 1537
    :cond_282
    new-instance v0, Lcom/sonyericsson/android/camera/CameraActivity$ThermalAlertReceiverOnResumeTask;

    invoke-direct {v0, p0, v2}, Lcom/sonyericsson/android/camera/CameraActivity$ThermalAlertReceiverOnResumeTask;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/CameraActivity$1;)V

    .line 1538
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mBackgroundWorker:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mThermalAlertReceiverReadyTaskFuture:Ljava/util/concurrent/Future;

    .line 1542
    :cond_28f
    :goto_28f
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->requestInflateUiComponents()V

    return-void
.end method

.method private enableOrientation()V
    .registers 2

    .line 3104
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "enableOrientation()"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3105
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    if-nez v0, :cond_1b

    .line 3106
    new-instance v0, Lcom/sonyericsson/android/camera/CameraActivity$ExtendedOrientationEventListener;

    invoke-direct {v0, p0, p0}, Lcom/sonyericsson/android/camera/CameraActivity$ExtendedOrientationEventListener;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    .line 3107
    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    :cond_1b
    return-void
.end method

.method private finishUrgently()V
    .registers 1

    .line 2799
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->prepareFinish()V

    .line 2800
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private getDownAll()V
    .registers 4

    .line 2165
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_FINALIZE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 2167
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getUserSettings()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->release()V

    const/4 v0, 0x0

    .line 2170
    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    .line 2171
    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    .line 2172
    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mAutoPowerOffTimer:Lcom/sonyericsson/android/camera/AutoPowerOffTimer;

    .line 2173
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mUserEventHandler:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->release()V

    .line 2174
    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mUserEventHandler:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    .line 2177
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->releaseSoundPlayer()V

    .line 2180
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    if-eqz v1, :cond_2b

    .line 2181
    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->release()V

    .line 2185
    :cond_2b
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->unregisterScreenOffReceiver()V

    .line 2188
    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mThermalAlertReceiverReadyTaskFuture:Ljava/util/concurrent/Future;

    .line 2189
    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mViewFinderInitializationTaskFuture:Ljava/util/concurrent/Future;

    .line 2190
    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mSetupAllTaskFuture:Ljava/util/concurrent/Future;

    return-void
.end method

.method private static getFuture(Ljava/util/concurrent/Future;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "*>;)Z"
        }
    .end annotation

    const-string v0, "Failed to get Future."

    const/4 v1, 0x1

    if-nez p0, :cond_6

    return v1

    :cond_6
    const-wide/16 v2, 0xbb8

    .line 652
    :try_start_8
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v2, v3, v4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_d
    .catch Ljava/util/concurrent/CancellationException; {:try_start_8 .. :try_end_d} :catch_1d
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_8 .. :try_end_d} :catch_18
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_d} :catch_13
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_8 .. :try_end_d} :catch_e

    return v1

    :catch_e
    move-exception p0

    .line 661
    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_21

    :catch_13
    move-exception p0

    .line 659
    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_21

    :catch_18
    move-exception p0

    .line 657
    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_21

    :catch_1d
    move-exception p0

    .line 655
    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_21
    const/4 p0, 0x0

    return p0
.end method

.method private getOrientationDegree(Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;)I
    .registers 3

    .line 3264
    sget-object v0, Lcom/sonyericsson/android/camera/CameraActivity$12;->$SwitchMap$com$sonyericsson$android$camera$CameraActivity$LayoutOrientation:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_22

    const/4 v0, 0x2

    if-eq p1, v0, :cond_22

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1f

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1c

    const/4 v0, 0x5

    if-eq p1, v0, :cond_19

    const/4 p0, -0x1

    return p0

    :cond_19
    const/16 p1, 0x10e

    goto :goto_23

    :cond_1c
    const/16 p1, 0xb4

    goto :goto_23

    :cond_1f
    const/16 p1, 0x5a

    goto :goto_23

    :cond_22
    const/4 p1, 0x0

    .line 3283
    :goto_23
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/utility/ProductConfig;->getMountAngle(Landroid/content/Context;)I

    move-result p0

    add-int/2addr p1, p0

    .line 3284
    rem-int/lit16 p1, p1, 0x168

    return p1
.end method

.method private static getStartupPermissions()[Ljava/lang/String;
    .registers 4

    .line 286
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "android.permission.RECORD_AUDIO"

    const-string v2, "android.permission.CAMERA"

    const/16 v3, 0x21

    if-ge v0, v3, :cond_11

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 287
    filled-new-array {v2, v1, v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_11
    const-string v0, "android.permission.READ_MEDIA_IMAGES"

    const-string v3, "android.permission.READ_MEDIA_VIDEO"

    .line 293
    filled-new-array {v2, v1, v0, v3}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static in(III)Z
    .registers 3

    if-lt p0, p1, :cond_6

    if-ge p0, p2, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method private isInteractive()Z
    .registers 2

    const-string v0, "power"

    .line 3546
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    if-eqz p0, :cond_12

    .line 3547
    invoke-virtual {p0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method private isKeyguardLocked()Z
    .registers 2

    .line 3530
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v0, :cond_e

    const-string v0, "keyguard"

    .line 3531
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 3534
    :cond_e
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz p0, :cond_1a

    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result p0

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    return p0
.end method

.method private isKeyguardSecure()Z
    .registers 2

    .line 3538
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v0, :cond_e

    const-string v0, "keyguard"

    .line 3539
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 3542
    :cond_e
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz p0, :cond_1a

    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result p0

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    return p0
.end method

.method private isLaunchAndCapture()Z
    .registers 2

    .line 1601
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->isQuickLaunch()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    .line 1602
    invoke-interface {p0}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getUserSettings()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FAST_CAPTURE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p0, v0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_AND_CAPTURE:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    if-ne p0, v0, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method private isRecording()Z
    .registers 1

    .line 2414
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    if-eqz p0, :cond_9

    .line 2415
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isRecording()Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method private launchInternalMode()V
    .registers 7

    .line 1569
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "launchInternalMode E:"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1571
    :cond_d
    invoke-static {}, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->values()[Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getLaunchInternalMode()I

    move-result v1

    aget-object v0, v0, v1

    .line 1572
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->clearLaunchInternalMode()V

    .line 1574
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getLaunchInternalCallingCapturingMode()I

    move-result v2

    aget-object v1, v1, v2

    .line 1575
    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->clearLaunchInternalCallingCapturingMode()V

    .line 1576
    sget-object v2, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeUtil;->MODE_WHITE_LIST:Ljava/util/List;

    .line 1577
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 1578
    sget-object v3, Lcom/sonyericsson/android/camera/CameraActivity$12;->$SwitchMap$com$sonyericsson$android$camera$view$modeselector$ModeSelectorInternalMode:[I

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_84

    const/4 v5, 0x2

    if-eq v3, v5, :cond_78

    const/4 v1, 0x3

    if-eq v3, v1, :cond_6a

    .line 1595
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_69

    new-array p0, v4, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad launch internalMode :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p0, v1

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    :cond_69
    return-void

    :cond_6a
    const/16 v0, 0x10

    .line 1590
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    .line 1591
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getUserSetting()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v1

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 1590
    invoke-static {p0, v0, v1, v3, v2}, Lcom/sonyericsson/android/camera/controller/launcher/ApplicationLauncher;->launchExternalCamera(Lcom/sonyericsson/android/camera/CameraActivity;ILcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)V

    return-void

    :cond_78
    const/16 v0, 0x11

    .line 1585
    iget-object v3, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    .line 1586
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getUserSetting()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v3

    .line 1585
    invoke-static {p0, v0, v3, v1, v2}, Lcom/sonyericsson/android/camera/controller/launcher/ApplicationLauncher;->launchExternalCamera(Lcom/sonyericsson/android/camera/CameraActivity;ILcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)V

    return-void

    :cond_84
    const/16 v0, 0x12

    .line 1580
    iget-object v3, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    .line 1581
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getUserSetting()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v3

    .line 1580
    invoke-static {p0, v0, v3, v1, v2}, Lcom/sonyericsson/android/camera/controller/launcher/ApplicationLauncher;->launchExternalCamera(Lcom/sonyericsson/android/camera/CameraActivity;ILcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)V

    return-void
.end method

.method private launchMultiWindow()V
    .registers 7

    .line 1639
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "Launch multi window mode activity "

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_d
    const/4 v0, 0x1

    .line 1640
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mDisableMultiWindow:Z

    const/4 v1, 0x0

    .line 1641
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mReturnOneShotResult:Z

    .line 1642
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1643
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/sonyericsson/android/camera/MultiWindowActivity;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1644
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "]"

    const-string v5, "SomcCamera not support multi window mode, intent :["

    if-nez v3, :cond_6f

    .line 1645
    iget-object v3, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->isOneShotPhoto()Z

    move-result v3

    if-eqz v3, :cond_3d

    const-string v3, "android.media.action.IMAGE_CAPTURE"

    .line 1646
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_a3

    .line 1647
    :cond_3d
    iget-object v3, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->isOneShotVideo()Z

    move-result v3

    if-eqz v3, :cond_4b

    const-string v3, "android.media.action.VIDEO_CAPTURE"

    .line 1648
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_a3

    .line 1652
    :cond_4b
    sget-boolean v3, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v3, :cond_6b

    new-array v0, v0, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 1654
    :cond_6b
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->terminateApplication()V

    return-void

    .line 1658
    :cond_6f
    iget-object v3, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->isOneShotVideo()Z

    move-result v3

    if-nez v3, :cond_a3

    iget-object v3, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->isOneShotPhoto()Z

    move-result v3

    if-nez v3, :cond_a3

    .line 1661
    sget-boolean v3, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v3, :cond_9f

    new-array v0, v0, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 1663
    :cond_9f
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->terminateApplication()V

    return-void

    :cond_a3
    :goto_a3
    const/high16 v3, 0x2000000

    .line 1667
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1668
    sget-boolean v3, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v3, :cond_c6

    new-array v0, v0, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Start multi window activity, intent : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1670
    :cond_c6
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera/CameraActivity;->startActivity(Landroid/content/Intent;)V

    .line 1671
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->terminateApplication()V

    return-void
.end method

.method private logLifeCycleIn(Ljava/lang/String;Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;)V
    .registers 7

    .line 3355
    # getter for: Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->mPerformanceIds:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;
    invoke-static {p2}, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->access$4400(Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;)Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->measureTime(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Z)V

    .line 3356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->measureResource(Ljava/lang/String;)V

    .line 3358
    sget-object v0, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->ON_CREATE:Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eq p2, v0, :cond_4a

    sget-object v0, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->ON_DESTROY:Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    if-ne p2, v0, :cond_29

    goto :goto_4a

    .line 3361
    :cond_29
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_72

    new-array p0, v3, [Ljava/lang/String;

    aput-object p1, p0, v2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " is called"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v1

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_72

    .line 3359
    :cond_4a
    :goto_4a
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_72

    new-array v0, v3, [Ljava/lang/String;

    aput-object p1, v0, v2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " is called:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_72
    :goto_72
    return-void
.end method

.method private logLifeCycleOut(Ljava/lang/String;Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;)V
    .registers 6

    .line 3372
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v0, 0x0

    if-eqz p0, :cond_23

    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/String;

    aput-object p1, p0, v0

    const/4 p1, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " FINISH."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p0, p1

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3374
    :cond_23
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "End "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->measureResource(Ljava/lang/String;)V

    .line 3375
    # getter for: Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->mPerformanceIds:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;
    invoke-static {p2}, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->access$4400(Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;)Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->measureTime(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Z)V

    .line 3377
    sget-object p0, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->ON_PAUSE:Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    if-ne p2, p0, :cond_47

    .line 3378
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->outResult()V

    :cond_47
    return-void
.end method

.method private static logPerformance(Ljava/lang/String;)V
    .registers 4

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[PERFORMANCE] [TIME = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 159
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "CameraActivity"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 161
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TraceLog"

    .line 158
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private muteSound()V
    .registers 4

    .line 2987
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_34

    const-string v0, "audio"

    .line 2988
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    if-eqz p0, :cond_34

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x1

    .line 2990
    invoke-virtual {p0, v0, v1, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result p0

    if-ne p0, v2, :cond_27

    .line 2992
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_34

    const-string p0, "muteSound: success"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_34

    .line 2994
    :cond_27
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_34

    const-string p0, "muteSound: fail"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_34
    :goto_34
    return-void
.end method

.method private notifyActivityResultListeners(IILandroid/content/Intent;)V
    .registers 5

    .line 2622
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mActivityResultListeners:Landroid/util/SparseArray;

    if-eqz v0, :cond_22

    .line 2623
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/activity/OnActivityResultListener;

    if-eqz v0, :cond_17

    .line 2625
    invoke-interface {v0, p1, p2, p3}, Lcom/sonyericsson/cameracommon/activity/OnActivityResultListener;->onActivityResult(IILandroid/content/Intent;)Z

    move-result p2

    if-eqz p2, :cond_17

    .line 2626
    iget-object p2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mActivityResultListeners:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 2629
    :cond_17
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mActivityResultListeners:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-nez p1, :cond_22

    const/4 p1, 0x0

    .line 2630
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mActivityResultListeners:Landroid/util/SparseArray;

    :cond_22
    return-void
.end method

.method private notifyActivityState(Ljava/lang/String;)V
    .registers 7

    .line 2397
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CAMERA_BUTTON"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2398
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v3, 0x0

    const/16 v4, 0x1b

    invoke-direct {v1, v3, v4}, Landroid/view/KeyEvent;-><init>(II)V

    const-string v3, "android.intent.extra.KEY_EVENT"

    .line 2399
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.SUBJECT"

    .line 2400
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 2401
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2404
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2410
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method private notifyLayoutOrientationChanged(Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;)V
    .registers 6

    .line 3176
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLastDetectedOrientation:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    if-ne p1, v0, :cond_5

    return-void

    .line 3178
    :cond_5
    sget-object v0, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->Unknown:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    if-ne p1, v0, :cond_a

    return-void

    .line 3181
    :cond_a
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_36

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ORIENTATION : Layout orientation(sensor) is changed from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLastDetectedOrientation:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3184
    :cond_36
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLastDetectedOrientation:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    .line 3185
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLayoutOrientationChangedListenerSet:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientationChangedListener;

    .line 3186
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLastDetectedOrientation:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientationChangedListener;->onLayoutOrientationChanged(Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;)V

    goto :goto_3e

    :cond_50
    return-void
.end method

.method private postEvent(Ljava/lang/Runnable;)V
    .registers 2

    .line 1794
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static final preload()V
    .registers 0

    return-void
.end method

.method private prepareFinish()V
    .registers 5

    .line 2473
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    if-eqz p0, :cond_13

    .line 2474
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_PAUSE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    :cond_13
    return-void
.end method

.method private registerForceExitRequestReceiver()V
    .registers 4

    .line 2678
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "registerForceExitRequestReceiver()"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2681
    :cond_d
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.sonymobile.cameracommon.intent.ACTION_FORCE_EXIT_REQUEST"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2682
    new-instance v1, Lcom/sonyericsson/android/camera/CameraActivity$ForceExitRequestReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/camera/CameraActivity$ForceExitRequestReceiver;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/CameraActivity$1;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mForceExitRequestReceiver:Lcom/sonyericsson/android/camera/CameraActivity$ForceExitRequestReceiver;

    const/4 v2, 0x2

    .line 2683
    invoke-virtual {p0, v1, v0, v2}, Lcom/sonyericsson/android/camera/CameraActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 2685
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->shouldShowWhenLocked()Z

    move-result v0

    if-nez v0, :cond_37

    .line 2686
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.sonyericsson.android.camera.intent.action.FINISH_CAMERAACTIVITY"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2688
    new-instance v1, Lcom/sonyericsson/android/camera/CameraActivity$CameraActivityFinishBroadcastReceiver;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/CameraActivity$CameraActivityFinishBroadcastReceiver;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCameraActivityFinishReceiver:Lcom/sonyericsson/android/camera/CameraActivity$CameraActivityFinishBroadcastReceiver;

    .line 2689
    invoke-virtual {p0, v1, v0, v2}, Lcom/sonyericsson/android/camera/CameraActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    :cond_37
    return-void
.end method

.method private registerHomeKeyEventReceiver()V
    .registers 4

    .line 1095
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mHomeKeyEventReceiver:Lcom/sonyericsson/android/camera/CameraActivity$HomeKeyEventReceiver;

    if-nez v0, :cond_1c

    .line 1096
    new-instance v0, Lcom/sonyericsson/android/camera/CameraActivity$HomeKeyEventReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/CameraActivity$HomeKeyEventReceiver;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/CameraActivity$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mHomeKeyEventReceiver:Lcom/sonyericsson/android/camera/CameraActivity$HomeKeyEventReceiver;

    .line 1097
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 1098
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1099
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mHomeKeyEventReceiver:Lcom/sonyericsson/android/camera/CameraActivity$HomeKeyEventReceiver;

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v0, v2}, Lcom/sonyericsson/android/camera/CameraActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    :cond_1c
    return-void
.end method

.method private declared-synchronized registerScreenOffReceiver()V
    .registers 3

    monitor-enter p0

    .line 1063
    :try_start_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mScreenOffReceiver:Lcom/sonyericsson/android/camera/CameraActivity$ScreenOffReceiver;

    if-nez v0, :cond_1c

    .line 1064
    new-instance v0, Lcom/sonyericsson/android/camera/CameraActivity$ScreenOffReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/CameraActivity$ScreenOffReceiver;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/CameraActivity$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mScreenOffReceiver:Lcom/sonyericsson/android/camera/CameraActivity$ScreenOffReceiver;

    .line 1065
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 1066
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1067
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mScreenOffReceiver:Lcom/sonyericsson/android/camera/CameraActivity$ScreenOffReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1e

    .line 1069
    :cond_1c
    monitor-exit p0

    return-void

    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private registerShutDownReceiver()V
    .registers 3

    .line 1079
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mShutDownReceiver:Lcom/sonyericsson/android/camera/CameraActivity$ShutDownReceiver;

    if-nez v0, :cond_1b

    .line 1080
    new-instance v0, Lcom/sonyericsson/android/camera/CameraActivity$ShutDownReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/CameraActivity$ShutDownReceiver;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/CameraActivity$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mShutDownReceiver:Lcom/sonyericsson/android/camera/CameraActivity$ShutDownReceiver;

    .line 1081
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    .line 1082
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1083
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mShutDownReceiver:Lcom/sonyericsson/android/camera/CameraActivity$ShutDownReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1b
    return-void
.end method

.method private releaseCamera()V
    .registers 3

    .line 2044
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    if-eqz v0, :cond_1a

    .line 2045
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->disableFpsLimitation()V

    .line 2046
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->closeCamera()V

    .line 2047
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->closeVirtualCamera()V

    .line 2048
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setStateMachine(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    .line 2049
    iput-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    goto :goto_21

    .line 2054
    :cond_1a
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getCameraDevice()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->closeCamera()V

    :goto_21
    return-void
.end method

.method private releaseSoundPlayer()V
    .registers 2

    .line 2272
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mSoundPlayer:Lcom/sonyericsson/cameracommon/sound/SoundPlayer;

    if-eqz v0, :cond_a

    .line 2273
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->release()V

    const/4 v0, 0x0

    .line 2274
    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mSoundPlayer:Lcom/sonyericsson/cameracommon/sound/SoundPlayer;

    :cond_a
    return-void
.end method

.method private requestFinishCameraActivity()V
    .registers 3

    .line 1847
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "requestFinishCameraActivity()"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1849
    :cond_d
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->shouldShowWhenLocked()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1850
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonyericsson.android.camera.intent.action.FINISH_CAMERAACTIVITY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1852
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1d
    return-void
.end method

.method private requestInflateUiComponents()V
    .registers 2

    .line 1682
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->requestInflate(Landroid/view/LayoutInflater;)V

    return-void
.end method

.method private setBrightness(F)V
    .registers 3

    .line 3678
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 3679
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 3680
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method private setLayoutOrientation(Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;)V
    .registers 2

    .line 3245
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraActivity;->getOrientationDegree(Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;)I

    move-result p1

    .line 3246
    iput p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mSensorOrientationDegree:I

    .line 3247
    iput p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLastOrientationDegree:I

    .line 3248
    iput p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLastDeterminedOrientationDegree:I

    return-void
.end method

.method private setup()V
    .registers 9

    const-string v0, "setup() : E"

    .line 793
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 795
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x22

    if-lt v0, v2, :cond_27

    .line 796
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "launch_activity_with_cancel_animation"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 798
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 799
    invoke-virtual {p0, v1, v1, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->overrideActivityTransition(III)V

    .line 805
    :cond_27
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x7d0

    invoke-static {v2, v3, v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->awaitPrepare(JLjava/util/concurrent/TimeUnit;)Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareResult;

    move-result-object v0

    .line 807
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isPrepared()Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_3d

    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->hasDeviceError()Z

    move-result v4

    if-eqz v4, :cond_a8

    .line 808
    :cond_3d
    sget-boolean v4, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v4, :cond_4a

    const-string v4, "PlatformCapability is not prepared yet"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 809
    :cond_4a
    sget-object v4, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareResult;->TIMED_OUT:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareResult;

    if-eq v0, v4, :cond_68

    .line 811
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_5b

    const-string v0, "Retry preparing PlatformCapability"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 812
    :cond_5b
    new-instance v0, Lcom/sonyericsson/android/camera/CameraActivity$4;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/CameraActivity$4;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;)V

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->prepareAsync(Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$OnPlatformCapabilityPreparedCallback;)V

    .line 820
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v2, v3, v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->awaitPrepare(JLjava/util/concurrent/TimeUnit;)Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareResult;

    .line 824
    :cond_68
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_a8

    .line 826
    invoke-static {v5}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->setDeviceError(Z)V

    .line 827
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0f016c

    .line 828
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0f016f

    .line 829
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 830
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0f02ea

    .line 831
    invoke-virtual {v1, v2, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/sonyericsson/android/camera/CameraActivity$5;

    invoke-direct {v2, p0}, Lcom/sonyericsson/android/camera/CameraActivity$5;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;)V

    .line 832
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 839
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 840
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 841
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void

    .line 846
    :cond_a8
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_b3

    sget-object v0, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->ON_CREATE:Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    const-string v2, "CameraActivity"

    invoke-direct {p0, v2, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->logLifeCycleIn(Ljava/lang/String;Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;)V

    .line 849
    :cond_b3
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 856
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/CameraApplication;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraApplication;->getStorage()Lcom/sonyericsson/cameracommon/storage/Storage;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    .line 857
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    invoke-static {v0, v2}, Lcom/sonyericsson/android/camera/setting/SettingsFactory;->create(Landroid/content/Context;Lcom/sonyericsson/cameracommon/storage/Storage;)Lcom/sonyericsson/android/camera/setting/StoredSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    const/16 v0, 0xa

    const-string v2, "AsyncAct"

    .line 860
    invoke-static {v2, v0}, Lcom/sonyericsson/android/camera/util/ThreadUtil;->buildExecutor(Ljava/lang/String;I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mBackgroundWorker:Ljava/util/concurrent/ExecutorService;

    .line 862
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getLastSettings()Lcom/sonyericsson/android/camera/setting/LastSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/setting/LastSettings;->getFastCapture()Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    move-result-object v0

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_ONLY:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    if-ne v0, v2, :cond_ee

    move v0, v5

    goto :goto_ef

    :cond_ee
    move v0, v1

    .line 864
    :goto_ef
    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    invoke-interface {v4}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getLastSettings()Lcom/sonyericsson/android/camera/setting/LastSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/setting/LastSettings;->getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v4

    instance-of v7, p0, Lcom/sonyericsson/android/camera/InternalCameraActivity;

    invoke-virtual {v2, v3, v4, v0, v7}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setup(Landroid/content/Intent;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;ZZ)V

    .line 868
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->isOneShot()Z

    move-result v0

    if-eqz v0, :cond_121

    .line 870
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_11b

    .line 871
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_11c

    :cond_11b
    move-object v0, v6

    .line 873
    :goto_11c
    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    invoke-interface {v2, v0}, Lcom/sonyericsson/cameracommon/storage/Storage;->setOneShotCallerInfo(Ljava/lang/String;)V

    .line 876
    :cond_121
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getLaunchTrigger()Lcom/sonyericsson/android/camera/LaunchTrigger;

    move-result-object v0

    .line 878
    sget-object v2, Lcom/sonyericsson/android/camera/LaunchTrigger;->LOCK_SCREEN:Lcom/sonyericsson/android/camera/LaunchTrigger;

    if-ne v0, v2, :cond_13e

    .line 879
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    sget-object v2, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_COLD_BOOT_FROM_LOCKSCREEN_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->startMeasurement(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    .line 881
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    sget-object v2, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_COLD_BOOT_FROM_LOCKSCREEN_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setMeasurementValid(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    goto :goto_183

    .line 883
    :cond_13e
    sget-object v2, Lcom/sonyericsson/android/camera/LaunchTrigger;->HW_CAMERA_KEY:Lcom/sonyericsson/android/camera/LaunchTrigger;

    if-eq v0, v2, :cond_171

    sget-object v2, Lcom/sonyericsson/android/camera/LaunchTrigger;->HW_CAMERA_KEY_LOCK:Lcom/sonyericsson/android/camera/LaunchTrigger;

    if-ne v0, v2, :cond_147

    goto :goto_171

    .line 889
    :cond_147
    sget-object v2, Lcom/sonyericsson/android/camera/LaunchTrigger;->LIFT_TRIGGER:Lcom/sonyericsson/android/camera/LaunchTrigger;

    if-ne v0, v2, :cond_15e

    .line 890
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    sget-object v2, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_COLD_BOOT_FROM_LIFTTRIGGER_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->startMeasurement(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    .line 892
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    sget-object v2, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_COLD_BOOT_FROM_LIFTTRIGGER_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setMeasurementValid(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    goto :goto_183

    .line 895
    :cond_15e
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    sget-object v2, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_COLD_BOOT_FROM_HOME_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->startMeasurement(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    .line 897
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    sget-object v2, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_COLD_BOOT_FROM_HOME_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setMeasurementValid(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    goto :goto_183

    .line 885
    :cond_171
    :goto_171
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    sget-object v2, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_COLD_BOOT_FROM_CAMERAKEY_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->startMeasurement(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    .line 887
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    sget-object v2, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_COLD_BOOT_FROM_CAMERAKEY_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setMeasurementValid(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    .line 903
    :goto_183
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getUserSettings()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    .line 905
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    .line 906
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getOneShotMode()Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    .line 907
    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getExtraOutput()Landroid/net/Uri;

    move-result-object v4

    iget-object v7, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    .line 908
    invoke-virtual {v7}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getVideoQualityConfigurations()Lcom/sonyericsson/android/camera/configuration/IntentReader$VideoQualityConfigurations;

    move-result-object v7

    .line 904
    invoke-interface {v0, v2, v3, v4, v7}, Lcom/sonyericsson/android/camera/setting/UserSettings;->prepare(Landroid/content/Context;Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;Landroid/net/Uri;Lcom/sonyericsson/android/camera/configuration/IntentReader$VideoQualityConfigurations;)V

    .line 910
    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getOneShotMode()Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->isVideo()Z

    move-result v2

    if-eqz v2, :cond_1bb

    .line 912
    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v2

    invoke-interface {v0, v2, v5}, Lcom/sonyericsson/android/camera/setting/UserSettings;->changeCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)V

    .line 913
    invoke-interface {v0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->commit()V

    goto :goto_1c4

    .line 915
    :cond_1bb
    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->changeCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 918
    :goto_1c4
    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getExtraOperation()Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;->LAUNCH_AND_CAPTURE:Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;

    if-ne v2, v3, :cond_1d6

    .line 919
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isInLockTaskMode()Z

    move-result v2

    if-nez v2, :cond_1d6

    move v2, v5

    goto :goto_1d7

    :cond_1d6
    move v2, v1

    .line 922
    :goto_1d7
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getCameraDevice()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    .line 923
    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v4

    .line 922
    invoke-virtual {v3, p0, v0, v4, v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->preloadCamera(Landroid/content/Context;Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCurrentCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    .line 924
    new-instance v0, Lcom/sonyericsson/android/camera/AutoPowerOffTimer;

    new-instance v2, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffListenerImpl;

    invoke-direct {v2, p0, v6}, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffListenerImpl;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/CameraActivity$1;)V

    invoke-direct {v0, p0, v2}, Lcom/sonyericsson/android/camera/AutoPowerOffTimer;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/AutoPowerOffTimer$AutoPowerOffListener;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mAutoPowerOffTimer:Lcom/sonyericsson/android/camera/AutoPowerOffTimer;

    .line 930
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->setupCoreInstance()V

    .line 933
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->onCreate(Landroid/content/Context;)V

    .line 936
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v2, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_INITIALIZE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 945
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/storage/Storage;->isStorageReadable()Z

    move-result v0

    if-eqz v0, :cond_229

    .line 946
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_21b

    const-string v0, "StorageActivated was already finished."

    .line 947
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 949
    :cond_21b
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mBackgroundWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonyericsson/android/camera/CameraActivity$SetupAllTask;

    invoke-direct {v1, p0, v6}, Lcom/sonyericsson/android/camera/CameraActivity$SetupAllTask;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/CameraActivity$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mSetupAllTaskFuture:Ljava/util/concurrent/Future;

    goto :goto_240

    .line 951
    :cond_229
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_236

    const-string v0, "StorageActivated was not finished yet."

    .line 952
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 954
    :cond_236
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    new-instance v1, Lcom/sonyericsson/android/camera/CameraActivity$6;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/CameraActivity$6;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;)V

    invoke-interface {v0, v1}, Lcom/sonyericsson/cameracommon/storage/Storage;->addStorageReadyStateListener(Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyStateListener;)V

    .line 980
    :goto_240
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->createBatteryChangedReceiver()V

    .line 981
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mBatteryChangedReceiver:Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setBatteryChangedReceiver(Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;)V

    .line 982
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mBackgroundWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonyericsson/android/camera/CameraActivity$ThermalAlertReceiverCreateTask;

    invoke-direct {v1, p0, v6}, Lcom/sonyericsson/android/camera/CameraActivity$ThermalAlertReceiverCreateTask;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/CameraActivity$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 983
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mBackgroundWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonyericsson/android/camera/CameraActivity$ThermalAlertReceiverOnCreateTask;

    invoke-direct {v1, p0, v6}, Lcom/sonyericsson/android/camera/CameraActivity$ThermalAlertReceiverOnCreateTask;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/CameraActivity$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 986
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->registerForceExitRequestReceiver()V

    .line 988
    iput-boolean v5, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mIsSetupCompleted:Z

    const-string p0, "setup() : X"

    .line 989
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    return-void
.end method

.method private setupAll()V
    .registers 3

    .line 1207
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    invoke-direct {v0, p0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    .line 1210
    new-instance v0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mSoundPlayer:Lcom/sonyericsson/cameracommon/sound/SoundPlayer;

    return-void
.end method

.method private setupCoreInstance()V
    .registers 12

    .line 1251
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "invoked setupCoreInstance()"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1254
    :cond_d
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-direct {v0, p0, v1, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/cameracommon/storage/Storage;Lcom/sonyericsson/android/camera/LaunchCondition;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    .line 1257
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->createViewFinder()Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object v0

    .line 1258
    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    .line 1261
    new-instance v1, Lcom/sonyericsson/android/camera/view/UserEventHandler;

    iget-object v6, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    iget-object v7, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    .line 1266
    invoke-interface {v2}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getUserSettings()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v8

    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    .line 1267
    invoke-interface {v2}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getMessageSettings()Lcom/sonyericsson/android/camera/setting/MessageSettings;

    move-result-object v9

    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    .line 1268
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->isOneShot()Z

    move-result v2

    xor-int/lit8 v10, v2, 0x1

    move-object v3, v1

    move-object v4, p0

    move-object v5, v0

    invoke-direct/range {v3 .. v10}, Lcom/sonyericsson/android/camera/view/UserEventHandler;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/storage/Storage;Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/setting/MessageSettings;Z)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mUserEventHandler:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    .line 1269
    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mKeyEventDispatcher:Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventDispatcher;

    invoke-virtual {v2, v1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventDispatcher;->attach(Lcom/sonyericsson/android/camera/view/UserEventHandler;)V

    .line 1270
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mKeyEventDispatcher:Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventDispatcher;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventDispatcher;->start()V

    .line 1271
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mSideTouchEventDispatcher:Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventDispatcher;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mUserEventHandler:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventDispatcher;->attach(Lcom/sonyericsson/android/camera/view/UserEventHandler;)V

    .line 1272
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getTouchEventDispatcher()Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventDispatcher;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mUserEventHandler:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventDispatcher;->attach(Lcom/sonyericsson/android/camera/view/UserEventHandler;)V

    .line 1273
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getTouchEventDispatcher()Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventDispatcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventDispatcher;->start()V

    .line 1274
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getVirtualKeyEventDispatcher()Lcom/sonyericsson/android/camera/view/UserEventHandler$VirtualKeyEventDispatcher;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mUserEventHandler:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/UserEventHandler$VirtualKeyEventDispatcher;->attach(Lcom/sonyericsson/android/camera/view/UserEventHandler;)V

    .line 1275
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getVirtualKeyEventDispatcher()Lcom/sonyericsson/android/camera/view/UserEventHandler$VirtualKeyEventDispatcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$VirtualKeyEventDispatcher;->start()V

    .line 1276
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getZoomEventDispatcher()Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEventDispatcher;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mUserEventHandler:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEventDispatcher;->attach(Lcom/sonyericsson/android/camera/view/UserEventHandler;)V

    .line 1277
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getZoomEventDispatcher()Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEventDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEventDispatcher;->start()V

    .line 1282
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getCameraDevice()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->setDependencies(Lcom/sonyericsson/android/camera/view/ViewFinder;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)V

    return-void
.end method

.method private unRegisterHomeKeyEventReceiver()V
    .registers 2

    .line 1104
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mHomeKeyEventReceiver:Lcom/sonyericsson/android/camera/CameraActivity$HomeKeyEventReceiver;

    if-eqz v0, :cond_a

    .line 1105
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 1106
    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mHomeKeyEventReceiver:Lcom/sonyericsson/android/camera/CameraActivity$HomeKeyEventReceiver;

    :cond_a
    return-void
.end method

.method private unRegisterShutDownReceiver()V
    .registers 2

    .line 1088
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mShutDownReceiver:Lcom/sonyericsson/android/camera/CameraActivity$ShutDownReceiver;

    if-eqz v0, :cond_a

    .line 1089
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 1090
    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mShutDownReceiver:Lcom/sonyericsson/android/camera/CameraActivity$ShutDownReceiver;

    :cond_a
    return-void
.end method

.method private unmuteSound()V
    .registers 3

    .line 3004
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_33

    const-string v0, "audio"

    .line 3005
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    if-eqz p0, :cond_33

    const/4 v0, 0x0

    .line 3007
    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_26

    .line 3008
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_33

    const-string p0, "unmuteSound: success"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_33

    .line 3010
    :cond_26
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_33

    const-string p0, "unmuteSound: fail"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_33
    :goto_33
    return-void
.end method

.method private unregisterForceExitRequestReceiver()V
    .registers 3

    .line 2694
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "unregisterForceExitRequestReceiver()"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2695
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mForceExitRequestReceiver:Lcom/sonyericsson/android/camera/CameraActivity$ForceExitRequestReceiver;

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    .line 2696
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2697
    iput-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mForceExitRequestReceiver:Lcom/sonyericsson/android/camera/CameraActivity$ForceExitRequestReceiver;

    .line 2699
    :cond_17
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCameraActivityFinishReceiver:Lcom/sonyericsson/android/camera/CameraActivity$CameraActivityFinishBroadcastReceiver;

    if-eqz v0, :cond_20

    .line 2700
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2701
    iput-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCameraActivityFinishReceiver:Lcom/sonyericsson/android/camera/CameraActivity$CameraActivityFinishBroadcastReceiver;

    :cond_20
    return-void
.end method

.method private declared-synchronized unregisterScreenOffReceiver()V
    .registers 2

    monitor-enter p0

    .line 1072
    :try_start_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mScreenOffReceiver:Lcom/sonyericsson/android/camera/CameraActivity$ScreenOffReceiver;

    if-eqz v0, :cond_b

    .line 1073
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 1074
    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mScreenOffReceiver:Lcom/sonyericsson/android/camera/CameraActivity$ScreenOffReceiver;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 1076
    :cond_b
    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public abort()V
    .registers 2

    .line 2280
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "call abort()"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_d
    const/4 v0, 0x1

    .line 2281
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->abort(Z)V

    return-void
.end method

.method public addOrienationListener(Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientationChangedListener;)V
    .registers 2

    .line 3136
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLayoutOrientationChangedListenerSet:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public awaitSetupAllReady()Z
    .registers 1

    .line 1130
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mSetupAllTaskFuture:Ljava/util/concurrent/Future;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getFuture(Ljava/util/concurrent/Future;)Z

    move-result p0

    return p0
.end method

.method public awaitViewFinderReady()Z
    .registers 3

    .line 1695
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mViewFinderInitializationTaskFuture:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_13

    .line 1696
    invoke-static {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getFuture(Ljava/util/concurrent/Future;)Z

    move-result v0

    const/4 v1, 0x0

    .line 1697
    iput-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mViewFinderInitializationTaskFuture:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_14

    .line 1699
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->attachToWindow()V

    goto :goto_14

    :cond_13
    const/4 v0, 0x1

    :cond_14
    :goto_14
    return v0
.end method

.method public checkAndRequestSelfPermissions(I[Ljava/lang/String;)Z
    .registers 5

    .line 3444
    invoke-static {p0, p2}, Lcom/sonyericsson/cameracommon/utility/PermissionsUtil;->arePermissionsGranted(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 3445
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCheckAndRequestSelfPermissionsTask:Ljava/lang/Runnable;

    if-eqz v0, :cond_13

    .line 3446
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCheckAndRequestSelfPermissionsTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3449
    :cond_13
    new-instance v0, Lcom/sonyericsson/android/camera/CameraActivity$10;

    invoke-direct {v0, p0, p1, p2}, Lcom/sonyericsson/android/camera/CameraActivity$10;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;I[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCheckAndRequestSelfPermissionsTask:Ljava/lang/Runnable;

    .line 3456
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCheckAndRequestSelfPermissionsTask:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x1

    return p0

    :cond_25
    const/4 p0, 0x0

    return p0
.end method

.method public checkAndRequestSelfPermissions(I[Ljava/lang/String;Lcom/sonyericsson/android/camera/CameraActivity$PermissionCheckCallback;)Z
    .registers 6

    .line 3474
    invoke-static {p0, p1, p2}, Lcom/sonyericsson/cameracommon/utility/PermissionsUtil;->checkAndRequestSelfPermissions(Landroid/app/Activity;I[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3477
    new-instance v1, Lcom/sonyericsson/android/camera/CameraActivity$11;

    invoke-direct {v1, p0, p2, p3}, Lcom/sonyericsson/android/camera/CameraActivity$11;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;[Ljava/lang/String;Lcom/sonyericsson/android/camera/CameraActivity$PermissionCheckCallback;)V

    .line 3516
    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->addActivityResultListener(ILcom/sonyericsson/cameracommon/activity/OnActivityResultListener;)Z

    :cond_e
    return v0
.end method

.method public clearMaxBrightness()V
    .registers 2

    const/high16 v0, -0x40800000    # -1.0f

    .line 3674
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->setBrightness(F)V

    return-void
.end method

.method public final disableAutoPowerOffTimer()V
    .registers 2

    .line 3042
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "disableAutoPowerOffTimer: "

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3043
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->hideAutoPowerOffHintText()V

    .line 3044
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mAutoPowerOffTimer:Lcom/sonyericsson/android/camera/AutoPowerOffTimer;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/AutoPowerOffTimer;->disableAutoPowerOffTimer()V

    return-void
.end method

.method public disablePreviewScreenshots()V
    .registers 7

    .line 996
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x21

    if-lt v0, v2, :cond_b

    .line 997
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->setRecentsScreenshotEnabled(Z)V

    goto :goto_25

    .line 1000
    :cond_b
    :try_start_b
    const-class v0, Landroid/app/Activity;

    const-string v2, "setDisablePreviewScreenshots"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    .line 1001
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_25
    .catch Ljava/lang/NoSuchMethodException; {:try_start_b .. :try_end_25} :catch_25
    .catch Ljava/lang/IllegalAccessException; {:try_start_b .. :try_end_25} :catch_25
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_b .. :try_end_25} :catch_25

    :catch_25
    :goto_25
    return-void
.end method

.method public disableSideSense()V
    .registers 1

    .line 3619
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mSideTouchEventDispatcher:Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventDispatcher;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventDispatcher;->stop()V

    return-void
.end method

.method public final enableAutoPowerOffTimer()V
    .registers 2

    .line 3034
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "enableAutoPowerOffTimer: "

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3035
    :cond_d
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mAutoPowerOffTimer:Lcom/sonyericsson/android/camera/AutoPowerOffTimer;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/AutoPowerOffTimer;->enableAutoPowerOffTimer()V

    return-void
.end method

.method public enableSideSense()V
    .registers 1

    .line 3615
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mSideTouchEventDispatcher:Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventDispatcher;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventDispatcher;->start()V

    return-void
.end method

.method public finish()V
    .registers 2

    .line 2780
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isInLockTaskMode()Z

    move-result v0

    if-nez v0, :cond_9

    .line 2781
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->prepareFinish()V

    .line 2783
    :cond_9
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public finishAndKillProcess()V
    .registers 1

    .line 2454
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->prepareFinish()V

    .line 2455
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->finishAndRemoveTask()V

    return-void
.end method

.method public finishOneShot(Lcom/sonyericsson/android/camera/controller/StateMachine$OneShotResult;)V
    .registers 7

    .line 1169
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_22

    new-array v0, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "finishOneShot: result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/sonyericsson/android/camera/controller/StateMachine$OneShotResult;->uri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1172
    :cond_22
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mDisableMultiWindow:Z

    .line 1174
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->isOneShotVideo()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 1175
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getUserSettings()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->clearOneshotUserSetting()V

    .line 1177
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1178
    iget-object v1, p1, Lcom/sonyericsson/android/camera/controller/StateMachine$OneShotResult;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1179
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1180
    iget p1, p1, Lcom/sonyericsson/android/camera/controller/StateMachine$OneShotResult;->code:I

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->setResult(ILandroid/content/Intent;)V

    .line 1181
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->terminateApplication()V

    goto :goto_8e

    .line 1182
    :cond_4b
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->isOneShotPhoto()Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 1183
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getUserSettings()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->clearOneshotUserSetting()V

    .line 1185
    iget-object v0, p1, Lcom/sonyericsson/android/camera/controller/StateMachine$OneShotResult;->savingRequest:Lcom/sonyericsson/cameracommon/storage/SavingRequest;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->getExtraOutput()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_86

    .line 1186
    iget-boolean v0, p1, Lcom/sonyericsson/android/camera/controller/StateMachine$OneShotResult;->isSuccess:Z

    if-eqz v0, :cond_82

    .line 1187
    iget v0, p1, Lcom/sonyericsson/android/camera/controller/StateMachine$OneShotResult;->code:I

    iget-object v1, p1, Lcom/sonyericsson/android/camera/controller/StateMachine$OneShotResult;->uri:Landroid/net/Uri;

    iget-object v2, p1, Lcom/sonyericsson/android/camera/controller/StateMachine$OneShotResult;->savingRequest:Lcom/sonyericsson/cameracommon/storage/SavingRequest;

    iget-object v2, v2, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v2, v2, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mimeType:Ljava/lang/String;

    iget-object v3, p1, Lcom/sonyericsson/android/camera/controller/StateMachine$OneShotResult;->savingRequest:Lcom/sonyericsson/cameracommon/storage/SavingRequest;

    iget-object v3, v3, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget v3, v3, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->orientation:I

    iget-object p1, p1, Lcom/sonyericsson/android/camera/controller/StateMachine$OneShotResult;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {p0, v1, v2, v3, p1}, Lcom/sonyericsson/cameracommon/utility/OneShotUtility;->createResultIntent(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;ILandroid/graphics/Bitmap;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/android/camera/CameraActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_8b

    .line 1194
    :cond_82
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->setResult(I)V

    goto :goto_8b

    .line 1198
    :cond_86
    iget p1, p1, Lcom/sonyericsson/android/camera/controller/StateMachine$OneShotResult;->code:I

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/CameraActivity;->setResult(I)V

    .line 1200
    :goto_8b
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->finish()V

    :cond_8e
    :goto_8e
    return-void
.end method

.method public getAutoPowerOffTimerController()Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffTimerController;
    .registers 1

    .line 3088
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mAutoPowerOffTimerImpl:Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffTimerImpl;

    return-object p0
.end method

.method public getBatteryLevel()I
    .registers 1

    .line 3522
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mBatteryChangedReceiver:Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->getBatteryLevel()I

    move-result p0

    return p0
.end method

.method public getCameraDevice()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;
    .registers 1

    .line 2429
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/CameraApplication;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraApplication;->getCameraDevice()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p0

    return-object p0
.end method

.method public getGeoTagManager()Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;
    .registers 1

    .line 3095
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    return-object p0
.end method

.method public getLastDetectedOrientation()Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;
    .registers 1

    .line 3337
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLastDetectedOrientation:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    return-object p0
.end method

.method public getLayoutOrientation()Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;
    .registers 4

    .line 3196
    iget v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLastOrientationDegree:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    .line 3198
    iget v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLastDeterminedOrientationDegree:I

    :cond_7
    if-ne v0, v1, :cond_c

    .line 3201
    sget-object p0, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->Unknown:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    return-object p0

    .line 3206
    :cond_c
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/utility/ProductConfig;->getMountAngle(Landroid/content/Context;)I

    move-result v1

    rsub-int v1, v1, 0x168

    add-int/2addr v0, v1

    .line 3207
    rem-int/lit16 v0, v0, 0x168

    .line 3212
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLastDetectedOrientation:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    sget-object v2, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->Portrait:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    if-eq v1, v2, :cond_24

    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLastDetectedOrientation:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    sget-object v1, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->ReversePortrait:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    if-ne p0, v1, :cond_22

    goto :goto_24

    :cond_22
    const/4 p0, 0x0

    goto :goto_25

    :cond_24
    :goto_24
    const/4 p0, 0x1

    :goto_25
    if-eqz p0, :cond_2a

    const/16 p0, 0x3c

    goto :goto_2c

    :cond_2a
    const/16 p0, 0x1e

    :goto_2c
    rsub-int/lit8 v1, p0, 0x5a

    add-int/lit8 v2, p0, 0x5a

    .line 3227
    invoke-static {v0, v1, v2}, Lcom/sonyericsson/android/camera/CameraActivity;->in(III)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 3228
    sget-object p0, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->Portrait:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    return-object p0

    :cond_39
    rsub-int v1, p0, 0x10e

    .line 3230
    invoke-static {v0, v2, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->in(III)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 3231
    sget-object p0, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->ReverseLandscape:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    return-object p0

    :cond_44
    add-int/lit16 p0, p0, 0x10e

    .line 3233
    invoke-static {v0, v1, p0}, Lcom/sonyericsson/android/camera/CameraActivity;->in(III)Z

    move-result p0

    if-eqz p0, :cond_4f

    .line 3234
    sget-object p0, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->ReversePortrait:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    return-object p0

    .line 3237
    :cond_4f
    sget-object p0, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->Landscape:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    return-object p0
.end method

.method public getOrientation()I
    .registers 4

    .line 3295
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLastDetectedOrientation:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    .line 3296
    sget-object v1, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->Unknown:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    if-ne v0, v1, :cond_a

    .line 3297
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getLayoutOrientation()Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    move-result-object v0

    .line 3300
    :cond_a
    sget-object p0, Lcom/sonyericsson/android/camera/CameraActivity$12;->$SwitchMap$com$sonyericsson$android$camera$CameraActivity$LayoutOrientation:[I

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->ordinal()I

    move-result v0

    aget p0, p0, v0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_37

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq p0, v1, :cond_36

    const/4 v1, 0x4

    if-eq p0, v1, :cond_37

    const/4 v1, 0x5

    if-eq p0, v1, :cond_37

    .line 3311
    sget-object p0, Lcom/sonyericsson/android/camera/CameraActivity$12;->$SwitchMap$com$sonyericsson$cameracommon$utility$LayoutOrientationResolver$LayoutOrientationType:[I

    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getOrientation()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;->ordinal()I

    move-result v1

    aget p0, p0, v1

    if-eq p0, v2, :cond_36

    if-eq p0, v0, :cond_35

    const/4 p0, 0x0

    return p0

    :cond_35
    return v0

    :cond_36
    return v2

    :cond_37
    return v0
.end method

.method public getPreviewRect()Landroid/graphics/Rect;
    .registers 2

    .line 3689
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getPreviewRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 3690
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->convertRect(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public getScreenAspect()Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;
    .registers 4

    .line 1290
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    if-nez v0, :cond_61

    .line 1291
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/utility/ViewUtility;->getRealSize(Landroid/content/Context;)Landroid/util/Size;

    move-result-object v0

    .line 1292
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v1

    .line 1293
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    .line 1292
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    .line 1293
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v1, v0

    const v0, 0x40155555

    sub-float v0, v1, v0

    .line 1294
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v2, 0x3c23d70a    # 0.01f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_3b

    .line 1295
    sget-object v0, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;->TWENTYONE_NINE:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    goto :goto_61

    :cond_3b
    const/high16 v0, 0x40000000    # 2.0f

    sub-float v0, v1, v0

    .line 1296
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_4c

    .line 1297
    sget-object v0, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;->EIGHTEEN_NINE:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    goto :goto_61

    :cond_4c
    const v0, 0x3fe38e39

    sub-float/2addr v1, v0

    .line 1298
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_5d

    .line 1299
    sget-object v0, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;->SIXTEEN_NINE:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    goto :goto_61

    .line 1301
    :cond_5d
    sget-object v0, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;->NOT_DEFINED:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    .line 1304
    :cond_61
    :goto_61
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    return-object p0
.end method

.method public getSensorOrientationDegree()I
    .registers 5

    .line 3327
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_22

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ORIENTATION:getSensorOrientationDegree = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mSensorOrientationDegree:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3329
    :cond_22
    iget p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mSensorOrientationDegree:I

    return p0
.end method

.method public getStorage()Lcom/sonyericsson/cameracommon/storage/Storage;
    .registers 1

    .line 3345
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    return-object p0
.end method

.method public getStoredSettings()Lcom/sonyericsson/android/camera/setting/StoredSettings;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2768
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    return-object p0
.end method

.method public isAllowToUseLocation()Z
    .registers 2

    .line 3710
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getOneShotMode()Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 3711
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/utility/PermissionsUtil;->areCallerGeoPermissionsGranted(Landroid/app/Activity;)Z

    move-result p0

    if-nez p0, :cond_14

    const/4 p0, 0x0

    return p0

    :cond_14
    const/4 p0, 0x1

    return p0
.end method

.method public isAlreadyBcl()Z
    .registers 1

    .line 3526
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mBatteryChangedReceiver:Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->isAlreadyBcl()Z

    move-result p0

    return p0
.end method

.method public isAlreadyHighTemperature()Z
    .registers 2

    .line 1729
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->awaitThermalAlertReceiverReady()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1730
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mThermalAlertReceiver:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->isAlreadyHighTemperature()Z

    move-result p0

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public isDelayToResume()Z
    .registers 1

    .line 2813
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mDelayToResume:Z

    return p0
.end method

.method public isDeviceInSecurityLock()Z
    .registers 3

    .line 2322
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_11

    const-string v1, "android.intent.extra.SUBJECT"

    .line 2327
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    const-string v1, "start-secure"

    .line 2331
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    .line 2332
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->isSecurePhotoLaunchedByIntent()Z

    move-result v0

    if-eqz v0, :cond_2a

    :cond_22
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isKeyguardLocked()Z

    move-result p0

    if-eqz p0, :cond_2a

    const/4 p0, 0x1

    goto :goto_2b

    :cond_2a
    const/4 p0, 0x0

    :goto_2b
    return p0
.end method

.method public isInLockTaskMode()Z
    .registers 2

    const-string v0, "activity"

    .line 3384
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 3385
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

.method public isLazyInitializationRunning()Z
    .registers 1

    .line 2450
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mIsLazyInitializationRunning:Z

    return p0
.end method

.method public isThermalWarningExtraState()Z
    .registers 2

    .line 1755
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->awaitThermalAlertReceiverReady()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1756
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mThermalAlertReceiver:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->isWarningExtraState()Z

    move-result p0

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public isThermalWarningReceived()Z
    .registers 2

    .line 1769
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->awaitThermalAlertReceiverReady()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1770
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mThermalAlertReceiver:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->isThermalWarningReceived()Z

    move-result p0

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public isThermalWarningState()Z
    .registers 2

    .line 1742
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->awaitThermalAlertReceiverReady()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mThermalAlertReceiver:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;

    if-eqz p0, :cond_f

    .line 1743
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->isWarningState()Z

    move-result p0

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public launchCameraSettings(Z)V
    .registers 6

    const/4 v0, 0x1

    .line 2484
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mIsSaveZoomInfoNeeded:Z

    .line 2485
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    invoke-interface {v1}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getUserSettings()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->commit()V

    .line 2487
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2488
    const-class v2, Lcom/sonyericsson/android/camera/CameraSettingsActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2489
    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    .line 2490
    invoke-interface {v2}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getUserSettings()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v2, v3}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "capturing_mode"

    .line 2489
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2491
    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    .line 2492
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getOneShotMode()Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OneShotMode"

    .line 2491
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2493
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isDeviceInSecurityLock()Z

    move-result v2

    const-string v3, "DeviceInSecurityLock"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2494
    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    .line 2495
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->shouldNotRemainRecentTask()Z

    move-result v2

    const-string v3, "shouldNotRemainRecentTask"

    .line 2494
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2497
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string/jumbo v2, "valueSelect"

    .line 2496
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2499
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isAllowToUseLocation()Z

    move-result p1

    const-string v2, "allowUseLocation"

    if-eqz p1, :cond_6c

    .line 2500
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_70

    :cond_6c
    const/4 p1, 0x0

    .line 2502
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2505
    :goto_70
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getExtraOutput()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2508
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_af

    .line 2509
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-wide/16 v2, -0x1

    const-string v0, "android.intent.extra.sizeLimit"

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2511
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "android.intent.extra.durationLimit"

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2513
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "android.intent.extra.videoQuality"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_af
    const/16 p1, 0x18

    .line 2517
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v1, p1, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 9

    .line 2522
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2a

    new-array v0, v1, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onActivityResult: requestCode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", resultCode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2524
    :cond_2a
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2525
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_3b

    const/16 v0, 0xc

    if-ne p1, v0, :cond_3a

    .line 2527
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/CameraActivity;->notifyActivityResultListeners(IILandroid/content/Intent;)V

    :cond_3a
    return-void

    .line 2532
    :cond_3b
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isDeviceInSecurityLock()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 2533
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    check-cast v0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    iget-boolean v3, p0, Lcom/sonyericsson/android/camera/CameraActivity;->isLaunchFromNewIntent:Z

    xor-int/2addr v3, v1

    invoke-virtual {v0, v3}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->reconstructLocalCache(Z)V

    .line 2534
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    check-cast v0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    iget-boolean v3, p0, Lcom/sonyericsson/android/camera/CameraActivity;->isLaunchFromNewIntent:Z

    invoke-virtual {v0, v3}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->setNewIntentFromActivity(Z)V

    .line 2537
    :cond_54
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/CameraActivity;->notifyActivityResultListeners(IILandroid/content/Intent;)V

    .line 2539
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->onActivityResult(I)V

    const/4 v0, 0x2

    packed-switch p1, :pswitch_data_14a

    :pswitch_60
    goto/16 :goto_148

    .line 2613
    :pswitch_62
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object p1, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_WIFI_RESULT:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    new-array p2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendStaticEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;[Ljava/lang/Object;)V

    goto/16 :goto_148

    :pswitch_6d
    if-nez p3, :cond_79

    const-string p0, "null intent was received unexpectedly"

    .line 2578
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    return-void

    :cond_79
    const/4 p1, -0x1

    if-ne p2, p1, :cond_d2

    const-string p1, "capturing_mode"

    .line 2583
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2584
    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 2585
    invoke-static {p1, p2}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->convertFrom(Ljava/lang/String;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object p1

    const-string p2, "ResetSettings"

    .line 2587
    invoke-virtual {p3, p2, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    .line 2588
    sget-boolean p3, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p3, :cond_ac

    new-array p3, v1, [Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resetRequested: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, v2

    invoke-static {p3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_ac
    if-nez p2, :cond_c6

    .line 2592
    iget-object p2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    invoke-interface {p2}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getLastSettings()Lcom/sonyericsson/android/camera/setting/LastSettings;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/setting/LastSettings;->writePauseTime()V

    .line 2593
    iget-object p2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    invoke-interface {p2}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getLastSettings()Lcom/sonyericsson/android/camera/setting/LastSettings;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/setting/LastSettings;->save()V

    .line 2596
    iget-object p2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {p2, p1}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    goto :goto_e4

    .line 2598
    :cond_c6
    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq p1, p2, :cond_e4

    .line 2599
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    goto :goto_e4

    .line 2604
    :cond_d2
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getLastSettings()Lcom/sonyericsson/android/camera/setting/LastSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/setting/LastSettings;->writePauseTime()V

    .line 2605
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getLastSettings()Lcom/sonyericsson/android/camera/setting/LastSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/setting/LastSettings;->save()V

    .line 2608
    :cond_e4
    :goto_e4
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera/CameraActivity;->setupAutoPowerOffTimeOutDuration(Z)V

    .line 2609
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->restartAutoPowerOffTimer()V

    goto :goto_148

    .line 2562
    :pswitch_eb
    invoke-direct {p0, p3}, Lcom/sonyericsson/android/camera/CameraActivity;->addExternalCameraAppContent(Landroid/content/Intent;)V

    .line 2563
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    .line 2564
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    .line 2565
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v2

    .line 2564
    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getModeName(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Ljava/lang/String;

    move-result-object v1

    .line 2563
    invoke-virtual {p1, p3, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendODMDualCameraEffectEvent(Landroid/content/Context;Ljava/lang/String;)V

    if-ne p2, v0, :cond_148

    .line 2567
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->finish()V

    goto :goto_148

    :pswitch_10d
    if-ne p2, v0, :cond_148

    .line 2572
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->finish()V

    goto :goto_148

    .line 2552
    :pswitch_113
    invoke-direct {p0, p3}, Lcom/sonyericsson/android/camera/CameraActivity;->addExternalCameraAppContent(Landroid/content/Intent;)V

    .line 2553
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p1

    .line 2554
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    .line 2555
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    .line 2556
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v2

    .line 2555
    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getModeName(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Ljava/lang/String;

    move-result-object v1

    .line 2553
    invoke-virtual {p1, p3, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendPortraitSelfieEvent(Landroid/content/Context;Ljava/lang/String;)V

    if-ne p2, v0, :cond_148

    .line 2558
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->finish()V

    goto :goto_148

    .line 2544
    :pswitch_135
    invoke-direct {p0, p3}, Lcom/sonyericsson/android/camera/CameraActivity;->addExternalCameraAppContent(Landroid/content/Intent;)V

    .line 2545
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendDualCameraEffectEvent(Landroid/content/Context;)V

    if-ne p2, v0, :cond_148

    .line 2547
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->finish()V

    :cond_148
    :goto_148
    return-void

    nop

    :pswitch_data_14a
    .packed-switch 0x10
        :pswitch_135
        :pswitch_135
        :pswitch_113
        :pswitch_10d
        :pswitch_60
        :pswitch_eb
        :pswitch_60
        :pswitch_60
        :pswitch_6d
        :pswitch_62
    .end packed-switch
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 2

    .line 2316
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_d

    const-string p1, "onCancel finish()"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2317
    :cond_d
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 759
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "onCreate() : E"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 760
    :cond_d
    sget-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->ACTIVITY_ON_CREATE:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/PerfLog;->begin()V

    .line 761
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 763
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_28

    .line 764
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 766
    :cond_28
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->createLaunchCondition()V

    const-wide/16 v0, 0x7d0

    .line 767
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->awaitPrepare(JLjava/util/concurrent/TimeUnit;)Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareResult;

    move-result-object p1

    .line 770
    sget-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareResult;->PERMISSION_DENIED:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareResult;

    const/4 v1, 0x1

    if-eq p1, v0, :cond_3a

    :cond_38
    move p1, v1

    goto :goto_43

    .line 777
    :cond_3a
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->REQUESTED_CAMERA_PERMISSIONS:[Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/sonyericsson/cameracommon/utility/PermissionsUtil;->arePermissionsGranted(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_38

    const/4 p1, 0x0

    :goto_43
    if-eqz p1, :cond_48

    .line 784
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->setup()V

    .line 786
    :cond_48
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mIsColdBoot:Z

    .line 787
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_55

    sget-object p1, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->ON_CREATE:Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    const-string v0, "CameraActivity"

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/android/camera/CameraActivity;->logLifeCycleOut(Ljava/lang/String;Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;)V

    .line 788
    :cond_55
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_62

    const-string p0, "onCreate() : X"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 789
    :cond_62
    sget-object p0, Lcom/sonyericsson/android/camera/util/PerfLog;->ACTIVITY_ON_CREATE:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/PerfLog;->end()V

    return-void
.end method

.method public onDestroy()V
    .registers 6

    .line 2090
    sget-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->ACTIVITY_ON_DESTROY:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/PerfLog;->begin()V

    .line 2091
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_12

    const-string v0, "onDestroy() : E"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2093
    :cond_12
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_1d

    const-string v0, "CameraActivity"

    sget-object v1, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->ON_DESTROY:Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->logLifeCycleIn(Ljava/lang/String;Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;)V

    .line 2094
    :cond_1d
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2095
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_27

    return-void

    .line 2100
    :cond_27
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLayoutOrientationChangedListenerSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 2104
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->onDestroy()V

    .line 2105
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_40

    const-string v0, "onDestroy():[IN]"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2108
    :cond_40
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->unregisterForceExitRequestReceiver()V

    .line 2111
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getDownAll()V

    const/4 v0, 0x0

    .line 2119
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mIsCalledOnDestroy:Z

    .line 2120
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mBackgroundWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonyericsson/android/camera/CameraActivity$ThermalAlertReceiverOnDestroyTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/camera/CameraActivity$ThermalAlertReceiverOnDestroyTask;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/CameraActivity$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 2121
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mBackgroundWorker:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    const/4 v0, 0x1

    .line 2124
    :try_start_5a
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mBackgroundWorker:Ljava/util/concurrent/ExecutorService;

    const-wide/16 v2, 0x3e8

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_9b

    .line 2125
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mThermalAlertReceiver:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;

    monitor-enter v1
    :try_end_69
    .catch Ljava/lang/InterruptedException; {:try_start_5a .. :try_end_69} :catch_7e

    .line 2126
    :try_start_69
    iget-boolean v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mIsCalledOnDestroy:Z

    if-nez v2, :cond_79

    .line 2127
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mIsCalledOnDestroy:Z

    .line 2128
    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mThermalAlertReceiver:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->onDestroy()V

    .line 2129
    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mBatteryChangedReceiver:Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->onDestroy()V

    .line 2131
    :cond_79
    monitor-exit v1

    goto :goto_9b

    :catchall_7b
    move-exception v2

    monitor-exit v1
    :try_end_7d
    .catchall {:try_start_69 .. :try_end_7d} :catchall_7b

    :try_start_7d
    throw v2
    :try_end_7e
    .catch Ljava/lang/InterruptedException; {:try_start_7d .. :try_end_7e} :catch_7e

    :catch_7e
    const-string v1, "mBackgroundWorker.shutdown is Timeout."

    .line 2134
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 2135
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mThermalAlertReceiver:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;

    monitor-enter v1

    .line 2136
    :try_start_8a
    iget-boolean v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mIsCalledOnDestroy:Z

    if-nez v2, :cond_9a

    .line 2137
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mIsCalledOnDestroy:Z

    .line 2139
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mThermalAlertReceiver:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->onDestroy()V

    .line 2140
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mBatteryChangedReceiver:Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->onDestroy()V

    .line 2142
    :cond_9a
    monitor-exit v1
    :try_end_9b
    .catchall {:try_start_8a .. :try_end_9b} :catchall_b9

    .line 2145
    :cond_9b
    :goto_9b
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_a6

    const-string v0, "CameraActivity"

    sget-object v1, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->ON_DESTROY:Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->logLifeCycleOut(Ljava/lang/String;Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;)V

    .line 2146
    :cond_a6
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_b3

    const-string p0, "onDestroy() : X"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2147
    :cond_b3
    sget-object p0, Lcom/sonyericsson/android/camera/util/PerfLog;->ACTIVITY_ON_DESTROY:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/PerfLog;->end()V

    return-void

    :catchall_b9
    move-exception p0

    .line 2142
    :try_start_ba
    monitor-exit v1
    :try_end_bb
    .catchall {:try_start_ba .. :try_end_bb} :catchall_b9

    throw p0
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    const/high16 v0, 0x20000000

    .line 3552
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 3553
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mSideTouchEventDispatcher:Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventDispatcher;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventDispatcher;->send(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 p0, 0x1

    return p0

    .line 3557
    :cond_12
    invoke-super {p0, p1}, Landroid/app/Activity;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected onHomeKeyEvent()V
    .registers 1

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 9

    .line 2204
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_24

    new-array v0, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KeyEvent.getEventTime() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2205
    :cond_24
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_42

    new-array v0, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CameraActivity.onKeyDown() : KEYCODE="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2206
    :cond_42
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_4f

    const-string v0, "onKeyDown():[IN]"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_4f
    const/4 v0, 0x4

    if-ne p1, v0, :cond_54

    .line 2210
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mIsBackDown:Z

    .line 2213
    :cond_54
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_5b

    return v2

    .line 2217
    :cond_5b
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mKeyEventDispatcher:Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventDispatcher;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventDispatcher;->sendKeyDown(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_64

    return v2

    .line 2221
    :cond_64
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .registers 4

    .line 2195
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mKeyEventDispatcher:Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventDispatcher;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventDispatcher;->sendKeyLongPress(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x1

    return p0

    .line 2199
    :cond_a
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 9

    .line 2226
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_24

    new-array v0, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KeyEvent.getEventTime() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2227
    :cond_24
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_42

    new-array v0, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CameraActivity.onKeyUp() : KEYCODE="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2228
    :cond_42
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_4f

    const-string v0, "onKeyUp():[IN]"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2230
    :cond_4f
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_56

    return v2

    .line 2234
    :cond_56
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mKeyEventDispatcher:Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventDispatcher;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventDispatcher;->sendKeyUp(Landroid/view/KeyEvent;)Z

    move-result v0

    const/4 v3, 0x4

    if-eqz v0, :cond_64

    if-ne p1, v3, :cond_63

    .line 2236
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mIsBackDown:Z

    :cond_63
    return v2

    :cond_64
    if-ne p1, v3, :cond_71

    .line 2242
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mIsBackDown:Z

    if-nez p1, :cond_6b

    return v2

    .line 2244
    :cond_6b
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->abort()V

    .line 2245
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mIsBackDown:Z

    return v2

    .line 2249
    :cond_71
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onMultiWindowModeChanged(Z)V
    .registers 6

    .line 1612
    invoke-super {p0, p1}, Landroid/app/Activity;->onMultiWindowModeChanged(Z)V

    .line 1613
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    .line 1617
    :cond_a
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_2a

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMultiWindowModeChanged() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2a
    if-eqz p1, :cond_3b

    .line 1620
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->REQUESTED_PERMISSIONS:[Ljava/lang/String;

    .line 1621
    invoke-static {p0, p1}, Lcom/sonyericsson/cameracommon/utility/PermissionsUtil;->arePermissionsGranted(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3b

    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mDisableMultiWindow:Z

    if-nez p1, :cond_3b

    .line 1623
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->launchMultiWindow()V

    :cond_3b
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 8

    .line 2337
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "onNewIntent() : E"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2342
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->REQUESTED_PERMISSIONS:[Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/sonyericsson/cameracommon/utility/PermissionsUtil;->arePermissionsGranted(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 2343
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/CameraActivity;->setIntent(Landroid/content/Intent;)V

    return-void

    .line 2346
    :cond_19
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mIsSetupCompleted:Z

    if-nez v0, :cond_20

    .line 2347
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->setup()V

    :cond_20
    const/4 v0, 0x1

    .line 2350
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->isLaunchFromNewIntent:Z

    .line 2351
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v1

    .line 2353
    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getLaunchTrigger()Lcom/sonyericsson/android/camera/LaunchTrigger;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera/LaunchTrigger;->VIEWER:Lcom/sonyericsson/android/camera/LaunchTrigger;

    if-eq v2, v3, :cond_3c

    .line 2354
    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    invoke-interface {v2}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getUserSettings()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->clearCachedUserSetting()V

    .line 2356
    :cond_3c
    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    invoke-interface {v2}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getUserSettings()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->changeCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 2358
    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    invoke-interface {v2}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getUserSettings()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FAST_CAPTURE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v2, v3}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_ONLY:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    if-ne v2, v3, :cond_57

    move v2, v0

    goto :goto_58

    :cond_57
    const/4 v2, 0x0

    .line 2361
    :goto_58
    iget-object v3, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    invoke-interface {v4}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getLastSettings()Lcom/sonyericsson/android/camera/setting/LastSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/setting/LastSettings;->getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v4

    instance-of v5, p0, Lcom/sonyericsson/android/camera/InternalCameraActivity;

    invoke-virtual {v3, p1, v4, v2, v5}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setup(Landroid/content/Intent;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;ZZ)V

    .line 2364
    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getLaunchTrigger()Lcom/sonyericsson/android/camera/LaunchTrigger;

    move-result-object v2

    .line 2365
    sget-object v3, Lcom/sonyericsson/android/camera/LaunchTrigger;->LOCK_SCREEN:Lcom/sonyericsson/android/camera/LaunchTrigger;

    if-ne v2, v3, :cond_86

    .line 2366
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_WARM_BOOT_FROM_LOCKSCREEN_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->startMeasurement(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    .line 2368
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_WARM_BOOT_FROM_LOCKSCREEN_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setMeasurementValid(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    goto :goto_cb

    .line 2370
    :cond_86
    sget-object v3, Lcom/sonyericsson/android/camera/LaunchTrigger;->HW_CAMERA_KEY:Lcom/sonyericsson/android/camera/LaunchTrigger;

    if-eq v2, v3, :cond_b9

    sget-object v3, Lcom/sonyericsson/android/camera/LaunchTrigger;->HW_CAMERA_KEY_LOCK:Lcom/sonyericsson/android/camera/LaunchTrigger;

    if-ne v2, v3, :cond_8f

    goto :goto_b9

    .line 2376
    :cond_8f
    sget-object v3, Lcom/sonyericsson/android/camera/LaunchTrigger;->LIFT_TRIGGER:Lcom/sonyericsson/android/camera/LaunchTrigger;

    if-ne v2, v3, :cond_a6

    .line 2377
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_WARM_BOOT_FROM_LIFTTRIGGER_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->startMeasurement(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    .line 2379
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_WARM_BOOT_FROM_LIFTTRIGGER_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setMeasurementValid(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    goto :goto_cb

    .line 2382
    :cond_a6
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_WARM_BOOT_FROM_HOME_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->startMeasurement(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    .line 2384
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_WARM_BOOT_FROM_HOME_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setMeasurementValid(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    goto :goto_cb

    .line 2372
    :cond_b9
    :goto_b9
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_WARM_BOOT_FROM_CAMERAKEY_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->startMeasurement(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    .line 2374
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_WARM_BOOT_FROM_CAMERAKEY_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setMeasurementValid(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    .line 2387
    :goto_cb
    iget-boolean v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mIsColdBoot:Z

    if-eqz v2, :cond_d9

    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v2

    if-eq v1, v2, :cond_d9

    .line 2388
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mIsNeedToCloseBypassCameraBecauseModeChanged:Z

    .line 2391
    :cond_d9
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/CameraActivity;->setIntent(Landroid/content/Intent;)V

    .line 2392
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_e9

    const-string p0, "onNewIntent() : X"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_e9
    return-void
.end method

.method public final onPause()V
    .registers 7

    const/4 v0, 0x0

    .line 2883
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->isLaunchFromNewIntent:Z

    .line 2885
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCheckAndRequestSelfPermissionsTask:Ljava/lang/Runnable;

    const/4 v2, 0x0

    if-eqz v1, :cond_13

    .line 2886
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v3, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCheckAndRequestSelfPermissionsTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2888
    iput-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCheckAndRequestSelfPermissionsTask:Ljava/lang/Runnable;

    .line 2893
    :cond_13
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x22

    if-lt v1, v3, :cond_1d

    .line 2894
    invoke-virtual {p0, v0, v0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->overrideActivityTransition(III)V

    goto :goto_20

    .line 2896
    :cond_1d
    invoke-virtual {p0, v0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->overridePendingTransition(II)V

    .line 2898
    :goto_20
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isRecording()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 2902
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->stopAudioRecording()V

    .line 2904
    :cond_2b
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->unRegisterHomeKeyEventReceiver()V

    .line 2905
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isPrepared()Z

    move-result v1

    if-nez v1, :cond_4a

    .line 2906
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 2909
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getCameraDevice()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->closeCamera()V

    .line 2913
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->REQUESTED_PERMISSIONS:[Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/sonyericsson/cameracommon/utility/PermissionsUtil;->arePermissionsGranted(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 2914
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->finishUrgently()V

    :cond_49
    return-void

    .line 2919
    :cond_4a
    sget-object v1, Lcom/sonyericsson/android/camera/util/PerfLog;->ACTIVITY_ON_PAUSE:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/util/PerfLog;->begin()V

    .line 2920
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_5c

    const-string v1, "onPause() : E"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2921
    :cond_5c
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const-string v3, "CameraActivity"

    if-eqz v1, :cond_67

    sget-object v1, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->ON_PAUSE:Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    invoke-direct {p0, v3, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->logLifeCycleIn(Ljava/lang/String;Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;)V

    :cond_67
    const-string v1, "activity-paused"

    .line 2924
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->notifyActivityState(Ljava/lang/String;)V

    .line 2926
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getLaunchTrigger()Lcom/sonyericsson/android/camera/LaunchTrigger;

    move-result-object v1

    .line 2927
    sget-object v4, Lcom/sonyericsson/android/camera/LaunchTrigger;->POWER_KEY_DOUBLE_TAP:Lcom/sonyericsson/android/camera/LaunchTrigger;

    if-eq v1, v4, :cond_8c

    sget-object v4, Lcom/sonyericsson/android/camera/LaunchTrigger;->LIFT_TRIGGER:Lcom/sonyericsson/android/camera/LaunchTrigger;

    if-eq v1, v4, :cond_8c

    .line 2929
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v4

    sget-object v5, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_COLD_BOOT_FROM_HOME_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {v4, v5}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setMeasurementInvalid(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    .line 2931
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v4

    sget-object v5, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_WARM_BOOT_FROM_HOME_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {v4, v5}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setMeasurementInvalid(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    .line 2934
    :cond_8c
    sget-object v4, Lcom/sonyericsson/android/camera/LaunchTrigger;->LIFT_TRIGGER:Lcom/sonyericsson/android/camera/LaunchTrigger;

    if-eq v1, v4, :cond_a2

    .line 2935
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v1

    sget-object v4, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_COLD_BOOT_FROM_LIFTTRIGGER_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {v1, v4}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setMeasurementInvalid(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    .line 2937
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v1

    sget-object v4, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_WARM_BOOT_FROM_LIFTTRIGGER_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {v1, v4}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setMeasurementInvalid(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    .line 2940
    :cond_a2
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v1

    sget-object v4, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_COLD_BOOT_FROM_CAMERAKEY_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {v1, v4}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setMeasurementInvalid(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    .line 2942
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v1

    sget-object v4, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_COLD_BOOT_FROM_LOCKSCREEN_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {v1, v4}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setMeasurementInvalid(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    .line 2944
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v1

    sget-object v4, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_WARM_BOOT_FROM_CAMERAKEY_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {v1, v4}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setMeasurementInvalid(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    .line 2946
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v1

    sget-object v4, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_WARM_BOOT_FROM_LOCKSCREEN_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {v1, v4}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setMeasurementInvalid(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    .line 2949
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getCameraDevice()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setActivityForeground(Z)V

    .line 2951
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->awaitSetupAllReady()Z

    .line 2953
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonyericsson.android.camera.intent.action.FINISH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 2956
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->REQUESTED_PERMISSIONS:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/PermissionsUtil;->arePermissionsGranted(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ea

    .line 2957
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->doPause()V

    goto :goto_f4

    .line 2959
    :cond_ea
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->releaseCamera()V

    .line 2960
    iput-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCurrentCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    .line 2962
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->clearMessageDialog()V

    .line 2965
    :goto_f4
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mKeyEventDispatcher:Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventDispatcher;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventDispatcher;->stop()V

    .line 2966
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mSideTouchEventDispatcher:Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventDispatcher;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventDispatcher;->stop()V

    .line 2968
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->unRegisterShutDownReceiver()V

    .line 2970
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_10a

    sget-object v0, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->ON_PAUSE:Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    invoke-direct {p0, v3, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->logLifeCycleOut(Ljava/lang/String;Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;)V

    .line 2971
    :cond_10a
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_117

    const-string v0, "onPause() : X"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2972
    :cond_117
    sget-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->ACTIVITY_ON_PAUSE:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/PerfLog;->end()V

    .line 2974
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onRestart()V
    .registers 3

    .line 1339
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const-string v1, "CameraActivity"

    if-eqz v0, :cond_b

    sget-object v0, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->ON_RESTART:Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    invoke-direct {p0, v1, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->logLifeCycleIn(Ljava/lang/String;Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;)V

    .line 1340
    :cond_b
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 1341
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_15

    return-void

    .line 1345
    :cond_15
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->onRestart()V

    .line 1347
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_23

    sget-object v0, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->ON_RESTART:Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    invoke-direct {p0, v1, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->logLifeCycleOut(Ljava/lang/String;Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;)V

    :cond_23
    return-void
.end method

.method public final onResume()V
    .registers 7

    .line 2818
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mDelayToResume:Z

    if-eqz v0, :cond_8

    .line 2819
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void

    :cond_8
    const/4 v0, 0x0

    .line 2822
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mIsColdBoot:Z

    .line 2823
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mIsSaveZoomInfoNeeded:Z

    .line 2825
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->setGmsMatterSupportChecked(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 2827
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 2828
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void

    :cond_1e
    const/16 v1, 0xc

    .line 2831
    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->REQUESTED_PERMISSIONS:[Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/sonyericsson/android/camera/CameraActivity;->checkAndRequestSelfPermissions(I[Ljava/lang/String;)Z

    move-result v1

    .line 2834
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isPrepared()Z

    move-result v2

    if-nez v2, :cond_30

    .line 2835
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void

    .line 2839
    :cond_30
    sget-object v2, Lcom/sonyericsson/android/camera/util/PerfLog;->ACTIVITY_ON_RESUME:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/util/PerfLog;->begin()V

    .line 2840
    sget-boolean v2, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_54

    new-array v2, v3, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onResume() : E "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2842
    :cond_54
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getCameraDevice()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setIsInShutdownNow(Z)V

    .line 2843
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->registerShutDownReceiver()V

    .line 2844
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->registerScreenOffReceiver()V

    .line 2845
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->registerHomeKeyEventReceiver()V

    .line 2847
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const-string v2, "CameraActivity"

    if-eqz v0, :cond_6f

    sget-object v0, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->ON_RESUME:Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    invoke-direct {p0, v2, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->logLifeCycleIn(Ljava/lang/String;Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;)V

    .line 2849
    :cond_6f
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getCameraDevice()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setActivityForeground(Z)V

    .line 2850
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isKeyguardLocked()Z

    move-result v3

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->shouldShowWhenLocked()Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->onResume(ZZ)V

    if-nez v1, :cond_89

    .line 2854
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->doResume()V

    goto :goto_a5

    .line 2856
    :cond_89
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getExtraOperation()Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;->LAUNCH_AND_CAPTURE:Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;

    if-ne v0, v1, :cond_a5

    .line 2858
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_a0

    const-string v0, "start clearExtraOperation"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2860
    :cond_a0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->clearExtraOperation()V

    .line 2864
    :cond_a5
    :goto_a5
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonyericsson.android.camera.intent.action.LAUNCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 2867
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->releaseCameraDeviceReleaseTimer()V

    const-string v0, "activity-resumed"

    .line 2870
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->notifyActivityState(Ljava/lang/String;)V

    .line 2872
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mKeyEventDispatcher:Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventDispatcher;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventDispatcher;->start()V

    .line 2874
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_c5

    sget-object v0, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->ON_RESUME:Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    invoke-direct {p0, v2, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->logLifeCycleOut(Ljava/lang/String;Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;)V

    .line 2875
    :cond_c5
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d2

    const-string v0, "onResume() : X"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2876
    :cond_d2
    sget-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->ACTIVITY_ON_RESUME:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/PerfLog;->end()V

    .line 2878
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method protected onScreenOff()V
    .registers 2

    .line 1036
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "invoke"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1038
    :cond_d
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3f

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_3f

    .line 1042
    :cond_1a
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->isOneShot()Z

    move-result v0

    if-eqz v0, :cond_23

    return-void

    :cond_23
    const/4 v0, 0x0

    .line 1050
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->setShowWhenLocked(Z)V

    .line 1051
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->setTurnScreenOn(Z)V

    .line 1053
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->shouldNotRemainRecentTask()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 1055
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->requestSuspend()V

    goto :goto_3f

    .line 1056
    :cond_36
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->shouldShowWhenLocked()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 1058
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->requestSuspend()V

    :cond_3f
    :goto_3f
    return-void
.end method

.method public onSearchRequested()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public onStart()V
    .registers 3

    .line 1309
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const-string v1, "CameraActivity"

    if-eqz v0, :cond_b

    sget-object v0, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->ON_START:Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    invoke-direct {p0, v1, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->logLifeCycleIn(Ljava/lang/String;Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;)V

    .line 1310
    :cond_b
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 1311
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_15

    return-void

    .line 1315
    :cond_15
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_1e

    sget-object v0, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->ON_START:Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    invoke-direct {p0, v1, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->logLifeCycleOut(Ljava/lang/String;Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;)V

    :cond_1e
    return-void
.end method

.method public onStop()V
    .registers 3

    .line 2069
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const-string v1, "CameraActivity"

    if-eqz v0, :cond_b

    sget-object v0, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->ON_STOP:Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    invoke-direct {p0, v1, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->logLifeCycleIn(Ljava/lang/String;Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;)V

    .line 2070
    :cond_b
    sget-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->ACTIVITY_ON_STOP:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/PerfLog;->begin()V

    .line 2072
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 2074
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->hasDeviceError()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 2075
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->finishAndRemoveTask()V

    .line 2076
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {p0}, Landroid/os/Process;->killProcess(I)V

    return-void

    .line 2080
    :cond_24
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_2b

    return-void

    .line 2084
    :cond_2b
    sget-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->ACTIVITY_ON_STOP:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/PerfLog;->end()V

    .line 2085
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_39

    sget-object v0, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->ON_STOP:Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    invoke-direct {p0, v1, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->logLifeCycleOut(Ljava/lang/String;Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;)V

    :cond_39
    return-void
.end method

.method public onUserInteraction()V
    .registers 3

    .line 1629
    invoke-super {p0}, Landroid/app/Activity;->onUserInteraction()V

    .line 1631
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mAutoPowerOffTimer:Lcom/sonyericsson/android/camera/AutoPowerOffTimer;

    if-eqz v0, :cond_1c

    sget-object v0, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;->LIFT_TRIGGER:Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;

    .line 1632
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;->getReason()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mAutoPowerOffTimer:Lcom/sonyericsson/android/camera/AutoPowerOffTimer;

    .line 1633
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/AutoPowerOffTimer;->getUserdata()Ljava/lang/Object;

    move-result-object v1

    .line 1632
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 1634
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->restartAutoPowerOffTimer()V

    :cond_1c
    return-void
.end method

.method protected onUserLeaveHint()V
    .registers 1

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 3

    .line 2434
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 2435
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    :cond_a
    if-eqz p1, :cond_18

    .line 2442
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    if-eqz p0, :cond_18

    .line 2443
    sget-object p1, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_UPDATE_GEO_TAG:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    :cond_18
    return-void
.end method

.method public pauseAudioPlayback()V
    .registers 4

    .line 3020
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "command"

    const-string v2, "pause"

    .line 3021
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3024
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 3025
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->muteSound()V

    return-void
.end method

.method public playSound(Lcom/sonyericsson/cameracommon/sound/SoundPlayer$Type;)V
    .registers 2

    .line 2255
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mSoundPlayer:Lcom/sonyericsson/cameracommon/sound/SoundPlayer;

    if-nez p0, :cond_5

    return-void

    .line 2259
    :cond_5
    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->play(Lcom/sonyericsson/cameracommon/sound/SoundPlayer$Type;)V

    return-void
.end method

.method public postDelayedEvent(Ljava/lang/Runnable;J)V
    .registers 4

    .line 1798
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public prepareCameraDeviceHandler(Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/setting/UserSettings;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;
    .registers 5

    .line 742
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;->SESSION_TYPE_NORMAL:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->prepareCameraDeviceHandler(Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object p0

    return-object p0
.end method

.method public prepareCameraDeviceHandler(Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;
    .registers 9

    .line 722
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_37

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepareCameraDeviceHandler() launch:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p1, :cond_18

    const-string v3, "null"

    goto :goto_1c

    .line 723
    :cond_18
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->name()Ljava/lang/String;

    move-result-object v3

    :goto_1c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " capturing-mode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 724
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 722
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 726
    :cond_37
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mIsNeedToCloseBypassCameraBecauseModeChanged:Z

    if-eqz v0, :cond_44

    .line 727
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mIsNeedToCloseBypassCameraBecauseModeChanged:Z

    .line 728
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getCameraDevice()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->closeCamera()V

    .line 731
    :cond_44
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getCameraDevice()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->prepareCamera(Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/setting/UserSettings;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 732
    invoke-interface {p3}, Lcom/sonyericsson/android/camera/setting/UserSettings;->applyCapturingMode()V

    .line 733
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getCameraDevice()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->openCamera(Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object p0

    return-object p0

    :cond_5a
    const/4 p0, 0x0

    return-object p0
.end method

.method public removeOrienationListener(Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientationChangedListener;)V
    .registers 2

    .line 3140
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLayoutOrientationChangedListenerSet:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public reportFullyDrawnOnce()V
    .registers 3

    .line 1153
    sget-boolean v0, Lcom/sonyericsson/android/camera/CameraActivity;->sIsReportFullyDrawnAlreadyReported:Z

    if-nez v0, :cond_13

    const/4 v0, 0x1

    .line 1154
    sput-boolean v0, Lcom/sonyericsson/android/camera/CameraActivity;->sIsReportFullyDrawnAlreadyReported:Z

    const-string v0, "Report fully drawn"

    .line 1155
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1156
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->reportFullyDrawn()V

    .line 1159
    :cond_13
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getLaunchTrigger()Lcom/sonyericsson/android/camera/LaunchTrigger;

    move-result-object v1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    .line 1160
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object p0

    .line 1159
    invoke-virtual {v0, v1, p0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->sendView(Lcom/sonyericsson/android/camera/LaunchTrigger;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    return-void
.end method

.method public requestPostLazyInitializationTaskExecute()V
    .registers 6

    .line 1780
    new-instance v0, Lcom/sonyericsson/android/camera/CameraActivity$PostDeviceInitializationTask;

    invoke-direct {v0, p0, p0}, Lcom/sonyericsson/android/camera/CameraActivity$PostDeviceInitializationTask;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/CameraActivity;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mPostDeviceInitializationTask:Lcom/sonyericsson/android/camera/CameraActivity$PostDeviceInitializationTask;

    .line 1781
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_UPDATE_SETTING_CHANGE_ACCEPTABILITY:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 1783
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1781
    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 1784
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getExtraOperation()Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;->LAUNCH_AND_CAPTURE:Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;

    if-ne v0, v1, :cond_2a

    .line 1785
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mPostDeviceInitializationTask:Lcom/sonyericsson/android/camera/CameraActivity$PostDeviceInitializationTask;

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Lcom/sonyericsson/android/camera/CameraActivity;->postDelayedEvent(Ljava/lang/Runnable;J)V

    goto :goto_2f

    .line 1789
    :cond_2a
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mPostDeviceInitializationTask:Lcom/sonyericsson/android/camera/CameraActivity$PostDeviceInitializationTask;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->postEvent(Ljava/lang/Runnable;)V

    :goto_2f
    return-void
.end method

.method public requestStartFeatureListActivity()V
    .registers 4

    .line 3701
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3702
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/sonyericsson/android/camera/FeatureListActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 3703
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    .line 3704
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->shouldNotRemainRecentTask()Z

    move-result v1

    const-string v2, "extra_key_finish_when_screen_off"

    .line 3703
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v1, 0x17

    .line 3705
    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 3706
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p0

    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$LaunchFeatureListWay;->NEW_FEATURE_BAR:Lcom/sonymobile/cameracommon/research/parameters/Event$LaunchFeatureListWay;

    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendShowFeatureListEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$LaunchFeatureListWay;)V

    return-void
.end method

.method public requestSuspend()V
    .registers 2

    .line 1944
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "requestSuspend():[IN]"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_d
    const/4 v0, 0x1

    .line 1945
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->moveTaskToBack(Z)Z

    move-result v0

    if-nez v0, :cond_24

    .line 1946
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_21

    const-string v0, "requestSuspend():[FAILED]"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1947
    :cond_21
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->finish()V

    :cond_24
    return-void
.end method

.method public final restartAutoPowerOffTimer()V
    .registers 2

    .line 3053
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "restartAutoPowerOffTimer: "

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3054
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mAutoPowerOffTimer:Lcom/sonyericsson/android/camera/AutoPowerOffTimer;

    if-nez v0, :cond_12

    return-void

    .line 3058
    :cond_12
    new-instance v0, Lcom/sonyericsson/android/camera/CameraActivity$9;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/CameraActivity$9;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;)V

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->postEvent(Ljava/lang/Runnable;)V

    .line 3066
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mAutoPowerOffTimer:Lcom/sonyericsson/android/camera/AutoPowerOffTimer;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/AutoPowerOffTimer;->restartAutoPowerOffTimer()V

    return-void
.end method

.method public setDelayToResume(Z)V
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 2808
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDelayToResume "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2809
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mDelayToResume:Z

    return-void
.end method

.method public setMaxBrightness()V
    .registers 2

    const/high16 v0, 0x3f800000    # 1.0f

    .line 3666
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->setBrightness(F)V

    return-void
.end method

.method public setupAutoPowerOffTimeOutDuration(Z)V
    .registers 4

    if-eqz p1, :cond_16

    .line 1013
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getMessageSettings()Lcom/sonyericsson/android/camera/setting/MessageSettings;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/setting/MessageType;->PREDICTIVE_LAUNCH_DESCRIPTION:Lcom/sonyericsson/android/camera/setting/MessageType;

    .line 1014
    invoke-interface {p1, v0}, Lcom/sonyericsson/android/camera/setting/MessageSettings;->isNeverShow(Lcom/sonyericsson/android/camera/setting/MessageType;)Z

    move-result p1

    if-nez p1, :cond_13

    .line 1015
    sget-object p1, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;->LIFT_TRIGGER_DIALOG:Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;

    goto :goto_31

    .line 1017
    :cond_13
    sget-object p1, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;->LIFT_TRIGGER:Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;

    goto :goto_31

    .line 1019
    :cond_16
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->isLaunchedAsInSecure()Z

    move-result p1

    if-eqz p1, :cond_24

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isKeyguardLocked()Z

    move-result p1

    if-nez p1, :cond_2c

    :cond_24
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    .line 1020
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->isQuickLaunchOnFirstLaunch()Z

    move-result p1

    if-eqz p1, :cond_2f

    .line 1021
    :cond_2c
    sget-object p1, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;->ON_LOCKSCREEN:Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;

    goto :goto_31

    .line 1023
    :cond_2f
    sget-object p1, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;->DEFAULT:Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;

    .line 1026
    :goto_31
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mAutoPowerOffTimer:Lcom/sonyericsson/android/camera/AutoPowerOffTimer;

    .line 1027
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;->getDuration()I

    move-result v1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    .line 1028
    invoke-interface {p0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->getAutoPowerOffHintTextTimeOutDuration()I

    move-result p0

    .line 1029
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;->getReason()Ljava/lang/String;

    move-result-object p1

    .line 1026
    invoke-virtual {v0, v1, p0, p1}, Lcom/sonyericsson/android/camera/AutoPowerOffTimer;->setTimeOutDuration(IILjava/lang/Object;)V

    return-void
.end method

.method protected shouldShowWhenLocked()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 5

    .line 3405
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isDeviceInSecurityLock()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3406
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    check-cast v0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->saveLocalCache()V

    .line 3408
    :cond_d
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILcom/sonyericsson/cameracommon/activity/OnActivityResultListener;)Z
    .registers 4

    .line 3413
    invoke-direct {p0, p2, p3}, Lcom/sonyericsson/android/camera/CameraActivity;->addActivityResultListener(ILcom/sonyericsson/cameracommon/activity/OnActivityResultListener;)Z

    move-result p3

    if-nez p3, :cond_8

    const/4 p0, 0x0

    return p0

    .line 3416
    :cond_8
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera/CameraActivity;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 p0, 0x1

    return p0
.end method

.method public stopPlayingSound()V
    .registers 1

    .line 2265
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mSoundPlayer:Lcom/sonyericsson/cameracommon/sound/SoundPlayer;

    if-eqz p0, :cond_7

    .line 2266
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->stop()V

    :cond_7
    return-void
.end method

.method public terminateApplication()V
    .registers 1

    .line 678
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->finish()V

    return-void
.end method
