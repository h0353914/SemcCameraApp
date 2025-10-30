.class public Lcom/sonyericsson/android/camera/controller/StateMachine;
.super Ljava/lang/Object;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$State;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$StateNone;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$ChangeCameraModeTask;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$StartRecordingTask;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$NotifyDelayedEventTask;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$OnStateChangedListener;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$StateOperationRestricted;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$StartupAction;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReady;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$OnPreviewStartedListenerImpl;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$StateWaitingEvfPreparedByModeChange;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$StateCameraSwitching;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReadyForRecording;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$StateWarning;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCaptureWaitForAfDone;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$StateLowFrameRateVideoRecordingInSuperSlowMotion;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$StateHighFrameRateVideoRecordingInSuperSlowMotion;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecordingPausing;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$RequestStoreTask;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$OneShotResult;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$StateCropping;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$StatePause;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$StateFrontCameraSwitching;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$StateWaitingPreProcessDone;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$StateFinalize;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$StateModeChanging;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoStore;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoStopping;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$StateWaitForHighFrameRateVideoRecordingDone;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoBase;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCaptureWaitForAfDone;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$StateMultiFrameCapture;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$NextCaptureCondition;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoAfDone;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoAfSearch;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$StatePrepareForRecording;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$CameraKeyStatus;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoBase;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$StateResumeAndCapture;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$StateInitialize;
    }
.end annotation


# static fields
.field private static final BURST_INTERVAL_TIME_MS:J = 0x5aL

.field private static final COLOR_VALUE_MAX:I = 0xff

.field private static final DISPLAY_FLASH_EXTRA_TIME_MS:J = 0x2bcL

.field private static final DISPLAY_FLASH_EXTRA_TIME_MS_NOT_WAIT_AE:J = 0x1f4L

.field private static final RESUME_TIMEOUT:I = 0x1b58

.field private static final TAG:Ljava/lang/String; = "StateMachine"

.field private static final TERMINATE_WAIT_TIME:I = 0xfa0

.field private static final THREAD_NAME:Ljava/lang/String; = "RequestStore"

.field private static final USE_PROGRESS_ON_PHOTO_THUMBNAIL:Z = false

.field private static final USE_PROGRESS_ON_VIDEO_THUMBNAIL:Z = false

.field private static final WIDE_ANGLE_SWITCH_RETRY_DELAY_TIME_MS:I = 0x32

.field private static final WIDE_ANGLE_SWITCH_RETRY_TIMES:I = 0xa


# instance fields
.field private isPostChangeCameraTask:Z

.field private final mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

.field private mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

.field private mChangeCameraModeTask:Lcom/sonyericsson/android/camera/controller/StateMachine$ChangeCameraModeTask;

.field private mChapterThumbnail:Lcom/sonyericsson/android/camera/controller/ChapterThumbnail;

.field private mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

.field private mCurrentSessionType:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

.field private mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

.field private final mExecService:Ljava/util/concurrent/ExecutorService;

.field private final mGestureShutter:Lcom/sonyericsson/android/camera/controller/GestureShutter;

.field private final mGestureShutterHost:Lcom/sonyericsson/android/camera/controller/GestureShutter$ControllerHost;

.field private final mHandler:Landroid/os/Handler;

.field private mHideBlackScreen:Z

.field private mHideBlackScreenFrameNum:I

.field private mHighFrameRateVideoRecordingCountInSuperSlowMotion:I

.field private mIsLaunchAndRecording:Z

.field mIsSceneRecognitionValid:Z

.field private mIsSdPermissionFinished:Z

.field private mIsSemiAutoEnabled:Z

.field private mIsVideoRecording:Z

.field private mLastPhotoSavingRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

.field private final mLastSettings:Lcom/sonyericsson/android/camera/setting/LastSettings;

.field private mLastSmileCaptureTakenTime:J

.field private mLastStoreDataResult:Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

.field private mLastVideoSavingRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

.field private final mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchCondition;

.field private mNotificationManager:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;

.field private final mNotifyResumeTimeoutTask:Ljava/lang/Runnable;

.field private mObjectTracking:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;

.field private final mOnStateChangedListenerSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/sonyericsson/android/camera/controller/StateMachine$OnStateChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnStoreCompletedListener:Lcom/sonyericsson/cameracommon/storage/Storage$OnStoreCompletedListener;

.field private final mOnSuperSlowRecordingFinishedListener:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/OnSuperSlowRecordingFinishedListener;

.field private final mPendingTaskListForStandby:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final mPhotoSavingRequestList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private mPredictiveApplier:Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;

.field private mPredictiveCaptureStoreInfo:Lcom/sonyericsson/cameracommon/contentsview/PredictiveCaptureStoreInfo;

.field private mQrCodeScanner:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$QrCodeScanner;

.field private mQrDetectionController:Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;

.field private mQrResultListener:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$QrResultListener;

.field private mRetryTimes:I

.field private final mSettingController:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;

.field private mShutterFeedback:Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;

.field private mStartRecordingTask:Lcom/sonyericsson/android/camera/controller/StateMachine$StartRecordingTask;

.field private mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

.field private mStorageStateListener:Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;

.field private mSuppressFlash:Z

.field private final mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

.field private mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

.field private final mVirtualKeyEventDispatcher:Lcom/sonyericsson/android/camera/view/UserEventHandler$VirtualKeyEventDispatcher;


# direct methods
.method static bridge synthetic -$$Nest$fgetisPostChangeCameraTask(Lcom/sonyericsson/android/camera/controller/StateMachine;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->isPostChangeCameraTask:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmActivity(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/CameraActivity;
    .registers 1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;
    .registers 1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContentsViewController(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;
    .registers 1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentSessionType(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;
    .registers 1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentSessionType:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentState(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/controller/StateMachine$State;
    .registers 1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmGestureShutter(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/controller/GestureShutter;
    .registers 1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mGestureShutter:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHighFrameRateVideoRecordingCountInSuperSlowMotion(Lcom/sonyericsson/android/camera/controller/StateMachine;)I
    .registers 1

    iget p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mHighFrameRateVideoRecordingCountInSuperSlowMotion:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsLaunchAndRecording(Lcom/sonyericsson/android/camera/controller/StateMachine;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mIsLaunchAndRecording:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsSemiAutoEnabled(Lcom/sonyericsson/android/camera/controller/StateMachine;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mIsSemiAutoEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastPhotoSavingRequest(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;
    .registers 1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLastPhotoSavingRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastSettings(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/setting/LastSettings;
    .registers 1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLastSettings:Lcom/sonyericsson/android/camera/setting/LastSettings;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastStoreDataResult(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;
    .registers 1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLastStoreDataResult:Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastVideoSavingRequest(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;
    .registers 1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLastVideoSavingRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLaunchCondition(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/LaunchCondition;
    .registers 1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchCondition;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNotificationManager(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;
    .registers 1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mNotificationManager:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNotifyResumeTimeoutTask(Lcom/sonyericsson/android/camera/controller/StateMachine;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mNotifyResumeTimeoutTask:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmObjectTracking(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;
    .registers 1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mObjectTracking:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPendingTaskListForStandby(Lcom/sonyericsson/android/camera/controller/StateMachine;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mPendingTaskListForStandby:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPhotoSavingRequestList(Lcom/sonyericsson/android/camera/controller/StateMachine;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mPhotoSavingRequestList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPredictiveApplier(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;
    .registers 1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mPredictiveApplier:Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmQrDetectionController(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;
    .registers 1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mQrDetectionController:Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSettingController(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;
    .registers 1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mSettingController:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmShutterFeedback(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;
    .registers 1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mShutterFeedback:Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStartRecordingTask(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/controller/StateMachine$StartRecordingTask;
    .registers 1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mStartRecordingTask:Lcom/sonyericsson/android/camera/controller/StateMachine$StartRecordingTask;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStorage(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/storage/Storage;
    .registers 1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStorageStateListener(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;
    .registers 1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mStorageStateListener:Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUserSettings(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/setting/UserSettings;
    .registers 1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;
    .registers 1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVirtualKeyEventDispatcher(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/UserEventHandler$VirtualKeyEventDispatcher;
    .registers 1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mVirtualKeyEventDispatcher:Lcom/sonyericsson/android/camera/view/UserEventHandler$VirtualKeyEventDispatcher;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmChapterThumbnail(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/ChapterThumbnail;)V
    .registers 2

    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mChapterThumbnail:Lcom/sonyericsson/android/camera/controller/ChapterThumbnail;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCurrentSessionType(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;)V
    .registers 2

    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentSessionType:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmHideBlackScreenFrameNum(Lcom/sonyericsson/android/camera/controller/StateMachine;I)V
    .registers 2

    iput p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mHideBlackScreenFrameNum:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmHighFrameRateVideoRecordingCountInSuperSlowMotion(Lcom/sonyericsson/android/camera/controller/StateMachine;I)V
    .registers 2

    iput p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mHighFrameRateVideoRecordingCountInSuperSlowMotion:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsLaunchAndRecording(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mIsLaunchAndRecording:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsSemiAutoEnabled(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mIsSemiAutoEnabled:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsVideoRecording(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mIsVideoRecording:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastPhotoSavingRequest(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)V
    .registers 2

    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLastPhotoSavingRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastStoreDataResult(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V
    .registers 2

    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLastStoreDataResult:Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastVideoSavingRequest(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;)V
    .registers 2

    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLastVideoSavingRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmObjectTracking(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;)V
    .registers 2

    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mObjectTracking:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmQrResultListener(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$QrResultListener;)V
    .registers 2

    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mQrResultListener:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$QrResultListener;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmShutterFeedback(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;)V
    .registers 2

    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mShutterFeedback:Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmStartRecordingTask(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$StartRecordingTask;)V
    .registers 2

    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mStartRecordingTask:Lcom/sonyericsson/android/camera/controller/StateMachine$StartRecordingTask;

    return-void
.end method

.method static bridge synthetic -$$Nest$mcalculateRemainStorage(Lcom/sonyericsson/android/camera/controller/StateMachine;)V
    .registers 1

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->calculateRemainStorage()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcancelAutoFocus(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->cancelAutoFocus(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mchangeAngleValue(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->changeAngleValue(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mchangeCameraIfNeeded(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->changeCameraIfNeeded(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mchangeLogicCamera(Lcom/sonyericsson/android/camera/controller/StateMachine;)V
    .registers 1

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->changeLogicCamera()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mchangeTo(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mchangeToStandby(Lcom/sonyericsson/android/camera/controller/StateMachine;)V
    .registers 1

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->changeToStandby()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckBurstConditions(Lcom/sonyericsson/android/camera/controller/StateMachine;ZZ)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->checkBurstConditions(ZZ)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mcheckSaveDestinationCanBeChange(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->checkSaveDestinationCanBeChange(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mcheckThermalWarning(Lcom/sonyericsson/android/camera/controller/StateMachine;)V
    .registers 1

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->checkThermalWarning()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcleanupPendingState(Lcom/sonyericsson/android/camera/controller/StateMachine;)V
    .registers 1

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->cleanupPendingState()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcreateRecordingProfile(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/recorder/RecordingProfile;
    .registers 1

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->createRecordingProfile()Lcom/sonyericsson/android/camera/recorder/RecordingProfile;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mdoCapture(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->doCapture(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoCaptureWhileRecording(Lcom/sonyericsson/android/camera/controller/StateMachine;)V
    .registers 1

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->doCaptureWhileRecording()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoChangeAngle(Lcom/sonyericsson/android/camera/controller/StateMachine;)V
    .registers 1

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->doChangeAngle()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoChangeSelectedFace(Lcom/sonyericsson/android/camera/controller/StateMachine;Landroid/graphics/Point;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->doChangeSelectedFace(Landroid/graphics/Point;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoHandleRecordingError(Lcom/sonyericsson/android/camera/controller/StateMachine;)V
    .registers 1

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->doHandleRecordingError()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoPauseRecording(Lcom/sonyericsson/android/camera/controller/StateMachine;)V
    .registers 1

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->doPauseRecording()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoResumeRecording(Lcom/sonyericsson/android/camera/controller/StateMachine;)V
    .registers 1

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->doResumeRecording()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoStartObjectTracking(Lcom/sonyericsson/android/camera/controller/StateMachine;Landroid/graphics/Rect;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->doStartObjectTracking(Landroid/graphics/Rect;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoStopObjectTracking(Lcom/sonyericsson/android/camera/controller/StateMachine;)V
    .registers 1

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->doStopObjectTracking()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoStopRecording(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->doStopRecording(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoStopZoom(Lcom/sonyericsson/android/camera/controller/StateMachine;)V
    .registers 1

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->doStopZoom()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mfinishOneShot(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;Landroid/graphics/Bitmap;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->finishOneShot(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetCurrentStorage(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;
    .registers 1

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentStorage()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetNextSessionTypeForCapture(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;
    .registers 1

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getNextSessionTypeForCapture()Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetOrientation(Lcom/sonyericsson/android/camera/controller/StateMachine;)I
    .registers 1

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getOrientation()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetSensorOrientation(Lcom/sonyericsson/android/camera/controller/StateMachine;)I
    .registers 1

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getSensorOrientation()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mhasRemainSavingRequest(Lcom/sonyericsson/android/camera/controller/StateMachine;)Z
    .registers 1

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->hasRemainSavingRequest()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$minitGeoTagManager(Lcom/sonyericsson/android/camera/controller/StateMachine;)V
    .registers 1

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->initGeoTagManager()V

    return-void
.end method

.method static bridge synthetic -$$Nest$minitSideSenseSetting(Lcom/sonyericsson/android/camera/controller/StateMachine;)V
    .registers 1

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->initSideSenseSetting()V

    return-void
.end method

.method static bridge synthetic -$$Nest$misCurrentStorageExternal(Lcom/sonyericsson/android/camera/controller/StateMachine;)Z
    .registers 1

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isCurrentStorageExternal()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misEnoughStorageSizeAvailableForOneShotVideo(Lcom/sonyericsson/android/camera/controller/StateMachine;)Z
    .registers 1

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isEnoughStorageSizeAvailableForOneShotVideo()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misFusionMonitoringNeeded(Lcom/sonyericsson/android/camera/controller/StateMachine;)Z
    .registers 1

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isFusionMonitoringNeeded()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misHighQualityBurstAvailable(Lcom/sonyericsson/android/camera/controller/StateMachine;)Z
    .registers 1

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isHighQualityBurstAvailable()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misLazyInitializationRunning(Lcom/sonyericsson/android/camera/controller/StateMachine;)Z
    .registers 1

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isLazyInitializationRunning()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misNeedRepairRequestId(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isNeedRepairRequestId(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misStorageFull(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isStorageFull(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misStorageReady(Lcom/sonyericsson/android/camera/controller/StateMachine;)Z
    .registers 1

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isStorageReady()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misStorageWritable(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isStorageWritable(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misTouchAeEnabled(Lcom/sonyericsson/android/camera/controller/StateMachine;)Z
    .registers 1

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isTouchAeEnabled()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misVideo(Lcom/sonyericsson/android/camera/controller/StateMachine;)Z
    .registers 1

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isVideo()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mnotifyCoolingUltraLow(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->notifyCoolingUltraLow(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyDelayedEvent(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)Lcom/sonyericsson/android/camera/controller/StateMachine$NotifyDelayedEventTask;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->notifyDelayedEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)Lcom/sonyericsson/android/camera/controller/StateMachine$NotifyDelayedEventTask;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$monOneShotStoreCompleted(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->onOneShotStoreCompleted(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monPredictiveCaptureStoreComplete(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->onPredictiveCaptureStoreComplete(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mpauseAudioPlaybackForRecord(Lcom/sonyericsson/android/camera/controller/StateMachine;)V
    .registers 1

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->pauseAudioPlaybackForRecord()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mpauseVideoRecording(Lcom/sonyericsson/android/camera/controller/StateMachine;[Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->pauseVideoRecording([Ljava/lang/Object;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mpreparePositionConverter(Lcom/sonyericsson/android/camera/controller/StateMachine;)V
    .registers 1

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->preparePositionConverter()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mprepareRecording(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->prepareRecording(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mpublishCameraStatus(Lcom/sonyericsson/android/camera/controller/StateMachine;)V
    .registers 1

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->publishCameraStatus()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mremoveChangeCameraModeTask(Lcom/sonyericsson/android/camera/controller/StateMachine;)V
    .registers 1

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->removeChangeCameraModeTask()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mremoveDelayedEvent(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$NotifyDelayedEventTask;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->removeDelayedEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$NotifyDelayedEventTask;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mremoveStartRecordingTask(Lcom/sonyericsson/android/camera/controller/StateMachine;)V
    .registers 1

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->removeStartRecordingTask()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrequestChangeModeTo(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;Z)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/controller/StateMachine;->requestChangeModeTo(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrequestPhotoSmileCapture(Lcom/sonyericsson/android/camera/controller/StateMachine;)V
    .registers 1

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->requestPhotoSmileCapture()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrequestResizeEvf(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->requestResizeEvf(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrequestStorePicture(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->requestStorePicture(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrequestVideoSmileCapture(Lcom/sonyericsson/android/camera/controller/StateMachine;)V
    .registers 1

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->requestVideoSmileCapture()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrestartPreviewSessionBeforeBurst(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->restartPreviewSessionBeforeBurst(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendVideoChapterThumbnailToViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)V
    .registers 1

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendVideoChapterThumbnailToViewFinder()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetCurrentCapturingMode(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->setCurrentCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetFocusPosition(Lcom/sonyericsson/android/camera/controller/StateMachine;Landroid/graphics/Point;Landroid/graphics/RectF;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/controller/StateMachine;->setFocusPosition(Landroid/graphics/Point;Landroid/graphics/RectF;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetIsSceneRecognitionValid(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->setIsSceneRecognitionValid(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetSuppressFlash(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->setSuppressFlash(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetZoomKeyTag(Lcom/sonyericsson/android/camera/controller/StateMachine;[Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->setZoomKeyTag([Ljava/lang/Object;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshouldRestartSessionBeforeCapture(Lcom/sonyericsson/android/camera/controller/StateMachine;)Z
    .registers 1

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->shouldRestartSessionBeforeCapture()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mshowBlackScreen(Lcom/sonyericsson/android/camera/controller/StateMachine;)V
    .registers 1

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->showBlackScreen()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowBlackScreen(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->showBlackScreen(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowCannotBurstInDarkCondition(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->showCannotBurstInDarkCondition(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartAutoFocus(Lcom/sonyericsson/android/camera/controller/StateMachine;[Ljava/lang/Object;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->startAutoFocus([Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mstartFastCapture(Lcom/sonyericsson/android/camera/controller/StateMachine;ZLcom/sonyericsson/android/camera/controller/StateMachine$StartupAction;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->startFastCapture(ZLcom/sonyericsson/android/camera/controller/StateMachine$StartupAction;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartRecording(Lcom/sonyericsson/android/camera/controller/StateMachine;)V
    .registers 1

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->startRecording()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstopPlaySound(Lcom/sonyericsson/android/camera/controller/StateMachine;)V
    .registers 1

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->stopPlaySound()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstorePicture(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->storePicture(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstoreSavingRequestList(Lcom/sonyericsson/android/camera/controller/StateMachine;)V
    .registers 1

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->storeSavingRequestList()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mswitchAngleValue(Lcom/sonyericsson/android/camera/controller/StateMachine;)V
    .registers 1

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->switchAngleValue()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mswitchCamera(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->switchCamera(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mswitchCamera(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->switchCamera(Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mswitchSceneRecognition(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->switchSceneRecognition(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mswitchVideoFaceDetection(Lcom/sonyericsson/android/camera/controller/StateMachine;)V
    .registers 1

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->switchVideoFaceDetection()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateAmberBlueColor(Lcom/sonyericsson/android/camera/controller/StateMachine;F)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->updateAmberBlueColor(F)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateBokehStrength(Lcom/sonyericsson/android/camera/controller/StateMachine;F)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->updateBokehStrength(F)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateBrightness(Lcom/sonyericsson/android/camera/controller/StateMachine;F)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->updateBrightness(F)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateFusionModeSetting(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->updateFusionModeSetting(Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdatePhotoSelftimer(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->updatePhotoSelftimer(Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateRecordingProgress(Lcom/sonyericsson/android/camera/controller/StateMachine;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->updateRecordingProgress(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smgetEventParam([Ljava/lang/Object;ILjava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getEventParam([Ljava/lang/Object;ILjava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/cameracommon/storage/Storage;Lcom/sonyericsson/android/camera/LaunchCondition;)V
    .registers 8

    .line 1049
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 270
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 273
    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLastPhotoSavingRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    .line 274
    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLastVideoSavingRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

    .line 277
    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    .line 281
    const-string v1, "RequestStore"

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/ThreadUtil;->buildExecutor(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mExecService:Ljava/util/concurrent/ExecutorService;

    const/4 v1, 0x0

    .line 284
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mIsVideoRecording:Z

    .line 286
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mIsLaunchAndRecording:Z

    .line 288
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->isPostChangeCameraTask:Z

    const/4 v2, 0x1

    .line 290
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mHideBlackScreen:Z

    .line 292
    iput v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mHideBlackScreenFrameNum:I

    .line 306
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mPhotoSavingRequestList:Ljava/util/List;

    .line 309
    new-instance v2, Lcom/sonyericsson/android/camera/controller/StateMachine$StateNone;

    invoke-direct {v2, p0, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateNone;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$StateNone-IA;)V

    iput-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    .line 312
    iput v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mHighFrameRateVideoRecordingCountInSuperSlowMotion:I

    .line 315
    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLastStoreDataResult:Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    .line 323
    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mChangeCameraModeTask:Lcom/sonyericsson/android/camera/controller/StateMachine$ChangeCameraModeTask;

    .line 325
    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mStartRecordingTask:Lcom/sonyericsson/android/camera/controller/StateMachine$StartRecordingTask;

    .line 330
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mPendingTaskListForStandby:Ljava/util/List;

    .line 339
    sget-object v2, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;->SESSION_TYPE_NORMAL:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    iput-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentSessionType:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    .line 341
    new-instance v2, Lcom/sonyericsson/android/camera/view/UserEventHandler$VirtualKeyEventDispatcher;

    invoke-direct {v2}, Lcom/sonyericsson/android/camera/view/UserEventHandler$VirtualKeyEventDispatcher;-><init>()V

    iput-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mVirtualKeyEventDispatcher:Lcom/sonyericsson/android/camera/view/UserEventHandler$VirtualKeyEventDispatcher;

    .line 344
    invoke-static {}, Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;->createDefault()Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mShutterFeedback:Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;

    .line 355
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mIsSceneRecognitionValid:Z

    .line 357
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mSuppressFlash:Z

    .line 367
    new-instance v2, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;

    invoke-direct {v2, p0, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter-IA;)V

    iput-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mStorageStateListener:Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;

    .line 386
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mIsSdPermissionFinished:Z

    .line 549
    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$5;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$5;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mQrCodeScanner:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$QrCodeScanner;

    .line 568
    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$6;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$6;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mOnStoreCompletedListener:Lcom/sonyericsson/cameracommon/storage/Storage$OnStoreCompletedListener;

    .line 650
    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$8;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$8;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mGestureShutterHost:Lcom/sonyericsson/android/camera/controller/GestureShutter$ControllerHost;

    .line 1038
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mOnStateChangedListenerSet:Ljava/util/Set;

    .line 1065
    new-instance v2, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;

    invoke-direct {v2, p0, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController-IA;)V

    iput-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mSettingController:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;

    .line 3319
    new-instance v3, Lcom/sonyericsson/android/camera/controller/StateMachine$10;

    invoke-direct {v3, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$10;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    iput-object v3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mNotifyResumeTimeoutTask:Ljava/lang/Runnable;

    .line 6898
    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mChapterThumbnail:Lcom/sonyericsson/android/camera/controller/ChapterThumbnail;

    .line 9990
    new-instance v3, Lcom/sonyericsson/android/camera/controller/StateMachine$15;

    invoke-direct {v3, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$15;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    iput-object v3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mOnSuperSlowRecordingFinishedListener:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/OnSuperSlowRecordingFinishedListener;

    const/16 v3, 0xa

    .line 10572
    iput v3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mRetryTimes:I

    .line 11208
    new-instance v3, Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;

    invoke-direct {v3, p0, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier-IA;)V

    iput-object v3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mPredictiveApplier:Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;

    .line 1050
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    .line 1051
    iput-object p2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    .line 1052
    iput-object p3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchCondition;

    .line 1054
    new-instance p2, Lcom/sonyericsson/android/camera/controller/GestureShutter;

    invoke-direct {p2, v1, v0}, Lcom/sonyericsson/android/camera/controller/GestureShutter;-><init>(Lcom/sonyericsson/android/camera/controller/GestureShutter$ControllerHost;Lcom/sonyericsson/android/camera/controller/GestureShutter$WindowHost;)V

    iput-object p2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mGestureShutter:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    .line 1055
    new-instance p2, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;

    iget-object p3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mQrCodeScanner:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$QrCodeScanner;

    .line 1056
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/CameraActivity;->getAutoPowerOffTimerController()Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffTimerController;

    move-result-object v0

    invoke-direct {p2, p1, p3, v0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$QrCodeScanner;Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffTimerController;)V

    iput-object p2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mNotificationManager:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;

    .line 1057
    new-instance p2, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;

    iget-object p3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mQrResultListener:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$QrResultListener;

    invoke-direct {p2, p3}, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;-><init>(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$QrResultListener;)V

    iput-object p2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mQrDetectionController:Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;

    .line 1059
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/CameraActivity;->getStoredSettings()Lcom/sonyericsson/android/camera/setting/StoredSettings;

    move-result-object p2

    invoke-interface {p2}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getUserSettings()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object p2

    iput-object p2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    .line 1060
    invoke-interface {p2, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->register(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;)V

    .line 1061
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/CameraActivity;->getStoredSettings()Lcom/sonyericsson/android/camera/setting/StoredSettings;

    move-result-object p1

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getLastSettings()Lcom/sonyericsson/android/camera/setting/LastSettings;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLastSettings:Lcom/sonyericsson/android/camera/setting/LastSettings;

    return-void
.end method

.method private calculateRemainStorage()V
    .registers 6

    .line 10828
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    if-eqz v0, :cond_33

    .line 10829
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentStorage()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v0

    if-nez v0, :cond_13

    goto :goto_33

    .line 10835
    :cond_13
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentStorage()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v0

    .line 10836
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    invoke-interface {v1, v0}, Lcom/sonyericsson/cameracommon/storage/Storage;->getRemainStorage(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)J

    move-result-wide v1

    const-wide/32 v3, 0xf000

    cmp-long v1, v1, v3

    if-gtz v1, :cond_33

    .line 10839
    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_STORAGE_ERROR:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    .line 10840
    invoke-interface {v2, v0}, Lcom/sonyericsson/cameracommon/storage/Storage;->getCurrentState(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 10839
    invoke-virtual {p0, v1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    :cond_33
    :goto_33
    return-void
.end method

.method private canInvokePhotoSelfTimer()Z
    .registers 2

    .line 11004
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isLazyInitializationRunning()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isPhotoSelfTimerEnabled()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 11005
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentStorage()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isStorageWritable(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z

    move-result p0

    if-eqz p0, :cond_18

    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    return p0
.end method

.method private cancelAutoFocus(Z)V
    .registers 3

    if-eqz p1, :cond_7

    .line 9460
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->resetFocusModeAndCommit()V

    .line 9462
    :cond_7
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->setDisplayFlashRequired(Z)V

    .line 9463
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    const/16 v0, 0xff

    invoke-interface {p1, v0, v0, v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->setDisplayFlashColor(III)V

    .line 9464
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->cancelAutoFocus()V

    return-void
.end method

.method private changeAngleValue(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V
    .registers 2

    return-void
.end method

.method private changeCameraIfNeeded(Z)V
    .registers 3

    .line 9272
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_d

    const-string p1, "invoked E"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 9275
    :cond_d
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->shouldChangeLogicCamera(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 9276
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$11;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$11;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_21
    return-void
.end method

.method private changeLogicCamera()V
    .registers 5

    .line 9288
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "invoked E"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 9289
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->stopPreviewSynchronized()V

    .line 9290
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->closeCamera()V

    .line 9291
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_ONLY:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    .line 9292
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    .line 9291
    invoke-virtual {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera/CameraActivity;->prepareCameraDeviceHandler(Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/setting/UserSettings;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    .line 9293
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->notifyOnEvfPrepared()V

    .line 9294
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->switchVideoFaceDetection()V

    const/4 v0, 0x0

    .line 9295
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->isPostChangeCameraTask:Z

    return-void
.end method

.method private changeModeTo(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;Z)V
    .registers 11

    .line 9190
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_28

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invoke request:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", current:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 9191
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 9190
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 9193
    :cond_28
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_CAPTURING_MODE_CHANGING:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v3}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 9195
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->doStopObjectTracking()V

    .line 9197
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->stopAutoFlashMonitoring()V

    .line 9198
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->stopAutoHdrMonitoring()V

    .line 9199
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->stopAutoNightMonitoring()V

    .line 9200
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->stopFinishBurstMonitoring()V

    .line 9201
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->resetTempParameters()V

    .line 9205
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->clearMessageDialog()V

    .line 9208
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 9209
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 9210
    invoke-interface {v3, v4}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    iget-object v5, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLastSettings:Lcom/sonyericsson/android/camera/setting/LastSettings;

    iget-object v6, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchCondition;

    .line 9211
    invoke-interface {v6}, Lcom/sonyericsson/android/camera/LaunchCondition;->isOneShot()Z

    move-result v6

    .line 9209
    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->savePreloadSettings(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/setting/LastSettings;Z)V

    .line 9213
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLastSettings:Lcom/sonyericsson/android/camera/setting/LastSettings;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/setting/LastSettings;->clearZoomInfo()V

    .line 9214
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v1

    .line 9215
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->setCurrentCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    if-nez p3, :cond_8d

    .line 9218
    invoke-virtual {p0, v1, v0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->needChangeCameraId(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Z

    move-result v0

    if-eqz v0, :cond_8b

    goto :goto_8d

    :cond_8b
    move v0, v2

    goto :goto_8e

    :cond_8d
    :goto_8d
    const/4 v0, 0x1

    .line 9219
    :goto_8e
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_b2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "needChangeCameraId:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", forceChangeCamera:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_b2
    const/4 p3, 0x0

    if-nez v0, :cond_cc

    .line 9224
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateWaitingEvfPreparedByModeChange;

    invoke-direct {v0, p0, p3}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateWaitingEvfPreparedByModeChange;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$StateWaitingEvfPreparedByModeChange-IA;)V

    new-array v1, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    .line 9226
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$ChangeCameraModeTask;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/controller/StateMachine$ChangeCameraModeTask;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;Lcom/sonyericsson/android/camera/controller/StateMachine$ChangeCameraModeTask-IA;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mChangeCameraModeTask:Lcom/sonyericsson/android/camera/controller/StateMachine$ChangeCameraModeTask;

    .line 9228
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_f1

    .line 9230
    :cond_cc
    iget-object p2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->stopPreviewSynchronized()V

    .line 9231
    iget-object p2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->closeCamera()V

    .line 9232
    iget-object p2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_ONLY:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    invoke-virtual {p2, v0, p1, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->prepareCameraDeviceHandler(Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/setting/UserSettings;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object p1

    .line 9234
    new-instance p2, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCameraSwitching;

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_ONLY:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    invoke-direct {p2, p0, p1, v0, p3}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCameraSwitching;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;Lcom/sonyericsson/android/camera/controller/StateMachine$StateCameraSwitching-IA;)V

    new-array p1, v2, [Ljava/lang/Object;

    invoke-direct {p0, p2, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    .line 9235
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->notifyOnEvfPrepared()V

    :goto_f1
    return-void
.end method

.method private varargs declared-synchronized changeTo(Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V
    .registers 6

    const-string v0, "invoke current:"

    monitor-enter p0

    .line 8959
    :try_start_3
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_39

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", to:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 8960
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 8959
    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 8963
    :cond_39
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->exit()V

    .line 8966
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    .line 8969
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mOnStateChangedListenerSet:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_46
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/controller/StateMachine$OnStateChangedListener;

    .line 8970
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->getCaptureState()Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$OnStateChangedListener;->onStateChanged(Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;[Ljava/lang/Object;)V

    goto :goto_46

    .line 8974
    :cond_5c
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->entry()V
    :try_end_61
    .catchall {:try_start_3 .. :try_end_61} :catchall_63

    .line 8975
    monitor-exit p0

    return-void

    :catchall_63
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private changeToStandby()V
    .registers 4

    .line 11053
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isVideo()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 11054
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    goto :goto_1d

    .line 11056
    :cond_12
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReady;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReady;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    :goto_1d
    return-void
.end method

.method private checkBurstConditions(ZZ)Z
    .registers 6

    .line 11616
    sget-object v0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->INTERNAL:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isStorageWritable(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 11620
    :cond_a
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getRemainSavingPhotoRequestCount()I

    move-result v0

    if-lez v0, :cond_13

    return v1

    .line 11629
    :cond_13
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isBurstSupportedInLowLight()Z

    move-result v0

    if-nez v0, :cond_27

    .line 11630
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne v0, v2, :cond_27

    if-nez p1, :cond_27

    .line 11632
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->showCannotBurstInDarkCondition(Z)V

    return v1

    :cond_27
    const/4 p0, 0x1

    return p0
.end method

.method private checkCallback(Lcom/sonyericsson/cameracommon/storage/RequestFactory$RequestBuilder;)V
    .registers 2

    .line 10325
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mOnStoreCompletedListener:Lcom/sonyericsson/cameracommon/storage/Storage$OnStoreCompletedListener;

    invoke-virtual {p1, p0}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$RequestBuilder;->addCallback(Lcom/sonyericsson/cameracommon/storage/Storage$OnStoreCompletedListener;)V

    return-void
.end method

.method private checkSaveDestinationCanBeChange(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z
    .registers 3

    .line 11437
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$cameracommon$storage$Storage$StorageType:[I

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_17

    const/4 v0, 0x2

    if-eq p1, v0, :cond_10

    const/4 p0, 0x0

    return p0

    .line 11441
    :cond_10
    sget-object p1, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->INTERNAL:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isStorageWritable(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z

    move-result p0

    return p0

    .line 11439
    :cond_17
    sget-object p1, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->EXTERNAL_CARD:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isStorageWritable(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z

    move-result p0

    return p0
.end method

.method private checkThermalWarning()V
    .registers 3

    .line 11320
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isPowerSavingSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 11321
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->isThermalWarningReceived()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    .line 11322
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_HEATED_OVER_COOLING_ULTRA_LOW:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    goto :goto_2a

    .line 11323
    :cond_1b
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->isThermalWarningExtraState()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 11324
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_HEATED_OVER_COOLING_LOW:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    :cond_2a
    :goto_2a
    return-void
.end method

.method private cleanupPendingState()V
    .registers 3

    .line 11404
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SELF_TIMER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->updatePhotoSelftimer(Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;)V

    return-void
.end method

.method private createRecordingProfile()Lcom/sonyericsson/android/camera/recorder/RecordingProfile;
    .registers 5

    .line 11710
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 11711
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v1, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    .line 11712
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_STABILIZER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 11713
    invoke-interface {v2, v3}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    .line 11714
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p0, v3}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    .line 11716
    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->STANDARD_SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    if-ne p0, v3, :cond_30

    .line 11717
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->getVideoSize()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v0

    .line 11720
    :cond_30
    new-instance v3, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;

    invoke-direct {v3}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;-><init>()V

    .line 11721
    invoke-virtual {v3, v0}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->videoSize(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;

    move-result-object v0

    .line 11722
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->videoHdr(Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;

    move-result-object v0

    .line 11723
    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->videoStabilizer(Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;)Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;

    move-result-object v0

    .line 11724
    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->slowMotion(Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;)Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;

    move-result-object p0

    .line 11725
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->build()Lcom/sonyericsson/android/camera/recorder/RecordingProfile;

    move-result-object p0

    return-object p0
.end method

.method private createTakenStatusCommon(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;Landroid/graphics/Rect;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;
    .registers 21

    move-object v0, p0

    .line 10043
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 10046
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getOrientation()I

    move-result v3

    .line 10050
    iget-object v4, v0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchCondition;

    invoke-interface {v4}, Lcom/sonyericsson/android/camera/LaunchCondition;->isOneShot()Z

    move-result v4

    if-eqz v4, :cond_19

    iget-object v4, v0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    .line 10051
    invoke-static {v4}, Lcom/sonyericsson/cameracommon/utility/PermissionsUtil;->areCallerGeoPermissionsGranted(Landroid/app/Activity;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 10052
    :cond_19
    iget-object v4, v0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/CameraActivity;->getGeoTagManager()Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    move-result-object v4

    if-eqz v4, :cond_2c

    .line 10053
    iget-object v4, v0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/CameraActivity;->getGeoTagManager()Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v4

    goto :goto_2d

    :cond_2c
    const/4 v4, 0x0

    .line 10060
    :goto_2d
    sget-object v5, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$cameracommon$storage$SavingTaskManager$SavedFileType:[I

    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v5, v7, :cond_53

    const/4 v8, 0x2

    if-eq v5, v8, :cond_4b

    const/4 v8, 0x3

    if-eq v5, v8, :cond_44

    const/4 v8, 0x4

    if-eq v5, v8, :cond_44

    move v12, v6

    goto :goto_54

    .line 10069
    :cond_44
    iget-object v5, v0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchCondition;

    invoke-interface {v5}, Lcom/sonyericsson/android/camera/LaunchCondition;->shouldAddToMediaStore()Z

    move-result v5

    goto :goto_51

    .line 10065
    :cond_4b
    iget-object v5, v0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchCondition;

    invoke-interface {v5}, Lcom/sonyericsson/android/camera/LaunchCondition;->shouldAddToMediaStore()Z

    move-result v5

    :goto_51
    move v12, v5

    goto :goto_54

    :cond_53
    move v12, v7

    .line 10076
    :goto_54
    new-instance v14, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    .line 10080
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 10081
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v8

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    .line 10088
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->getCaptureState()Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    move-result-object v0

    sget-object v9, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_RESUME_AND_CAPTURE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    if-ne v0, v9, :cond_6a

    move v13, v7

    goto :goto_6b

    :cond_6a
    move v13, v6

    :goto_6b
    const-string v11, ""

    move-object v0, v14

    move v6, v8

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p1

    move-object/from16 v10, p5

    invoke-direct/range {v0 .. v13}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;-><init>(JILandroid/location/Location;IILjava/lang/String;Ljava/lang/String;Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-object v14
.end method

.method private createVideoSavingRequest(ZLcom/sonyericsson/android/camera/recorder/RecordingProfile;)Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;
    .registers 15

    .line 10149
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 10151
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne v1, v2, :cond_26

    .line 10152
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getUserSetting()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v1, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    .line 10153
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->STANDARD_SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    if-ne v1, v2, :cond_26

    .line 10154
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->getVideoSize()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v0

    .line 10164
    :cond_26
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentStorage()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v3

    invoke-interface {v1, v2, v3, p2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->getMaxVideoSize(Lcom/sonyericsson/cameracommon/storage/Storage;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/android/camera/recorder/RecordingProfile;)Lcom/sonyericsson/android/camera/util/MaxVideoSize;

    move-result-object v1

    .line 10165
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/util/MaxVideoSize;->getMaxFileSize()J

    move-result-wide v2

    .line 10166
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/util/MaxVideoSize;->getMaxDuration()I

    move-result v1

    int-to-long v4, v1

    .line 10168
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->getMime()Ljava/lang/String;

    move-result-object v9

    .line 10169
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->getExtension()Ljava/lang/String;

    move-result-object v10

    .line 10172
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object p2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne p2, v1, :cond_5a

    .line 10173
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getUserSetting()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object p2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p2, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_5b

    :cond_5a
    const/4 p2, 0x0

    .line 10176
    :goto_5b
    new-instance v1, Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

    sget-object v7, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->VIDEO:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    .line 10179
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoRect()Landroid/graphics/Rect;

    move-result-object v8

    const/4 v11, 0x0

    move-object v6, p0

    .line 10177
    invoke-direct/range {v6 .. v11}, Lcom/sonyericsson/android/camera/controller/StateMachine;->createTakenStatusCommon(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;Landroid/graphics/Rect;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    move-result-object v0

    new-instance v6, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;

    invoke-direct {v6, v4, v5, v2, v3}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;-><init>(JJ)V

    invoke-direct {v1, v0, v6}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;)V

    .line 10186
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mOnStoreCompletedListener:Lcom/sonyericsson/cameracommon/storage/Storage$OnStoreCompletedListener;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;->addCallback(Lcom/sonyericsson/cameracommon/storage/Storage$OnStoreCompletedListener;)V

    .line 10187
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchCondition;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/LaunchCondition;->isOneShotVideo()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;->setOneShot(Z)V

    .line 10188
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchCondition;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/LaunchCondition;->getExtraOutput()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;->setExtraOutput(Landroid/net/Uri;)V

    .line 10191
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentStorage()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v2

    invoke-virtual {v1, p1, p2, v0, v2}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;->setSlowMotion(ZLjava/lang/String;Lcom/sonyericsson/cameracommon/storage/Storage;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)V

    .line 10192
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentStorage()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;->setStorageType(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)V

    return-object v1
.end method

.method private doCapture(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)V
    .registers 4

    .line 9530
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLastPhotoSavingRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    if-eqz p1, :cond_45

    .line 9532
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_11

    const-string p1, "invoke doCapture"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 9534
    :cond_11
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLastPhotoSavingRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->applySavingRequest(Lcom/sonyericsson/cameracommon/storage/RequestFactory$RequestBuilder;)V

    .line 9535
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLastPhotoSavingRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentSessionType:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    invoke-virtual {p1, v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->takePicture(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;)Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mShutterFeedback:Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;

    .line 9537
    invoke-static {}, Lcom/sonyericsson/android/camera/device/virtual/FinalImageSaver;->getFinalImageSaver()Lcom/sonyericsson/android/camera/device/virtual/FinalImageSaver;

    move-result-object p1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mOnStoreCompletedListener:Lcom/sonyericsson/cameracommon/storage/Storage$OnStoreCompletedListener;

    invoke-virtual {p1, v0, v1}, Lcom/sonyericsson/android/camera/device/virtual/FinalImageSaver;->setOnStoreCompletedListener(Lcom/sonyericsson/cameracommon/storage/Storage;Lcom/sonyericsson/cameracommon/storage/Storage$OnStoreCompletedListener;)V

    .line 9539
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_UPDATE_SETTING_CHANGE_ACCEPTABILITY:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    .line 9541
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isSettingChangeAcceptable()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 9539
    invoke-interface {p1, v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 9543
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendResearchCaptureEvents()V

    :cond_45
    return-void
.end method

.method private doCaptureWhileRecording()V
    .registers 4

    .line 9558
    sget-object v0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->PHOTO_DURING_REC:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->createPhotoSavingRequest(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;)Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 9560
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinder;->getRequestId(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->setRequestId(I)V

    .line 9562
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->applySavingRequest(Lcom/sonyericsson/cameracommon/storage/RequestFactory$RequestBuilder;)V

    .line 9563
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    if-eqz v1, :cond_1e

    .line 9564
    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->stopAnimation(Z)V

    .line 9566
    :cond_1e
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinder;->onShutterDone(Z)V

    .line 9569
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->captureWhileRecording(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)V

    :cond_29
    return-void
.end method

.method private doChangeAngle()V
    .registers 3

    .line 10577
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_f

    .line 10578
    const-string v0, "StateMachine"

    const-string v1, "doChangeAngle"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 10581
    :cond_f
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCropping;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->getCaptureState()Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCropping;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    return-void
.end method

.method private doChangeSelectedFace(Landroid/graphics/Point;)V
    .registers 6

    .line 9396
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mObjectTracking:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->stop()V

    .line 9399
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_FOCUS_POSITION_RELEASED_BY_SELECT_FACE:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v3}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 9403
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_FACE_DETECTION_STARTED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 9407
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    iget v1, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setSelectedFacePosition(II)V

    .line 9410
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isTouchAeEnabled()Z

    move-result p1

    if-eqz p1, :cond_37

    .line 9411
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->METERING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 9412
    invoke-interface {p0, v0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/Metering;

    const/4 v0, 0x0

    .line 9411
    invoke-virtual {p1, v0, p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setMeteringAreaAndCommit(Landroid/graphics/Rect;Lcom/sonyericsson/android/camera/configuration/parameters/Metering;)V

    :cond_37
    return-void
.end method

.method private doFastestCapture()V
    .registers 5

    .line 9316
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentStorage()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isStorageWritable(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_17

    .line 9318
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateWarning;

    invoke-direct {v0, p0, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateWarning;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$StateWarning-IA;)V

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    return-void

    .line 9322
    :cond_17
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$PreProcessState:[I

    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getPreProcessState()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_9c

    .line 9369
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Un-Expected state:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    .line 9370
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getPreProcessState()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9351
    :pswitch_43
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;

    invoke-direct {v0, p0, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture-IA;)V

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    goto :goto_9a

    .line 9325
    :pswitch_4e
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isBypassCameraSupported()Z

    move-result v0

    if-eqz v0, :cond_61

    .line 9328
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;

    invoke-direct {v0, p0, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture-IA;)V

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    goto :goto_9a

    .line 9330
    :cond_61
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCaptureWaitForAfDone;

    const/4 v3, 0x1

    invoke-direct {v0, p0, v3, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCaptureWaitForAfDone;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;ZLcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCaptureWaitForAfDone-IA;)V

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    goto :goto_9a

    .line 9357
    :pswitch_6d
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;

    invoke-direct {v0, p0, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture-IA;)V

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    goto :goto_9a

    .line 9346
    :pswitch_78
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;

    invoke-direct {v0, p0, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture-IA;)V

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    goto :goto_9a

    .line 9337
    :pswitch_83
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isBypassCameraSupported()Z

    move-result v0

    if-nez v0, :cond_90

    .line 9339
    sget-object v0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->PHOTO:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->createPhotoSavingRequest(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;)Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    .line 9341
    :cond_90
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;

    invoke-direct {v0, p0, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture-IA;)V

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    :goto_9a
    :pswitch_9a
    return-void

    nop

    :pswitch_data_9c
    .packed-switch 0x1
        :pswitch_83
        :pswitch_78
        :pswitch_6d
        :pswitch_4e
        :pswitch_43
        :pswitch_9a
        :pswitch_9a
    .end packed-switch
.end method

.method private doHandleRecordingError()V
    .registers 5

    .line 9986
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    sget-object v1, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ERROR_UNKNOWN:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v3}, Lcom/sonyericsson/android/camera/view/ViewFinder;->showMessageDialog(Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;[Ljava/lang/Object;)V

    .line 9987
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateWarning;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateWarning;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$StateWarning-IA;)V

    new-array v1, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    return-void
.end method

.method private doLaunchAndRecording()V
    .registers 5

    .line 9304
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReadyForRecording;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReadyForRecording;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;ZZLcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReadyForRecording-IA;)V

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    .line 9305
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_START_RECORDING:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method private doPauseRecording()V
    .registers 3

    .line 9974
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->pauseRecording()V

    .line 9975
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecordingPausing;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecordingPausing;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecordingPausing-IA;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    return-void
.end method

.method private doResumeRecording()V
    .registers 3

    .line 9980
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->resumeRecording()V

    .line 9981
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording-IA;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    return-void
.end method

.method private doStartObjectTracking(Landroid/graphics/Rect;)V
    .registers 3

    .line 11109
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentStorage()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isStorageWritable(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 11111
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mObjectTracking:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->start(Landroid/graphics/Rect;)V

    :cond_f
    return-void
.end method

.method private doStopObjectTracking()V
    .registers 3

    .line 11116
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mObjectTracking:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->stop()V

    .line 11118
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_FOCUS_POSITION_RELEASED_EXCEPT_FACE:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method private doStopRecording(Z)V
    .registers 6

    .line 9942
    sget-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->STOP_REC:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/PerfLog;->begin()V

    .line 9944
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    if-eqz v0, :cond_c

    .line 9945
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->enableClick()V

    .line 9953
    :cond_c
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->stopRecording(Z)Ljava/util/Optional;

    move-result-object p1

    .line 9954
    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 9956
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLastVideoSavingRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;->mCommonStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget v1, v1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->orientation:I

    invoke-virtual {v0, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setOrientation(I)V

    .line 9958
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->sendEventSettings()V

    .line 9959
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->SETTINGS_VIDEO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->sendSemiAutoSettingValues(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)V

    .line 9961
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->RECORDING:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    .line 9963
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentRecordingStopOperation()Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;

    move-result-object v2

    .line 9964
    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    const/4 v3, 0x0

    .line 9961
    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->sendRecordingEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;IZ)V

    .line 9968
    :cond_4d
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->onCaptureDone()V

    .line 9970
    sget-object p0, Lcom/sonyericsson/android/camera/util/PerfLog;->STOP_REC:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/PerfLog;->end()V

    return-void
.end method

.method private doStopZoom()V
    .registers 1

    return-void
.end method

.method private finishOneShot(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;Landroid/graphics/Bitmap;)V
    .registers 10

    .line 10519
    new-instance v6, Lcom/sonyericsson/android/camera/controller/StateMachine$OneShotResult;

    iget-object v1, p1, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->uri:Landroid/net/Uri;

    iget-object v2, p1, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->storeResult:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    iget-object v3, p1, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->savingRequest:Lcom/sonyericsson/cameracommon/storage/SavingRequest;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/camera/controller/StateMachine$OneShotResult;-><init>(Landroid/net/Uri;Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;Lcom/sonyericsson/cameracommon/storage/SavingRequest;Landroid/graphics/Bitmap;Lcom/sonyericsson/android/camera/controller/StateMachine$OneShotResult-IA;)V

    .line 10521
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {p0, v6}, Lcom/sonyericsson/android/camera/CameraActivity;->finishOneShot(Lcom/sonyericsson/android/camera/controller/StateMachine$OneShotResult;)V

    return-void
.end method

.method private getCameraId(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;
    .registers 2

    .line 10927
    sget-object p0, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_1d

    const/4 p1, 0x2

    if-eq p0, p1, :cond_1d

    const/4 p1, 0x3

    if-eq p0, p1, :cond_1a

    packed-switch p0, :pswitch_data_20

    .line 10942
    sget-object p0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->BACK:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    return-object p0

    .line 10937
    :pswitch_17
    sget-object p0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->WIDE:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    return-object p0

    .line 10930
    :cond_1a
    :pswitch_1a
    sget-object p0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->SAT:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    return-object p0

    .line 10934
    :cond_1d
    :pswitch_1d
    sget-object p0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->FRONT:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    return-object p0

    :pswitch_data_20
    .packed-switch 0x7
        :pswitch_17
        :pswitch_1d
        :pswitch_17
        :pswitch_1a
    .end packed-switch
.end method

.method private getCurrentRecordingStopOperation()Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;
    .registers 2

    .line 9932
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->isAlreadyHighTemperature()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 9933
    sget-object p0, Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;->THERMAL_STOP:Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;

    return-object p0

    .line 9934
    :cond_b
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isAlreadyBcl()Z

    move-result p0

    if-eqz p0, :cond_16

    .line 9935
    sget-object p0, Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;->LOWBATTERY_STOP:Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;

    return-object p0

    .line 9937
    :cond_16
    sget-object p0, Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;->USER_STOP:Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;

    return-object p0
.end method

.method private getCurrentStorage()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;
    .registers 3

    .line 11450
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchCondition;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/LaunchCondition;->isOneShot()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 11451
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchCondition;

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/LaunchCondition;->getStorageTypeForOneshot()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object p0

    return-object p0

    .line 11453
    :cond_f
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->DESTINATION_TO_SAVE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 11454
    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    if-nez v0, :cond_2c

    .line 11456
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchCondition;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/LaunchCondition;->getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    .line 11457
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->DESTINATION_TO_SAVE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p0, v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    .line 11460
    :cond_2c
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->getType()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object p0

    return-object p0
.end method

.method private static getEventParam([Ljava/lang/Object;ILjava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            "I",
            "Ljava/lang/Class<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    if-eqz p0, :cond_10

    .line 11691
    array-length v0, p0

    if-le v0, p1, :cond_10

    aget-object v0, p0, p1

    .line 11693
    invoke-virtual {p2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 11694
    aget-object p0, p0, p1

    return-object p0

    :cond_10
    if-nez p0, :cond_1c

    .line 11697
    const-string p0, "Specified parameter is empty."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_3e

    .line 11699
    :cond_1c
    array-length v0, p0

    if-gt v0, p1, :cond_29

    .line 11700
    const-string p0, "Specified parameter count is too short"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_3e

    .line 11701
    :cond_29
    aget-object p0, p0, p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3e

    .line 11702
    const-string p0, "Specified parameter type is missmatch."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_3e
    :goto_3e
    return-object p3
.end method

.method private getNextSessionTypeForCapture()Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;
    .registers 2

    .line 4357
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isStillHDROn()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 4358
    sget-object p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;->SESSION_TYPE_HDR:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    return-object p0

    .line 4359
    :cond_b
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isNightPortrait()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 4360
    sget-object p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;->SESSION_TYPE_NIGHT_PORTRAIT:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    return-object p0

    .line 4361
    :cond_16
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isNormalLight()Z

    move-result v0

    if-nez v0, :cond_21

    .line 4362
    sget-object p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;->SESSION_TYPE_LOW_LIGHT:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    return-object p0

    .line 4363
    :cond_21
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isWalkingCondition()Z

    move-result p0

    if-eqz p0, :cond_2c

    .line 4364
    sget-object p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;->SESSION_TYPE_WALKING:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    return-object p0

    .line 4366
    :cond_2c
    sget-object p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;->SESSION_TYPE_NORMAL:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    return-object p0
.end method

.method private getOrientation()I
    .registers 4

    .line 10001
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getSensorOrientationDegree()I

    move-result v0

    .line 10002
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/utility/RotationUtil;->getNormalizedRotation(I)I

    move-result v0

    .line 10004
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getCameraInfo()Lcom/sonyericsson/android/camera/device/CameraInfo;

    move-result-object p0

    if-eqz p0, :cond_7f

    .line 10005
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraInfo;->facing:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    if-nez v1, :cond_17

    goto :goto_7f

    .line 10008
    :cond_17
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_58

    .line 10009
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ORIENTATION:sensorOrientation:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 10010
    iget v1, p0, Lcom/sonyericsson/android/camera/device/CameraInfo;->orientation:I

    .line 10011
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/utility/RotationUtil;->orientationToString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ORIENTATION:cameraOrientation"

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    .line 10010
    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 10012
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ORIENTATION:cameraFacing:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraInfo;->facing:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 10020
    :cond_58
    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$device$CameraInfo$CameraId:[I

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraInfo;->facing:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_79

    const/4 v2, 0x2

    if-eq v1, v2, :cond_71

    const/4 v2, 0x3

    if-eq v1, v2, :cond_71

    .line 10029
    iget p0, p0, Lcom/sonyericsson/android/camera/device/CameraInfo;->orientation:I

    add-int/2addr p0, v0

    rem-int/lit16 p0, p0, 0x168

    goto :goto_7e

    .line 10026
    :cond_71
    iget p0, p0, Lcom/sonyericsson/android/camera/device/CameraInfo;->orientation:I

    add-int/lit16 p0, p0, 0x168

    sub-int/2addr p0, v0

    rem-int/lit16 p0, p0, 0x168

    goto :goto_7e

    .line 10022
    :cond_79
    iget p0, p0, Lcom/sonyericsson/android/camera/device/CameraInfo;->orientation:I

    add-int/2addr p0, v0

    rem-int/lit16 p0, p0, 0x168

    :goto_7e
    return p0

    :cond_7f
    :goto_7f
    const/16 p0, 0x5a

    return p0
.end method

.method private getSensorOrientation()I
    .registers 3

    .line 10851
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getLastDetectedOrientation()Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    move-result-object p0

    .line 10853
    sget-object v0, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->Portrait:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    if-ne p0, v0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x2

    .line 10859
    :goto_d
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_27

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getOrientation: sensor orientation:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_27
    return p0
.end method

.method private hasRemainSavingRequest()Z
    .registers 1

    .line 11351
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getRemainPrevSavingRequestCount()I

    move-result p0

    if-lez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method private initGeoTagManager()V
    .registers 5

    .line 11360
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getGeoTagManager()Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    move-result-object v0

    if-eqz v0, :cond_3f

    .line 11364
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getGeoTagManager()Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->isGeotagPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 11365
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 11366
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getGeoTagManager()Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->setIsGeotagPermissionGranted(Z)V

    .line 11369
    :cond_25
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getGeoTagManager()Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    .line 11370
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->isAllowToUseLocation()Z

    move-result v3

    .line 11369
    invoke-virtual {v0, v1, v2, v3}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->initGeotag(Landroid/app/Activity;Lcom/sonyericsson/android/camera/setting/UserSettings;Z)Z

    .line 11371
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getGeoTagManager()Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->notifyStatus()V

    :cond_3f
    return-void
.end method

.method private initSideSenseSetting()V
    .registers 2

    const/4 v0, 0x1

    .line 11376
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/SettingUtil;->isSideSenseEnabled(Z)Z

    move-result v0

    if-nez v0, :cond_e

    .line 11377
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/SideSense;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SideSense;

    invoke-interface {p0, v0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    :cond_e
    return-void
.end method

.method private isAllSnapshotCompleted()Z
    .registers 1

    .line 843
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getRemainSavingPhotoRequestCount()I

    move-result p0

    if-nez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method private isBokehMonitoringNeeded()Z
    .registers 1

    .line 11603
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isBokehSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method private isBurstByCameraKeyEnabled()Z
    .registers 2

    .line 10995
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAMERA_KEY:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p0, v0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CameraKey;->BURST_SHOT:Lcom/sonyericsson/android/camera/configuration/parameters/CameraKey;

    if-ne p0, v0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method private isCurrentStorageExternal()Z
    .registers 2

    .line 11464
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentStorage()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object p0

    .line 11465
    sget-object v0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->EXTERNAL_CARD:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    if-ne p0, v0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method private isEnoughStorageSizeAvailableForOneShotVideo()Z
    .registers 11

    .line 11185
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchCondition;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/LaunchCondition;->isOneShotVideo()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_a

    return v1

    .line 11189
    :cond_a
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 11190
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    .line 11191
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_STABILIZER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 11192
    invoke-interface {v0, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    .line 11193
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getUserSetting()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    .line 11194
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne v2, v3, :cond_43

    .line 11195
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->STANDARD_SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    if-ne v0, v2, :cond_43

    .line 11196
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->getVideoSize()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 11198
    :cond_43
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->createRecordingProfile()Lcom/sonyericsson/android/camera/recorder/RecordingProfile;

    move-result-object v0

    .line 11199
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentStorage()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object p0

    invoke-interface {v2, v3, p0, v0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->getMaxVideoSize(Lcom/sonyericsson/cameracommon/storage/Storage;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/android/camera/recorder/RecordingProfile;)Lcom/sonyericsson/android/camera/util/MaxVideoSize;

    move-result-object p0

    .line 11200
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/MaxVideoSize;->getMaxDuration()I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_65

    .line 11201
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/MaxVideoSize;->getMaxDuration()I

    move-result p0

    const/16 v0, 0x3e8

    if-lt p0, v0, :cond_63

    goto :goto_64

    :cond_63
    move v1, v3

    :goto_64
    return v1

    .line 11202
    :cond_65
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/MaxVideoSize;->getMaxFileSize()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_80

    .line 11203
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/MaxVideoSize;->getMaxFileSize()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->getMinFileSize()J

    move-result-wide v6

    const-wide/16 v8, 0x400

    mul-long/2addr v6, v8

    cmp-long p0, v4, v6

    if-ltz p0, :cond_7f

    goto :goto_80

    :cond_7f
    move v1, v3

    :cond_80
    :goto_80
    return v1
.end method

.method private isFusionMonitoringNeeded()Z
    .registers 6

    .line 11585
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;->getOptions(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;

    move-result-object p0

    .line 11586
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_b
    if-ge v2, v0, :cond_18

    aget-object v3, p0, v2

    .line 11587
    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;

    if-eq v3, v4, :cond_15

    const/4 p0, 0x1

    return p0

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_18
    return v1
.end method

.method private isHighQualityBurstAvailable()Z
    .registers 1

    .line 10228
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isBurstAvaliable()Z

    move-result p0

    return p0
.end method

.method private isLazyInitializationRunning()Z
    .registers 1

    .line 11000
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isLazyInitializationRunning()Z

    move-result p0

    return p0
.end method

.method private isMultiFrameSupportedForWalking()Z
    .registers 2

    .line 4342
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    if-eqz p0, :cond_10

    .line 4343
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f050009

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method private isNeedRepairRequestId(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)Z
    .registers 4

    .line 11560
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->getRequestId()I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_16

    .line 11562
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->getCaptureIdForPredictiveCapture()I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v0, :cond_f

    return v1

    .line 11567
    :cond_f
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->isPredictiveCaptureCover()Z

    move-result p0

    if-eqz p0, :cond_16

    return v1

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method private isPhotoSelfTimerEnabled()Z
    .registers 2

    .line 10991
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->getPhotoSelfTimerSetting()Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    if-eq p0, v0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method private isSmoothZoomEnabled()Z
    .registers 1

    .line 10983
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isCameraFront()Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    const/4 p0, 0x1

    return p0
.end method

.method private isStorageFull(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z
    .registers 2

    .line 11421
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    invoke-interface {p0, p1}, Lcom/sonyericsson/cameracommon/storage/Storage;->getCurrentState(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    move-result-object p0

    .line 11422
    sget-object p1, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->FULL:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    if-ne p0, p1, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method private isStorageReady()Z
    .registers 2

    .line 9450
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/storage/Storage;->isStorageActivated()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentStorage()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isStorageWritable(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    return p0

    .line 9453
    :cond_14
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_21

    const-string p0, "Storage is not ready"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_21
    const/4 p0, 0x0

    return p0
.end method

.method private isStorageWritable(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z
    .registers 2

    .line 11413
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    invoke-interface {p0, p1}, Lcom/sonyericsson/cameracommon/storage/Storage;->getCurrentState(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    move-result-object p0

    if-eqz p0, :cond_10

    .line 11414
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->isWritable()Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method private isTouchAeEnabled()Z
    .registers 4

    .line 9375
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isTouchAeSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return v1

    .line 9379
    :cond_c
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->TOUCH_CAPTURE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;

    if-ne v0, v2, :cond_19

    return v1

    .line 9383
    :cond_19
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq v0, v2, :cond_31

    .line 9384
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SUPERIOR_FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq v0, v2, :cond_31

    .line 9385
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->NORMAL:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne v0, v2, :cond_3f

    .line 9386
    :cond_31
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->TOUCH_INTENTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p0, v0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/TouchIntention;->FOCUS_AND_EXPOSURE:Lcom/sonyericsson/android/camera/configuration/parameters/TouchIntention;

    if-ne p0, v0, :cond_3f

    const/4 p0, 0x1

    return p0

    :cond_3f
    return v1
.end method

.method private isVideo()Z
    .registers 2

    .line 699
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getType()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return p0
.end method

.method private moveToCameraNotAvailable()V
    .registers 3

    .line 10865
    const-string v0, ".startFastCapture():[Camera not available]"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 10867
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    sget-object v0, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ERROR_IN_USE_BY_ANOTHER_APPLICATION:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->showMessageDialog(Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;[Ljava/lang/Object;)V

    .line 10869
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendCameraNotAvailableEvent()V

    return-void
.end method

.method private notifyCoolingUltraLow(Z)V
    .registers 4

    .line 11073
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    if-eqz v0, :cond_7

    .line 11074
    invoke-interface {v0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->onNotifyCoolingUltraLow(Z)V

    .line 11077
    :cond_7
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setUltraLowPower()V

    .line 11078
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    if-eqz p1, :cond_28

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->isSetupHeadupDisplayInvoked()Z

    move-result p1

    if-eqz p1, :cond_28

    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    .line 11079
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isObjectTrackingRunning()Z

    move-result p1

    if-eqz p1, :cond_28

    .line 11080
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_FOCUS_POSITION_RELEASED_EXCEPT_FACE:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 11084
    :cond_28
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mObjectTracking:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->stop()V

    .line 11086
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mGestureShutter:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/GestureShutter;->handlePreviewStopped()V

    return-void
.end method

.method private varargs notifyDelayedEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)Lcom/sonyericsson/android/camera/controller/StateMachine$NotifyDelayedEventTask;
    .registers 5

    .line 2853
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$NotifyDelayedEventTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine$NotifyDelayedEventTask;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;Lcom/sonyericsson/android/camera/controller/StateMachine$NotifyDelayedEventTask-IA;)V

    .line 2854
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mHandler:Landroid/os/Handler;

    const-wide/16 p1, 0x64

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-object v0
.end method

.method private onOneShotStoreCompleted(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V
    .registers 3

    .line 10509
    iget-object v0, p1, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->savingRequest:Lcom/sonyericsson/cameracommon/storage/SavingRequest;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->getExtraOutput()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_c

    .line 10511
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->requestLoadStoredPicture(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V

    goto :goto_10

    :cond_c
    const/4 v0, 0x0

    .line 10514
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->finishOneShot(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;Landroid/graphics/Bitmap;)V

    :goto_10
    return-void
.end method

.method private onPredictiveCaptureStoreComplete(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V
    .registers 4

    .line 10880
    sget-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->BURST_STORE_COMPLETE:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/PerfLog;->transit()V

    .line 10881
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mPredictiveCaptureStoreInfo:Lcom/sonyericsson/cameracommon/contentsview/PredictiveCaptureStoreInfo;

    if-eqz v0, :cond_1e

    .line 10882
    iget-object v0, p1, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->savingRequest:Lcom/sonyericsson/cameracommon/storage/SavingRequest;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->getSaveTimeForPredictiveCapture()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mPredictiveCaptureStoreInfo:Lcom/sonyericsson/cameracommon/contentsview/PredictiveCaptureStoreInfo;

    .line 10883
    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/contentsview/PredictiveCaptureStoreInfo;->getCaptureTime()Ljava/lang/String;

    move-result-object v1

    .line 10882
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x0

    .line 10884
    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mPredictiveCaptureStoreInfo:Lcom/sonyericsson/cameracommon/contentsview/PredictiveCaptureStoreInfo;

    .line 10888
    :cond_1e
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonyericsson.android.camera.intent.action.PREDICTIVE_CAPTURE_SAVE_COMPLETED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 10890
    iget-object p1, p1, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->savingRequest:Lcom/sonyericsson/cameracommon/storage/SavingRequest;

    .line 10892
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->getFilePath()Ljava/lang/String;

    move-result-object p1

    .line 10891
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/storage/PredictiveCapturePathBuilder;->getPredictiveCaptureGroupIdPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 10890
    const-string v1, "com.sonyericsson.android.camera.extra.PREDICTIVE_CAPTURE_DIRECTORY_PATH"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 10893
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private onRecordingError(Ljava/lang/RuntimeException;)V
    .registers 5

    .line 9687
    const-string v0, "Start recording failed."

    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 9688
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    if-eqz p1, :cond_c

    .line 9689
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->enableClick()V

    .line 9692
    :cond_c
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isCurrentStorageExternal()Z

    move-result p1

    if-eqz p1, :cond_2e

    .line 9693
    sget-object p1, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->EXTERNAL_CARD:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isStorageWritable(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z

    move-result p1

    if-nez p1, :cond_2e

    .line 9694
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    sget-object v0, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->COULD_NOT_START_RECORDING:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-interface {p1, v0, v2}, Lcom/sonyericsson/android/camera/view/ViewFinder;->showMessageDialog(Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;[Ljava/lang/Object;)V

    .line 9695
    new-instance p1, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;

    invoke-direct {p1, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    new-array v0, v1, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    :cond_2e
    return-void
.end method

.method private pauseAudioPlaybackForRecord()V
    .registers 1

    .line 11096
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->pauseAudioPlayback()V

    return-void
.end method

.method private varargs pauseVideoRecording([Ljava/lang/Object;)V
    .registers 5

    const/4 v0, 0x0

    .line 11342
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->doStopRecording(Z)V

    .line 11343
    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePause;

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePause;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;ZLcom/sonyericsson/android/camera/controller/StateMachine$StatePause-IA;)V

    invoke-direct {p0, v1, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    return-void
.end method

.method public static final preload()V
    .registers 0

    return-void
.end method

.method private preparePositionConverter()V
    .registers 6

    .line 9085
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getPreviewRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 9086
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    .line 9088
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    .line 9089
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/CameraActivity;->getScreenAspect()Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    move-result-object v3

    .line 9086
    invoke-static {v1, v2, v3}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->getSurfaceViewRect(Landroid/content/Context;FLcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;)Landroid/graphics/Rect;

    move-result-object v1

    .line 9090
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getActiveArraySize(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Landroid/graphics/Rect;

    move-result-object v2

    .line 9092
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->getInstance()Lcom/sonyericsson/cameracommon/utility/PositionConverter;

    move-result-object v3

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 9093
    invoke-interface {p0, v4}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isFront()Z

    move-result p0

    .line 9092
    invoke-virtual {v3, p0, v1, v0, v2}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->init(ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 9095
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->getInstance()Lcom/sonyericsson/cameracommon/utility/PositionConverter;

    move-result-object p0

    .line 9096
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 9097
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 9095
    invoke-virtual {p0, v2, v1}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->setSurfaceSize(II)V

    .line 9098
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->getInstance()Lcom/sonyericsson/cameracommon/utility/PositionConverter;

    move-result-object p0

    .line 9099
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 9100
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 9098
    invoke-virtual {p0, v1, v0}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->setPreviewSize(II)V

    return-void
.end method

.method private prepareRecording(Z)V
    .registers 12

    .line 9574
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 9575
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v1, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    .line 9576
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_STABILIZER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 9577
    invoke-interface {v2, v3}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    .line 9578
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v2, v3}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    .line 9579
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v3

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne v3, v4, :cond_38

    .line 9580
    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->STANDARD_SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    if-ne v2, v3, :cond_38

    .line 9581
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->getVideoSize()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v0

    .line 9583
    :cond_38
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->createRecordingProfile()Lcom/sonyericsson/android/camera/recorder/RecordingProfile;

    move-result-object v7

    .line 9585
    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLastPhotoSavingRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    if-eqz v3, :cond_42

    if-nez p1, :cond_48

    .line 9586
    :cond_42
    invoke-direct {p0, p1, v7}, Lcom/sonyericsson/android/camera/controller/StateMachine;->createVideoSavingRequest(ZLcom/sonyericsson/android/camera/recorder/RecordingProfile;)Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLastVideoSavingRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

    .line 9591
    :cond_48
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/CameraActivity;->getOrientation()I

    move-result v3

    invoke-interface {p1, v3}, Lcom/sonyericsson/android/camera/view/ViewFinder;->setRecordingOrientation(I)V

    .line 9594
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLastVideoSavingRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

    const/4 v9, 0x0

    if-eqz p1, :cond_d8

    .line 9598
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object p1

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    const/4 v4, 0x1

    if-ne p1, v3, :cond_62

    goto :goto_67

    .line 9601
    :cond_62
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->MMS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    if-ne v0, p1, :cond_67

    goto :goto_6f

    .line 9604
    :cond_67
    :goto_67
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->isLimitForSizeOrDuration()Z

    move-result p1

    if-eqz p1, :cond_71

    :goto_6f
    move p1, v4

    goto :goto_72

    :cond_71
    move p1, v9

    :goto_72
    if-nez p1, :cond_81

    .line 9606
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 9607
    invoke-interface {v0, v3}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq v0, v3, :cond_81

    goto :goto_82

    :cond_81
    move v4, v9

    .line 9610
    :goto_82
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    sget-object v3, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_PREPARE_RECORDING_INDICATOR:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    iget-object v5, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLastVideoSavingRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

    iget-object v5, v5, Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;->mVideoStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;

    iget-wide v5, v5, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;->maxDurationMills:J

    long-to-int v5, v5

    .line 9612
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 9613
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 9614
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    filled-new-array {v5, p1, v4, v1}, [Ljava/lang/Object;

    move-result-object p1

    .line 9610
    invoke-interface {v0, v3, p1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 9621
    :try_start_a0
    sget-object p1, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SlowMotion:[I

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_c8

    const/4 v0, 0x3

    if-eq p1, v0, :cond_c8

    .line 9629
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    .line 9630
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentStorage()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v0

    const/16 v1, 0xa

    invoke-interface {p1, v0, v1}, Lcom/sonyericsson/cameracommon/storage/Storage;->createNotifier(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;I)Lcom/sonyericsson/cameracommon/storage/Storage$StorageWriteNotifier;

    move-result-object v8

    .line 9632
    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLastVideoSavingRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

    iget-object v5, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mOnSuperSlowRecordingFinishedListener:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/OnSuperSlowRecordingFinishedListener;

    .line 9635
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->shouldPlayShutterSound()Z

    move-result v6

    .line 9633
    invoke-virtual/range {v3 .. v8}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->prepareRecorder(Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;Lcom/sonyericsson/android/camera/recorder/superslowrecorder/OnSuperSlowRecordingFinishedListener;ZLcom/sonyericsson/android/camera/recorder/RecordingProfile;Lcom/sonyericsson/cameracommon/storage/Storage$StorageWriteNotifier;)V

    goto :goto_e3

    .line 9624
    :cond_c8
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLastVideoSavingRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

    .line 9625
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->shouldPlayShutterSound()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->updateRecorder(Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;Z)V
    :try_end_d3
    .catch Ljava/lang/RuntimeException; {:try_start_a0 .. :try_end_d3} :catch_d4

    goto :goto_e3

    :catch_d4
    move-exception p1

    .line 9642
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->onRecordingError(Ljava/lang/RuntimeException;)V

    .line 9648
    :cond_d8
    new-instance p1, Lcom/sonyericsson/android/camera/controller/StateMachine$StateWarning;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateWarning;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$StateWarning-IA;)V

    new-array v0, v9, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    :goto_e3
    return-void
.end method

.method private prepareZoom()V
    .registers 1

    return-void
.end method

.method private publishCameraStatus()V
    .registers 6

    .line 1938
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    .line 1939
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters()Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-eqz v0, :cond_1aa

    .line 1941
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 1942
    invoke-interface {v1, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 1943
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v1

    .line 1944
    new-instance v2, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-direct {v2, v3, v1}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V

    .line 1946
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isVideo()Z

    move-result v3

    invoke-virtual {v2, v0, v1, v3}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->putFromParameter(Lcom/sonyericsson/android/camera/device/CameraParameters;Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Z)Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;

    .line 1947
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 1948
    new-instance v0, Lcom/sonyericsson/cameracommon/status/eachcamera/PhotoLight;

    .line 1949
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->PHOTO_LIGHT:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v1, v3}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v1

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 1951
    sget-object v1, Lcom/sonyericsson/cameracommon/status/eachcamera/PhotoLight$Value;->ON:Lcom/sonyericsson/cameracommon/status/eachcamera/PhotoLight$Value;

    goto :goto_49

    .line 1953
    :cond_47
    sget-object v1, Lcom/sonyericsson/cameracommon/status/eachcamera/PhotoLight$Value;->OFF:Lcom/sonyericsson/cameracommon/status/eachcamera/PhotoLight$Value;

    :goto_49
    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/status/eachcamera/PhotoLight;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/PhotoLight$Value;)V

    .line 1948
    invoke-virtual {v2, v0}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    .line 1956
    :cond_4f
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne v0, v1, :cond_139

    .line 1957
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SlowMotion:[I

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getUserSetting()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v1

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v1, v3}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_cf

    const/4 v1, 0x2

    if-eq v0, v1, :cond_76

    const/4 v1, 0x3

    if-eq v0, v1, :cond_76

    goto/16 :goto_1aa

    .line 1980
    :cond_76
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 1981
    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 1982
    new-instance v1, Lcom/sonyericsson/cameracommon/status/eachcamera/VideoResolution;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/sonyericsson/cameracommon/status/eachcamera/VideoResolution;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v2, v1}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object v1

    new-instance v2, Lcom/sonyericsson/cameracommon/status/eachcamera/VideoRecordingFps;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    .line 1983
    invoke-static {v0, v3}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->getVideoFrameRate(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)I

    move-result v0

    invoke-direct {v2, v0}, Lcom/sonyericsson/cameracommon/status/eachcamera/VideoRecordingFps;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object v0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_STABILIZER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 1986
    invoke-interface {p0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    .line 1987
    invoke-interface {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getValue()Ljava/lang/String;

    move-result-object p0

    .line 1985
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/status/eachcamera/VideoStabilizerStatus;->fromCameraParameter(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/status/eachcamera/VideoStabilizerStatus;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object p0

    new-instance v0, Lcom/sonyericsson/cameracommon/status/eachcamera/SlowMotion;

    sget-object v1, Lcom/sonyericsson/cameracommon/status/eachcamera/SlowMotion$Value;->ON:Lcom/sonyericsson/cameracommon/status/eachcamera/SlowMotion$Value;

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/status/eachcamera/SlowMotion;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/SlowMotion$Value;)V

    .line 1988
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object p0

    new-instance v0, Lcom/sonyericsson/cameracommon/status/eachcamera/Hdr;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/BacklightCorrection;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/BacklightCorrection;

    .line 1993
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/status/eachcamera/Hdr;->fromCameraParameter(Lcom/sonyericsson/android/camera/configuration/parameters/BacklightCorrection;)Lcom/sonyericsson/cameracommon/status/eachcamera/Hdr$Value;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/status/eachcamera/Hdr;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/Hdr$Value;)V

    .line 1991
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object p0

    .line 1994
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->publish()V

    goto/16 :goto_1aa

    .line 1959
    :cond_cf
    new-instance v0, Lcom/sonyericsson/cameracommon/status/eachcamera/VideoResolution;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 1961
    invoke-interface {v1, v3}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    .line 1962
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->getVideoSize()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/status/eachcamera/VideoResolution;-><init>(Landroid/graphics/Rect;)V

    .line 1960
    invoke-virtual {v2, v0}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/cameracommon/status/eachcamera/VideoRecordingFps;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 1964
    invoke-interface {v2, v3}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    .line 1965
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->getVideoSize()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    .line 1963
    invoke-static {v2, v3}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->getVideoFrameRate(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)I

    move-result v2

    invoke-direct {v1, v2}, Lcom/sonyericsson/cameracommon/status/eachcamera/VideoRecordingFps;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object v0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_STABILIZER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 1968
    invoke-interface {p0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    .line 1969
    invoke-interface {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getValue()Ljava/lang/String;

    move-result-object p0

    .line 1967
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/status/eachcamera/VideoStabilizerStatus;->fromCameraParameter(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/status/eachcamera/VideoStabilizerStatus;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object p0

    new-instance v0, Lcom/sonyericsson/cameracommon/status/eachcamera/SlowMotion;

    sget-object v1, Lcom/sonyericsson/cameracommon/status/eachcamera/SlowMotion$Value;->OFF:Lcom/sonyericsson/cameracommon/status/eachcamera/SlowMotion$Value;

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/status/eachcamera/SlowMotion;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/SlowMotion$Value;)V

    .line 1970
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object p0

    new-instance v0, Lcom/sonyericsson/cameracommon/status/eachcamera/Hdr;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/BacklightCorrection;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/BacklightCorrection;

    .line 1975
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/status/eachcamera/Hdr;->fromCameraParameter(Lcom/sonyericsson/android/camera/configuration/parameters/BacklightCorrection;)Lcom/sonyericsson/cameracommon/status/eachcamera/Hdr$Value;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/status/eachcamera/Hdr;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/Hdr$Value;)V

    .line 1973
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object p0

    .line 1976
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->publish()V

    goto :goto_1aa

    .line 1998
    :cond_139
    new-instance v0, Lcom/sonyericsson/cameracommon/status/eachcamera/VideoResolution;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 1999
    invoke-interface {v1, v3}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/status/eachcamera/VideoResolution;-><init>(Landroid/graphics/Rect;)V

    .line 1998
    invoke-virtual {v2, v0}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/cameracommon/status/eachcamera/VideoRecordingFps;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 2001
    invoke-interface {v2, v3}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 2003
    invoke-interface {v3, v4}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    .line 2000
    invoke-static {v2, v3}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->getVideoFrameRate(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)I

    move-result v2

    invoke-direct {v1, v2}, Lcom/sonyericsson/cameracommon/status/eachcamera/VideoRecordingFps;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_STABILIZER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 2005
    invoke-interface {v1, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v1

    .line 2006
    invoke-interface {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 2004
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/status/eachcamera/VideoStabilizerStatus;->fromCameraParameter(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/status/eachcamera/VideoStabilizerStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/cameracommon/status/eachcamera/SlowMotion;

    sget-object v2, Lcom/sonyericsson/cameracommon/status/eachcamera/SlowMotion$Value;->OFF:Lcom/sonyericsson/cameracommon/status/eachcamera/SlowMotion$Value;

    invoke-direct {v1, v2}, Lcom/sonyericsson/cameracommon/status/eachcamera/SlowMotion;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/SlowMotion$Value;)V

    .line 2007
    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/cameracommon/status/eachcamera/Hdr;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_BRIGHTNESS:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 2012
    invoke-interface {p0, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/BacklightCorrection;

    invoke-static {p0}, Lcom/sonyericsson/cameracommon/status/eachcamera/Hdr;->fromCameraParameter(Lcom/sonyericsson/android/camera/configuration/parameters/BacklightCorrection;)Lcom/sonyericsson/cameracommon/status/eachcamera/Hdr$Value;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/sonyericsson/cameracommon/status/eachcamera/Hdr;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/Hdr$Value;)V

    .line 2010
    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object p0

    .line 2014
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->publish()V

    :cond_1aa
    :goto_1aa
    return-void
.end method

.method private removeChangeCameraModeTask()V
    .registers 2

    .line 10748
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mChangeCameraModeTask:Lcom/sonyericsson/android/camera/controller/StateMachine$ChangeCameraModeTask;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private removeDelayedEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$NotifyDelayedEventTask;)V
    .registers 2

    .line 2859
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private removeStartRecordingTask()V
    .registers 2

    .line 9893
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mStartRecordingTask:Lcom/sonyericsson/android/camera/controller/StateMachine$StartRecordingTask;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private requestChangeModeTo(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;)V
    .registers 4

    const/4 v0, 0x0

    .line 9796
    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->requestChangeModeTo(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;Z)V

    return-void
.end method

.method private requestChangeModeTo(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;Z)V
    .registers 9

    .line 9800
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    if-ne v0, p1, :cond_28

    .line 9801
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-nez p1, :cond_b

    return-void

    .line 9802
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "The specified mode is already set, mode:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9804
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9808
    :cond_28
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_8e

    :pswitch_33
    goto :goto_8d

    .line 9819
    :pswitch_34
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendResearchSameActivityEvent(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 9822
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 9823
    invoke-interface {v1, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLastSettings:Lcom/sonyericsson/android/camera/setting/LastSettings;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchCondition;

    .line 9824
    invoke-interface {v4}, Lcom/sonyericsson/android/camera/LaunchCondition;->isOneShot()Z

    move-result v4

    .line 9822
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->savePreloadSettings(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/setting/LastSettings;Z)V

    .line 9826
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isFusionMonitoringNeeded()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6a

    .line 9827
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->stopFusionMonitoring()V

    .line 9828
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    sget-object v2, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_UPDATE_FUSION_CONDITION:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    move-object v3, v1

    check-cast v3, Lcom/sonyericsson/android/camera/device/CameraParameters$FusionResult;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 9832
    :cond_6a
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isBokehMonitoringNeeded()Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 9833
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->stopBokehMonitoring()V

    .line 9834
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mPredictiveApplier:Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/Bokeh;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/Bokeh;

    invoke-static {v0, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;->-$$Nest$mleaveSuppressor(Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;Ljava/lang/Object;)V

    .line 9835
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    sget-object v2, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_UPDATE_BOKEH_CONDITION:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    move-object v3, v1

    check-cast v3, Lcom/sonyericsson/android/camera/device/CameraParameters$BokehResult;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 9840
    :cond_8a
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/controller/StateMachine;->changeModeTo(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;Z)V

    :goto_8d
    return-void

    :pswitch_data_8e
    .packed-switch 0x1
        :pswitch_34
        :pswitch_34
        :pswitch_34
        :pswitch_34
        :pswitch_34
        :pswitch_33
        :pswitch_34
        :pswitch_34
        :pswitch_34
        :pswitch_34
    .end packed-switch
.end method

.method private requestLoadStoredPicture(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V
    .registers 6

    .line 615
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_2c

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invoke uri:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", OneShot:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchCondition;

    .line 616
    invoke-interface {v1}, Lcom/sonyericsson/android/camera/LaunchCondition;->isOneShot()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 615
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 617
    :cond_2c
    sget-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->BYPASSCAMERA_ON_STORE_COMPLETE:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/PerfLog;->transit()V

    .line 619
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    iget-object v1, p1, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->uri:Landroid/net/Uri;

    iget-object v2, p1, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->savingRequest:Lcom/sonyericsson/cameracommon/storage/SavingRequest;

    iget-object v2, v2, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget v2, v2, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->orientation:I

    new-instance v3, Lcom/sonyericsson/android/camera/controller/StateMachine$7;

    invoke-direct {v3, p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$7;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/sonyericsson/cameracommon/storage/Storage;->requestLoad(Landroid/net/Uri;ILcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;)V

    return-void
.end method

.method private requestPhotoSmileCapture()V
    .registers 3

    .line 10337
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SMILE_CAPTURE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    .line 10338
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;->getIntValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->requestSmileCapture(I)V

    return-void
.end method

.method private requestResizeEvf(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)V
    .registers 7

    .line 2029
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->getCaptureState()Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_PAUSE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    if-ne v0, v1, :cond_d

    if-eqz p2, :cond_d

    return-void

    .line 2036
    :cond_d
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isVideo()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_67

    .line 2037
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne p1, v0, :cond_2b

    .line 2038
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, p1, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    .line 2039
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->getVideoSize()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoRect()Landroid/graphics/Rect;

    move-result-object p1

    goto :goto_46

    .line 2041
    :cond_2b
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, p1, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 2042
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 2043
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 2044
    invoke-interface {v2, p1, v3}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    move-object p1, v0

    .line 2046
    :goto_46
    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/PlatformDependencyResolver;->getVideoPreviewSize(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    .line 2047
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_RESIZE_EVF_SCOPE:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    new-instance v2, Landroid/graphics/Rect;

    .line 2048
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-direct {v2, v1, v1, v3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2049
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    filled-new-array {v2, p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 2047
    invoke-interface {p0, v0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    goto :goto_9d

    .line 2051
    :cond_67
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->RESOLUTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, p1, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 2052
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getPictureRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 2053
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {v2, p1, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getPreviewRect(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    if-eqz p1, :cond_9d

    .line 2055
    invoke-static {p1, v1}, Lcom/sonyericsson/android/camera/device/PlatformDependencyResolver;->getSurfaceSize(Landroid/graphics/Rect;Z)Landroid/util/Size;

    move-result-object p1

    .line 2056
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_RESIZE_EVF_SCOPE:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    new-instance v2, Landroid/graphics/Rect;

    .line 2057
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    invoke-direct {v2, v1, v1, v3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2058
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    filled-new-array {v2, p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 2056
    invoke-interface {p0, v0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    :cond_9d
    :goto_9d
    return-void
.end method

.method private requestSmileCapture(I)V
    .registers 6

    .line 10355
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    instance-of v0, v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;

    if-eqz v0, :cond_23

    .line 10356
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_22

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "requestSmileCapture abort by:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_22
    return-void

    .line 10361
    :cond_23
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLastSmileCaptureTakenTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_45

    .line 10365
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->getSelectedFaceSmileScore()I

    move-result v0

    if-ge p1, v0, :cond_45

    .line 10366
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mVirtualKeyEventDispatcher:Lcom/sonyericsson/android/camera/view/UserEventHandler$VirtualKeyEventDispatcher;

    sget-object v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$VirtualKeyEvent;->SMILE_CAPTURE:Lcom/sonyericsson/android/camera/view/UserEventHandler$VirtualKeyEvent;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$VirtualKeyEventDispatcher;->sendVirtualKeyEvent(Lcom/sonyericsson/android/camera/view/UserEventHandler$VirtualKeyEvent;)Z

    .line 10367
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLastSmileCaptureTakenTime:J

    :cond_45
    return-void
.end method

.method private declared-synchronized requestStorePicture(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)V
    .registers 4

    monitor-enter p0

    .line 10473
    :try_start_1
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isNeedRepairRequestId(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    if-eqz v0, :cond_15

    .line 10474
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->getRequestId(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->setRequestId(I)V

    .line 10478
    :cond_15
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$RequestStoreTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine$RequestStoreTask;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;Lcom/sonyericsson/android/camera/controller/StateMachine$RequestStoreTask-IA;)V

    .line 10480
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mExecService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_22

    .line 10481
    monitor-exit p0

    return-void

    :catchall_22
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized requestStoreVideo(Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;)V
    .registers 6

    monitor-enter p0

    if-nez p1, :cond_5

    .line 10484
    monitor-exit p0

    return-void

    .line 10486
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 10487
    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->stopAnimation(Z)V

    .line 10491
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    if-eqz v0, :cond_1a

    .line 10492
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->getRequestId(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;->setRequestId(I)V

    .line 10496
    :cond_1a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;->setDateTaken(J)V

    .line 10498
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/storage/RequestFactory;->createSavingRequest(Lcom/sonyericsson/cameracommon/storage/RequestFactory$RequestBuilder;)Lcom/sonyericsson/cameracommon/storage/SavingRequest;

    move-result-object p1

    .line 10501
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->getStorageType()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mOnStoreCompletedListener:Lcom/sonyericsson/cameracommon/storage/Storage$OnStoreCompletedListener;

    invoke-interface {v0, p1, v2, v3}, Lcom/sonyericsson/cameracommon/storage/Storage;->requestStore(Lcom/sonyericsson/cameracommon/storage/SavingRequest;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/Storage$OnStoreCompletedListener;)Z

    .line 10504
    sget-object p1, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_STORE_REQUESTED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V
    :try_end_37
    .catchall {:try_start_5 .. :try_end_37} :catchall_39

    .line 10505
    monitor-exit p0

    return-void

    :catchall_39
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private requestVideoSmileCapture()V
    .registers 3

    .line 10342
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SMILE_CAPTURE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;

    .line 10343
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;->getIntValue()I

    move-result v0

    .line 10342
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->requestSmileCapture(I)V

    return-void
.end method

.method private restartPreviewSessionBeforeBurst(Z)V
    .registers 4

    if-eqz p1, :cond_6

    const/4 p1, 0x1

    .line 11742
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->cancelAutoFocus(Z)V

    .line 11744
    :cond_6
    new-instance p1, Lcom/sonyericsson/android/camera/controller/StateMachine$21;

    invoke-direct {p1, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$21;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    .line 11752
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;->SESSION_TYPE_NORMAL:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;)V

    .line 11753
    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;->setPendingTask(Ljava/lang/Runnable;)Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 11752
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    return-void
.end method

.method private sendResearchCaptureEvents()V
    .registers 3

    .line 9548
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->sendEventSettings()V

    .line 9549
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->SETTINGS_PHOTO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->sendSemiAutoSettingValues(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)V

    .line 9550
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLastPhotoSavingRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mCommonStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget p0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->orientation:I

    invoke-virtual {v0, p0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setOrientation(I)V

    .line 9552
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p0

    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->SETTINGS_PHOTO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->sendSemiAutoSettingValues(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)V

    .line 9553
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setTimeCaptureStart()V

    return-void
.end method

.method private sendResearchSameActivityEvent(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V
    .registers 3

    .line 11061
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->clearAllSettings()V

    .line 11062
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->clearTemporarySettingValues()V

    .line 11063
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->onPause(Z)V

    .line 11064
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/LaunchTrigger;->SAME_ACTIVITY:Lcom/sonyericsson/android/camera/LaunchTrigger;

    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->sendView(Lcom/sonyericsson/android/camera/LaunchTrigger;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    return-void
.end method

.method private sendVideoChapterThumbnailToViewFinder()V
    .registers 4

    .line 6901
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mChapterThumbnail:Lcom/sonyericsson/android/camera/controller/ChapterThumbnail;

    if-eqz v0, :cond_29

    .line 6902
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->isHeadUpDisplayReady()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 6903
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLastVideoSavingRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

    if-eqz v0, :cond_19

    .line 6904
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mChapterThumbnail:Lcom/sonyericsson/android/camera/controller/ChapterThumbnail;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;->mCommonStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget v0, v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->orientation:I

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/controller/ChapterThumbnail;->setOrientation(I)V

    .line 6907
    :cond_19
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_ADD_VIDEO_CHAPTER:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mChapterThumbnail:Lcom/sonyericsson/android/camera/controller/ChapterThumbnail;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 6910
    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mChapterThumbnail:Lcom/sonyericsson/android/camera/controller/ChapterThumbnail;

    :cond_29
    return-void
.end method

.method private setCurrentCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V
    .registers 3

    .line 10977
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getUserSetting()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->changeCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 10978
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getUserSetting()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setSettingsValue(Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    return-void
.end method

.method private setFocusPosition(Landroid/graphics/Point;Landroid/graphics/RectF;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;)V
    .registers 7

    .line 9476
    iget-object p2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SMILE_CAPTURE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p2, v0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p2

    check-cast p2, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    .line 9477
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;->isSmileCaptureOn()Z

    move-result p2

    if-nez p2, :cond_92

    iget-object p2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SHUTTER_TRIGGER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 9478
    invoke-interface {p2, v0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p2

    check-cast p2, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;->isGestureShutterOn()Z

    move-result p2

    if-eqz p2, :cond_21

    goto :goto_92

    .line 9482
    :cond_21
    sget-object p2, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;->RELEASE:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;

    if-ne p3, p2, :cond_58

    .line 9483
    iget-object p2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    invoke-interface {p2, p1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->getPosition(Landroid/graphics/Point;)Landroid/graphics/Rect;

    move-result-object p2

    .line 9485
    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_32

    return-void

    .line 9489
    :cond_32
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FOCUS_RANGE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;->AF:Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;

    if-ne v0, v1, :cond_43

    .line 9495
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setFocusPositionAndCommit(Landroid/graphics/Rect;)V

    .line 9498
    :cond_43
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isTouchAeEnabled()Z

    move-result v0

    if-eqz v0, :cond_58

    .line 9499
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->METERING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 9500
    invoke-interface {v1, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/Metering;

    .line 9499
    invoke-virtual {v0, p2, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setMeteringAreaAndCommit(Landroid/graphics/Rect;Lcom/sonyericsson/android/camera/configuration/parameters/Metering;)V

    .line 9504
    :cond_58
    iget-object p2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FOCUS_RANGE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p2, v0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p2

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;->AF:Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;

    if-eq p2, v0, :cond_87

    iget-object p2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->TOUCH_INTENTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 9505
    invoke-interface {p2, v0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p2

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/TouchIntention;->FOCUS_AND_EXPOSURE:Lcom/sonyericsson/android/camera/configuration/parameters/TouchIntention;

    if-eq p2, v0, :cond_87

    .line 9507
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object p2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->TOUCH_CAPTURE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p1, p2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p1

    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;

    if-eq p1, p2, :cond_92

    .line 9509
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    sget-object p1, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_TOUCHFOCUS_REJECT:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-interface {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    goto :goto_92

    .line 9515
    :cond_87
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    sget-object p2, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_FOCUS_POSITION_SELECTED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    filled-new-array {p1, p3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p2, p1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    :cond_92
    :goto_92
    return-void
.end method

.method private setIsSceneRecognitionValid(Z)V
    .registers 2

    .line 11140
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mIsSceneRecognitionValid:Z

    return-void
.end method

.method private setSuppressFlash(Z)V
    .registers 2

    .line 364
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mSuppressFlash:Z

    return-void
.end method

.method private varargs setZoomKeyTag([Ljava/lang/Object;)V
    .registers 4

    .line 11761
    array-length v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_12

    .line 11762
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    aget-object p1, p1, v1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setZoomKeyTag(Z)V

    goto :goto_18

    .line 11764
    :cond_12
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setZoomKeyTag(Z)V

    :goto_18
    return-void
.end method

.method private shouldChangeLogicCamera(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Z
    .registers 3

    .line 9267
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_1a

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, " invoked capturingMode : "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method private shouldRestartSessionBeforeCapture()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method private showBlackScreen()V
    .registers 2

    const/4 v0, 0x0

    .line 8927
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->showBlackScreen(Z)V

    return-void
.end method

.method private showBlackScreen(Z)V
    .registers 3

    .line 8931
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mHideBlackScreen:Z

    .line 8932
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    sget-object p1, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_SHOW_BLACK_SCREEN:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method private showCannotBurstInDarkCondition(Z)V
    .registers 3

    if-eqz p1, :cond_f

    .line 11641
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    sget-object p1, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_BURST_REJECTED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;->CANNOT_BURST_IN_DARK_CONDITION:Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    :cond_f
    return-void
.end method

.method private varargs startAutoFocus([Ljava/lang/Object;)Z
    .registers 6

    .line 9422
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    if-eqz v0, :cond_c

    .line 9423
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isStorageReady()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 p0, 0x0

    return p0

    .line 9427
    :cond_c
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    const/4 v1, 0x1

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->shouldShowDisplayFlash()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 9428
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    invoke-interface {p1, v1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->setDisplayFlashRequired(Z)V

    .line 9429
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    const/16 v0, 0xc8

    const/16 v2, 0xaa

    const/16 v3, 0xd0

    invoke-interface {p1, v3, v0, v2}, Lcom/sonyericsson/android/camera/view/ViewFinder;->setDisplayFlashColor(III)V

    .line 9431
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->showDisplayFlashScreen()V

    .line 9432
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_3e

    .line 9433
    const-string p1, "StateMachine"

    const-string/jumbo v0, "to sure screenBrightness is max, so wait 700 ms to do autofoucs"

    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 9435
    :cond_3e
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$12;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$12;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    const-wide/16 v2, 0x2bc

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_50

    .line 9444
    :cond_4b
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->autoFocus([Ljava/lang/Object;)V

    :goto_50
    return v1
.end method

.method private startFastCapture(ZLcom/sonyericsson/android/camera/controller/StateMachine$StartupAction;)V
    .registers 5

    .line 8981
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isFront()Z

    move-result v0

    if-nez v0, :cond_21

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isNeedResetZoomStatus()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_21

    .line 8985
    :cond_11
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLastSettings:Lcom/sonyericsson/android/camera/setting/LastSettings;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/setting/LastSettings;->getLatestZoomRatio(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)F

    move-result v0

    .line 8986
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setZoom(F)V

    goto :goto_2c

    .line 8982
    :cond_21
    :goto_21
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLastSettings:Lcom/sonyericsson/android/camera/setting/LastSettings;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/setting/LastSettings;->clearZoomInfo()V

    .line 8983
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setZoom(F)V

    .line 8989
    :goto_2c
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->preparePositionConverter()V

    .line 8991
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->requestPostLazyInitializationTaskExecute()V

    .line 8994
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->awaitSetupAllReady()Z

    move-result v0

    if-nez v0, :cond_45

    .line 8996
    const-string v0, "Setup failed"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 8999
    :cond_45
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->isHeadUpDisplayReady()Z

    move-result v0

    if-eqz v0, :cond_63

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isTutorialNeededToBeShownForCurrentMode()Z

    move-result v0

    if-eqz v0, :cond_63

    .line 9000
    new-instance p1, Lcom/sonyericsson/android/camera/controller/StateMachine$StateOperationRestricted;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateOperationRestricted;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$StateOperationRestricted-IA;)V

    sget-object p2, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->TUTORIAL:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    goto :goto_83

    :cond_63
    if-eqz p1, :cond_66

    return-void

    .line 9005
    :cond_66
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isVideo()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_78

    .line 9006
    new-instance p1, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;

    invoke-direct {p1, p0, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$StartupAction;)V

    new-array p2, v0, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    goto :goto_83

    .line 9008
    :cond_78
    new-instance p1, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReady;

    const/4 v1, 0x1

    invoke-direct {p1, p0, v1, v1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReady;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;ZZLcom/sonyericsson/android/camera/controller/StateMachine$StartupAction;)V

    new-array p2, v0, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    :goto_83
    return-void
.end method

.method private startRecording()V
    .registers 6

    const/4 v0, 0x0

    .line 9656
    :try_start_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    if-eqz v1, :cond_8

    .line 9657
    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->disableClick()V

    .line 9659
    :cond_8
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mIsLaunchAndRecording:Z

    if-nez v1, :cond_19

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq v1, v2, :cond_19

    .line 9660
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->requestOnePreviewFrame()V

    .line 9662
    :cond_19
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->startRecording()V

    .line 9664
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isSettingChangeAcceptable()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 9665
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    sget-object v2, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_UPDATE_SETTING_CHANGE_ACCEPTABILITY:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 9667
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v0

    .line 9665
    invoke-interface {v1, v2, v3}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 9670
    :cond_34
    sget-object v1, Lcom/sonyericsson/android/camera/util/PerfLog;->ON_RECORDING_STARTED:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/util/PerfLog;->transit()V

    .line 9673
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLastVideoSavingRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->updateDateTaken(Lcom/sonyericsson/cameracommon/storage/RequestFactory$RequestBuilder;)V
    :try_end_3e
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_3e} :catch_42

    .line 9680
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->transitionToRecordingState(Z)V

    goto :goto_51

    :catch_42
    move-exception v1

    .line 9677
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->onRecordingError(Ljava/lang/RuntimeException;)V

    .line 9682
    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StateWarning;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateWarning;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$StateWarning-IA;)V

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0, v1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    :goto_51
    return-void
.end method

.method private stopPlaySound()V
    .registers 1

    .line 10251
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->stopPlayingSound()V

    return-void
.end method

.method private storePicture(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)V
    .registers 5

    .line 10374
    iget-object v0, p1, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mCommonStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->savedFileType:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    sget-object v1, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->PHOTO_BOKEN:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    if-ne v0, v1, :cond_36

    .line 10375
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->isUsingProcessingMediaAPI()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->isSmallJpegData()Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_23

    .line 10380
    :cond_15
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_36

    const-string v0, "No bokeh info when small image data callback"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_36

    .line 10376
    :cond_23
    :goto_23
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->getImageData()[B

    move-result-object v0

    iget-object v1, p1, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mCommonStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget v1, v1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->width:I

    iget-object v2, p1, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mCommonStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget v2, v2, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->height:I

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/android/camera/device/xmp/XMPController;->addXMPInfo([BII)[B

    move-result-object v0

    .line 10378
    invoke-virtual {p1, v0}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->setImageData([B)V

    .line 10384
    :cond_36
    :goto_36
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/storage/RequestFactory;->createSavingRequest(Lcom/sonyericsson/cameracommon/storage/RequestFactory$RequestBuilder;)Lcom/sonyericsson/cameracommon/storage/SavingRequest;

    move-result-object p1

    .line 10387
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mPredictiveApplier:Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;

    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;->-$$Nest$mentrySuppressor(Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;Ljava/lang/Object;)V

    .line 10389
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->getStorageType()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mOnStoreCompletedListener:Lcom/sonyericsson/cameracommon/storage/Storage$OnStoreCompletedListener;

    invoke-interface {v0, p1, v1, p0}, Lcom/sonyericsson/cameracommon/storage/Storage;->requestStore(Lcom/sonyericsson/cameracommon/storage/SavingRequest;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/Storage$OnStoreCompletedListener;)Z

    return-void
.end method

.method private storeSavingRequestList()V
    .registers 6

    .line 8937
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invoke mPhotoSavingRequestList.size():"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mPhotoSavingRequestList:Ljava/util/List;

    .line 8938
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 8937
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 8940
    :cond_20
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mPhotoSavingRequestList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_78

    .line 8942
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mPhotoSavingRequestList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_73

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    .line 8944
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/sonyericsson/android/camera/view/ViewFinder;->getRequestId(Z)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->setRequestId(I)V

    .line 8947
    sget-boolean v2, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v2, :cond_63

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "storePicture() requestId:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->getRequestId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 8948
    :cond_63
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/storage/RequestFactory;->createSavingRequest(Lcom/sonyericsson/cameracommon/storage/RequestFactory$RequestBuilder;)Lcom/sonyericsson/cameracommon/storage/SavingRequest;

    move-result-object v1

    .line 8949
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->getStorageType()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mOnStoreCompletedListener:Lcom/sonyericsson/cameracommon/storage/Storage$OnStoreCompletedListener;

    invoke-interface {v2, v1, v3, v4}, Lcom/sonyericsson/cameracommon/storage/Storage;->requestStore(Lcom/sonyericsson/cameracommon/storage/SavingRequest;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/Storage$OnStoreCompletedListener;)Z

    goto :goto_2e

    .line 8954
    :cond_73
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mPhotoSavingRequestList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_78
    return-void
.end method

.method private submitBackgroundTask(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V
    .registers 4

    .line 10589
    const-string v0, "StateMachine"

    const-string/jumbo v1, "submitBackgroundTask"

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/SwitchLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10590
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mExecService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$16;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$16;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private switchAngleValue()V
    .registers 1

    return-void
.end method

.method private switchCamera(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;)V
    .registers 8

    .line 9158
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invoke requestMode:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 9159
    :cond_1a
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendResearchSameActivityEvent(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 9162
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 9163
    invoke-interface {v1, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLastSettings:Lcom/sonyericsson/android/camera/setting/LastSettings;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchCondition;

    .line 9164
    invoke-interface {v4}, Lcom/sonyericsson/android/camera/LaunchCondition;->isOneShot()Z

    move-result v4

    .line 9162
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->savePreloadSettings(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/setting/LastSettings;Z)V

    .line 9169
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->releaseRecorder()V

    .line 9171
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isFusionMonitoringNeeded()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_59

    .line 9172
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->stopFusionMonitoring()V

    .line 9173
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    sget-object v2, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_UPDATE_FUSION_CONDITION:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    move-object v3, v1

    check-cast v3, Lcom/sonyericsson/android/camera/device/CameraParameters$FusionResult;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    :cond_59
    const/4 v0, 0x0

    .line 9177
    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->changeModeTo(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;Z)V

    .line 9178
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->requestResizeEvf(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)V

    .line 9180
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    new-instance v3, Lcom/sonyericsson/android/camera/controller/StateMachine$OnPreviewStartedListenerImpl;

    invoke-direct {v3, p0, v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine$OnPreviewStartedListenerImpl;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;ZLcom/sonyericsson/android/camera/controller/StateMachine$OnPreviewStartedListenerImpl-IA;)V

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setOnPreviewStartedListener(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnPreviewStartedListener;)V

    .line 9182
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    sget-object v2, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_CAPTURING_MODE_CHANGED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v0

    sget-object p1, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;->NONE:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;

    .line 9183
    invoke-virtual {p2, p1}, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v3, v0

    const/4 p1, 0x2

    aput-object p2, v3, p1

    .line 9182
    invoke-interface {v1, v2, v3}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 9184
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p1

    sget-object p2, Lcom/sonyericsson/android/camera/LaunchTrigger;->SAME_ACTIVITY:Lcom/sonyericsson/android/camera/LaunchTrigger;

    .line 9185
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object p0

    .line 9184
    invoke-virtual {p1, p2, p0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->sendView(Lcom/sonyericsson/android/camera/LaunchTrigger;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    return-void
.end method

.method private switchCamera(Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;)V
    .registers 5

    .line 9104
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_1e

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invoke current:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 9106
    :cond_1e
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    .line 9109
    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_44

    :pswitch_2d
    goto :goto_3f

    .line 9135
    :pswitch_2e
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    goto :goto_3f

    .line 9132
    :pswitch_31
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    goto :goto_3f

    .line 9120
    :pswitch_34
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    goto :goto_3f

    .line 9113
    :pswitch_37
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SUPERIOR_FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    goto :goto_3f

    .line 9124
    :pswitch_3a
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->NORMAL:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    goto :goto_3f

    .line 9116
    :pswitch_3d
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 9139
    :goto_3f
    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->switchCamera(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;)V

    return-void

    nop

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_3d
        :pswitch_3a
        :pswitch_37
        :pswitch_34
        :pswitch_31
        :pswitch_2d
        :pswitch_37
        :pswitch_2e
        :pswitch_31
        :pswitch_31
    .end packed-switch
.end method

.method private switchSceneRecognition(Z)V
    .registers 3

    .line 11144
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mIsSceneRecognitionValid:Z

    if-eqz v0, :cond_c

    if-eqz p1, :cond_c

    .line 11145
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->startSceneRecognition()V

    goto :goto_11

    .line 11147
    :cond_c
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->stopSceneRecognition()V

    :goto_11
    return-void
.end method

.method private switchVideoFaceDetection()V
    .registers 4

    .line 11152
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 11153
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v1, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    .line 11156
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyCheckUtil;->isFaceDetectionAvailable(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 11157
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->startFaceDetection()V

    goto :goto_29

    .line 11159
    :cond_24
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->stopFaceDetection()V

    :goto_29
    return-void
.end method

.method private transitionToRecordingState(Z)V
    .registers 5

    .line 9753
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    if-eqz p1, :cond_7

    .line 9754
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/CameraActivity;->disableAutoPowerOffTimer()V

    :cond_7
    const/4 p1, 0x0

    .line 9757
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mChapterThumbnail:Lcom/sonyericsson/android/camera/controller/ChapterThumbnail;

    .line 9762
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    if-eqz v0, :cond_77

    .line 9763
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-eq v0, v1, :cond_32

    const/16 p1, 0x8

    if-eq v0, p1, :cond_27

    const/16 p1, 0xa

    if-eq v0, p1, :cond_27

    goto :goto_77

    .line 9788
    :cond_27
    new-instance p1, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;

    invoke-direct {p1, p0, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    new-array v0, v2, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    goto :goto_77

    .line 9765
    :cond_32
    iput v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mHighFrameRateVideoRecordingCountInSuperSlowMotion:I

    .line 9766
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getUserSetting()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    .line 9768
    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SlowMotion:[I

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6d

    const/4 p1, 0x2

    if-eq v0, p1, :cond_62

    const/4 p1, 0x3

    if-eq v0, p1, :cond_52

    goto :goto_77

    .line 9779
    :cond_52
    new-instance p1, Lcom/sonyericsson/android/camera/controller/StateMachine$StateHighFrameRateVideoRecordingInSuperSlowMotion;

    invoke-direct {p1, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateHighFrameRateVideoRecordingInSuperSlowMotion;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    new-array v0, v2, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    .line 9780
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->startSlowMotionFeedbackAnimation()V

    goto :goto_77

    .line 9770
    :cond_62
    new-instance p1, Lcom/sonyericsson/android/camera/controller/StateMachine$StateLowFrameRateVideoRecordingInSuperSlowMotion;

    invoke-direct {p1, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateLowFrameRateVideoRecordingInSuperSlowMotion;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    new-array v0, v2, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    goto :goto_77

    .line 9775
    :cond_6d
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording-IA;)V

    new-array p1, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    :cond_77
    :goto_77
    return-void
.end method

.method private updateAmberBlueColor(F)V
    .registers 5

    const/4 v0, -0x7

    int-to-float v0, v0

    const/16 v1, 0xe

    int-to-float v1, v1

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    float-to-double v0, v0

    .line 11018
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 11020
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_31

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invoke color-changed slider:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", min:-7, max:7, value:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 11025
    :cond_31
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setAmberBlueColorAndCommit(I)V

    .line 11027
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setSemiAutoSettingAmberBlueValue(I)V

    return-void
.end method

.method private updateBokehStrength(F)V
    .registers 5

    .line 11048
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->BOKEH:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v2, p1

    float-to-int v2, v2

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->setInt(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;I)V

    .line 11049
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setBokehStrengthAndCommit(F)V

    return-void
.end method

.method private updateBrightness(F)V
    .registers 7

    .line 11032
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v0

    .line 11031
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getCameraCapability(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object v0

    .line 11033
    iget-object v1, v0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->EV_MIN:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 11034
    iget-object v0, v0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->EV_MAX:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v2, v1

    sub-int v3, v0, v1

    int-to-float v3, v3

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    float-to-double v2, v2

    .line 11035
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 11037
    sget-boolean v3, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v3, :cond_64

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "invoke brightness-changed slider:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, ", min:"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", max:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", value:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 11042
    :cond_64
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setBrightnessAndCommit(I)V

    .line 11044
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setSemiAutoSettingBrightnessValue(I)V

    return-void
.end method

.method private updateDateTaken(Lcom/sonyericsson/cameracommon/storage/RequestFactory$RequestBuilder;)V
    .registers 4

    if-eqz p1, :cond_9

    .line 10199
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$RequestBuilder;->setDateTaken(J)V

    :cond_9
    return-void
.end method

.method private updateFusionModeSetting(Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;)V
    .registers 6

    .line 9863
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FUSION_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;

    if-ne p1, v0, :cond_d

    return-void

    .line 9869
    :cond_d
    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_32

    const/16 v2, 0xa

    if-eq v1, v2, :cond_21

    goto :goto_60

    .line 9881
    :cond_21
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    invoke-interface {v1, p1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 9882
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v1

    .line 9883
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object p0

    .line 9882
    invoke-virtual {v1, v0, p1, p0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setSettingsValue(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    goto :goto_60

    .line 9871
    :cond_32
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ISO:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v1, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    .line 9872
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    invoke-interface {v2, p1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 9873
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ISO:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v2, v3}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v2

    if-eq v1, v2, :cond_55

    .line 9874
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    sget-object v2, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_ISO_CHANGED_BY_FUSION:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 9875
    invoke-interface {v1, v2, v3}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 9877
    :cond_55
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v1

    .line 9878
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object p0

    .line 9877
    invoke-virtual {v1, v0, p1, p0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setSettingsValue(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    :goto_60
    return-void
.end method

.method private updatePhotoSelftimer(Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;)V
    .registers 4

    .line 11133
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    if-eqz v0, :cond_11

    .line 11134
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 11135
    invoke-interface {p0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 11134
    invoke-interface {v0, p0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->setSelfTimer(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;)V

    :cond_11
    return-void
.end method

.method private updateRecordingProgress(I)V
    .registers 3

    .line 9912
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    if-eqz v0, :cond_21

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->isSetupHeadupDisplayInvoked()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_21

    .line 9917
    :cond_b
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    if-eqz v0, :cond_12

    .line 9918
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->disableAutoPowerOffTimer()V

    .line 9922
    :cond_12
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_RECORDING_PROGRESS:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    .line 9924
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 9922
    invoke-interface {p0, v0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    :cond_21
    :goto_21
    return-void
.end method


# virtual methods
.method public addOnStateChangedListener(Lcom/sonyericsson/android/camera/controller/StateMachine$OnStateChangedListener;)V
    .registers 2

    .line 1042
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mOnStateChangedListenerSet:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public canApplicationBeFinished()Z
    .registers 2

    .line 10948
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    monitor-enter v0

    .line 10949
    :try_start_3
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->getCaptureState()Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->-$$Nest$mcanApplicationBeFinished(Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;)Z

    move-result p0

    .line 10950
    monitor-exit v0

    return p0

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public canHandleAsynchronizedTask()Z
    .registers 1

    .line 9889
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->mCaptureState:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->-$$Nest$mcanHandleAsynchronizedTask(Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;)Z

    move-result p0

    return p0
.end method

.method public createPhotoSavingRequest(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;)Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;
    .registers 10

    .line 10107
    sget-object v0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->BURST:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    if-eq p1, v0, :cond_22

    sget-object v0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->PHOTO:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    if-eq p1, v0, :cond_22

    sget-object v0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->PHOTO_DURING_REC:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    if-ne p1, v0, :cond_d

    goto :goto_22

    .line 10110
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected type:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10113
    :cond_22
    :goto_22
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isBokehOn()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 10114
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_37

    const-string p1, "Update saving request: set saved file type as boken"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 10115
    :cond_37
    sget-object p1, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->PHOTO_BOKEN:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    .line 10118
    :cond_39
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->RESOLUTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 10120
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isFront()Z

    move-result v1

    if-eqz v1, :cond_50

    .line 10121
    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto$Facing;->FRONT:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto$Facing;

    goto :goto_52

    .line 10123
    :cond_50
    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto$Facing;->BACK:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto$Facing;

    :goto_52
    move-object v6, v1

    .line 10126
    new-instance v7, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    .line 10129
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getPictureRect()Landroid/graphics/Rect;

    move-result-object v2

    const-string v4, ".JPG"

    const/4 v5, 0x0

    .line 10127
    const-string v3, "image/jpeg"

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/camera/controller/StateMachine;->createTakenStatusCommon(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;Landroid/graphics/Rect;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;

    invoke-direct {v1, v6}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto$Facing;)V

    const/4 v2, 0x0

    invoke-direct {v7, v0, v1, v2}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;Z)V

    .line 10136
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mOnStoreCompletedListener:Lcom/sonyericsson/cameracommon/storage/Storage$OnStoreCompletedListener;

    invoke-virtual {v7, v0}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->addCallback(Lcom/sonyericsson/cameracommon/storage/Storage$OnStoreCompletedListener;)V

    .line 10137
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchCondition;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/LaunchCondition;->isOneShotPhoto()Z

    move-result v0

    invoke-virtual {v7, v0}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->setOneShot(Z)V

    .line 10139
    sget-object v0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->BURST:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    if-ne p1, v0, :cond_85

    .line 10140
    sget-object p1, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->INTERNAL:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    invoke-virtual {v7, p1}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->setStorageType(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)V

    goto :goto_8c

    .line 10142
    :cond_85
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentStorage()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object p1

    invoke-virtual {v7, p1}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->setStorageType(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)V

    .line 10144
    :goto_8c
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchCondition;

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/LaunchCondition;->getExtraOutput()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v7, p0}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->setExtraOutput(Landroid/net/Uri;)V

    return-object v7
.end method

.method public getCurrentCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;
    .registers 2

    .line 10923
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCameraId(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized getCurrentCaptureState()Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 11012
    :try_start_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->getCaptureState()Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    .registers 3

    .line 10915
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getUserSetting()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    if-nez v0, :cond_13

    .line 10916
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchCondition;

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/LaunchCondition;->getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object p0

    return-object p0

    .line 10918
    :cond_13
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getUserSetting()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p0, v0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    return-object p0
.end method

.method public getCurrentSessionType()Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;
    .registers 1

    .line 11757
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentSessionType:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    return-object p0
.end method

.method public getFrontAngleValue()Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;
    .registers 2

    .line 9150
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    if-eqz p0, :cond_d

    .line 9151
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FRONT_ANGLE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p0, v0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;

    return-object p0

    .line 9153
    :cond_d
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;->WIDE:Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;

    return-object p0
.end method

.method public getLaunchCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    .registers 1

    .line 11177
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchCondition;

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/LaunchCondition;->getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object p0

    return-object p0
.end method

.method public getPredictiveCaptureStoreInfo()Lcom/sonyericsson/cameracommon/contentsview/PredictiveCaptureStoreInfo;
    .registers 1

    .line 11315
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mPredictiveCaptureStoreInfo:Lcom/sonyericsson/cameracommon/contentsview/PredictiveCaptureStoreInfo;

    return-object p0
.end method

.method public getPreviewRect()Landroid/graphics/Rect;
    .registers 4

    .line 10812
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 10814
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 10815
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v1, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 10816
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoRect()Landroid/graphics/Rect;

    move-result-object v1

    goto :goto_2d

    .line 10818
    :cond_1f
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->RESOLUTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v1, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 10819
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getPictureRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 10821
    :goto_2d
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object v2

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    .line 10823
    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getPreviewRect(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p0

    .line 10822
    invoke-virtual {v2, p0}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getRectAccordingToLayoutOrientation(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getUserSetting()Lcom/sonyericsson/android/camera/setting/UserSettings;
    .registers 1

    .line 1031
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    return-object p0
.end method

.method public getVirtualKeyEventDispatcher()Lcom/sonyericsson/android/camera/view/UserEventHandler$VirtualKeyEventDispatcher;
    .registers 1

    .line 11684
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mVirtualKeyEventDispatcher:Lcom/sonyericsson/android/camera/view/UserEventHandler$VirtualKeyEventDispatcher;

    return-object p0
.end method

.method public getZoom()Ljava/lang/Float;
    .registers 1

    .line 1035
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getZoom()Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public getZoomDialZoomValue()F
    .registers 1

    .line 411
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->getZoomValue()F

    move-result p0

    return p0
.end method

.method public getZoomStep()I
    .registers 1

    .line 415
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->getZoomStep()I

    move-result p0

    return p0
.end method

.method public hideDisplayFlashScreen()V
    .registers 3

    .line 402
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$4;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$4;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public declared-synchronized isAngleEventReceivable()Z
    .registers 3

    monitor-enter p0

    .line 11665
    :try_start_1
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->getCaptureState()Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v1

    aget v0, v0, v1
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_18

    packed-switch v0, :pswitch_data_1c

    .line 11676
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    .line 11673
    :pswitch_15
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0

    nop

    :pswitch_data_1c
    .packed-switch 0x2
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
    .end packed-switch
.end method

.method public isCaptureAcceptable()Z
    .registers 4

    .line 9522
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isBGProcessingRestricted()Z

    move-result v0

    .line 9523
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isFinishBurstDone()Z

    move-result p0

    .line 9524
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isBGProcessingRestricted:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isFinishBurstDone:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    if-nez v0, :cond_32

    if-eqz p0, :cond_32

    const/4 p0, 0x1

    goto :goto_33

    :cond_32
    const/4 p0, 0x0

    :goto_33
    return p0
.end method

.method public isCurrentStorageWritable()Z
    .registers 2

    .line 11469
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentStorage()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isStorageWritable(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z

    move-result p0

    return p0
.end method

.method public declared-synchronized isDialogOpened()Z
    .registers 3

    monitor-enter p0

    .line 839
    :try_start_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->getCaptureState()Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_OPERATION_RESTRICTED:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_10

    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    monitor-exit p0

    return v0

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isInFocusStatus()Z
    .registers 3

    .line 9853
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->getCaptureState()Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_BURST_CAPTURE_WAIT_FOR_AF_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    if-eq v0, v1, :cond_2b

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    .line 9854
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->getCaptureState()Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_PHOTO_AF_SEARCH:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    if-eq v0, v1, :cond_2b

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    .line 9855
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->getCaptureState()Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_PHOTO_AF_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    if-eq v0, v1, :cond_2b

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    .line 9856
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->getCaptureState()Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_PHOTO_CAPTURE_WAIT_FOR_AF_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    if-ne p0, v0, :cond_29

    goto :goto_2b

    :cond_29
    const/4 p0, 0x0

    return p0

    :cond_2b
    :goto_2b
    const/4 p0, 0x1

    return p0
.end method

.method public isMenuAvailable()Z
    .registers 1

    .line 10960
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->getCaptureState()Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->-$$Nest$misMenuAvailable(Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;)Z

    move-result p0

    return p0
.end method

.method public isNeedResetZoomStatus()Z
    .registers 7

    .line 9030
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getStoredSettings()Lcom/sonyericsson/android/camera/setting/StoredSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getLastSettings()Lcom/sonyericsson/android/camera/setting/LastSettings;

    move-result-object v0

    .line 9031
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getUserSetting()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 9032
    invoke-interface {v1, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 9033
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    const/4 v4, 0x0

    if-ne v2, v3, :cond_28

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/setting/LastSettings;->getLatestVideoSize()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->HD_120FPS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    if-ne v2, v3, :cond_28

    return v4

    .line 9039
    :cond_28
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    const/4 v5, 0x1

    if-eq v2, v3, :cond_3a

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/setting/LastSettings;->getLatestVideoSize()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->HD_120FPS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    if-ne v2, v3, :cond_3a

    return v5

    .line 9043
    :cond_3a
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isVideo()Z

    move-result v2

    if-nez v2, :cond_45

    return v4

    .line 9047
    :cond_45
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/setting/LastSettings;->getLatestVideoSize()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v2

    .line 9048
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/setting/LastSettings;->getLatestZoomRatio(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)F

    move-result p0

    if-nez v2, :cond_54

    return v5

    .line 9053
    :cond_54
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$VideoSize:[I

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_72

    .line 9064
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$VideoSize:[I

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_84

    goto :goto_71

    :pswitch_6b
    const/4 v0, 0x0

    cmpg-float p0, p0, v0

    if-gtz p0, :cond_71

    move v4, v5

    :cond_71
    :goto_71
    :pswitch_71
    return v4

    :pswitch_data_72
    .packed-switch 0x1
        :pswitch_71
        :pswitch_71
        :pswitch_71
        :pswitch_71
        :pswitch_71
        :pswitch_71
        :pswitch_71
    .end packed-switch

    :pswitch_data_84
    .packed-switch 0x1
        :pswitch_6b
        :pswitch_6b
        :pswitch_6b
        :pswitch_6b
        :pswitch_6b
        :pswitch_6b
        :pswitch_6b
    .end packed-switch
.end method

.method public isRecording()Z
    .registers 1

    .line 10969
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    if-eqz p0, :cond_d

    .line 10970
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->getCaptureState()Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->-$$Nest$misRecording(Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;)Z

    move-result p0

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public isRestartPreviewSessionState()Z
    .registers 3

    .line 3387
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    const/4 v0, 0x0

    if-eqz p0, :cond_e

    .line 3388
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->getCaptureState()Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    move-result-object p0

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_RESTART_PREVIEW_SESSION:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    if-ne p0, v1, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0
.end method

.method public isScreenRecording()Z
    .registers 1

    .line 11782
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isScreenRecording()Z

    move-result p0

    return p0
.end method

.method public isSettingChangeAcceptable()Z
    .registers 2

    .line 11652
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isLazyInitializationRunning()Z

    move-result v0

    if-nez v0, :cond_f

    .line 11653
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isAllSnapshotCompleted()Z

    move-result p0

    if-nez p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x1

    return p0

    :cond_f
    :goto_f
    const/4 p0, 0x0

    return p0
.end method

.method public isSuperNightMode()Z
    .registers 4

    .line 11769
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isSuperiorAuto()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    .line 11770
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isBokehOn()Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_2e

    .line 11773
    :cond_14
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->NIGHT:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/NightMode;

    .line 11774
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/NightMode;->AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/NightMode;

    if-ne v0, v2, :cond_29

    .line 11775
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isAutoNightDetected()Z

    move-result p0

    return p0

    .line 11777
    :cond_29
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/NightMode;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/NightMode;

    if-ne v0, p0, :cond_2e

    const/4 v1, 0x1

    :cond_2e
    :goto_2e
    return v1
.end method

.method public isSuppressFlash()Z
    .registers 1

    .line 360
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mSuppressFlash:Z

    return p0
.end method

.method public isThermalWarningState()Z
    .registers 1

    .line 11334
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isThermalWarningState()Z

    move-result p0

    :goto_a
    return p0
.end method

.method public isTutorialNeededToBeShownForCurrentMode()Z
    .registers 8

    .line 11511
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchCondition;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/LaunchCondition;->isOneShot()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    .line 11514
    :cond_a
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getStoredSettings()Lcom/sonyericsson/android/camera/setting/StoredSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getMessageSettings()Lcom/sonyericsson/android/camera/setting/MessageSettings;

    move-result-object v0

    .line 11515
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v2

    .line 11517
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isFront()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_40

    .line 11518
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isVideo()Z

    move-result p0

    if-eqz p0, :cond_38

    .line 11519
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isEyeDetectionSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result p0

    if-eqz p0, :cond_37

    .line 11520
    sget-object p0, Lcom/sonyericsson/android/camera/setting/MessageType;->TUTORIAL_EYE_GUIDE:Lcom/sonyericsson/android/camera/setting/MessageType;

    invoke-interface {v0, p0}, Lcom/sonyericsson/android/camera/setting/MessageSettings;->isNeverShow(Lcom/sonyericsson/android/camera/setting/MessageType;)Z

    move-result p0

    xor-int/2addr p0, v4

    return p0

    :cond_37
    return v1

    .line 11525
    :cond_38
    sget-object p0, Lcom/sonyericsson/android/camera/setting/MessageType;->TUTORIAL_HAND_SHUTTER:Lcom/sonyericsson/android/camera/setting/MessageType;

    invoke-interface {v0, p0}, Lcom/sonyericsson/android/camera/setting/MessageSettings;->isNeverShow(Lcom/sonyericsson/android/camera/setting/MessageType;)Z

    move-result p0

    xor-int/2addr p0, v4

    return p0

    .line 11528
    :cond_40
    sget-object v3, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SlowMotion:[I

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getUserSetting()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v5

    sget-object v6, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v5, v6}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v5

    check-cast v5, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->ordinal()I

    move-result v5

    aget v3, v3, v5

    if-eq v3, v4, :cond_a3

    const/4 v5, 0x2

    if-eq v3, v5, :cond_9b

    const/4 v5, 0x3

    if-eq v3, v5, :cond_93

    .line 11539
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isVideo()Z

    move-result v3

    if-eqz v3, :cond_7c

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchCondition;

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/LaunchCondition;->isOneShotVideo()Z

    move-result p0

    if-nez p0, :cond_7c

    .line 11540
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isHighSensitivityFusionSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result p0

    if-eqz p0, :cond_7c

    .line 11541
    sget-object p0, Lcom/sonyericsson/android/camera/setting/MessageType;->TUTORIAL_VIDEO_FUSION:Lcom/sonyericsson/android/camera/setting/MessageType;

    invoke-interface {v0, p0}, Lcom/sonyericsson/android/camera/setting/MessageSettings;->isNeverShow(Lcom/sonyericsson/android/camera/setting/MessageType;)Z

    move-result p0

    xor-int/2addr p0, v4

    return p0

    .line 11544
    :cond_7c
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->WIDE_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne v2, p0, :cond_92

    .line 11545
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isDistortionCorrectionSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result p0

    if-eqz p0, :cond_92

    .line 11546
    sget-object p0, Lcom/sonyericsson/android/camera/setting/MessageType;->FEATURE_LENS_CORRECTION:Lcom/sonyericsson/android/camera/setting/MessageType;

    invoke-interface {v0, p0}, Lcom/sonyericsson/android/camera/setting/MessageSettings;->isNeverShow(Lcom/sonyericsson/android/camera/setting/MessageType;)Z

    move-result p0

    xor-int/2addr p0, v4

    return p0

    :cond_92
    return v1

    .line 11533
    :cond_93
    sget-object p0, Lcom/sonyericsson/android/camera/setting/MessageType;->TUTORIAL_SUPER_SLOW_MOTION_SHOT:Lcom/sonyericsson/android/camera/setting/MessageType;

    invoke-interface {v0, p0}, Lcom/sonyericsson/android/camera/setting/MessageSettings;->isNeverShow(Lcom/sonyericsson/android/camera/setting/MessageType;)Z

    move-result p0

    xor-int/2addr p0, v4

    return p0

    .line 11530
    :cond_9b
    sget-object p0, Lcom/sonyericsson/android/camera/setting/MessageType;->TUTORIAL_SUPER_SLOW_MOTION:Lcom/sonyericsson/android/camera/setting/MessageType;

    invoke-interface {v0, p0}, Lcom/sonyericsson/android/camera/setting/MessageSettings;->isNeverShow(Lcom/sonyericsson/android/camera/setting/MessageType;)Z

    move-result p0

    xor-int/2addr p0, v4

    return p0

    .line 11536
    :cond_a3
    sget-object p0, Lcom/sonyericsson/android/camera/setting/MessageType;->TUTORIAL_STANDARD_SLOW_MOTION:Lcom/sonyericsson/android/camera/setting/MessageType;

    invoke-interface {v0, p0}, Lcom/sonyericsson/android/camera/setting/MessageSettings;->isNeverShow(Lcom/sonyericsson/android/camera/setting/MessageType;)Z

    move-result p0

    xor-int/2addr p0, v4

    return p0
.end method

.method public isVideoRecording()Z
    .registers 1

    .line 9849
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mIsVideoRecording:Z

    return p0
.end method

.method public isVideoSizeOrResolutionChanged()Z
    .registers 6

    .line 9014
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getStoredSettings()Lcom/sonyericsson/android/camera/setting/StoredSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getLastSettings()Lcom/sonyericsson/android/camera/setting/LastSettings;

    move-result-object v0

    .line 9015
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getUserSetting()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 9016
    invoke-interface {v1, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 9017
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    const/4 v4, 0x0

    if-ne v2, v3, :cond_28

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/setting/LastSettings;->getLatestVideoSize()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->HD_120FPS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    if-ne v2, v3, :cond_28

    return v4

    .line 9021
    :cond_28
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getUserSetting()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->RESOLUTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v2, v3}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 9022
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isVideo()Z

    move-result v3

    if-eqz v3, :cond_44

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/setting/LastSettings;->getLatestVideoSize()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v3

    if-ne v1, v3, :cond_54

    .line 9023
    :cond_44
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isMainPhoto()Z

    move-result p0

    if-eqz p0, :cond_56

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/setting/LastSettings;->getLatestPhotoSize()Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    move-result-object p0

    if-eq v2, p0, :cond_56

    :cond_54
    const/4 p0, 0x1

    return p0

    :cond_56
    return v4
.end method

.method public needChangeCameraId(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Z
    .registers 7

    .line 9243
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v0

    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_73

    .line 9245
    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isFront()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_72

    .line 9246
    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isVideo()Z

    move-result p3

    if-eqz p3, :cond_47

    .line 9247
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object p1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p0, p1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 9248
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_3c

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Target video size is :"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 9250
    :cond_3c
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->is4KVideo()Z

    move-result p1

    if-nez p1, :cond_73

    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FULL_HD_60FPS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    if-ne p0, p1, :cond_72

    goto :goto_73

    .line 9255
    :cond_47
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isVideo()Z

    move-result p0

    if-eqz p0, :cond_72

    .line 9256
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->is4KVideo()Z

    move-result p0

    if-nez p0, :cond_57

    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FULL_HD_60FPS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    if-ne p2, p0, :cond_72

    .line 9258
    :cond_57
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_73

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Previous video size is :"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_73

    :cond_72
    move v2, v1

    :cond_73
    :goto_73
    return v2
.end method

.method public notifySceneRecognitionDisabled()V
    .registers 4

    .line 11164
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraParameters$SceneRecognitionResult;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters$SceneRecognitionResult;-><init>()V

    const/4 v1, 0x0

    .line 11165
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->getSceneMode(I)Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    move-result-object v2

    iput-object v2, v0, Lcom/sonyericsson/android/camera/device/CameraParameters$SceneRecognitionResult;->sceneMode:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    .line 11168
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;->getCondition(I)Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;

    move-result-object v2

    iput-object v2, v0, Lcom/sonyericsson/android/camera/device/CameraParameters$SceneRecognitionResult;->deviceStabilityCondition:Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;

    .line 11170
    iput-boolean v1, v0, Lcom/sonyericsson/android/camera/device/CameraParameters$SceneRecognitionResult;->isMacroRange:Z

    .line 11171
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_DETECTED_SCENE_CHANGED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v1, v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method public onAutoFlashResultChanged(Z)V
    .registers 3

    .line 10533
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "invoke"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 10534
    :cond_d
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_AUTO_FLASH_CHANGED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendStaticEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method public onAutoFocusDone(Z)V
    .registers 4

    .line 10222
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_AUTO_FOCUS_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 10223
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isHighQualityBurstAvailable()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object p1

    .line 10222
    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 10224
    sget-object p0, Lcom/sonyericsson/android/camera/util/PerfLog;->AUTO_FOCUS_DONE:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/PerfLog;->transit()V

    return-void
.end method

.method public onAutoFocusDone(ZZZIII)V
    .registers 9

    .line 10237
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_2e

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invoke isHighQualityBurstAvailable:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isAfSuccessed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", requireDisplayFlash:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 10240
    :cond_2e
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    if-eqz v0, :cond_3a

    .line 10241
    invoke-interface {v0, p3}, Lcom/sonyericsson/android/camera/view/ViewFinder;->setDisplayFlashRequired(Z)V

    .line 10242
    iget-object p3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    invoke-interface {p3, p4, p5, p6}, Lcom/sonyericsson/android/camera/view/ViewFinder;->setDisplayFlashColor(III)V

    .line 10244
    :cond_3a
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p3

    invoke-virtual {p3}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setTimeAfDone()V

    .line 10245
    sget-object p3, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_AUTO_FOCUS_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    .line 10246
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 10245
    invoke-virtual {p0, p3, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 10247
    sget-object p0, Lcom/sonyericsson/android/camera/util/PerfLog;->AUTO_FOCUS_DONE:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/PerfLog;->transit()V

    return-void
.end method

.method public onAutoHdrResultChanged(Z)V
    .registers 3

    .line 10538
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "invoke"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 10539
    :cond_d
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_AUTO_HDR_CHANGED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendStaticEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method public onAutoNightResultChanged(Z)V
    .registers 3

    .line 10543
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "invoke"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 10544
    :cond_d
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_AUTO_NIGHT_CHANGED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendStaticEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method public onCaptureRequested(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;Z)V
    .registers 5

    .line 379
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$2;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;Z)V

    const-wide/16 p0, 0x5a

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onCropRegionReady()V
    .registers 3

    .line 10672
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "invoke"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 10673
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$17;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$17;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDeviceError(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;)V
    .registers 3

    .line 10726
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_d

    const-string p1, "invoke"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 10730
    :cond_d
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const-string v0, "power"

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    const/4 v0, 0x1

    .line 10731
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->setDeviceError(Z)V

    .line 10733
    invoke-virtual {p1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result p1

    if-eqz p1, :cond_35

    .line 10735
    const-string p1, "ERROR:[Screen backlight is ON."

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 10736
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    sget-object p1, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ERROR_IN_USE_BY_ANOTHER_APPLICATION:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->showMessageDialog(Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;[Ljava/lang/Object;)V

    goto :goto_43

    .line 10741
    :cond_35
    const-string p1, "ERROR:[Screen backlight is OFF. Force close application.]"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 10743
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->finishAndKillProcess()V

    :goto_43
    return-void
.end method

.method public onFaceDetected(Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;)V
    .registers 3

    .line 10548
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "invoke"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 10549
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->isThermalWarningReceived()Z

    move-result v0

    if-nez v0, :cond_31

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentStorage()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isStorageWritable(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    .line 10550
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isObjectTrackingRunning()Z

    move-result v0

    if-eqz v0, :cond_28

    goto :goto_31

    .line 10553
    :cond_28
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_FACE_DETECTED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendStaticEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;[Ljava/lang/Object;)V

    :cond_31
    :goto_31
    return-void
.end method

.method public onFirstPreviewFrameReceived()V
    .registers 1

    .line 10684
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_d

    const-string p0, "invoke"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method public onInitialAutoFocusDone(Z)V
    .registers 4

    .line 10211
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invoke success:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 10216
    :cond_1a
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setTimeAfDone()V

    .line 10217
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->FAST_CAPTURING_LAUNCH:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    invoke-virtual {v0, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setCaptureTrigger(Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;)V

    .line 10218
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_INITIAL_AUTO_FOCUS_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method public onLogicalCameraModeChanged(Z)V
    .registers 4

    .line 2086
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$9;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$9;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onObjectLost(Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingResult;)V
    .registers 3

    .line 10565
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "invoke"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 10566
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->isThermalWarningReceived()Z

    move-result v0

    if-eqz v0, :cond_16

    return-void

    .line 10569
    :cond_16
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_OBJECT_TRACKING_LOST:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendStaticEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method public onObjectTracked(Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingResult;)V
    .registers 3

    .line 10557
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "invoke"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 10558
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->isThermalWarningReceived()Z

    move-result v0

    if-eqz v0, :cond_16

    return-void

    .line 10561
    :cond_16
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_OBJECT_TRACKED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendStaticEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method public onPreShutterDone(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)V
    .registers 3

    .line 10256
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->checkCallback(Lcom/sonyericsson/cameracommon/storage/RequestFactory$RequestBuilder;)V

    .line 10258
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_PRE_SHUTTER_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method public onPreTakePictureDone(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)V
    .registers 4

    .line 10289
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "invoke"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 10291
    :cond_d
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->checkCallback(Lcom/sonyericsson/cameracommon/storage/RequestFactory$RequestBuilder;)V

    .line 10294
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_PRE_TAKE_PICTURE_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 10299
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentStorage()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->setStorageType(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)V

    return-void
.end method

.method public onPrepareBurstDone(Z)V
    .registers 4

    .line 10320
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invoke isSuccess:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 10321
    :cond_1a
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_PREPARE_BURST_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method public onPreviewFrameReceived(I)V
    .registers 4

    .line 10688
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_26

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invoke frameNum :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mHideBlackScreenFrameNum: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mHideBlackScreenFrameNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 10690
    :cond_26
    iget v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mHideBlackScreenFrameNum:I

    if-ne p1, v0, :cond_38

    .line 10691
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mHideBlackScreen:Z

    if-eqz p1, :cond_38

    .line 10692
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$18;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$18;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_38
    return-void
.end method

.method public onPreviewSessionConfigured(Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;)V
    .registers 4

    .line 370
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$1;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$1;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPreviewSteady()V
    .registers 3

    .line 393
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$3;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$3;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onRecordError(II)V
    .registers 5

    .line 9714
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ERROR:MediaRecorder ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 9715
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mIsVideoRecording:Z

    .line 9717
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/sonyericsson/android/camera/controller/StateMachine$14;

    invoke-direct {p2, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$14;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onRecordFinished(Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;)V
    .registers 4

    .line 9735
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    if-eqz v0, :cond_7

    .line 9736
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->enableClick()V

    .line 9739
    :cond_7
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->onVideoRecordingDone()V

    .line 9742
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->requestStoreVideo(Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;)V

    .line 9744
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne p1, v0, :cond_2c

    .line 9745
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p1

    .line 9746
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getUserSetting()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getValue()Ljava/lang/String;

    move-result-object v0

    iget p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mHighFrameRateVideoRecordingCountInSuperSlowMotion:I

    .line 9745
    invoke-virtual {p1, v0, p0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendSlowMotionEvent(Ljava/lang/String;I)V

    :cond_2c
    return-void
.end method

.method public onRecordProgress(J)V
    .registers 5

    .line 9702
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invoke progressMillis:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1a
    long-to-int p1, p1

    .line 9704
    iget-object p2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$13;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$13;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;I)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onRecordingRestricted()V
    .registers 4

    .line 10716
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_RECORDING_RESTRICTED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 10717
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 10718
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->is4KVideo()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 10719
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    sget-object v0, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->RECORDING_RESTRICTED_DURING_SCREEN_RECORDING_FOR_4K:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->showMessageDialog(Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;[Ljava/lang/Object;)V

    goto :goto_2b

    .line 10721
    :cond_22
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    sget-object v0, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->RECORDING_RESTRICTED_DURING_SCREEN_RECORDING_FOR_FHD60:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->showMessageDialog(Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;[Ljava/lang/Object;)V

    :goto_2b
    return-void
.end method

.method public onSceneModeChanged(Lcom/sonyericsson/android/camera/device/CameraParameters$SceneRecognitionResult;)V
    .registers 3

    .line 10525
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "invoke"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 10526
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->isThermalWarningReceived()Z

    move-result v0

    if-eqz v0, :cond_16

    return-void

    .line 10529
    :cond_16
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_SCENE_MODE_CHANGED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendStaticEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method public onShutterDone(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;IZ)V
    .registers 6

    .line 10269
    sget-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->ON_SHUTTER_DONE:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/PerfLog;->transit()V

    .line 10270
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_29

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invoke captureNum:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isAfSuccessed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_29
    const/4 v0, 0x1

    if-le p2, v0, :cond_3a

    if-eqz p1, :cond_3a

    .line 10273
    new-instance v0, Lcom/sonyericsson/cameracommon/contentsview/PredictiveCaptureStoreInfo;

    .line 10274
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->getSaveTimeForPredictiveCapture()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lcom/sonyericsson/cameracommon/contentsview/PredictiveCaptureStoreInfo;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mPredictiveCaptureStoreInfo:Lcom/sonyericsson/cameracommon/contentsview/PredictiveCaptureStoreInfo;

    goto :goto_3d

    :cond_3a
    const/4 p2, 0x0

    .line 10277
    iput-object p2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mPredictiveCaptureStoreInfo:Lcom/sonyericsson/cameracommon/contentsview/PredictiveCaptureStoreInfo;

    .line 10279
    :goto_3d
    sget-object p2, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_SHUTTER_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    .line 10280
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    filled-new-array {p1, p3}, [Ljava/lang/Object;

    move-result-object p1

    .line 10279
    invoke-virtual {p0, p2, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method public onStartPreScan()V
    .registers 3

    .line 10207
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_PRE_SCAN_STARTED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method public onStartRecordingFailed()V
    .registers 3

    .line 10706
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "invoke"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 10707
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$19;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$19;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTakePictureDone(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)V
    .registers 5

    .line 10308
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_1e

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invoke, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 10310
    :cond_1e
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_TAKE_PICTURE_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method public onVideoRecordingDone()V
    .registers 3

    .line 10329
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "invoke"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_d
    const/4 v0, 0x0

    .line 10330
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mIsVideoRecording:Z

    .line 10333
    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_VIDEO_RECORDING_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method public onZoomChange(I)V
    .registers 3

    .line 10656
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "invoke"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 10663
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    if-eqz v0, :cond_26

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->isSetupHeadupDisplayInvoked()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 10665
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_ZOOM_CHANGED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    .line 10667
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 10665
    invoke-interface {p0, v0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    :cond_26
    return-void
.end method

.method public releaseContentsViewController()V
    .registers 2

    .line 703
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "invoke"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 704
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    if-eqz v0, :cond_14

    .line 705
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->clearContents()V

    :cond_14
    const/4 v0, 0x0

    .line 707
    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    return-void
.end method

.method public removeOnStateChangedListener(Lcom/sonyericsson/android/camera/controller/StateMachine$OnStateChangedListener;)V
    .registers 2

    .line 1046
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mOnStateChangedListenerSet:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public varargs declared-synchronized sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V
    .registers 8

    const-string v0, "invoke TransitterEvent:"

    monitor-enter p0

    .line 8415
    :try_start_3
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_29

    new-array v1, v2, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", current state:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v3

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 8418
    :cond_29
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_2be

    goto/16 :goto_2b8

    .line 8784
    :pswitch_36
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handlePreviewSteady([Ljava/lang/Object;)V

    goto/16 :goto_2b8

    .line 8780
    :pswitch_3d
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleSlowMotionChanged([Ljava/lang/Object;)V

    goto/16 :goto_2b8

    .line 8776
    :pswitch_44
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleVideoSizeChanged([Ljava/lang/Object;)V

    goto/16 :goto_2b8

    .line 8772
    :pswitch_4b
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleResolutionChanged([Ljava/lang/Object;)V

    goto/16 :goto_2b8

    .line 8768
    :pswitch_52
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handlePreviewSessionConfigured([Ljava/lang/Object;)V

    goto/16 :goto_2b8

    .line 8764
    :pswitch_59
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleFinishZoom([Ljava/lang/Object;)V

    goto/16 :goto_2b8

    .line 8760
    :pswitch_60
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handlePerformZoom([Ljava/lang/Object;)V

    goto/16 :goto_2b8

    .line 8756
    :pswitch_67
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handlePrepareZoom([Ljava/lang/Object;)V

    goto/16 :goto_2b8

    .line 8752
    :pswitch_6e
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleChangeCapturingMode([Ljava/lang/Object;)V

    goto/16 :goto_2b8

    .line 8748
    :pswitch_75
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnStorageReadyStateChanged([Ljava/lang/Object;)V

    goto/16 :goto_2b8

    .line 8744
    :pswitch_7c
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleFusionConditionChanged([Ljava/lang/Object;)V

    goto/16 :goto_2b8

    .line 8740
    :pswitch_83
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleRequestUpdateHighSensitivityFusionMode([Ljava/lang/Object;)V

    goto/16 :goto_2b8

    .line 8736
    :pswitch_8a
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleTriggerSlowMotion([Ljava/lang/Object;)V

    goto/16 :goto_2b8

    .line 8732
    :pswitch_91
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handlePauseRecording([Ljava/lang/Object;)V

    goto/16 :goto_2b8

    .line 8728
    :pswitch_98
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleResumeRecording([Ljava/lang/Object;)V

    goto/16 :goto_2b8

    .line 8724
    :pswitch_9f
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleStopRecording([Ljava/lang/Object;)V

    goto/16 :goto_2b8

    .line 8720
    :pswitch_a6
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleStartRecording([Ljava/lang/Object;)V

    goto/16 :goto_2b8

    .line 8716
    :pswitch_ad
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleRecordReady([Ljava/lang/Object;)V

    goto/16 :goto_2b8

    .line 8712
    :pswitch_b4
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleCaptureCancel([Ljava/lang/Object;)V

    goto/16 :goto_2b8

    .line 8708
    :pswitch_bb
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleCaptureBurst([Ljava/lang/Object;)V

    goto/16 :goto_2b8

    .line 8704
    :pswitch_c2
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleCapture([Ljava/lang/Object;)V

    goto/16 :goto_2b8

    .line 8700
    :pswitch_c9
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleStartCaptureCountDown([Ljava/lang/Object;)V

    goto/16 :goto_2b8

    .line 8696
    :pswitch_d0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleCaptureReady([Ljava/lang/Object;)V

    goto/16 :goto_2b8

    .line 8692
    :pswitch_d7
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleRequestUpdateVideoHdr([Ljava/lang/Object;)V

    goto/16 :goto_2b8

    .line 8688
    :pswitch_de
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleChangeAngleStart([Ljava/lang/Object;)V

    goto/16 :goto_2b8

    .line 8684
    :pswitch_e5
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleHighFameRateRecordingDone([Ljava/lang/Object;)V

    goto/16 :goto_2b8

    .line 8680
    :pswitch_ec
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleSlowMotionFeedbackAnimationEnd([Ljava/lang/Object;)V

    goto/16 :goto_2b8

    .line 8676
    :pswitch_f3
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleStopRecordingSlowMotion([Ljava/lang/Object;)V

    goto/16 :goto_2b8

    .line 8672
    :pswitch_fa
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnCameraDeviceClosed([Ljava/lang/Object;)V

    goto/16 :goto_2b8

    .line 8668
    :pswitch_101
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnCameraDeviceOpened([Ljava/lang/Object;)V

    goto/16 :goto_2b8

    .line 8664
    :pswitch_108
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleSelfTimerCancel([Ljava/lang/Object;)V

    goto/16 :goto_2b8

    .line 8660
    :pswitch_10f
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleBokehConditionChanged([Ljava/lang/Object;)V

    goto/16 :goto_2b8

    .line 8656
    :pswitch_116
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnBokehStrengthChanged([Ljava/lang/Object;)V

    goto/16 :goto_2b8

    .line 8652
    :pswitch_11d
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnBokehDisabled([Ljava/lang/Object;)V

    goto/16 :goto_2b8

    .line 8648
    :pswitch_124
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnBokehEnabled([Ljava/lang/Object;)V

    goto/16 :goto_2b8

    .line 8644
    :pswitch_12b
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnBrightnessChanged([Ljava/lang/Object;)V

    goto/16 :goto_2b8

    .line 8640
    :pswitch_132
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnAmberBlueColorChanged([Ljava/lang/Object;)V

    goto/16 :goto_2b8

    .line 8636
    :pswitch_139
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnSemiAutoDisabled([Ljava/lang/Object;)V

    goto/16 :goto_2b8

    .line 8632
    :pswitch_140
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnSemiAutoEnabled([Ljava/lang/Object;)V

    goto/16 :goto_2b8

    .line 8628
    :pswitch_147
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleCancelTouchedPosition([Ljava/lang/Object;)V

    goto/16 :goto_2b8

    .line 8624
    :pswitch_14e
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleSwitchCamera([Ljava/lang/Object;)V

    goto/16 :goto_2b8

    .line 8620
    :pswitch_155
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnContinuousPreviewFrameUpdated([Ljava/lang/Object;)V

    goto/16 :goto_2b8

    .line 8616
    :pswitch_15c
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnOnePreviewFrameUpdated([Ljava/lang/Object;)V

    goto/16 :goto_2b8

    .line 8610
    :pswitch_163
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnPredictiveCaptureGroupStoreCompleted([Ljava/lang/Object;)V

    goto/16 :goto_2b8

    .line 8606
    :pswitch_16a
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnBurstStoreCompleted([Ljava/lang/Object;)V

    goto/16 :goto_2b8

    .line 8602
    :pswitch_171
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnBurstShutterDone([Ljava/lang/Object;)V

    goto/16 :goto_2b8

    .line 8596
    :pswitch_178
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleStartAfAfterObjectTracked([Ljava/lang/Object;)V

    goto/16 :goto_2b8

    .line 8592
    :pswitch_17f
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleDeselectObjectPosition([Ljava/lang/Object;)V

    goto/16 :goto_2b8

    .line 8588
    :pswitch_186
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleSetSelectedObjectPosition([Ljava/lang/Object;)V

    goto/16 :goto_2b8

    .line 8584
    :pswitch_18d
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleChangeSelectedFace([Ljava/lang/Object;)V

    goto/16 :goto_2b8

    .line 8580
    :pswitch_194
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnRecordingError([Ljava/lang/Object;)V

    goto/16 :goto_2b8

    .line 8576
    :pswitch_19b
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnRecordingStartWaitDone([Ljava/lang/Object;)V

    goto/16 :goto_2b8

    .line 8572
    :pswitch_1a2
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleRequestSetupHeadUpDisplay([Ljava/lang/Object;)V

    goto/16 :goto_2b8

    .line 8568
    :pswitch_1a9
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleSetTouchedPosition([Ljava/lang/Object;)V

    goto/16 :goto_2b8

    .line 8564
    :pswitch_1b0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleStorageMounted([Ljava/lang/Object;)V

    goto/16 :goto_2b8

    .line 8560
    :pswitch_1b7
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleStorageError([Ljava/lang/Object;)V

    goto/16 :goto_2b8

    .line 8556
    :pswitch_1be
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleDialogClosed([Ljava/lang/Object;)V

    goto/16 :goto_2b8

    .line 8552
    :pswitch_1c5
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleDialogOpened([Ljava/lang/Object;)V

    goto/16 :goto_2b8

    .line 8548
    :pswitch_1cc
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleClearFocus([Ljava/lang/Object;)V

    goto/16 :goto_2b8

    .line 8544
    :pswitch_1d3
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleFinishTransitionOperation([Ljava/lang/Object;)V

    goto/16 :goto_2b8

    .line 8540
    :pswitch_1da
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleStartTransitionOperation([Ljava/lang/Object;)V

    goto/16 :goto_2b8

    .line 8536
    :pswitch_1e1
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleKeyMenu([Ljava/lang/Object;)V

    goto/16 :goto_2b8

    .line 8532
    :pswitch_1e8
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnStoreCompleted([Ljava/lang/Object;)V

    goto/16 :goto_2b8

    .line 8528
    :pswitch_1ef
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnStoreRequested([Ljava/lang/Object;)V

    goto/16 :goto_2b8

    .line 8524
    :pswitch_1f6
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleTouchContentProgress()V

    goto/16 :goto_2b8

    .line 8520
    :pswitch_1fd
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOn4KVideoRecordingRestricted([Ljava/lang/Object;)V

    goto/16 :goto_2b8

    .line 8516
    :pswitch_204
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnVideoRecordingDone([Ljava/lang/Object;)V

    goto/16 :goto_2b8

    .line 8512
    :pswitch_20b
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnTakePictureDone([Ljava/lang/Object;)V

    goto/16 :goto_2b8

    .line 8508
    :pswitch_212
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnPreTakePictureDone([Ljava/lang/Object;)V

    goto/16 :goto_2b8

    .line 8504
    :pswitch_219
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnPrepareBurstDone([Ljava/lang/Object;)V

    goto/16 :goto_2b8

    .line 8500
    :pswitch_220
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnShutterDone([Ljava/lang/Object;)V

    goto/16 :goto_2b8

    .line 8496
    :pswitch_227
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnCaptureRequested([Ljava/lang/Object;)V

    goto/16 :goto_2b8

    .line 8492
    :pswitch_22e
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnPreShutterDone([Ljava/lang/Object;)V

    goto/16 :goto_2b8

    .line 8488
    :pswitch_235
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnAutoFocusDone([Ljava/lang/Object;)V

    goto/16 :goto_2b8

    .line 8484
    :pswitch_23c
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleStartPreScan([Ljava/lang/Object;)V

    goto/16 :goto_2b8

    .line 8480
    :pswitch_243
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnInitialAutoFocusDone([Ljava/lang/Object;)V

    goto/16 :goto_2b8

    .line 8476
    :pswitch_24a
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnEvfPrepared([Ljava/lang/Object;)V

    goto/16 :goto_2b8

    .line 8472
    :pswitch_251
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnHeatedOverNormal([Ljava/lang/Object;)V

    goto :goto_2b8

    .line 8468
    :pswitch_257
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnHeatedOverCritical([Ljava/lang/Object;)V

    goto :goto_2b8

    .line 8463
    :pswitch_25d
    aget-object p1, p2, v3

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 8464
    iget-object p2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v3

    invoke-virtual {p2, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnReachBatteryLevelChanged([Ljava/lang/Object;)V

    goto :goto_2b8

    .line 8459
    :pswitch_273
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    new-array p2, v3, [Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnReachBatteryLow([Ljava/lang/Object;)V

    goto :goto_2b8

    .line 8455
    :pswitch_27b
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    new-array p2, v3, [Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnReachBatteryLimit([Ljava/lang/Object;)V

    goto :goto_2b8

    .line 8452
    :pswitch_283
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnHeatedOverCoolingUltraLow([Ljava/lang/Object;)V

    goto :goto_2b8

    .line 8448
    :pswitch_289
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnHeatedOverCoolingLow([Ljava/lang/Object;)V

    goto :goto_2b8

    .line 8444
    :pswitch_28f
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnHeatedOverWarningExtra([Ljava/lang/Object;)V

    goto :goto_2b8

    .line 8440
    :pswitch_295
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnHeatedOverWarning([Ljava/lang/Object;)V

    goto :goto_2b8

    .line 8436
    :pswitch_29b
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleFinalize([Ljava/lang/Object;)V

    goto :goto_2b8

    .line 8432
    :pswitch_2a1
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handlePause([Ljava/lang/Object;)V

    goto :goto_2b8

    .line 8428
    :pswitch_2a7
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleResumeTimeout([Ljava/lang/Object;)V

    goto :goto_2b8

    .line 8424
    :pswitch_2ad
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleResume([Ljava/lang/Object;)V

    goto :goto_2b8

    .line 8420
    :pswitch_2b3
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleInitialize([Ljava/lang/Object;)V
    :try_end_2b8
    .catchall {:try_start_3 .. :try_end_2b8} :catchall_2ba

    .line 8791
    :goto_2b8
    monitor-exit p0

    return-void

    :catchall_2ba
    move-exception p1

    monitor-exit p0

    throw p1

    nop

    :pswitch_data_2be
    .packed-switch 0x1
        :pswitch_2b3
        :pswitch_2ad
        :pswitch_2a7
        :pswitch_2a1
        :pswitch_29b
        :pswitch_295
        :pswitch_28f
        :pswitch_289
        :pswitch_283
        :pswitch_27b
        :pswitch_273
        :pswitch_25d
        :pswitch_257
        :pswitch_251
        :pswitch_24a
        :pswitch_243
        :pswitch_23c
        :pswitch_235
        :pswitch_22e
        :pswitch_227
        :pswitch_220
        :pswitch_219
        :pswitch_212
        :pswitch_20b
        :pswitch_204
        :pswitch_1fd
        :pswitch_1f6
        :pswitch_1ef
        :pswitch_1e8
        :pswitch_1e1
        :pswitch_1da
        :pswitch_1d3
        :pswitch_1cc
        :pswitch_1c5
        :pswitch_1be
        :pswitch_1b7
        :pswitch_1b0
        :pswitch_1a9
        :pswitch_1a2
        :pswitch_19b
        :pswitch_194
        :pswitch_18d
        :pswitch_186
        :pswitch_17f
        :pswitch_178
        :pswitch_171
        :pswitch_16a
        :pswitch_163
        :pswitch_15c
        :pswitch_155
        :pswitch_14e
        :pswitch_147
        :pswitch_140
        :pswitch_139
        :pswitch_132
        :pswitch_12b
        :pswitch_124
        :pswitch_11d
        :pswitch_116
        :pswitch_10f
        :pswitch_108
        :pswitch_101
        :pswitch_fa
        :pswitch_f3
        :pswitch_ec
        :pswitch_e5
        :pswitch_de
        :pswitch_d7
        :pswitch_d0
        :pswitch_c9
        :pswitch_c2
        :pswitch_bb
        :pswitch_b4
        :pswitch_ad
        :pswitch_a6
        :pswitch_9f
        :pswitch_98
        :pswitch_91
        :pswitch_8a
        :pswitch_83
        :pswitch_7c
        :pswitch_75
        :pswitch_6e
        :pswitch_67
        :pswitch_60
        :pswitch_59
        :pswitch_52
        :pswitch_4b
        :pswitch_44
        :pswitch_3d
        :pswitch_36
    .end packed-switch
.end method

.method public varargs declared-synchronized sendStaticEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;[Ljava/lang/Object;)V
    .registers 12

    const-string v0, "invoke StaticEvent:"

    monitor-enter p0

    .line 8795
    :try_start_3
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_29

    new-array v1, v2, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", current state:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v3

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 8798
    :cond_29
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$StaticEvent:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_162

    goto/16 :goto_15c

    .line 8914
    :pswitch_36
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mQrDetectionController:Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;->isPreviewing()Z

    move-result p1

    if-nez p1, :cond_15c

    .line 8915
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mQrDetectionController:Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object p2

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchCondition;

    .line 8916
    invoke-interface {v0}, Lcom/sonyericsson/android/camera/LaunchCondition;->isOneShot()Z

    move-result v0

    .line 8915
    invoke-virtual {p1, p2, v0}, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;->handlePreviewStarted(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)V

    goto/16 :goto_15c

    .line 8910
    :pswitch_4f
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mNotificationManager:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->handleWifiResult()V

    goto/16 :goto_15c

    .line 8906
    :pswitch_56
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnPreviewStarted([Ljava/lang/Object;)V

    goto/16 :goto_15c

    .line 8902
    :pswitch_5d
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnRecordingStarted([Ljava/lang/Object;)V

    goto/16 :goto_15c

    .line 8897
    :pswitch_64
    aget-object p1, p2, v3

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 8898
    iget-object p2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mGestureShutter:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    invoke-virtual {p2, p1}, Lcom/sonyericsson/android/camera/controller/GestureShutter;->handleSettingsChanged(Z)V

    goto/16 :goto_15c

    .line 8892
    :pswitch_73
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnObjectLost([Ljava/lang/Object;)V

    goto/16 :goto_15c

    .line 8885
    :pswitch_7a
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_LAZY_INITIALIZATION_TASK_RUN:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 8888
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnLazyInitializationTaskRun([Ljava/lang/Object;)V

    goto/16 :goto_15c

    .line 8881
    :pswitch_8a
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnOrientationChanged([Ljava/lang/Object;)V

    goto/16 :goto_15c

    .line 8877
    :pswitch_91
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnObjectTracked([Ljava/lang/Object;)V

    goto/16 :goto_15c

    .line 8873
    :pswitch_98
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnFaceDetected([Ljava/lang/Object;)V

    goto/16 :goto_15c

    .line 8869
    :pswitch_9f
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnAutoNightChanged([Ljava/lang/Object;)V

    goto/16 :goto_15c

    .line 8865
    :pswitch_a6
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnAutoHdrChanged([Ljava/lang/Object;)V

    goto/16 :goto_15c

    .line 8861
    :pswitch_ad
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnAutoFlashChanged([Ljava/lang/Object;)V

    goto/16 :goto_15c

    .line 8857
    :pswitch_b4
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnSceneModeChanged([Ljava/lang/Object;)V

    goto/16 :goto_15c

    .line 8815
    :pswitch_bb
    sget-object p1, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$HeadUpDisplaySetupState:[I

    aget-object p2, p2, v3

    check-cast p2, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->ordinal()I

    move-result p2

    aget p1, p1, p2

    if-eq p1, v2, :cond_121

    const/4 p2, 0x2

    if-eq p1, p2, :cond_121

    const/4 v0, 0x3

    if-eq p1, v0, :cond_d0

    goto :goto_12c

    .line 8826
    :cond_d0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 8827
    invoke-interface {p1, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 8828
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 8829
    invoke-interface {v1, v4}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    if-eqz p1, :cond_ee

    .line 8830
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->isConstraint()Z

    move-result p1

    if-eqz p1, :cond_ee

    move p1, v2

    goto :goto_ef

    :cond_ee
    move p1, v3

    .line 8831
    :goto_ef
    iget-object v4, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    sget-object v5, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_PREPARE_RECORDING_INDICATOR:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLastVideoSavingRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

    iget-object v7, v7, Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;->mVideoStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;

    iget-wide v7, v7, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;->maxDurationMills:J

    long-to-int v7, v7

    .line 8834
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    .line 8836
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v6, v2

    .line 8837
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v6, p2

    aput-object v1, v6, v0

    .line 8831
    invoke-interface {v4, v5, v6}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 8841
    invoke-direct {p0, v3}, Lcom/sonyericsson/android/camera/controller/StateMachine;->updateRecordingProgress(I)V

    .line 8842
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mIsLaunchAndRecording:Z

    if-nez p1, :cond_12c

    .line 8843
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->requestOnePreviewFrame()V

    goto :goto_12c

    .line 8819
    :cond_121
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->isMessageDialogOpened()Z

    move-result p1

    if-nez p1, :cond_12c

    .line 8820
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->calculateRemainStorage()V

    .line 8850
    :cond_12c
    :goto_12c
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isFusionMonitoringNeeded()Z

    move-result p1

    if-eqz p1, :cond_15c

    .line 8851
    sget-object p1, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_FUSION_CONDITION_CHANGED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array p2, v2, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    .line 8852
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getLatestFusionResult()Lcom/sonyericsson/android/camera/device/CameraParameters$FusionResult;

    move-result-object v0

    aput-object v0, p2, v3

    .line 8851
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    goto :goto_15c

    .line 8803
    :pswitch_142
    aget-object p1, p2, v3

    check-cast p1, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    .line 8804
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->getCaptureState()Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->-$$Nest$misRecording(Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;)Z

    move-result p1

    if-eqz p1, :cond_159

    .line 8806
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->disableClick()V

    .line 8809
    :cond_159
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->storeSavingRequestList()V
    :try_end_15c
    .catchall {:try_start_3 .. :try_end_15c} :catchall_15e

    .line 8924
    :cond_15c
    :goto_15c
    monitor-exit p0

    return-void

    :catchall_15e
    move-exception p1

    monitor-exit p0

    throw p1

    nop

    :pswitch_data_162
    .packed-switch 0x1
        :pswitch_142
        :pswitch_bb
        :pswitch_b4
        :pswitch_ad
        :pswitch_a6
        :pswitch_9f
        :pswitch_98
        :pswitch_91
        :pswitch_8a
        :pswitch_7a
        :pswitch_73
        :pswitch_64
        :pswitch_5d
        :pswitch_56
        :pswitch_4f
        :pswitch_36
    .end packed-switch
.end method

.method public setDependencies(Lcom/sonyericsson/android/camera/view/ViewFinder;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)V
    .registers 4

    .line 2074
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "invoke"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2075
    :cond_d
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    .line 2076
    iput-object p2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    .line 2077
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mNotificationManager:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->setViewFinder(Lcom/sonyericsson/android/camera/view/ViewFinder;)V

    .line 2078
    new-instance v0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;

    invoke-direct {v0, p1, p2, p0}, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;-><init>(Lcom/sonyericsson/android/camera/view/ViewFinder;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mObjectTracking:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;

    return-void
.end method

.method public setGestureShutterWindowHost(Lcom/sonyericsson/android/camera/controller/GestureShutter$WindowHost;)V
    .registers 3

    .line 11123
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "invoke"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 11124
    :cond_d
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mGestureShutter:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/controller/GestureShutter;->setWindowHost(Lcom/sonyericsson/android/camera/controller/GestureShutter$WindowHost;)V

    return-void
.end method

.method public shouldPlayShutterSound()Z
    .registers 3

    .line 11103
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    .line 11104
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object p0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SHUTTER_SOUND:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, p0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;

    .line 11105
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;

    if-eq p0, v0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method public unselectedFaceID()V
    .registers 1

    .line 389
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->unselectedFaceID()V

    return-void
.end method

.method public updatedDebugInfoInViewFinder(Ljava/lang/String;)V
    .registers 4

    .line 11729
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$20;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$20;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
