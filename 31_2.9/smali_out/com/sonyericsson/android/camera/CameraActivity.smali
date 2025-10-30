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

.field private mDisableMultiWindow:Z

.field private mForceExitRequestReceiver:Lcom/sonyericsson/android/camera/CameraActivity$ForceExitRequestReceiver;

.field private mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

.field private mHomeKeyEventReceiver:Lcom/sonyericsson/android/camera/CameraActivity$HomeKeyEventReceiver;

.field private mIsCalledOnDestroy:Z

.field private mIsColdBoot:Z

.field private mIsLazyInitializationRunning:Z

.field private mIsNeedToCloseBypassCameraBecauseModeChanged:Z

.field private mIsReceiverResistered:Z

.field private mIsSaveZoomInfoNeeded:Z

.field private final mKeyEventDispatcher:Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventDispatcher;

.field private mKeyguardManager:Landroid/app/KeyguardManager;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

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

    .line 298
    iput-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mBackgroundWorker:Ljava/util/concurrent/ExecutorService;

    .line 303
    iput-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mThermalAlertReceiverReadyTaskFuture:Ljava/util/concurrent/Future;

    .line 304
    iput-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mViewFinderInitializationTaskFuture:Ljava/util/concurrent/Future;

    .line 305
    iput-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mSetupAllTaskFuture:Ljava/util/concurrent/Future;

    .line 306
    iput-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCreateContentInfoTaskFuture:Ljava/util/concurrent/Future;

    .line 318
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mIsColdBoot:Z

    .line 321
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mIsNeedToCloseBypassCameraBecauseModeChanged:Z

    .line 326
    iput-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 347
    sget-object v0, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->Unknown:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLastDetectedOrientation:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    .line 352
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLayoutOrientationChangedListenerSet:Ljava/util/Set;

    const/4 v0, -0x1

    .line 356
    iput v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mSensorOrientationDegree:I

    .line 358
    iput v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLastOrientationDegree:I

    .line 360
    iput v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLastDeterminedOrientationDegree:I

    .line 363
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mIsReceiverResistered:Z

    .line 367
    iput-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mForceExitRequestReceiver:Lcom/sonyericsson/android/camera/CameraActivity$ForceExitRequestReceiver;

    .line 369
    iput-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCameraActivityFinishReceiver:Lcom/sonyericsson/android/camera/CameraActivity$CameraActivityFinishBroadcastReceiver;

    .line 372
    new-instance v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventDispatcher;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventDispatcher;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mKeyEventDispatcher:Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventDispatcher;

    .line 374
    new-instance v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventDispatcher;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventDispatcher;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mSideTouchEventDispatcher:Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventDispatcher;

    .line 377
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mIsSaveZoomInfoNeeded:Z

    .line 453
    new-instance v0, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffTimerImpl;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffTimerImpl;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mAutoPowerOffTimerImpl:Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffTimerImpl;

    .line 455
    new-instance v0, Lcom/sonyericsson/android/camera/CameraActivity$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/CameraActivity$1;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mThermalAlertListener:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$ThermalAlertReceiverListener;

    .line 537
    new-instance v0, Lcom/sonyericsson/android/camera/CameraActivity$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/CameraActivity$2;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mBatteryChangedListener:Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver$BatteryChangedReceiverListener;

    .line 566
    new-instance v0, Lcom/sonyericsson/android/camera/CameraActivity$3;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/CameraActivity$3;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mSetupWizardResultListener:Lcom/sonyericsson/cameracommon/activity/OnActivityResultListener;

    return-void
.end method

.method private abort(Z)V
    .registers 6

    .line 2242
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    if-eqz v0, :cond_3d

    const/4 v1, 0x0

    if-eqz p1, :cond_2f

    .line 2250
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isDeviceInSecurityLock()Z

    move-result p1

    if-nez p1, :cond_2b

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isInLockTaskMode()Z

    move-result p1

    if-eqz p1, :cond_14

    goto :goto_2b

    .line 2252
    :cond_14
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->isOneShot()Z

    move-result p1

    if-eqz p1, :cond_27

    .line 2253
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mReturnOneShotResult:Z

    if-eqz p1, :cond_23

    .line 2254
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->setResult(I)V

    .line 2256
    :cond_23
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->finishUrgently()V

    goto :goto_3d

    .line 2258
    :cond_27
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->requestSuspend()V

    goto :goto_3d

    .line 2251
    :cond_2b
    :goto_2b
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->finish()V

    goto :goto_3d

    .line 2262
    :cond_2f
    sget-object p1, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_PAUSE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {v0, p1, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

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

    .line 3304
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mActivityResultListeners:Landroid/util/SparseArray;

    if-nez v0, :cond_b

    .line 3305
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mActivityResultListeners:Landroid/util/SparseArray;

    .line 3308
    :cond_b
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mActivityResultListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    const/4 p1, 0x0

    return p1

    .line 3312
    :cond_15
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mActivityResultListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method private addExternalCameraAppContent(Landroid/content/Intent;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    .line 2578
    :cond_3
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isDeviceInSecurityLock()Z

    move-result v0

    if-eqz v0, :cond_24

    const-string v0, "com.sonyericsson.android.camera.extra.CAPTURED_URIS"

    .line 2581
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_24

    .line 2583
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_24

    .line 2584
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
    .registers 2

    .line 2610
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCreateContentInfoTaskFuture:Ljava/util/concurrent/Future;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getFuture(Ljava/util/concurrent/Future;)Z

    move-result v0

    return v0
.end method

.method private awaitThermalAlertReceiverReady()Z
    .registers 2

    .line 1684
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mThermalAlertReceiverReadyTaskFuture:Ljava/util/concurrent/Future;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getFuture(Ljava/util/concurrent/Future;)Z

    move-result v0

    return v0
.end method

.method private cancelDelayedEvent(Ljava/lang/Runnable;)V
    .registers 3

    .line 1769
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private changeParametersForGoogleAssistant()V
    .registers 5

    .line 3473
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getUserSettings()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    .line 3474
    invoke-interface {v0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->getParameters()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v1

    if-nez v1, :cond_12

    .line 3477
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->clearLaunchCameraMode()V

    return-void

    .line 3481
    :cond_12
    sget-object v2, Lcom/sonyericsson/android/camera/CameraActivity$12;->$SwitchMap$com$sonyericsson$android$camera$LaunchCondition$LaunchCameraMode:[I

    iget-object v3, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getLaunchCameraMode()Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_98

    goto/16 :goto_96

    .line 3514
    :pswitch_25
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->SUPER_SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    goto/16 :goto_96

    .line 3483
    :pswitch_2c
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getVideoCodec()Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;

    move-result-object v2

    .line 3484
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getVideoSize()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v1

    if-eqz v2, :cond_90

    if-nez v1, :cond_39

    goto :goto_90

    .line 3491
    :cond_39
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->is4KVideo()Z

    move-result v1

    if-nez v1, :cond_8a

    .line 3492
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;->H264:Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;

    if-ne v2, v1, :cond_65

    .line 3493
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getScreenAspect()Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;->TWENTYONE_NINE:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    if-ne v1, v2, :cond_51

    .line 3494
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_ULTRA_H264:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    goto :goto_8a

    .line 3495
    :cond_51
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getScreenAspect()Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;->EIGHTEEN_NINE:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    if-ne v1, v2, :cond_5f

    .line 3496
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_PLUS_H264:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    goto :goto_8a

    .line 3498
    :cond_5f
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_H264:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    goto :goto_8a

    .line 3500
    :cond_65
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;->H265:Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;

    if-ne v2, v1, :cond_8a

    .line 3501
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getScreenAspect()Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;->TWENTYONE_NINE:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    if-ne v1, v2, :cond_77

    .line 3502
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_ULTRA_H265:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    goto :goto_8a

    .line 3503
    :cond_77
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getScreenAspect()Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;->EIGHTEEN_NINE:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    if-ne v1, v2, :cond_85

    .line 3504
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_PLUS_H265:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    goto :goto_8a

    .line 3506
    :cond_85
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_H265:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 3510
    :cond_8a
    :goto_8a
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    goto :goto_96

    .line 3487
    :cond_90
    :goto_90
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->clearLaunchCameraMode()V

    return-void

    :goto_96
    return-void

    nop

    :pswitch_data_98
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_25
    .end packed-switch
.end method

.method private convertRect(Landroid/graphics/Rect;)V
    .registers 4

    .line 3605
    iget v0, p1, Landroid/graphics/Rect;->right:I

    .line 3606
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 3607
    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method private createBatteryChangedReceiver()V
    .registers 3

    .line 2742
    new-instance v0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mBatteryChangedListener:Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver$BatteryChangedReceiverListener;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;-><init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver$BatteryChangedReceiverListener;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mBatteryChangedReceiver:Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;

    return-void
.end method

.method private createLaunchCondition()V
    .registers 3

    .line 2689
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/IntentReader;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/configuration/IntentReader;-><init>()V

    .line 2691
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/configuration/IntentReader;->getVideoQualityConfigurations(Landroid/content/Intent;)Lcom/sonyericsson/android/camera/configuration/IntentReader$VideoQualityConfigurations;

    move-result-object v0

    .line 2692
    new-instance v1, Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-direct {v1, v0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;-><init>(Lcom/sonyericsson/android/camera/configuration/IntentReader$VideoQualityConfigurations;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    return-void
.end method

.method private createViewFinder()Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
    .registers 5

    .line 1183
    new-instance v0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    .line 1184
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getScreenAspect()Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getStoredSettings()Lcom/sonyericsson/android/camera/setting/StoredSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getUiControlSettings()Lcom/sonyericsson/android/camera/setting/UiControlSettings;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;Lcom/sonyericsson/android/camera/setting/UiControlSettings;Lcom/sonyericsson/android/camera/LaunchCondition;)V

    .line 1186
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->setStateMachine(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    .line 1187
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getCameraDevice()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->setCameraDevice(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)V

    .line 1189
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

    .line 3026
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "disableOrientation()"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3027
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_17

    .line 3028
    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    const/4 v0, 0x0

    .line 3029
    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    :cond_17
    return-void
.end method

.method private doPause()V
    .registers 7

    .line 1930
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getCameraDevice()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->removeOnPreviewStartedListener()V

    .line 1933
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_PAUSE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-virtual {v0, v1, v3}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 1938
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    if-eqz v0, :cond_5c

    .line 1940
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getUserSettings()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 1941
    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eqz v0, :cond_5c

    .line 1943
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mIsSaveZoomInfoNeeded:Z

    if-eqz v1, :cond_3c

    .line 1944
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    invoke-interface {v2}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getLastSettings()Lcom/sonyericsson/android/camera/setting/LastSettings;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->saveZoomSettings(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/setting/LastSettings;)V

    goto :goto_45

    .line 1946
    :cond_3c
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    invoke-interface {v1}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getLastSettings()Lcom/sonyericsson/android/camera/setting/LastSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/setting/LastSettings;->clearZoomInfo()V

    .line 1948
    :goto_45
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    invoke-interface {v2}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getUserSettings()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    .line 1949
    invoke-interface {v3}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getLastSettings()Lcom/sonyericsson/android/camera/setting/LastSettings;

    move-result-object v3

    iget-object v5, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->isOneShot()Z

    move-result v5

    .line 1948
    invoke-virtual {v1, v0, v2, v3, v5}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->savePreloadSettings(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/setting/LastSettings;Z)V

    .line 1953
    :cond_5c
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->releaseCamera()V

    const/4 v0, 0x0

    .line 1954
    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCurrentCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    .line 1957
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mBackgroundWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/sonyericsson/android/camera/CameraActivity$ThermalAlertReceiverOnPauseTask;

    invoke-direct {v2, p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity$ThermalAlertReceiverOnPauseTask;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/CameraActivity$1;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1959
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    if-eqz v0, :cond_73

    .line 1960
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->releaseResource()V

    .line 1964
    :cond_73
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mPostDeviceInitializationTask:Lcom/sonyericsson/android/camera/CameraActivity$PostDeviceInitializationTask;

    if-eqz v0, :cond_7a

    .line 1965
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->cancelDelayedEvent(Ljava/lang/Runnable;)V

    .line 1967
    :cond_7a
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLazyInitializationiTask:Lcom/sonyericsson/android/camera/CameraActivity$LazyInitializationTask;

    if-eqz v0, :cond_81

    .line 1968
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->cancelDelayedEvent(Ljava/lang/Runnable;)V

    .line 1971
    :cond_81
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mDelayLaunchInternalModeTask:Lcom/sonyericsson/android/camera/CameraActivity$DelayLaunchInternalModeTask;

    if-eqz v0, :cond_88

    .line 1972
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->cancelDelayedEvent(Ljava/lang/Runnable;)V

    .line 1975
    :cond_88
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->releaseContentsViewController()V

    .line 1978
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mIsReceiverResistered:Z

    if-eqz v0, :cond_93

    .line 1979
    iput-boolean v4, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mIsReceiverResistered:Z

    .line 1983
    :cond_93
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->disableAutoPowerOffTimer()V

    .line 1986
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 1989
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->unmuteSound()V

    .line 1991
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->clearMessageDialog()V

    .line 1994
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->disableOrientation()V

    .line 1996
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->onPause(Z)V

    .line 2002
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getUserSettings()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    if-eqz v0, :cond_d2

    .line 2003
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    invoke-interface {v1}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getUserSettings()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 2004
    invoke-interface {v1, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 2003
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 2006
    :cond_d2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->onPause()V

    return-void
.end method

.method private doResume()V
    .registers 9

    .line 1318
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->isCorrectExtraOutputPath()Z

    move-result v0

    const/16 v1, 0x80

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v0, :cond_41

    .line 1319
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0f0181

    .line 1320
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0f0180

    .line 1321
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 1322
    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0f02ea

    .line 1323
    invoke-virtual {v3, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/sonyericsson/android/camera/CameraActivity$7;

    invoke-direct {v3, p0}, Lcom/sonyericsson/android/camera/CameraActivity$7;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;)V

    .line 1324
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 1330
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1331
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1332
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void

    .line 1338
    :cond_41
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getStorage()Lcom/sonyericsson/cameracommon/storage/Storage;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->resume()V

    .line 1341
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->enableOrientation()V

    .line 1343
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->isLaunchInternalMode()Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 1344
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isKeyguardLocked()Z

    move-result v0

    if-nez v0, :cond_5f

    .line 1345
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->launchInternalMode()V

    goto :goto_6d

    .line 1347
    :cond_5f
    new-instance v0, Lcom/sonyericsson/android/camera/CameraActivity$DelayLaunchInternalModeTask;

    invoke-direct {v0, p0, v2}, Lcom/sonyericsson/android/camera/CameraActivity$DelayLaunchInternalModeTask;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/CameraActivity$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mDelayLaunchInternalModeTask:Lcom/sonyericsson/android/camera/CameraActivity$DelayLaunchInternalModeTask;

    .line 1348
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mDelayLaunchInternalModeTask:Lcom/sonyericsson/android/camera/CameraActivity$DelayLaunchInternalModeTask;

    const-wide/16 v4, 0x32

    invoke-virtual {p0, v0, v4, v5}, Lcom/sonyericsson/android/camera/CameraActivity;->postDelayedEvent(Ljava/lang/Runnable;J)V

    .line 1353
    :cond_6d
    :goto_6d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getLaunchTrigger()Lcom/sonyericsson/android/camera/LaunchTrigger;

    move-result-object v0

    sget-object v4, Lcom/sonyericsson/android/camera/LaunchTrigger;->VIEWER:Lcom/sonyericsson/android/camera/LaunchTrigger;

    if-eq v0, v4, :cond_80

    .line 1354
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getUserSettings()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->clearCachedUserSetting()V

    .line 1358
    :cond_80
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getUserSettings()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    iget-object v4, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    .line 1359
    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v4

    .line 1358
    invoke-interface {v0, v4}, Lcom/sonyericsson/android/camera/setting/UserSettings;->changeCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 1360
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getLaunchCameraMode()Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;->isLaunchedByGoogleAssistant()Z

    move-result v0

    if-eqz v0, :cond_9e

    .line 1361
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->changeParametersForGoogleAssistant()V

    .line 1365
    :cond_9e
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getLastSettings()Lcom/sonyericsson/android/camera/setting/LastSettings;

    move-result-object v0

    iget-object v4, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    .line 1366
    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getUserSetting()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v4

    sget-object v5, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v4, v5}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 1365
    invoke-virtual {v0, v4}, Lcom/sonyericsson/android/camera/setting/LastSettings;->getBokehSetting(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/Bokeh;

    move-result-object v0

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/Bokeh;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/Bokeh;

    if-ne v0, v4, :cond_cf

    .line 1368
    sget-object v0, Lcom/sonyericsson/android/camera/LaunchTrigger;->VIEWER:Lcom/sonyericsson/android/camera/LaunchTrigger;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getLaunchTrigger()Lcom/sonyericsson/android/camera/LaunchTrigger;

    move-result-object v4

    if-ne v0, v4, :cond_cf

    .line 1369
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getUserSettings()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/Bokeh;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/Bokeh;

    invoke-interface {v0, v4}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 1373
    :cond_cf
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getLaunchTrigger()Lcom/sonyericsson/android/camera/LaunchTrigger;

    move-result-object v0

    sget-object v4, Lcom/sonyericsson/android/camera/LaunchTrigger;->OTHER:Lcom/sonyericsson/android/camera/LaunchTrigger;

    if-eq v0, v4, :cond_e2

    .line 1374
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getLastSettings()Lcom/sonyericsson/android/camera/setting/LastSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/setting/LastSettings;->clearZoomInfo()V

    .line 1378
    :cond_e2
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getCameraDevice()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    .line 1379
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {v0, v4}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setStateMachine(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    .line 1382
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isLaunchAndCapture()Z

    move-result v0

    .line 1383
    iget-object v4, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getExtraOperation()Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;

    move-result-object v4

    sget-object v5, Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;->LAUNCH_AND_CAPTURE:Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;

    if-ne v4, v5, :cond_100

    .line 1384
    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_AND_CAPTURE:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    goto :goto_102

    .line 1386
    :cond_100
    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_ONLY:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    .line 1391
    :goto_102
    iget-object v5, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    .line 1392
    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v5

    iget-object v6, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    .line 1393
    invoke-interface {v6}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getUserSettings()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v6

    .line 1391
    invoke-virtual {p0, v4, v5, v6}, Lcom/sonyericsson/android/camera/CameraActivity;->prepareCameraDeviceHandler(Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/setting/UserSettings;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object v4

    iput-object v4, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCurrentCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    .line 1394
    iget-object v4, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    new-instance v5, Lcom/sonyericsson/android/camera/CameraActivity$OnPreviewStartedListenerImpl;

    iget-object v6, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCurrentCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {v5, p0, v6}, Lcom/sonyericsson/android/camera/CameraActivity$OnPreviewStartedListenerImpl;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    invoke-virtual {v4, v5}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setOnPreviewStartedListener(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnPreviewStartedListener;)V

    .line 1397
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    .line 1400
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1402
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getCameraDevice()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->awaitLoadSettingsThread()Z

    .line 1404
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    if-eqz v1, :cond_13c

    .line 1405
    invoke-virtual {v1, p0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->readLocationSettings(Landroid/content/Context;)V

    .line 1408
    :cond_13c
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->isSmartLaunch()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->setupAutoPowerOffTimeOutDuration(Z)V

    .line 1411
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->enableAutoPowerOffTimer()V

    .line 1413
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->onResume(Z)V

    .line 1416
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getCameraDevice()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->disableFpsLimitation()V

    .line 1419
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    check-cast v1, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->updatePreviewLayoutParams()V

    .line 1421
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isDeviceInSecurityLock()Z

    move-result v1

    if-eqz v1, :cond_17a

    .line 1422
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getLaunchTrigger()Lcom/sonyericsson/android/camera/LaunchTrigger;

    move-result-object v1

    sget-object v4, Lcom/sonyericsson/android/camera/LaunchTrigger;->DUAL_CAMERA_EFFECT:Lcom/sonyericsson/android/camera/LaunchTrigger;

    if-eq v1, v4, :cond_177

    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    .line 1423
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getLaunchTrigger()Lcom/sonyericsson/android/camera/LaunchTrigger;

    move-result-object v1

    sget-object v4, Lcom/sonyericsson/android/camera/LaunchTrigger;->PORTRAIT_SELFIE:Lcom/sonyericsson/android/camera/LaunchTrigger;

    if-ne v1, v4, :cond_17a

    .line 1424
    :cond_177
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->awaitCreateContentInfoReady()Z

    .line 1428
    :cond_17a
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v1

    sget-object v4, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_COLD_BOOT_FROM_HOME_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {v1, v4}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->isMeasurementValid(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)Z

    move-result v1

    if-eqz v1, :cond_19b

    .line 1430
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v1

    sget-object v4, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_WARM_BOOT_FROM_HOME_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {v1, v4}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->isMeasurementValid(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)Z

    move-result v1

    if-eqz v1, :cond_19b

    .line 1432
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v1

    sget-object v4, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_COLD_BOOT_FROM_HOME_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {v1, v4}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setMeasurementInvalid(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    .line 1436
    :cond_19b
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v1

    iget-object v4, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getLaunchTrigger()Lcom/sonyericsson/android/camera/LaunchTrigger;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setLaunchBy(Lcom/sonyericsson/android/camera/LaunchTrigger;)V

    .line 1437
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v1

    iget-object v4, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setView(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 1439
    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StartupAction;->NONE:Lcom/sonyericsson/android/camera/controller/StateMachine$StartupAction;

    .line 1440
    iget-object v4, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getGoogleAssistantSelfTimer()I

    move-result v4

    if-lez v4, :cond_1c2

    .line 1441
    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StartupAction;->CAPTURE:Lcom/sonyericsson/android/camera/controller/StateMachine$StartupAction;

    goto :goto_1d8

    .line 1442
    :cond_1c2
    iget-object v4, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->isGoogleAssistantLaunchOnly()Z

    move-result v4

    if-nez v4, :cond_1d8

    iget-object v4, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    .line 1443
    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isVideo()Z

    move-result v4

    if-eqz v4, :cond_1d8

    .line 1444
    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StartupAction;->RECORD:Lcom/sonyericsson/android/camera/controller/StateMachine$StartupAction;

    .line 1447
    :cond_1d8
    :goto_1d8
    iget-object v4, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v5, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_RESUME:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCurrentCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    aput-object v7, v6, v3

    .line 1450
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v3, 0x1

    aput-object v0, v6, v3

    const/4 v0, 0x2

    aput-object v1, v6, v0

    .line 1447
    invoke-virtual {v4, v5, v6}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 1455
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLastDetectedOrientation:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    sget-object v4, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->Unknown:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    if-ne v1, v4, :cond_213

    .line 1456
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getConfigurationOrientation()I

    move-result v1

    if-ne v1, v0, :cond_20a

    .line 1458
    sget-object v0, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->Landscape:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->setLayoutOrientation(Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;)V

    .line 1459
    sget-object v0, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->Landscape:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLastDetectedOrientation:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    goto :goto_213

    .line 1461
    :cond_20a
    sget-object v0, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->Portrait:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->setLayoutOrientation(Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;)V

    .line 1462
    sget-object v0, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->Portrait:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLastDetectedOrientation:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    .line 1468
    :cond_213
    :goto_213
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_220

    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mDisableMultiWindow:Z

    if-nez v0, :cond_220

    .line 1469
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->launchMultiWindow()V

    .line 1472
    :cond_220
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mBatteryChangedReceiver:Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->checkStartupStatus()V

    .line 1475
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getStoredSettings()Lcom/sonyericsson/android/camera/setting/StoredSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getMessageSettings()Lcom/sonyericsson/android/camera/setting/MessageSettings;

    move-result-object v0

    .line 1476
    sget-object v1, Lcom/sonyericsson/android/camera/setting/MessageType;->SETUP_WIZARD:Lcom/sonyericsson/android/camera/setting/MessageType;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/MessageSettings;->isNeverShow(Lcom/sonyericsson/android/camera/setting/MessageType;)Z

    move-result v0

    xor-int/2addr v0, v3

    .line 1479
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isLiftTriggerSupported()Z

    move-result v1

    if-eqz v1, :cond_25d

    .line 1480
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    invoke-interface {v1}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getUserSettings()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v1

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->PREDICTIVE_LAUNCH:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v1, v3}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v1

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveLaunch;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveLaunch;

    if-ne v1, v3, :cond_25d

    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    .line 1481
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->isSmartLaunch()Z

    move-result v1

    if-eqz v1, :cond_25d

    .line 1482
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getCameraDevice()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->screenOff()V

    .line 1483
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->terminateApplication()V

    return-void

    :cond_25d
    if-eqz v0, :cond_286

    .line 1488
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mBatteryChangedReceiver:Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->isAlreadyBcl()Z

    move-result v0

    if-nez v0, :cond_286

    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    .line 1489
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->isOneShot()Z

    move-result v0

    if-nez v0, :cond_286

    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->isGoogleAssistantLaunch()Z

    move-result v0

    if-nez v0, :cond_286

    .line 1491
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isInteractive()Z

    move-result v0

    if-eqz v0, :cond_293

    .line 1492
    new-instance v0, Lcom/sonyericsson/android/camera/CameraActivity$8;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/CameraActivity$8;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;)V

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->postEvent(Ljava/lang/Runnable;)V

    goto :goto_293

    .line 1504
    :cond_286
    new-instance v0, Lcom/sonyericsson/android/camera/CameraActivity$ThermalAlertReceiverOnResumeTask;

    invoke-direct {v0, p0, v2}, Lcom/sonyericsson/android/camera/CameraActivity$ThermalAlertReceiverOnResumeTask;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/CameraActivity$1;)V

    .line 1505
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mBackgroundWorker:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mThermalAlertReceiverReadyTaskFuture:Ljava/util/concurrent/Future;

    .line 1509
    :cond_293
    :goto_293
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->requestInflateUiComponents()V

    return-void
.end method

.method private enableOrientation()V
    .registers 2

    .line 3017
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "enableOrientation()"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3018
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    if-nez v0, :cond_1d

    .line 3019
    new-instance v0, Lcom/sonyericsson/android/camera/CameraActivity$ExtendedOrientationEventListener;

    invoke-direct {v0, p0, p0}, Lcom/sonyericsson/android/camera/CameraActivity$ExtendedOrientationEventListener;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    .line 3020
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    :cond_1d
    return-void
.end method

.method private finishUrgently()V
    .registers 1

    .line 2737
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->prepareFinish()V

    .line 2738
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private getDownAll()V
    .registers 4

    .line 2132
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_FINALIZE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 2134
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getUserSettings()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->release()V

    const/4 v0, 0x0

    .line 2137
    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    .line 2138
    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    .line 2139
    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mAutoPowerOffTimer:Lcom/sonyericsson/android/camera/AutoPowerOffTimer;

    .line 2140
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mUserEventHandler:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->release()V

    .line 2141
    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mUserEventHandler:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    .line 2144
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->releaseSoundPlayer()V

    .line 2147
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    if-eqz v1, :cond_2b

    .line 2148
    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->release()V

    .line 2152
    :cond_2b
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->unregisterScreenOffReceiver()V

    .line 2155
    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mThermalAlertReceiverReadyTaskFuture:Ljava/util/concurrent/Future;

    .line 2156
    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mViewFinderInitializationTaskFuture:Ljava/util/concurrent/Future;

    .line 2157
    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mSetupAllTaskFuture:Ljava/util/concurrent/Future;

    return-void
.end method

.method private static getFuture(Ljava/util/concurrent/Future;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "*>;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p0, :cond_4

    return v0

    :cond_4
    const-wide/16 v1, 0xbb8

    .line 642
    :try_start_6
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v1, v2, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_b
    .catch Ljava/util/concurrent/CancellationException; {:try_start_6 .. :try_end_b} :catch_21
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_6 .. :try_end_b} :catch_1a
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_b} :catch_13
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_6 .. :try_end_b} :catch_c

    return v0

    :catch_c
    move-exception p0

    const-string v0, "Failed to get Future."

    .line 651
    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_27

    :catch_13
    move-exception p0

    const-string v0, "Failed to get Future."

    .line 649
    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_27

    :catch_1a
    move-exception p0

    const-string v0, "Failed to get Future."

    .line 647
    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_27

    :catch_21
    move-exception p0

    const-string v0, "Failed to get Future."

    .line 645
    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_27
    const/4 p0, 0x0

    return p0
.end method

.method private getOrientationDegree(Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;)I
    .registers 3

    .line 3177
    sget-object v0, Lcom/sonyericsson/android/camera/CameraActivity$12;->$SwitchMap$com$sonyericsson$android$camera$CameraActivity$LayoutOrientation:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_20

    const/4 p1, -0x1

    return p1

    :pswitch_d
    const/16 p1, 0x10e

    goto :goto_17

    :pswitch_10
    const/16 p1, 0xb4

    goto :goto_17

    :pswitch_13
    const/16 p1, 0x5a

    goto :goto_17

    :pswitch_16
    const/4 p1, 0x0

    .line 3196
    :goto_17
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/utility/ProductConfig;->getMountAngle(Landroid/content/Context;)I

    move-result v0

    add-int/2addr p1, v0

    .line 3197
    rem-int/lit16 p1, p1, 0x168

    return p1

    nop

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_16
        :pswitch_16
        :pswitch_13
        :pswitch_10
        :pswitch_d
    .end packed-switch
.end method

.method private static getStartupPermissions()[Ljava/lang/String;
    .registers 4

    .line 281
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-ge v0, v1, :cond_11

    const-string v0, "android.permission.CAMERA"

    const-string v1, "android.permission.RECORD_AUDIO"

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 282
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_11
    const-string v0, "android.permission.CAMERA"

    const-string v1, "android.permission.RECORD_AUDIO"

    const-string v2, "android.permission.READ_MEDIA_IMAGES"

    const-string v3, "android.permission.READ_MEDIA_VIDEO"

    .line 288
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

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

    .line 3456
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    if-eqz v0, :cond_12

    .line 3457
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method private isKeyguardLocked()Z
    .registers 2

    .line 3440
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v0, :cond_e

    const-string v0, "keyguard"

    .line 3441
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 3444
    :cond_e
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method

.method private isKeyguardSecure()Z
    .registers 2

    .line 3448
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v0, :cond_e

    const-string v0, "keyguard"

    .line 3449
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 3452
    :cond_e
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method

.method private isLaunchAndCapture()Z
    .registers 3

    .line 1568
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->isQuickLaunch()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    .line 1569
    invoke-interface {v0}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getUserSettings()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FAST_CAPTURE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_AND_CAPTURE:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    if-ne v0, v1, :cond_1a

    const/4 v0, 0x1

    return v0

    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method private isRecording()Z
    .registers 2

    .line 2359
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    if-eqz v0, :cond_9

    .line 2360
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isRecording()Z

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method private launchInternalMode()V
    .registers 6

    .line 1536
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "launchInternalMode E:"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1538
    :cond_d
    invoke-static {}, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->values()[Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getLaunchInternalMode()I

    move-result v1

    aget-object v0, v0, v1

    .line 1539
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->clearLaunchInternalMode()V

    .line 1541
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getLaunchInternalCallingCapturingMode()I

    move-result v2

    aget-object v1, v1, v2

    .line 1542
    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->clearLaunchInternalCallingCapturingMode()V

    .line 1543
    sget-object v2, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeUtil;->MODE_WHITE_LIST:Ljava/util/List;

    .line 1544
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 1545
    sget-object v3, Lcom/sonyericsson/android/camera/CameraActivity$12;->$SwitchMap$com$sonyericsson$android$camera$view$modeselector$ModeSelectorInternalMode:[I

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_8a

    .line 1562
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v1, :cond_89

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad launch internalMode :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    goto :goto_89

    :pswitch_63
    const/16 v0, 0x10

    .line 1557
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    .line 1558
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getUserSetting()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v1

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 1557
    invoke-static {p0, v0, v1, v3, v2}, Lcom/sonyericsson/android/camera/controller/launcher/ApplicationLauncher;->launchExternalCamera(Lcom/sonyericsson/android/camera/CameraActivity;ILcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)V

    return-void

    :pswitch_71
    const/16 v0, 0x11

    .line 1552
    iget-object v3, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    .line 1553
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getUserSetting()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v3

    .line 1552
    invoke-static {p0, v0, v3, v1, v2}, Lcom/sonyericsson/android/camera/controller/launcher/ApplicationLauncher;->launchExternalCamera(Lcom/sonyericsson/android/camera/CameraActivity;ILcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)V

    return-void

    :pswitch_7d
    const/16 v0, 0x12

    .line 1547
    iget-object v3, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    .line 1548
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getUserSetting()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v3

    .line 1547
    invoke-static {p0, v0, v3, v1, v2}, Lcom/sonyericsson/android/camera/controller/launcher/ApplicationLauncher;->launchExternalCamera(Lcom/sonyericsson/android/camera/CameraActivity;ILcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)V

    return-void

    :cond_89
    :goto_89
    return-void

    :pswitch_data_8a
    .packed-switch 0x1
        :pswitch_7d
        :pswitch_71
        :pswitch_63
    .end packed-switch
.end method

.method private launchMultiWindow()V
    .registers 6

    .line 1606
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "Launch multi window mode activity "

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_d
    const/4 v0, 0x1

    .line 1607
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mDisableMultiWindow:Z

    const/4 v1, 0x0

    .line 1608
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mReturnOneShotResult:Z

    .line 1609
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1610
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/sonyericsson/android/camera/MultiWindowActivity;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1611
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_6c

    .line 1612
    iget-object v3, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->isOneShotPhoto()Z

    move-result v3

    if-eqz v3, :cond_39

    const-string v3, "android.media.action.IMAGE_CAPTURE"

    .line 1613
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_a1

    .line 1614
    :cond_39
    iget-object v3, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->isOneShotVideo()Z

    move-result v3

    if-eqz v3, :cond_47

    const-string v3, "android.media.action.VIDEO_CAPTURE"

    .line 1615
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_a1

    .line 1619
    :cond_47
    sget-boolean v3, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v3, :cond_68

    new-array v0, v0, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SomcCamera not support multi window mode, intent :["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 1621
    :cond_68
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->terminateApplication()V

    return-void

    .line 1625
    :cond_6c
    iget-object v3, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->isOneShotVideo()Z

    move-result v3

    if-nez v3, :cond_a1

    iget-object v3, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->isOneShotPhoto()Z

    move-result v3

    if-nez v3, :cond_a1

    .line 1628
    sget-boolean v3, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v3, :cond_9d

    new-array v0, v0, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SomcCamera not support multi window mode, intent :["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 1630
    :cond_9d
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->terminateApplication()V

    return-void

    :cond_a1
    :goto_a1
    const/high16 v3, 0x2000000

    .line 1634
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1635
    sget-boolean v3, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v3, :cond_c2

    new-array v0, v0, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Start multi window activity, intent : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1637
    :cond_c2
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera/CameraActivity;->startActivity(Landroid/content/Intent;)V

    .line 1638
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->terminateApplication()V

    return-void
.end method

.method private logLifeCycleIn(Ljava/lang/String;Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;)V
    .registers 7

    .line 3268
    # getter for: Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->mPerformanceIds:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;
    invoke-static {p2}, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->access$4400(Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;)Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->measureTime(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Z)V

    .line 3269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->measureResource(Ljava/lang/String;)V

    .line 3271
    sget-object v0, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->ON_CREATE:Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eq p2, v0, :cond_46

    sget-object v0, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->ON_DESTROY:Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    if-ne p2, v0, :cond_27

    goto :goto_46

    .line 3274
    :cond_27
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_6b

    new-array v0, v3, [Ljava/lang/String;

    aput-object p1, v0, v2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " is called"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_6b

    .line 3272
    :cond_46
    :goto_46
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_6b

    new-array v0, v3, [Ljava/lang/String;

    aput-object p1, v0, v2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " is called:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_6b
    :goto_6b
    return-void
.end method

.method private logLifeCycleOut(Ljava/lang/String;Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;)V
    .registers 7

    .line 3285
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_21

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    aput-object p1, v0, v1

    const/4 p1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " FINISH."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, p1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3287
    :cond_21
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "End "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->measureResource(Ljava/lang/String;)V

    .line 3288
    # getter for: Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->mPerformanceIds:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;
    invoke-static {p2}, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->access$4400(Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;)Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->measureTime(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Z)V

    .line 3290
    sget-object p1, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->ON_PAUSE:Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    if-ne p2, p1, :cond_43

    .line 3291
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->outResult()V

    :cond_43
    return-void
.end method

.method private static logPerformance(Ljava/lang/String;)V
    .registers 5

    const-string v0, "TraceLog"

    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PERFORMANCE] [TIME = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "CameraActivity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 158
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private muteSound()V
    .registers 5

    .line 2900
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_34

    const-string v0, "audio"

    .line 2901
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-eqz v0, :cond_34

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x1

    .line 2903
    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    if-ne v0, v3, :cond_27

    .line 2905
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_34

    const-string v0, "muteSound: success"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_34

    .line 2907
    :cond_27
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_34

    const-string v0, "muteSound: fail"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_34
    :goto_34
    return-void
.end method

.method private notifyActivityState(Ljava/lang/String;)V
    .registers 7

    .line 2342
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CAMERA_BUTTON"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2343
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v3, 0x0

    const/16 v4, 0x1b

    invoke-direct {v1, v3, v4}, Landroid/view/KeyEvent;-><init>(II)V

    const-string v3, "android.intent.extra.KEY_EVENT"

    .line 2344
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.SUBJECT"

    .line 2345
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 2346
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2349
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2355
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method private notifyLayoutOrientationChanged(Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;)V
    .registers 6

    .line 3089
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLastDetectedOrientation:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    if-ne p1, v0, :cond_5

    return-void

    .line 3091
    :cond_5
    sget-object v0, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->Unknown:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    if-ne p1, v0, :cond_a

    return-void

    .line 3094
    :cond_a
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_32

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ORIENTATION : Layout orientation(sensor) is changed from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLastDetectedOrientation:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3097
    :cond_32
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLastDetectedOrientation:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    .line 3098
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLayoutOrientationChangedListenerSet:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientationChangedListener;

    .line 3099
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLastDetectedOrientation:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientationChangedListener;->onLayoutOrientationChanged(Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;)V

    goto :goto_3a

    :cond_4c
    return-void
.end method

.method private postEvent(Ljava/lang/Runnable;)V
    .registers 3

    .line 1761
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static final preload()V
    .registers 0

    return-void
.end method

.method private prepareFinish()V
    .registers 6

    .line 2418
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    if-eqz v0, :cond_13

    .line 2419
    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_PAUSE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    :cond_13
    return-void
.end method

.method private registerForceExitRequestReceiver()V
    .registers 4

    .line 2616
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "registerForceExitRequestReceiver()"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2619
    :cond_d
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.sonymobile.cameracommon.intent.ACTION_FORCE_EXIT_REQUEST"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2620
    new-instance v1, Lcom/sonyericsson/android/camera/CameraActivity$ForceExitRequestReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/camera/CameraActivity$ForceExitRequestReceiver;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/CameraActivity$1;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mForceExitRequestReceiver:Lcom/sonyericsson/android/camera/CameraActivity$ForceExitRequestReceiver;

    .line 2621
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mForceExitRequestReceiver:Lcom/sonyericsson/android/camera/CameraActivity$ForceExitRequestReceiver;

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v0, v2}, Lcom/sonyericsson/android/camera/CameraActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 2623
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->shouldShowWhenLocked()Z

    move-result v0

    if-nez v0, :cond_3b

    .line 2624
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.sonyericsson.android.camera.intent.action.FINISH_CAMERAACTIVITY"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2626
    new-instance v1, Lcom/sonyericsson/android/camera/CameraActivity$CameraActivityFinishBroadcastReceiver;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/CameraActivity$CameraActivityFinishBroadcastReceiver;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCameraActivityFinishReceiver:Lcom/sonyericsson/android/camera/CameraActivity$CameraActivityFinishBroadcastReceiver;

    .line 2627
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCameraActivityFinishReceiver:Lcom/sonyericsson/android/camera/CameraActivity$CameraActivityFinishBroadcastReceiver;

    invoke-virtual {p0, v1, v0, v2}, Lcom/sonyericsson/android/camera/CameraActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    :cond_3b
    return-void
.end method

.method private registerHomeKeyEventReceiver()V
    .registers 4

    .line 1062
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mHomeKeyEventReceiver:Lcom/sonyericsson/android/camera/CameraActivity$HomeKeyEventReceiver;

    if-nez v0, :cond_1c

    .line 1063
    new-instance v0, Lcom/sonyericsson/android/camera/CameraActivity$HomeKeyEventReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/CameraActivity$HomeKeyEventReceiver;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/CameraActivity$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mHomeKeyEventReceiver:Lcom/sonyericsson/android/camera/CameraActivity$HomeKeyEventReceiver;

    .line 1064
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 1065
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1066
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mHomeKeyEventReceiver:Lcom/sonyericsson/android/camera/CameraActivity$HomeKeyEventReceiver;

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v0, v2}, Lcom/sonyericsson/android/camera/CameraActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    :cond_1c
    return-void
.end method

.method private declared-synchronized registerScreenOffReceiver()V
    .registers 4

    monitor-enter p0

    .line 1030
    :try_start_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mScreenOffReceiver:Lcom/sonyericsson/android/camera/CameraActivity$ScreenOffReceiver;

    if-nez v0, :cond_1d

    .line 1031
    new-instance v0, Lcom/sonyericsson/android/camera/CameraActivity$ScreenOffReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/CameraActivity$ScreenOffReceiver;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/CameraActivity$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mScreenOffReceiver:Lcom/sonyericsson/android/camera/CameraActivity$ScreenOffReceiver;

    .line 1032
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 1033
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1034
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mScreenOffReceiver:Lcom/sonyericsson/android/camera/CameraActivity$ScreenOffReceiver;

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v0, v2}, Lcom/sonyericsson/android/camera/CameraActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1f

    .line 1036
    :cond_1d
    monitor-exit p0

    return-void

    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private registerShutDownReceiver()V
    .registers 4

    .line 1046
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mShutDownReceiver:Lcom/sonyericsson/android/camera/CameraActivity$ShutDownReceiver;

    if-nez v0, :cond_1c

    .line 1047
    new-instance v0, Lcom/sonyericsson/android/camera/CameraActivity$ShutDownReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/CameraActivity$ShutDownReceiver;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/CameraActivity$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mShutDownReceiver:Lcom/sonyericsson/android/camera/CameraActivity$ShutDownReceiver;

    .line 1048
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    .line 1049
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1050
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mShutDownReceiver:Lcom/sonyericsson/android/camera/CameraActivity$ShutDownReceiver;

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v0, v2}, Lcom/sonyericsson/android/camera/CameraActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    :cond_1c
    return-void
.end method

.method private releaseCamera()V
    .registers 3

    .line 2011
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    if-eqz v0, :cond_1a

    .line 2012
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->disableFpsLimitation()V

    .line 2013
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->closeCamera()V

    .line 2014
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->closeVirtualCamera()V

    .line 2015
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setStateMachine(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    .line 2016
    iput-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    goto :goto_21

    .line 2021
    :cond_1a
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getCameraDevice()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->closeCamera()V

    :goto_21
    return-void
.end method

.method private releaseSoundPlayer()V
    .registers 2

    .line 2229
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mSoundPlayer:Lcom/sonyericsson/cameracommon/sound/SoundPlayer;

    if-eqz v0, :cond_a

    .line 2230
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->release()V

    const/4 v0, 0x0

    .line 2231
    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mSoundPlayer:Lcom/sonyericsson/cameracommon/sound/SoundPlayer;

    :cond_a
    return-void
.end method

.method private requestFinishCameraActivity()V
    .registers 3

    .line 1814
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "requestFinishCameraActivity()"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1816
    :cond_d
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->shouldShowWhenLocked()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1817
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonyericsson.android.camera.intent.action.FINISH_CAMERAACTIVITY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1819
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1d
    return-void
.end method

.method private requestInflateUiComponents()V
    .registers 3

    .line 1649
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->requestInflate(Landroid/view/LayoutInflater;)V

    return-void
.end method

.method private setBrightness(F)V
    .registers 3

    .line 3588
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 3589
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 3590
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method private setLayoutOrientation(Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;)V
    .registers 2

    .line 3158
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraActivity;->getOrientationDegree(Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;)I

    move-result p1

    .line 3159
    iput p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mSensorOrientationDegree:I

    .line 3160
    iput p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLastOrientationDegree:I

    .line 3161
    iput p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLastDeterminedOrientationDegree:I

    return-void
.end method

.method private setupAll()V
    .registers 3

    .line 1174
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    invoke-direct {v0, p0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    .line 1177
    new-instance v0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mSoundPlayer:Lcom/sonyericsson/cameracommon/sound/SoundPlayer;

    return-void
.end method

.method private setupCoreInstance()V
    .registers 12

    .line 1218
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "invoked setupCoreInstance()"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1221
    :cond_d
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-direct {v0, p0, v1, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/cameracommon/storage/Storage;Lcom/sonyericsson/android/camera/LaunchCondition;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    .line 1224
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->createViewFinder()Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object v0

    .line 1225
    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    .line 1228
    new-instance v1, Lcom/sonyericsson/android/camera/view/UserEventHandler;

    iget-object v6, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    iget-object v7, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    .line 1233
    invoke-interface {v2}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getUserSettings()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v8

    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    .line 1234
    invoke-interface {v2}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getMessageSettings()Lcom/sonyericsson/android/camera/setting/MessageSettings;

    move-result-object v9

    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    .line 1235
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->isOneShot()Z

    move-result v2

    xor-int/lit8 v10, v2, 0x1

    move-object v3, v1

    move-object v4, p0

    move-object v5, v0

    invoke-direct/range {v3 .. v10}, Lcom/sonyericsson/android/camera/view/UserEventHandler;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/storage/Storage;Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/setting/MessageSettings;Z)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mUserEventHandler:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    .line 1236
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mKeyEventDispatcher:Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventDispatcher;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mUserEventHandler:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventDispatcher;->attach(Lcom/sonyericsson/android/camera/view/UserEventHandler;)V

    .line 1237
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mKeyEventDispatcher:Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventDispatcher;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventDispatcher;->start()V

    .line 1238
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mSideTouchEventDispatcher:Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventDispatcher;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mUserEventHandler:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventDispatcher;->attach(Lcom/sonyericsson/android/camera/view/UserEventHandler;)V

    .line 1239
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getTouchEventDispatcher()Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventDispatcher;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mUserEventHandler:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventDispatcher;->attach(Lcom/sonyericsson/android/camera/view/UserEventHandler;)V

    .line 1240
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getTouchEventDispatcher()Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventDispatcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventDispatcher;->start()V

    .line 1241
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getVirtualKeyEventDispatcher()Lcom/sonyericsson/android/camera/view/UserEventHandler$VirtualKeyEventDispatcher;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mUserEventHandler:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/UserEventHandler$VirtualKeyEventDispatcher;->attach(Lcom/sonyericsson/android/camera/view/UserEventHandler;)V

    .line 1242
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getVirtualKeyEventDispatcher()Lcom/sonyericsson/android/camera/view/UserEventHandler$VirtualKeyEventDispatcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$VirtualKeyEventDispatcher;->start()V

    .line 1243
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getZoomEventDispatcher()Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEventDispatcher;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mUserEventHandler:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEventDispatcher;->attach(Lcom/sonyericsson/android/camera/view/UserEventHandler;)V

    .line 1244
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getZoomEventDispatcher()Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEventDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEventDispatcher;->start()V

    .line 1249
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getCameraDevice()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->setDependencies(Lcom/sonyericsson/android/camera/view/ViewFinder;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)V

    return-void
.end method

.method private unRegisterHomeKeyEventReceiver()V
    .registers 2

    .line 1071
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mHomeKeyEventReceiver:Lcom/sonyericsson/android/camera/CameraActivity$HomeKeyEventReceiver;

    if-eqz v0, :cond_a

    .line 1072
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 1073
    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mHomeKeyEventReceiver:Lcom/sonyericsson/android/camera/CameraActivity$HomeKeyEventReceiver;

    :cond_a
    return-void
.end method

.method private unRegisterShutDownReceiver()V
    .registers 2

    .line 1055
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mShutDownReceiver:Lcom/sonyericsson/android/camera/CameraActivity$ShutDownReceiver;

    if-eqz v0, :cond_a

    .line 1056
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 1057
    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mShutDownReceiver:Lcom/sonyericsson/android/camera/CameraActivity$ShutDownReceiver;

    :cond_a
    return-void
.end method

.method private unmuteSound()V
    .registers 3

    .line 2917
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_33

    const-string v0, "audio"

    .line 2918
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-eqz v0, :cond_33

    const/4 v1, 0x0

    .line 2920
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    .line 2921
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_33

    const-string v0, "unmuteSound: success"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_33

    .line 2923
    :cond_26
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_33

    const-string v0, "unmuteSound: fail"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_33
    :goto_33
    return-void
.end method

.method private unregisterForceExitRequestReceiver()V
    .registers 3

    .line 2632
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "unregisterForceExitRequestReceiver()"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2633
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mForceExitRequestReceiver:Lcom/sonyericsson/android/camera/CameraActivity$ForceExitRequestReceiver;

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    .line 2634
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2635
    iput-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mForceExitRequestReceiver:Lcom/sonyericsson/android/camera/CameraActivity$ForceExitRequestReceiver;

    .line 2637
    :cond_17
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCameraActivityFinishReceiver:Lcom/sonyericsson/android/camera/CameraActivity$CameraActivityFinishBroadcastReceiver;

    if-eqz v0, :cond_20

    .line 2638
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2639
    iput-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCameraActivityFinishReceiver:Lcom/sonyericsson/android/camera/CameraActivity$CameraActivityFinishBroadcastReceiver;

    :cond_20
    return-void
.end method

.method private declared-synchronized unregisterScreenOffReceiver()V
    .registers 2

    monitor-enter p0

    .line 1039
    :try_start_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mScreenOffReceiver:Lcom/sonyericsson/android/camera/CameraActivity$ScreenOffReceiver;

    if-eqz v0, :cond_d

    .line 1040
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mScreenOffReceiver:Lcom/sonyericsson/android/camera/CameraActivity$ScreenOffReceiver;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 1041
    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mScreenOffReceiver:Lcom/sonyericsson/android/camera/CameraActivity$ScreenOffReceiver;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 1043
    :cond_d
    monitor-exit p0

    return-void

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public abort()V
    .registers 2

    .line 2237
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "call abort()"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_d
    const/4 v0, 0x1

    .line 2238
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->abort(Z)V

    return-void
.end method

.method public addOrienationListener(Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientationChangedListener;)V
    .registers 3

    .line 3049
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLayoutOrientationChangedListenerSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public awaitSetupAllReady()Z
    .registers 2

    .line 1097
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mSetupAllTaskFuture:Ljava/util/concurrent/Future;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getFuture(Ljava/util/concurrent/Future;)Z

    move-result v0

    return v0
.end method

.method public awaitViewFinderReady()Z
    .registers 3

    .line 1662
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mViewFinderInitializationTaskFuture:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_13

    .line 1663
    invoke-static {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getFuture(Ljava/util/concurrent/Future;)Z

    move-result v0

    const/4 v1, 0x0

    .line 1664
    iput-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mViewFinderInitializationTaskFuture:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_14

    .line 1666
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    invoke-interface {v1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->attachToWindow()V

    goto :goto_14

    :cond_13
    const/4 v0, 0x1

    :cond_14
    :goto_14
    return v0
.end method

.method public checkAndRequestSelfPermissions(I[Ljava/lang/String;)Z
    .registers 5

    .line 3357
    invoke-static {p0, p2}, Lcom/sonyericsson/cameracommon/utility/PermissionsUtil;->arePermissionsGranted(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 3358
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCheckAndRequestSelfPermissionsTask:Ljava/lang/Runnable;

    if-eqz v0, :cond_13

    .line 3359
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCheckAndRequestSelfPermissionsTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3362
    :cond_13
    new-instance v0, Lcom/sonyericsson/android/camera/CameraActivity$10;

    invoke-direct {v0, p0, p1, p2}, Lcom/sonyericsson/android/camera/CameraActivity$10;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;I[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCheckAndRequestSelfPermissionsTask:Ljava/lang/Runnable;

    .line 3369
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCheckAndRequestSelfPermissionsTask:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    return p1

    :cond_25
    const/4 p1, 0x0

    return p1
.end method

.method public checkAndRequestSelfPermissions(I[Ljava/lang/String;Lcom/sonyericsson/android/camera/CameraActivity$PermissionCheckCallback;)Z
    .registers 6

    .line 3387
    invoke-static {p0, p1, p2}, Lcom/sonyericsson/cameracommon/utility/PermissionsUtil;->checkAndRequestSelfPermissions(Landroid/app/Activity;I[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3390
    new-instance v1, Lcom/sonyericsson/android/camera/CameraActivity$11;

    invoke-direct {v1, p0, p2, p3}, Lcom/sonyericsson/android/camera/CameraActivity$11;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;[Ljava/lang/String;Lcom/sonyericsson/android/camera/CameraActivity$PermissionCheckCallback;)V

    .line 3426
    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->addActivityResultListener(ILcom/sonyericsson/cameracommon/activity/OnActivityResultListener;)Z

    :cond_e
    return v0
.end method

.method public clearMaxBrightness()V
    .registers 2

    const/high16 v0, -0x40800000    # -1.0f

    .line 3584
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->setBrightness(F)V

    return-void
.end method

.method public final disableAutoPowerOffTimer()V
    .registers 2

    .line 2955
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "disableAutoPowerOffTimer: "

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2956
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->hideAutoPowerOffHintText()V

    .line 2957
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mAutoPowerOffTimer:Lcom/sonyericsson/android/camera/AutoPowerOffTimer;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/AutoPowerOffTimer;->disableAutoPowerOffTimer()V

    return-void
.end method

.method public disablePreviewScreenshots()V
    .registers 7

    .line 963
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x21

    if-lt v0, v2, :cond_b

    .line 964
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->setRecentsScreenshotEnabled(Z)V

    goto :goto_25

    .line 967
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

    .line 968
    new-array v2, v3, [Ljava/lang/Object;

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
    .registers 2

    .line 3529
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mSideTouchEventDispatcher:Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventDispatcher;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventDispatcher;->stop()V

    return-void
.end method

.method public final enableAutoPowerOffTimer()V
    .registers 2

    .line 2947
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "enableAutoPowerOffTimer: "

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2948
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mAutoPowerOffTimer:Lcom/sonyericsson/android/camera/AutoPowerOffTimer;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/AutoPowerOffTimer;->enableAutoPowerOffTimer()V

    return-void
.end method

.method public enableSideSense()V
    .registers 2

    .line 3525
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mSideTouchEventDispatcher:Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventDispatcher;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventDispatcher;->start()V

    return-void
.end method

.method public finish()V
    .registers 2

    .line 2718
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isInLockTaskMode()Z

    move-result v0

    if-nez v0, :cond_9

    .line 2719
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->prepareFinish()V

    .line 2721
    :cond_9
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public finishAndKillProcess()V
    .registers 1

    .line 2399
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->prepareFinish()V

    .line 2400
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->finishAndRemoveTask()V

    return-void
.end method

.method public finishOneShot(Lcom/sonyericsson/android/camera/controller/StateMachine$OneShotResult;)V
    .registers 7

    .line 1136
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_20

    new-array v0, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "finishOneShot: result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/sonyericsson/android/camera/controller/StateMachine$OneShotResult;->uri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1139
    :cond_20
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mDisableMultiWindow:Z

    .line 1141
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->isOneShotVideo()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 1142
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getUserSettings()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->clearOneshotUserSetting()V

    .line 1144
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1145
    iget-object v1, p1, Lcom/sonyericsson/android/camera/controller/StateMachine$OneShotResult;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1146
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1147
    iget p1, p1, Lcom/sonyericsson/android/camera/controller/StateMachine$OneShotResult;->code:I

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->setResult(ILandroid/content/Intent;)V

    .line 1148
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->terminateApplication()V

    goto :goto_8c

    .line 1149
    :cond_49
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->isOneShotPhoto()Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 1150
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getUserSettings()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->clearOneshotUserSetting()V

    .line 1152
    iget-object v0, p1, Lcom/sonyericsson/android/camera/controller/StateMachine$OneShotResult;->savingRequest:Lcom/sonyericsson/cameracommon/storage/SavingRequest;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->getExtraOutput()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_84

    .line 1153
    iget-boolean v0, p1, Lcom/sonyericsson/android/camera/controller/StateMachine$OneShotResult;->isSuccess:Z

    if-eqz v0, :cond_80

    .line 1154
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

    goto :goto_89

    .line 1161
    :cond_80
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->setResult(I)V

    goto :goto_89

    .line 1165
    :cond_84
    iget p1, p1, Lcom/sonyericsson/android/camera/controller/StateMachine$OneShotResult;->code:I

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/CameraActivity;->setResult(I)V

    .line 1167
    :goto_89
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->finish()V

    :cond_8c
    :goto_8c
    return-void
.end method

.method public getAutoPowerOffTimerController()Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffTimerController;
    .registers 2

    .line 3001
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mAutoPowerOffTimerImpl:Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffTimerImpl;

    return-object v0
.end method

.method public getBatteryLevel()I
    .registers 2

    .line 3432
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mBatteryChangedReceiver:Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->getBatteryLevel()I

    move-result v0

    return v0
.end method

.method public getCameraDevice()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;
    .registers 2

    .line 2374
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/CameraApplication;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraApplication;->getCameraDevice()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    return-object v0
.end method

.method public getGeoTagManager()Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;
    .registers 2

    .line 3008
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    return-object v0
.end method

.method public getLastDetectedOrientation()Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;
    .registers 2

    .line 3250
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLastDetectedOrientation:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    return-object v0
.end method

.method public getLayoutOrientation()Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;
    .registers 5

    .line 3109
    iget v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLastOrientationDegree:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    .line 3111
    iget v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLastDeterminedOrientationDegree:I

    :cond_7
    if-ne v0, v1, :cond_c

    .line 3114
    sget-object v0, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->Unknown:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    return-object v0

    .line 3119
    :cond_c
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/utility/ProductConfig;->getMountAngle(Landroid/content/Context;)I

    move-result v1

    rsub-int v1, v1, 0x168

    add-int/2addr v0, v1

    .line 3120
    rem-int/lit16 v0, v0, 0x168

    .line 3125
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLastDetectedOrientation:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    sget-object v2, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->Portrait:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    if-eq v1, v2, :cond_24

    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLastDetectedOrientation:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    sget-object v2, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->ReversePortrait:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    if-ne v1, v2, :cond_22

    goto :goto_24

    :cond_22
    const/4 v1, 0x0

    goto :goto_25

    :cond_24
    :goto_24
    const/4 v1, 0x1

    :goto_25
    if-eqz v1, :cond_2a

    const/16 v1, 0x3c

    goto :goto_2c

    :cond_2a
    const/16 v1, 0x1e

    :goto_2c
    rsub-int/lit8 v2, v1, 0x5a

    add-int/lit8 v3, v1, 0x5a

    .line 3140
    invoke-static {v0, v2, v3}, Lcom/sonyericsson/android/camera/CameraActivity;->in(III)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 3141
    sget-object v0, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->Portrait:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    return-object v0

    :cond_39
    rsub-int v2, v1, 0x10e

    .line 3143
    invoke-static {v0, v3, v2}, Lcom/sonyericsson/android/camera/CameraActivity;->in(III)Z

    move-result v3

    if-eqz v3, :cond_44

    .line 3144
    sget-object v0, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->ReverseLandscape:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    return-object v0

    :cond_44
    add-int/lit16 v1, v1, 0x10e

    .line 3146
    invoke-static {v0, v2, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->in(III)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 3147
    sget-object v0, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->ReversePortrait:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    return-object v0

    .line 3150
    :cond_4f
    sget-object v0, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->Landscape:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    return-object v0
.end method

.method public getOrientation()I
    .registers 5

    .line 3208
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLastDetectedOrientation:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    .line 3209
    sget-object v1, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->Unknown:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    if-ne v0, v1, :cond_a

    .line 3210
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getLayoutOrientation()Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    move-result-object v0

    .line 3213
    :cond_a
    sget-object v1, Lcom/sonyericsson/android/camera/CameraActivity$12;->$SwitchMap$com$sonyericsson$android$camera$CameraActivity$LayoutOrientation:[I

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    packed-switch v0, :pswitch_data_30

    .line 3224
    sget-object v0, Lcom/sonyericsson/android/camera/CameraActivity$12;->$SwitchMap$com$sonyericsson$cameracommon$utility$LayoutOrientationResolver$LayoutOrientationType:[I

    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getOrientation()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_3c

    const/4 v0, 0x0

    return v0

    :pswitch_2c
    return v1

    :pswitch_2d
    return v2

    :pswitch_2e
    return v2

    :pswitch_2f
    return v1

    :pswitch_data_30
    .packed-switch 0x2
        :pswitch_2d
        :pswitch_2c
        :pswitch_2d
        :pswitch_2d
    .end packed-switch

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_2e
    .end packed-switch
.end method

.method public getPreviewRect()Landroid/graphics/Rect;
    .registers 2

    .line 3599
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getPreviewRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 3600
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->convertRect(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public getScreenAspect()Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;
    .registers 4

    .line 1257
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    if-nez v0, :cond_61

    .line 1258
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/utility/ViewUtility;->getRealSize(Landroid/content/Context;)Landroid/util/Size;

    move-result-object v0

    .line 1259
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v1

    .line 1260
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    .line 1259
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    .line 1260
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

    .line 1261
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v2, 0x3c23d70a    # 0.01f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_3b

    .line 1262
    sget-object v0, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;->TWENTYONE_NINE:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    goto :goto_61

    :cond_3b
    const/high16 v0, 0x40000000    # 2.0f

    sub-float v0, v1, v0

    .line 1263
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_4c

    .line 1264
    sget-object v0, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;->EIGHTEEN_NINE:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    goto :goto_61

    :cond_4c
    const v0, 0x3fe38e39

    sub-float/2addr v1, v0

    .line 1265
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_5d

    .line 1266
    sget-object v0, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;->SIXTEEN_NINE:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    goto :goto_61

    .line 1268
    :cond_5d
    sget-object v0, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;->NOT_DEFINED:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    .line 1271
    :cond_61
    :goto_61
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    return-object v0
.end method

.method public getSensorOrientationDegree()I
    .registers 5

    .line 3240
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_20

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ORIENTATION:getSensorOrientationDegree = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mSensorOrientationDegree:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3242
    :cond_20
    iget v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mSensorOrientationDegree:I

    return v0
.end method

.method public getStorage()Lcom/sonyericsson/cameracommon/storage/Storage;
    .registers 2

    .line 3258
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    return-object v0
.end method

.method public getStoredSettings()Lcom/sonyericsson/android/camera/setting/StoredSettings;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2706
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    return-object v0
.end method

.method public isAllowToUseLocation()Z
    .registers 2

    .line 3620
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getOneShotMode()Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 3621
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/utility/PermissionsUtil;->areCallerGeoPermissionsGranted(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x0

    return v0

    :cond_14
    const/4 v0, 0x1

    return v0
.end method

.method public isAlreadyBcl()Z
    .registers 2

    .line 3436
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mBatteryChangedReceiver:Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->isAlreadyBcl()Z

    move-result v0

    return v0
.end method

.method public isAlreadyHighTemperature()Z
    .registers 2

    .line 1696
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->awaitThermalAlertReceiverReady()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1697
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mThermalAlertReceiver:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->isAlreadyHighTemperature()Z

    move-result v0

    return v0

    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public isDeviceInSecurityLock()Z
    .registers 3

    .line 2279
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_11

    const-string v1, "android.intent.extra.SUBJECT"

    .line 2284
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    const-string v1, "start-secure"

    .line 2288
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    .line 2289
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->isSecurePhotoLaunchedByIntent()Z

    move-result v0

    if-eqz v0, :cond_2a

    :cond_22
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_2a

    const/4 v0, 0x1

    goto :goto_2b

    :cond_2a
    const/4 v0, 0x0

    :goto_2b
    return v0
.end method

.method public isInLockTaskMode()Z
    .registers 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const-string v0, "activity"

    .line 3297
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 3298
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLockTaskModeState()I

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public isLazyInitializationRunning()Z
    .registers 2

    .line 2395
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mIsLazyInitializationRunning:Z

    return v0
.end method

.method public isThermalWarningExtraState()Z
    .registers 2

    .line 1722
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->awaitThermalAlertReceiverReady()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1723
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mThermalAlertReceiver:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->isWarningExtraState()Z

    move-result v0

    return v0

    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public isThermalWarningReceived()Z
    .registers 2

    .line 1736
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->awaitThermalAlertReceiverReady()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1737
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mThermalAlertReceiver:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->isThermalWarningReceived()Z

    move-result v0

    return v0

    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public isThermalWarningState()Z
    .registers 2

    .line 1709
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->awaitThermalAlertReceiverReady()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mThermalAlertReceiver:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;

    if-eqz v0, :cond_f

    .line 1710
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->isWarningState()Z

    move-result v0

    return v0

    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public launchCameraSettings(Z)V
    .registers 7

    const/4 v0, 0x1

    .line 2429
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mIsSaveZoomInfoNeeded:Z

    .line 2430
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    invoke-interface {v1}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getUserSettings()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->commit()V

    .line 2432
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2433
    const-class v2, Lcom/sonyericsson/android/camera/CameraSettingsActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v2, "capturing_mode"

    .line 2434
    iget-object v3, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    .line 2435
    invoke-interface {v3}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getUserSettings()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v3

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v3, v4}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2434
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "OneShotMode"

    .line 2436
    iget-object v3, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    .line 2437
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getOneShotMode()Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2436
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "DeviceInSecurityLock"

    .line 2438
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isDeviceInSecurityLock()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "shouldNotRemainRecentTask"

    .line 2439
    iget-object v3, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    .line 2440
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->shouldNotRemainRecentTask()Z

    move-result v3

    .line 2439
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "valueSelect"

    .line 2442
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 2441
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2444
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isAllowToUseLocation()Z

    move-result p1

    if-eqz p1, :cond_6b

    const-string p1, "allowUseLocation"

    .line 2445
    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_71

    :cond_6b
    const-string p1, "allowUseLocation"

    const/4 v0, 0x0

    .line 2447
    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2450
    :goto_71
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getExtraOutput()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string p1, "android.media.action.VIDEO_CAPTURE"

    .line 2453
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b6

    const-string p1, "android.intent.extra.sizeLimit"

    .line 2454
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "android.intent.extra.sizeLimit"

    const-wide/16 v3, -0x1

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p1, "android.intent.extra.durationLimit"

    .line 2456
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "android.intent.extra.durationLimit"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "android.intent.extra.videoQuality"

    .line 2458
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "android.intent.extra.videoQuality"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_b6
    const/16 p1, 0x18

    .line 2462
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v1, p1, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 9

    .line 2467
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_26

    new-array v0, v1, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onActivityResult: requestCode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", resultCode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2469
    :cond_26
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2470
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_30

    return-void

    .line 2474
    :cond_30
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isDeviceInSecurityLock()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 2475
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    check-cast v0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    iget-boolean v3, p0, Lcom/sonyericsson/android/camera/CameraActivity;->isLaunchFromNewIntent:Z

    xor-int/2addr v3, v1

    invoke-virtual {v0, v3}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->reconstructLocalCache(Z)V

    .line 2476
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    check-cast v0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    iget-boolean v3, p0, Lcom/sonyericsson/android/camera/CameraActivity;->isLaunchFromNewIntent:Z

    invoke-virtual {v0, v3}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->setNewIntentFromActivity(Z)V

    .line 2479
    :cond_49
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mActivityResultListeners:Landroid/util/SparseArray;

    if-eqz v0, :cond_6b

    .line 2480
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/activity/OnActivityResultListener;

    if-eqz v0, :cond_60

    .line 2482
    invoke-interface {v0, p1, p2, p3}, Lcom/sonyericsson/cameracommon/activity/OnActivityResultListener;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 2483
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mActivityResultListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 2486
    :cond_60
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mActivityResultListeners:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_6b

    const/4 v0, 0x0

    .line 2487
    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mActivityResultListeners:Landroid/util/SparseArray;

    .line 2491
    :cond_6b
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->onActivityResult(I)V

    const/4 v0, 0x2

    packed-switch p1, :pswitch_data_15c

    :pswitch_74
    goto/16 :goto_15a

    .line 2565
    :pswitch_76
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object p2, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_WIFI_RESULT:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    new-array p3, v2, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendStaticEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;[Ljava/lang/Object;)V

    goto/16 :goto_15a

    :pswitch_81
    if-nez p3, :cond_8d

    const-string p1, "null intent was received unexpectedly"

    .line 2530
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    return-void

    :cond_8d
    const/4 p1, -0x1

    if-ne p2, p1, :cond_e4

    const-string p1, "capturing_mode"

    .line 2535
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2536
    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 2537
    invoke-static {p1, p2}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->convertFrom(Ljava/lang/String;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object p1

    const-string p2, "ResetSettings"

    .line 2539
    invoke-virtual {p3, p2, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    .line 2540
    sget-boolean p3, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p3, :cond_be

    new-array p3, v1, [Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resetRequested: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, v2

    invoke-static {p3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_be
    if-nez p2, :cond_d8

    .line 2544
    iget-object p2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    invoke-interface {p2}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getLastSettings()Lcom/sonyericsson/android/camera/setting/LastSettings;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/setting/LastSettings;->writePauseTime()V

    .line 2545
    iget-object p2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    invoke-interface {p2}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getLastSettings()Lcom/sonyericsson/android/camera/setting/LastSettings;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/setting/LastSettings;->save()V

    .line 2548
    iget-object p2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {p2, p1}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    goto :goto_f6

    .line 2550
    :cond_d8
    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq p1, p2, :cond_f6

    .line 2551
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    goto :goto_f6

    .line 2556
    :cond_e4
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getLastSettings()Lcom/sonyericsson/android/camera/setting/LastSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/setting/LastSettings;->writePauseTime()V

    .line 2557
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getLastSettings()Lcom/sonyericsson/android/camera/setting/LastSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/setting/LastSettings;->save()V

    .line 2560
    :cond_f6
    :goto_f6
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera/CameraActivity;->setupAutoPowerOffTimeOutDuration(Z)V

    .line 2561
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->restartAutoPowerOffTimer()V

    goto :goto_15a

    .line 2514
    :pswitch_fd
    invoke-direct {p0, p3}, Lcom/sonyericsson/android/camera/CameraActivity;->addExternalCameraAppContent(Landroid/content/Intent;)V

    .line 2515
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    .line 2516
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    .line 2517
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v2

    .line 2516
    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getModeName(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Ljava/lang/String;

    move-result-object v1

    .line 2515
    invoke-virtual {p1, p3, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendODMDualCameraEffectEvent(Landroid/content/Context;Ljava/lang/String;)V

    if-ne p2, v0, :cond_15a

    .line 2519
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->finish()V

    goto :goto_15a

    :pswitch_11f
    if-ne p2, v0, :cond_15a

    .line 2524
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->finish()V

    goto :goto_15a

    .line 2504
    :pswitch_125
    invoke-direct {p0, p3}, Lcom/sonyericsson/android/camera/CameraActivity;->addExternalCameraAppContent(Landroid/content/Intent;)V

    .line 2505
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p1

    .line 2506
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    .line 2507
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    .line 2508
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v2

    .line 2507
    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getModeName(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Ljava/lang/String;

    move-result-object v1

    .line 2505
    invoke-virtual {p1, p3, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendPortraitSelfieEvent(Landroid/content/Context;Ljava/lang/String;)V

    if-ne p2, v0, :cond_15a

    .line 2510
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->finish()V

    goto :goto_15a

    .line 2496
    :pswitch_147
    invoke-direct {p0, p3}, Lcom/sonyericsson/android/camera/CameraActivity;->addExternalCameraAppContent(Landroid/content/Intent;)V

    .line 2497
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendDualCameraEffectEvent(Landroid/content/Context;)V

    if-ne p2, v0, :cond_15a

    .line 2499
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->finish()V

    :cond_15a
    :goto_15a
    return-void

    nop

    :pswitch_data_15c
    .packed-switch 0x10
        :pswitch_147
        :pswitch_147
        :pswitch_125
        :pswitch_11f
        :pswitch_74
        :pswitch_fd
        :pswitch_74
        :pswitch_74
        :pswitch_81
        :pswitch_76
    .end packed-switch
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 2

    .line 2273
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_d

    const-string p1, "onCancel finish()"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2274
    :cond_d
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 9

    .line 749
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "onCreate() : E"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 750
    :cond_d
    sget-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->ACTIVITY_ON_CREATE:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/PerfLog;->begin()V

    .line 754
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x7d0

    invoke-static {v1, v2, v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->awaitPrepare(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    const/4 v3, 0x1

    xor-int/2addr v0, v3

    .line 756
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isPrepared()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v4, :cond_2a

    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->hasDeviceError()Z

    move-result v4

    if-eqz v4, :cond_96

    .line 757
    :cond_2a
    sget-boolean v4, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v4, :cond_37

    const-string v4, "PlatformCapability is not prepared yet"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_37
    if-nez v0, :cond_53

    .line 760
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_46

    const-string v0, "Retry preparing PlatformCapability"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 761
    :cond_46
    new-instance v0, Lcom/sonyericsson/android/camera/CameraActivity$4;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/CameraActivity$4;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;)V

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->prepareAsync(Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$OnPlatformCapabilityPreparedCallback;)V

    .line 769
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v1, v2, v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->awaitPrepare(JLjava/util/concurrent/TimeUnit;)Z

    .line 773
    :cond_53
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_96

    .line 775
    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->setDeviceError(Z)V

    .line 776
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f016c

    .line 777
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0f016f

    .line 778
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 779
    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0f02ea

    .line 780
    invoke-virtual {v1, v2, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/sonyericsson/android/camera/CameraActivity$5;

    invoke-direct {v2, p0}, Lcom/sonyericsson/android/camera/CameraActivity$5;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;)V

    .line 781
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 788
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 789
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 790
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 791
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    return-void

    .line 796
    :cond_96
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_a1

    const-string p1, "CameraActivity"

    sget-object v0, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->ON_CREATE:Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->logLifeCycleIn(Ljava/lang/String;Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;)V

    .line 799
    :cond_a1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_b4

    .line 800
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 804
    :cond_b4
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Landroid/view/Window;->requestFeature(I)Z

    .line 811
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/CameraApplication;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/CameraApplication;->getStorage()Lcom/sonyericsson/cameracommon/storage/Storage;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    .line 812
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/setting/SettingsFactory;->create(Landroid/content/Context;Lcom/sonyericsson/cameracommon/storage/Storage;)Lcom/sonyericsson/android/camera/setting/StoredSettings;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    const-string p1, "AsyncAct"

    const/16 v0, 0xa

    .line 815
    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/util/ThreadUtil;->buildExecutor(Ljava/lang/String;I)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mBackgroundWorker:Ljava/util/concurrent/ExecutorService;

    .line 820
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->createLaunchCondition()V

    .line 822
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getLastSettings()Lcom/sonyericsson/android/camera/setting/LastSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/setting/LastSettings;->getFastCapture()Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_ONLY:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    if-ne p1, v0, :cond_f2

    move p1, v3

    goto :goto_f3

    :cond_f2
    move p1, v5

    .line 824
    :goto_f3
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    invoke-interface {v2}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getLastSettings()Lcom/sonyericsson/android/camera/setting/LastSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/setting/LastSettings;->getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v2

    instance-of v4, p0, Lcom/sonyericsson/android/camera/InternalCameraActivity;

    invoke-virtual {v0, v1, v2, p1, v4}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setup(Landroid/content/Intent;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;ZZ)V

    .line 828
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->isOneShot()Z

    move-result p1

    if-eqz p1, :cond_125

    .line 830
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_11f

    .line 831
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    goto :goto_120

    :cond_11f
    move-object p1, v6

    .line 833
    :goto_120
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    invoke-interface {v0, p1}, Lcom/sonyericsson/cameracommon/storage/Storage;->setOneShotCallerInfo(Ljava/lang/String;)V

    .line 836
    :cond_125
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getLaunchTrigger()Lcom/sonyericsson/android/camera/LaunchTrigger;

    move-result-object p1

    .line 838
    sget-object v0, Lcom/sonyericsson/android/camera/LaunchTrigger;->LOCK_SCREEN:Lcom/sonyericsson/android/camera/LaunchTrigger;

    if-ne p1, v0, :cond_142

    .line 839
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_COLD_BOOT_FROM_LOCKSCREEN_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->startMeasurement(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    .line 841
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_COLD_BOOT_FROM_LOCKSCREEN_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setMeasurementValid(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    goto :goto_187

    .line 843
    :cond_142
    sget-object v0, Lcom/sonyericsson/android/camera/LaunchTrigger;->HW_CAMERA_KEY:Lcom/sonyericsson/android/camera/LaunchTrigger;

    if-eq p1, v0, :cond_175

    sget-object v0, Lcom/sonyericsson/android/camera/LaunchTrigger;->HW_CAMERA_KEY_LOCK:Lcom/sonyericsson/android/camera/LaunchTrigger;

    if-ne p1, v0, :cond_14b

    goto :goto_175

    .line 849
    :cond_14b
    sget-object v0, Lcom/sonyericsson/android/camera/LaunchTrigger;->LIFT_TRIGGER:Lcom/sonyericsson/android/camera/LaunchTrigger;

    if-ne p1, v0, :cond_162

    .line 850
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_COLD_BOOT_FROM_LIFTTRIGGER_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->startMeasurement(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    .line 852
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_COLD_BOOT_FROM_LIFTTRIGGER_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setMeasurementValid(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    goto :goto_187

    .line 855
    :cond_162
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_COLD_BOOT_FROM_HOME_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->startMeasurement(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    .line 857
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_COLD_BOOT_FROM_HOME_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setMeasurementValid(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    goto :goto_187

    .line 845
    :cond_175
    :goto_175
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_COLD_BOOT_FROM_CAMERAKEY_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->startMeasurement(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    .line 847
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_COLD_BOOT_FROM_CAMERAKEY_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setMeasurementValid(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    .line 863
    :goto_187
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getUserSettings()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object p1

    .line 865
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    .line 866
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getOneShotMode()Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    .line 867
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getExtraOutput()Landroid/net/Uri;

    move-result-object v2

    iget-object v4, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    .line 868
    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getVideoQualityConfigurations()Lcom/sonyericsson/android/camera/configuration/IntentReader$VideoQualityConfigurations;

    move-result-object v4

    .line 864
    invoke-interface {p1, v0, v1, v2, v4}, Lcom/sonyericsson/android/camera/setting/UserSettings;->prepare(Landroid/content/Context;Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;Landroid/net/Uri;Lcom/sonyericsson/android/camera/configuration/IntentReader$VideoQualityConfigurations;)V

    .line 870
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getOneShotMode()Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_1bf

    .line 872
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Lcom/sonyericsson/android/camera/setting/UserSettings;->changeCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)V

    .line 873
    invoke-interface {p1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->commit()V

    goto :goto_1c8

    .line 875
    :cond_1bf
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->changeCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 878
    :goto_1c8
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getExtraOperation()Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;->LAUNCH_AND_CAPTURE:Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;

    if-ne v0, v1, :cond_1da

    .line 879
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isInLockTaskMode()Z

    move-result v0

    if-nez v0, :cond_1da

    move v0, v3

    goto :goto_1db

    :cond_1da
    move v0, v5

    .line 881
    :goto_1db
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getCameraDevice()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    .line 882
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v2

    .line 881
    invoke-virtual {v1, p0, p1, v2, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->preloadCamera(Landroid/content/Context;Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCurrentCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    .line 883
    new-instance p1, Lcom/sonyericsson/android/camera/AutoPowerOffTimer;

    new-instance v0, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffListenerImpl;

    invoke-direct {v0, p0, v6}, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffListenerImpl;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/CameraActivity$1;)V

    invoke-direct {p1, p0, v0}, Lcom/sonyericsson/android/camera/AutoPowerOffTimer;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/AutoPowerOffTimer$AutoPowerOffListener;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mAutoPowerOffTimer:Lcom/sonyericsson/android/camera/AutoPowerOffTimer;

    .line 889
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->setupCoreInstance()V

    .line 894
    invoke-super {p0, v6}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 897
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->onCreate(Landroid/content/Context;)V

    .line 900
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_INITIALIZE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array v1, v5, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 909
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    invoke-interface {p1}, Lcom/sonyericsson/cameracommon/storage/Storage;->isStorageReadable()Z

    move-result p1

    if-eqz p1, :cond_230

    .line 910
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_222

    const-string p1, "StorageActivated was already finished."

    .line 911
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 913
    :cond_222
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mBackgroundWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/sonyericsson/android/camera/CameraActivity$SetupAllTask;

    invoke-direct {v0, p0, v6}, Lcom/sonyericsson/android/camera/CameraActivity$SetupAllTask;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/CameraActivity$1;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mSetupAllTaskFuture:Ljava/util/concurrent/Future;

    goto :goto_247

    .line 915
    :cond_230
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_23d

    const-string p1, "StorageActivated was not finished yet."

    .line 916
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 918
    :cond_23d
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    new-instance v0, Lcom/sonyericsson/android/camera/CameraActivity$6;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/CameraActivity$6;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;)V

    invoke-interface {p1, v0}, Lcom/sonyericsson/cameracommon/storage/Storage;->addStorageReadyStateListener(Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyStateListener;)V

    .line 944
    :goto_247
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->createBatteryChangedReceiver()V

    .line 945
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mBatteryChangedReceiver:Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setBatteryChangedReceiver(Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;)V

    .line 946
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mBackgroundWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/sonyericsson/android/camera/CameraActivity$ThermalAlertReceiverCreateTask;

    invoke-direct {v0, p0, v6}, Lcom/sonyericsson/android/camera/CameraActivity$ThermalAlertReceiverCreateTask;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/CameraActivity$1;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 947
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mBackgroundWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/sonyericsson/android/camera/CameraActivity$ThermalAlertReceiverOnCreateTask;

    invoke-direct {v0, p0, v6}, Lcom/sonyericsson/android/camera/CameraActivity$ThermalAlertReceiverOnCreateTask;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/CameraActivity$1;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 950
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->registerForceExitRequestReceiver()V

    .line 952
    iput-boolean v3, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mIsColdBoot:Z

    .line 953
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_277

    const-string p1, "CameraActivity"

    sget-object v0, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->ON_CREATE:Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->logLifeCycleOut(Ljava/lang/String;Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;)V

    .line 955
    :cond_277
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_284

    const-string p1, "onCreate() : X"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 956
    :cond_284
    sget-object p1, Lcom/sonyericsson/android/camera/util/PerfLog;->ACTIVITY_ON_CREATE:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/util/PerfLog;->end()V

    return-void
.end method

.method public onDestroy()V
    .registers 6

    .line 2057
    sget-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->ACTIVITY_ON_DESTROY:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/PerfLog;->begin()V

    .line 2058
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_12

    const-string v0, "onDestroy() : E"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2060
    :cond_12
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_1d

    const-string v0, "CameraActivity"

    sget-object v1, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->ON_DESTROY:Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->logLifeCycleIn(Ljava/lang/String;Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;)V

    .line 2061
    :cond_1d
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2062
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_27

    return-void

    .line 2067
    :cond_27
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLayoutOrientationChangedListenerSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 2071
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->onDestroy()V

    .line 2072
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_40

    const-string v0, "onDestroy():[IN]"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2075
    :cond_40
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->unregisterForceExitRequestReceiver()V

    .line 2078
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getDownAll()V

    const/4 v0, 0x0

    .line 2086
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mIsCalledOnDestroy:Z

    .line 2087
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mBackgroundWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonyericsson/android/camera/CameraActivity$ThermalAlertReceiverOnDestroyTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/camera/CameraActivity$ThermalAlertReceiverOnDestroyTask;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/CameraActivity$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 2088
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mBackgroundWorker:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    const/4 v0, 0x1

    .line 2091
    :try_start_5a
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mBackgroundWorker:Ljava/util/concurrent/ExecutorService;

    const-wide/16 v2, 0x3e8

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_9b

    .line 2092
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mThermalAlertReceiver:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;

    monitor-enter v1
    :try_end_69
    .catch Ljava/lang/InterruptedException; {:try_start_5a .. :try_end_69} :catch_7e

    .line 2093
    :try_start_69
    iget-boolean v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mIsCalledOnDestroy:Z

    if-nez v2, :cond_79

    .line 2094
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mIsCalledOnDestroy:Z

    .line 2095
    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mThermalAlertReceiver:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->onDestroy()V

    .line 2096
    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mBatteryChangedReceiver:Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->onDestroy()V

    .line 2098
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

    .line 2101
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 2102
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mThermalAlertReceiver:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;

    monitor-enter v1

    .line 2103
    :try_start_8a
    iget-boolean v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mIsCalledOnDestroy:Z

    if-nez v2, :cond_9a

    .line 2104
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mIsCalledOnDestroy:Z

    .line 2106
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mThermalAlertReceiver:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->onDestroy()V

    .line 2107
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mBatteryChangedReceiver:Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->onDestroy()V

    .line 2109
    :cond_9a
    monitor-exit v1
    :try_end_9b
    .catchall {:try_start_8a .. :try_end_9b} :catchall_b9

    .line 2112
    :cond_9b
    :goto_9b
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_a6

    const-string v0, "CameraActivity"

    sget-object v1, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->ON_DESTROY:Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->logLifeCycleOut(Ljava/lang/String;Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;)V

    .line 2113
    :cond_a6
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_b3

    const-string v0, "onDestroy() : X"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2114
    :cond_b3
    sget-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->ACTIVITY_ON_DESTROY:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/PerfLog;->end()V

    return-void

    :catchall_b9
    move-exception v0

    .line 2109
    :try_start_ba
    monitor-exit v1
    :try_end_bb
    .catchall {:try_start_ba .. :try_end_bb} :catchall_b9

    throw v0
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    const/high16 v0, 0x20000000

    .line 3462
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 3463
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mSideTouchEventDispatcher:Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventDispatcher;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventDispatcher;->send(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 p1, 0x1

    return p1

    .line 3467
    :cond_12
    invoke-super {p0, p1}, Landroid/app/Activity;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onHomeKeyEvent()V
    .registers 1

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 9

    .line 2171
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_22

    new-array v0, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KeyEvent.getEventTime() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2172
    :cond_22
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_3e

    new-array v0, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CameraActivity.onKeyDown() : KEYCODE="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2173
    :cond_3e
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_4b

    const-string v0, "onKeyDown():[IN]"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2175
    :cond_4b
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_52

    return v2

    .line 2179
    :cond_52
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mKeyEventDispatcher:Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventDispatcher;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventDispatcher;->sendKeyDown(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_5b

    return v2

    .line 2183
    :cond_5b
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .registers 4

    .line 2162
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mKeyEventDispatcher:Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventDispatcher;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventDispatcher;->sendKeyLongPress(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p1, 0x1

    return p1

    .line 2166
    :cond_a
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 9

    .line 2188
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_22

    new-array v0, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KeyEvent.getEventTime() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2189
    :cond_22
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_3e

    new-array v0, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CameraActivity.onKeyUp() : KEYCODE="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2190
    :cond_3e
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_4b

    const-string v0, "onKeyUp():[IN]"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2192
    :cond_4b
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_52

    return v2

    .line 2196
    :cond_52
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mKeyEventDispatcher:Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventDispatcher;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventDispatcher;->sendKeyUp(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_5b

    return v2

    :cond_5b
    const/4 v0, 0x4

    if-ne p1, v0, :cond_62

    .line 2202
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->abort()V

    return v2

    .line 2206
    :cond_62
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onMultiWindowModeChanged(Z)V
    .registers 6

    .line 1579
    invoke-super {p0, p1}, Landroid/app/Activity;->onMultiWindowModeChanged(Z)V

    .line 1580
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    .line 1584
    :cond_a
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_28

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMultiWindowModeChanged() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_28
    if-eqz p1, :cond_39

    .line 1587
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->REQUESTED_PERMISSIONS:[Ljava/lang/String;

    .line 1588
    invoke-static {p0, p1}, Lcom/sonyericsson/cameracommon/utility/PermissionsUtil;->arePermissionsGranted(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_39

    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mDisableMultiWindow:Z

    if-nez p1, :cond_39

    .line 1590
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->launchMultiWindow()V

    :cond_39
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 8

    .line 2294
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "onNewIntent() : E"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_d
    const/4 v0, 0x1

    .line 2295
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->isLaunchFromNewIntent:Z

    .line 2296
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v1

    .line 2298
    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getLaunchTrigger()Lcom/sonyericsson/android/camera/LaunchTrigger;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera/LaunchTrigger;->VIEWER:Lcom/sonyericsson/android/camera/LaunchTrigger;

    if-eq v2, v3, :cond_29

    .line 2299
    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    invoke-interface {v2}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getUserSettings()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->clearCachedUserSetting()V

    .line 2301
    :cond_29
    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    invoke-interface {v2}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getUserSettings()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->changeCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 2303
    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    invoke-interface {v2}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getUserSettings()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FAST_CAPTURE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v2, v3}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_ONLY:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    if-ne v2, v3, :cond_44

    move v2, v0

    goto :goto_45

    :cond_44
    const/4 v2, 0x0

    .line 2306
    :goto_45
    iget-object v3, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    invoke-interface {v4}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getLastSettings()Lcom/sonyericsson/android/camera/setting/LastSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/setting/LastSettings;->getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v4

    instance-of v5, p0, Lcom/sonyericsson/android/camera/InternalCameraActivity;

    invoke-virtual {v3, p1, v4, v2, v5}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setup(Landroid/content/Intent;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;ZZ)V

    .line 2309
    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getLaunchTrigger()Lcom/sonyericsson/android/camera/LaunchTrigger;

    move-result-object v2

    .line 2310
    sget-object v3, Lcom/sonyericsson/android/camera/LaunchTrigger;->LOCK_SCREEN:Lcom/sonyericsson/android/camera/LaunchTrigger;

    if-ne v2, v3, :cond_73

    .line 2311
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_WARM_BOOT_FROM_LOCKSCREEN_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->startMeasurement(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    .line 2313
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_WARM_BOOT_FROM_LOCKSCREEN_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setMeasurementValid(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    goto :goto_b8

    .line 2315
    :cond_73
    sget-object v3, Lcom/sonyericsson/android/camera/LaunchTrigger;->HW_CAMERA_KEY:Lcom/sonyericsson/android/camera/LaunchTrigger;

    if-eq v2, v3, :cond_a6

    sget-object v3, Lcom/sonyericsson/android/camera/LaunchTrigger;->HW_CAMERA_KEY_LOCK:Lcom/sonyericsson/android/camera/LaunchTrigger;

    if-ne v2, v3, :cond_7c

    goto :goto_a6

    .line 2321
    :cond_7c
    sget-object v3, Lcom/sonyericsson/android/camera/LaunchTrigger;->LIFT_TRIGGER:Lcom/sonyericsson/android/camera/LaunchTrigger;

    if-ne v2, v3, :cond_93

    .line 2322
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_WARM_BOOT_FROM_LIFTTRIGGER_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->startMeasurement(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    .line 2324
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_WARM_BOOT_FROM_LIFTTRIGGER_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setMeasurementValid(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    goto :goto_b8

    .line 2327
    :cond_93
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_WARM_BOOT_FROM_HOME_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->startMeasurement(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    .line 2329
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_WARM_BOOT_FROM_HOME_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setMeasurementValid(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    goto :goto_b8

    .line 2317
    :cond_a6
    :goto_a6
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_WARM_BOOT_FROM_CAMERAKEY_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->startMeasurement(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    .line 2319
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_WARM_BOOT_FROM_CAMERAKEY_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setMeasurementValid(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    .line 2332
    :goto_b8
    iget-boolean v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mIsColdBoot:Z

    if-eqz v2, :cond_c6

    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v2

    if-eq v1, v2, :cond_c6

    .line 2333
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mIsNeedToCloseBypassCameraBecauseModeChanged:Z

    .line 2336
    :cond_c6
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/CameraActivity;->setIntent(Landroid/content/Intent;)V

    .line 2337
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_d6

    const-string p1, "onNewIntent() : X"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_d6
    return-void
.end method

.method public final onPause()V
    .registers 6

    const/4 v0, 0x0

    .line 2802
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->isLaunchFromNewIntent:Z

    .line 2804
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCheckAndRequestSelfPermissionsTask:Ljava/lang/Runnable;

    const/4 v2, 0x0

    if-eqz v1, :cond_13

    .line 2805
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v3, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCheckAndRequestSelfPermissionsTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2807
    iput-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCheckAndRequestSelfPermissionsTask:Ljava/lang/Runnable;

    .line 2812
    :cond_13
    invoke-virtual {p0, v0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->overridePendingTransition(II)V

    .line 2813
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isRecording()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 2817
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->stopAudioRecording()V

    .line 2819
    :cond_21
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->unRegisterHomeKeyEventReceiver()V

    .line 2820
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isPrepared()Z

    move-result v1

    if-nez v1, :cond_38

    .line 2821
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 2824
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getCameraDevice()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->closeCamera()V

    .line 2828
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->finishUrgently()V

    return-void

    .line 2832
    :cond_38
    sget-object v1, Lcom/sonyericsson/android/camera/util/PerfLog;->ACTIVITY_ON_PAUSE:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/util/PerfLog;->begin()V

    .line 2833
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_4a

    const-string v1, "onPause() : E"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2834
    :cond_4a
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v1, :cond_55

    const-string v1, "CameraActivity"

    sget-object v3, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->ON_PAUSE:Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    invoke-direct {p0, v1, v3}, Lcom/sonyericsson/android/camera/CameraActivity;->logLifeCycleIn(Ljava/lang/String;Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;)V

    :cond_55
    const-string v1, "activity-paused"

    .line 2837
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->notifyActivityState(Ljava/lang/String;)V

    .line 2839
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getLaunchTrigger()Lcom/sonyericsson/android/camera/LaunchTrigger;

    move-result-object v1

    .line 2840
    sget-object v3, Lcom/sonyericsson/android/camera/LaunchTrigger;->POWER_KEY_DOUBLE_TAP:Lcom/sonyericsson/android/camera/LaunchTrigger;

    if-eq v1, v3, :cond_7a

    sget-object v3, Lcom/sonyericsson/android/camera/LaunchTrigger;->LIFT_TRIGGER:Lcom/sonyericsson/android/camera/LaunchTrigger;

    if-eq v1, v3, :cond_7a

    .line 2842
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v3

    sget-object v4, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_COLD_BOOT_FROM_HOME_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {v3, v4}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setMeasurementInvalid(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    .line 2844
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v3

    sget-object v4, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_WARM_BOOT_FROM_HOME_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {v3, v4}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setMeasurementInvalid(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    .line 2847
    :cond_7a
    sget-object v3, Lcom/sonyericsson/android/camera/LaunchTrigger;->LIFT_TRIGGER:Lcom/sonyericsson/android/camera/LaunchTrigger;

    if-eq v1, v3, :cond_90

    .line 2848
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v1

    sget-object v3, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_COLD_BOOT_FROM_LIFTTRIGGER_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setMeasurementInvalid(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    .line 2850
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v1

    sget-object v3, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_WARM_BOOT_FROM_LIFTTRIGGER_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setMeasurementInvalid(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    .line 2853
    :cond_90
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v1

    sget-object v3, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_COLD_BOOT_FROM_CAMERAKEY_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setMeasurementInvalid(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    .line 2855
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v1

    sget-object v3, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_COLD_BOOT_FROM_LOCKSCREEN_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setMeasurementInvalid(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    .line 2857
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v1

    sget-object v3, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_WARM_BOOT_FROM_CAMERAKEY_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setMeasurementInvalid(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    .line 2859
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v1

    sget-object v3, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_WARM_BOOT_FROM_LOCKSCREEN_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setMeasurementInvalid(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    .line 2862
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getCameraDevice()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setActivityForeground(Z)V

    .line 2864
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->awaitSetupAllReady()Z

    .line 2866
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonyericsson.android.camera.intent.action.FINISH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 2869
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->REQUESTED_PERMISSIONS:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/PermissionsUtil;->arePermissionsGranted(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d8

    .line 2870
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->doPause()V

    goto :goto_e2

    .line 2872
    :cond_d8
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->releaseCamera()V

    .line 2873
    iput-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCurrentCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    .line 2875
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->clearMessageDialog()V

    .line 2878
    :goto_e2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mKeyEventDispatcher:Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventDispatcher;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventDispatcher;->stop()V

    .line 2879
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mSideTouchEventDispatcher:Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventDispatcher;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventDispatcher;->stop()V

    .line 2881
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->unRegisterShutDownReceiver()V

    .line 2883
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_fa

    const-string v0, "CameraActivity"

    sget-object v1, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->ON_PAUSE:Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->logLifeCycleOut(Ljava/lang/String;Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;)V

    .line 2884
    :cond_fa
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_107

    const-string v0, "onPause() : X"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2885
    :cond_107
    sget-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->ACTIVITY_ON_PAUSE:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/PerfLog;->end()V

    .line 2887
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onRestart()V
    .registers 3

    .line 1306
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_b

    const-string v0, "CameraActivity"

    sget-object v1, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->ON_RESTART:Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->logLifeCycleIn(Ljava/lang/String;Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;)V

    .line 1307
    :cond_b
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 1308
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_15

    return-void

    .line 1312
    :cond_15
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->onRestart()V

    .line 1314
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_25

    const-string v0, "CameraActivity"

    sget-object v1, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->ON_RESTART:Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->logLifeCycleOut(Ljava/lang/String;Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;)V

    :cond_25
    return-void
.end method

.method public final onResume()V
    .registers 4

    const/4 v0, 0x0

    .line 2747
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mIsColdBoot:Z

    .line 2748
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mIsSaveZoomInfoNeeded:Z

    .line 2750
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->setGmsMatterSupportChecked(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 2752
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isPrepared()Z

    move-result v1

    if-eqz v1, :cond_be

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1a

    goto/16 :goto_be

    .line 2757
    :cond_1a
    sget-object v1, Lcom/sonyericsson/android/camera/util/PerfLog;->ACTIVITY_ON_RESUME:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/util/PerfLog;->begin()V

    .line 2758
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_2c

    const-string v1, "onResume() : E"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2760
    :cond_2c
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getCameraDevice()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setIsInShutdownNow(Z)V

    .line 2761
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->registerShutDownReceiver()V

    .line 2762
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->registerScreenOffReceiver()V

    .line 2763
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->registerHomeKeyEventReceiver()V

    .line 2765
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_47

    const-string v0, "CameraActivity"

    sget-object v1, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->ON_RESUME:Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->logLifeCycleIn(Ljava/lang/String;Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;)V

    .line 2767
    :cond_47
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getCameraDevice()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setActivityForeground(Z)V

    .line 2768
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isKeyguardLocked()Z

    move-result v1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->shouldShowWhenLocked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->onResume(ZZ)V

    const/16 v0, 0xc

    .line 2771
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->REQUESTED_PERMISSIONS:[Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->checkAndRequestSelfPermissions(I[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6a

    .line 2773
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->doResume()V

    goto :goto_86

    .line 2775
    :cond_6a
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getExtraOperation()Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;->LAUNCH_AND_CAPTURE:Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;

    if-ne v0, v1, :cond_86

    .line 2777
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_81

    const-string v0, "start clearExtraOperation"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2779
    :cond_81
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->clearExtraOperation()V

    .line 2783
    :cond_86
    :goto_86
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonyericsson.android.camera.intent.action.LAUNCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 2786
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->releaseCameraDeviceReleaseTimer()V

    const-string v0, "activity-resumed"

    .line 2789
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->notifyActivityState(Ljava/lang/String;)V

    .line 2791
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mKeyEventDispatcher:Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventDispatcher;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventDispatcher;->start()V

    .line 2793
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_a8

    const-string v0, "CameraActivity"

    sget-object v1, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->ON_RESUME:Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->logLifeCycleOut(Ljava/lang/String;Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;)V

    .line 2794
    :cond_a8
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_b5

    const-string v0, "onResume() : X"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2795
    :cond_b5
    sget-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->ACTIVITY_ON_RESUME:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/PerfLog;->end()V

    .line 2797
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void

    .line 2753
    :cond_be
    :goto_be
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method protected onScreenOff()V
    .registers 2

    .line 1003
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "invoke"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1005
    :cond_d
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_40

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_40

    .line 1009
    :cond_1a
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->isOneShot()Z

    move-result v0

    if-eqz v0, :cond_23

    return-void

    :cond_23
    const/4 v0, 0x0

    .line 1017
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->setShowWhenLocked(Z)V

    .line 1018
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->setTurnScreenOn(Z)V

    .line 1020
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->shouldNotRemainRecentTask()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 1022
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->requestSuspend()V

    goto :goto_3f

    .line 1023
    :cond_36
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->shouldShowWhenLocked()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 1025
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->requestSuspend()V

    :cond_3f
    :goto_3f
    return-void

    :cond_40
    :goto_40
    return-void
.end method

.method public onSearchRequested()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public onStart()V
    .registers 3

    .line 1276
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_b

    const-string v0, "CameraActivity"

    sget-object v1, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->ON_START:Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->logLifeCycleIn(Ljava/lang/String;Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;)V

    .line 1277
    :cond_b
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 1278
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_15

    return-void

    .line 1282
    :cond_15
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_20

    const-string v0, "CameraActivity"

    sget-object v1, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->ON_START:Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->logLifeCycleOut(Ljava/lang/String;Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;)V

    :cond_20
    return-void
.end method

.method public onStop()V
    .registers 3

    .line 2036
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_b

    const-string v0, "CameraActivity"

    sget-object v1, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->ON_STOP:Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->logLifeCycleIn(Ljava/lang/String;Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;)V

    .line 2037
    :cond_b
    sget-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->ACTIVITY_ON_STOP:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/PerfLog;->begin()V

    .line 2039
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 2041
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->hasDeviceError()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 2042
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->finishAndRemoveTask()V

    .line 2043
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    return-void

    .line 2047
    :cond_24
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_2b

    return-void

    .line 2051
    :cond_2b
    sget-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->ACTIVITY_ON_STOP:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/PerfLog;->end()V

    .line 2052
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_3b

    const-string v0, "CameraActivity"

    sget-object v1, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->ON_STOP:Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->logLifeCycleOut(Ljava/lang/String;Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;)V

    :cond_3b
    return-void
.end method

.method public onUserInteraction()V
    .registers 3

    .line 1596
    invoke-super {p0}, Landroid/app/Activity;->onUserInteraction()V

    .line 1598
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mAutoPowerOffTimer:Lcom/sonyericsson/android/camera/AutoPowerOffTimer;

    if-eqz v0, :cond_1c

    sget-object v0, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;->LIFT_TRIGGER:Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;

    .line 1599
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;->getReason()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mAutoPowerOffTimer:Lcom/sonyericsson/android/camera/AutoPowerOffTimer;

    .line 1600
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/AutoPowerOffTimer;->getUserdata()Ljava/lang/Object;

    move-result-object v1

    .line 1599
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 1601
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->restartAutoPowerOffTimer()V

    :cond_1c
    return-void
.end method

.method protected onUserLeaveHint()V
    .registers 1

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 4

    .line 2379
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 2380
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    :cond_a
    if-eqz p1, :cond_18

    .line 2387
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    if-eqz p1, :cond_18

    .line 2388
    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_UPDATE_GEO_TAG:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    :cond_18
    return-void
.end method

.method public pauseAudioPlayback()V
    .registers 4

    .line 2933
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "command"

    const-string v2, "pause"

    .line 2934
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2937
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 2938
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->muteSound()V

    return-void
.end method

.method public playSound(Lcom/sonyericsson/cameracommon/sound/SoundPlayer$Type;)V
    .registers 3
    .param p1    # Lcom/sonyericsson/cameracommon/sound/SoundPlayer$Type;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2212
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mSoundPlayer:Lcom/sonyericsson/cameracommon/sound/SoundPlayer;

    if-nez v0, :cond_5

    return-void

    .line 2216
    :cond_5
    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->play(Lcom/sonyericsson/cameracommon/sound/SoundPlayer$Type;)V

    return-void
.end method

.method public postDelayedEvent(Ljava/lang/Runnable;J)V
    .registers 5

    .line 1765
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public prepareCameraDeviceHandler(Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/setting/UserSettings;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;
    .registers 5

    .line 732
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;->SESSION_TYPE_NORMAL:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->prepareCameraDeviceHandler(Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object p1

    return-object p1
.end method

.method public prepareCameraDeviceHandler(Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;
    .registers 9

    .line 712
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_33

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepareCameraDeviceHandler() launch:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_17

    const-string v3, "null"

    goto :goto_1b

    .line 713
    :cond_17
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->name()Ljava/lang/String;

    move-result-object v3

    :goto_1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " capturing-mode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 714
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 712
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 716
    :cond_33
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mIsNeedToCloseBypassCameraBecauseModeChanged:Z

    if-eqz v0, :cond_40

    .line 717
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mIsNeedToCloseBypassCameraBecauseModeChanged:Z

    .line 718
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getCameraDevice()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->closeCamera()V

    .line 721
    :cond_40
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getCameraDevice()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->prepareCamera(Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/setting/UserSettings;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 722
    invoke-interface {p3}, Lcom/sonyericsson/android/camera/setting/UserSettings;->applyCapturingMode()V

    .line 723
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getCameraDevice()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->openCamera(Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object p1

    return-object p1

    :cond_56
    const/4 p1, 0x0

    return-object p1
.end method

.method public removeOrienationListener(Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientationChangedListener;)V
    .registers 3

    .line 3053
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLayoutOrientationChangedListenerSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public reportFullyDrawnOnce()V
    .registers 4

    .line 1120
    sget-boolean v0, Lcom/sonyericsson/android/camera/CameraActivity;->sIsReportFullyDrawnAlreadyReported:Z

    if-nez v0, :cond_13

    const/4 v0, 0x1

    .line 1121
    sput-boolean v0, Lcom/sonyericsson/android/camera/CameraActivity;->sIsReportFullyDrawnAlreadyReported:Z

    const-string v0, "Report fully drawn"

    .line 1122
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1123
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->reportFullyDrawn()V

    .line 1126
    :cond_13
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getLaunchTrigger()Lcom/sonyericsson/android/camera/LaunchTrigger;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    .line 1127
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v2

    .line 1126
    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->sendView(Lcom/sonyericsson/android/camera/LaunchTrigger;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    return-void
.end method

.method public requestPostLazyInitializationTaskExecute()V
    .registers 6

    .line 1747
    new-instance v0, Lcom/sonyericsson/android/camera/CameraActivity$PostDeviceInitializationTask;

    invoke-direct {v0, p0, p0}, Lcom/sonyericsson/android/camera/CameraActivity$PostDeviceInitializationTask;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/CameraActivity;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mPostDeviceInitializationTask:Lcom/sonyericsson/android/camera/CameraActivity$PostDeviceInitializationTask;

    .line 1748
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_UPDATE_SETTING_CHANGE_ACCEPTABILITY:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 1750
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1748
    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 1751
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getExtraOperation()Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;->LAUNCH_AND_CAPTURE:Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;

    if-ne v0, v1, :cond_2a

    .line 1752
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mPostDeviceInitializationTask:Lcom/sonyericsson/android/camera/CameraActivity$PostDeviceInitializationTask;

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Lcom/sonyericsson/android/camera/CameraActivity;->postDelayedEvent(Ljava/lang/Runnable;J)V

    goto :goto_2f

    .line 1756
    :cond_2a
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mPostDeviceInitializationTask:Lcom/sonyericsson/android/camera/CameraActivity$PostDeviceInitializationTask;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->postEvent(Ljava/lang/Runnable;)V

    :goto_2f
    return-void
.end method

.method public requestStartFeatureListActivity()V
    .registers 4

    .line 3611
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3612
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/sonyericsson/android/camera/FeatureListActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "extra_key_finish_when_screen_off"

    .line 3613
    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    .line 3614
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->shouldNotRemainRecentTask()Z

    move-result v2

    .line 3613
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v1, 0x17

    .line 3615
    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 3616
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$LaunchFeatureListWay;->NEW_FEATURE_BAR:Lcom/sonymobile/cameracommon/research/parameters/Event$LaunchFeatureListWay;

    invoke-virtual {v0, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendShowFeatureListEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$LaunchFeatureListWay;)V

    return-void
.end method

.method public requestSuspend()V
    .registers 2

    .line 1911
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "requestSuspend():[IN]"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_d
    const/4 v0, 0x1

    .line 1912
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->moveTaskToBack(Z)Z

    move-result v0

    if-nez v0, :cond_24

    .line 1913
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_21

    const-string v0, "requestSuspend():[FAILED]"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1914
    :cond_21
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->finish()V

    :cond_24
    return-void
.end method

.method public final restartAutoPowerOffTimer()V
    .registers 2

    .line 2966
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "restartAutoPowerOffTimer: "

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2967
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mAutoPowerOffTimer:Lcom/sonyericsson/android/camera/AutoPowerOffTimer;

    if-nez v0, :cond_12

    return-void

    .line 2971
    :cond_12
    new-instance v0, Lcom/sonyericsson/android/camera/CameraActivity$9;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/CameraActivity$9;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;)V

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->postEvent(Ljava/lang/Runnable;)V

    .line 2979
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mAutoPowerOffTimer:Lcom/sonyericsson/android/camera/AutoPowerOffTimer;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/AutoPowerOffTimer;->restartAutoPowerOffTimer()V

    return-void
.end method

.method public setMaxBrightness()V
    .registers 2

    const/high16 v0, 0x3f800000    # 1.0f

    .line 3576
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->setBrightness(F)V

    return-void
.end method

.method public setupAutoPowerOffTimeOutDuration(Z)V
    .registers 5

    if-eqz p1, :cond_16

    .line 980
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getMessageSettings()Lcom/sonyericsson/android/camera/setting/MessageSettings;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/setting/MessageType;->PREDICTIVE_LAUNCH_DESCRIPTION:Lcom/sonyericsson/android/camera/setting/MessageType;

    .line 981
    invoke-interface {p1, v0}, Lcom/sonyericsson/android/camera/setting/MessageSettings;->isNeverShow(Lcom/sonyericsson/android/camera/setting/MessageType;)Z

    move-result p1

    if-nez p1, :cond_13

    .line 982
    sget-object p1, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;->LIFT_TRIGGER_DIALOG:Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;

    goto :goto_2c

    .line 984
    :cond_13
    sget-object p1, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;->LIFT_TRIGGER:Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;

    goto :goto_2c

    .line 986
    :cond_16
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->isLaunchedAsInSecure()Z

    move-result p1

    if-nez p1, :cond_2a

    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    .line 987
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->isQuickLaunchOnFirstLaunch()Z

    move-result p1

    if-eqz p1, :cond_27

    goto :goto_2a

    .line 990
    :cond_27
    sget-object p1, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;->DEFAULT:Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;

    goto :goto_2c

    .line 988
    :cond_2a
    :goto_2a
    sget-object p1, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;->ON_LOCKSCREEN:Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;

    .line 993
    :goto_2c
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mAutoPowerOffTimer:Lcom/sonyericsson/android/camera/AutoPowerOffTimer;

    .line 994
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;->getDuration()I

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    .line 995
    invoke-interface {v2}, Lcom/sonyericsson/android/camera/view/ViewFinder;->getAutoPowerOffHintTextTimeOutDuration()I

    move-result v2

    .line 996
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;->getReason()Ljava/lang/String;

    move-result-object p1

    .line 993
    invoke-virtual {v0, v1, v2, p1}, Lcom/sonyericsson/android/camera/AutoPowerOffTimer;->setTimeOutDuration(IILjava/lang/Object;)V

    return-void
.end method

.method protected shouldShowWhenLocked()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 5

    .line 3318
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isDeviceInSecurityLock()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3319
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    check-cast v0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->saveLocalCache()V

    .line 3321
    :cond_d
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILcom/sonyericsson/cameracommon/activity/OnActivityResultListener;)Z
    .registers 4

    .line 3326
    invoke-direct {p0, p2, p3}, Lcom/sonyericsson/android/camera/CameraActivity;->addActivityResultListener(ILcom/sonyericsson/cameracommon/activity/OnActivityResultListener;)Z

    move-result p3

    if-nez p3, :cond_8

    const/4 p1, 0x0

    return p1

    .line 3329
    :cond_8
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera/CameraActivity;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 p1, 0x1

    return p1
.end method

.method public stopPlayingSound()V
    .registers 2

    .line 2222
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mSoundPlayer:Lcom/sonyericsson/cameracommon/sound/SoundPlayer;

    if-eqz v0, :cond_7

    .line 2223
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->stop()V

    :cond_7
    return-void
.end method

.method public terminateApplication()V
    .registers 1

    .line 668
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->finish()V

    return-void
.end method
