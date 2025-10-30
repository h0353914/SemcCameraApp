.class public Lcom/sonyericsson/android/camera/controller/StateMachine;
.super Ljava/lang/Object;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/controller/StateMachine$CameraNotAvailableTask;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$OneShotResult;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$OnPreviewStartedListenerImpl;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecordingPausing;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$ChangeCameraModeTask;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$RequestStoreTask;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$StartRecordingTask;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$StateWaitingPreProcessDone;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$StateFinalize;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$StateWarning;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$StatePause;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$StateLogicalModeChanging;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$StateModeChanging;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoStore;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoStopping;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$StateWaitForHighFrameRateVideoRecordingDone;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$StateHighFrameRateVideoRecordingInSuperSlowMotion;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$StateLowFrameRateVideoRecordingInSuperSlowMotion;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoBase;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCaptureWaitForAfDone;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$NextCaptureCondition;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCaptureWaitForAfDone;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoAfDone;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoAfSearch;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$StateOperationRestricted;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$StateCropping;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$StatePrepareForRecording;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReadyForRecording;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReady;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoBase;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$StateResumeAndCapture;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$StateCameraSwitching;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$NotifyDelayedEventTask;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$StateInitialize;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$StateWaitingEvfPreparedByModeChange;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$StateNone;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$State;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$OnStateChangedListener;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$ThermalState;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$StartupAction;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;,
        Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;
    }
.end annotation


# static fields
.field private static final COLOR_VALUE_MAX:I = 0xff

.field private static final RESUME_TIMEOUT:I = 0x1b58

.field private static final TAG:Ljava/lang/String; = "StateMachine"

.field private static final TERMINATE_WAIT_TIME:I = 0xfa0

.field private static final THREAD_NAME:Ljava/lang/String; = "RequestStore"

.field private static final USE_PROGRESS_ON_PHOTO_THUMBNAIL:Z = false

.field private static final USE_PROGRESS_ON_VIDEO_THUMBNAIL:Z = false


# instance fields
.field private final mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

.field private mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

.field private mChangeCameraModeTask:Lcom/sonyericsson/android/camera/controller/StateMachine$ChangeCameraModeTask;

.field private mChapterThumbnail:Lcom/sonyericsson/android/camera/controller/ChapterThumbnail;

.field private mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

.field private mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

.field private final mExecService:Ljava/util/concurrent/ExecutorService;

.field private mFaultDetector:Lcom/sonyericsson/android/camera/faultdetection/FaultDetector;

.field private final mGestureShutter:Lcom/sonyericsson/android/camera/controller/GestureShutter;

.field private final mGestureShutterHost:Lcom/sonyericsson/android/camera/controller/GestureShutter$ControllerHost;

.field private final mHandler:Landroid/os/Handler;

.field private mHighFrameRateVideoRecordingCountInSuperSlowMotion:I

.field mIsSceneRecognitionValid:Z

.field private mIsSemiAutoEnabled:Z

.field private mIsVideoRecording:Z

.field private mLastPhotoSavingRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

.field private mLastRequestId:I

.field private final mLastSettings:Lcom/sonyericsson/android/camera/setting/LastSettings;

.field private mLastSmileCaptureTakenTime:J

.field private mLastStoreDataResult:Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

.field private mLastVideoSavingRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

.field private final mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchCondition;

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

.field private final mSettingController:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;

.field private mShutterFeedback:Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;

.field private mStartRecordingTask:Lcom/sonyericsson/android/camera/controller/StateMachine$StartRecordingTask;

.field private mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

.field private mStorageStateListener:Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;

.field private final mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

.field private mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

.field private final mVirtualKeyEventDispatcher:Lcom/sonyericsson/android/camera/view/UserEventHandler$VirtualKeyEventDispatcher;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/cameracommon/storage/Storage;Lcom/sonyericsson/android/camera/LaunchCondition;)V
    .registers 7

    .line 926
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 240
    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLastPhotoSavingRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    .line 241
    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLastVideoSavingRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

    .line 248
    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    const-string v1, "RequestStore"

    .line 252
    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/ThreadUtil;->buildExecutor(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mExecService:Ljava/util/concurrent/ExecutorService;

    const/4 v1, 0x0

    .line 255
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mIsVideoRecording:Z

    .line 269
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mPhotoSavingRequestList:Ljava/util/List;

    .line 272
    new-instance v2, Lcom/sonyericsson/android/camera/controller/StateMachine$StateNone;

    invoke-direct {v2, p0, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateNone;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$1;)V

    iput-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    .line 275
    iput v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mHighFrameRateVideoRecordingCountInSuperSlowMotion:I

    .line 278
    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLastStoreDataResult:Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    .line 280
    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mChangeCameraModeTask:Lcom/sonyericsson/android/camera/controller/StateMachine$ChangeCameraModeTask;

    .line 282
    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mStartRecordingTask:Lcom/sonyericsson/android/camera/controller/StateMachine$StartRecordingTask;

    .line 287
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mPendingTaskListForStandby:Ljava/util/List;

    .line 297
    new-instance v2, Lcom/sonyericsson/android/camera/view/UserEventHandler$VirtualKeyEventDispatcher;

    invoke-direct {v2}, Lcom/sonyericsson/android/camera/view/UserEventHandler$VirtualKeyEventDispatcher;-><init>()V

    iput-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mVirtualKeyEventDispatcher:Lcom/sonyericsson/android/camera/view/UserEventHandler$VirtualKeyEventDispatcher;

    .line 300
    invoke-static {}, Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;->createDefault()Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mShutterFeedback:Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;

    .line 311
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mIsSceneRecognitionValid:Z

    .line 313
    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;

    invoke-direct {v1, p0, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$1;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mStorageStateListener:Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;

    .line 453
    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$1;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mOnStoreCompletedListener:Lcom/sonyericsson/cameracommon/storage/Storage$OnStoreCompletedListener;

    .line 528
    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$3;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$3;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mGestureShutterHost:Lcom/sonyericsson/android/camera/controller/GestureShutter$ControllerHost;

    .line 915
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mOnStateChangedListenerSet:Ljava/util/Set;

    .line 939
    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;

    invoke-direct {v1, p0, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine$SettingsController;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$1;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mSettingController:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;

    .line 2828
    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$5;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$5;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mNotifyResumeTimeoutTask:Ljava/lang/Runnable;

    .line 5631
    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mChapterThumbnail:Lcom/sonyericsson/android/camera/controller/ChapterThumbnail;

    .line 8544
    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$6;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$6;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mOnSuperSlowRecordingFinishedListener:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/OnSuperSlowRecordingFinishedListener;

    .line 9817
    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;

    invoke-direct {v1, p0, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$1;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mPredictiveApplier:Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;

    .line 927
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    .line 928
    iput-object p2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    .line 929
    iput-object p3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchCondition;

    .line 931
    new-instance p2, Lcom/sonyericsson/android/camera/controller/GestureShutter;

    iget-object p3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mGestureShutterHost:Lcom/sonyericsson/android/camera/controller/GestureShutter$ControllerHost;

    invoke-direct {p2, p3, v0}, Lcom/sonyericsson/android/camera/controller/GestureShutter;-><init>(Lcom/sonyericsson/android/camera/controller/GestureShutter$ControllerHost;Lcom/sonyericsson/android/camera/controller/GestureShutter$WindowHost;)V

    iput-object p2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mGestureShutter:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    .line 933
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/CameraActivity;->getStoredSettings()Lcom/sonyericsson/android/camera/setting/StoredSettings;

    move-result-object p2

    invoke-interface {p2}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getUserSettings()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object p2

    iput-object p2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    .line 934
    iget-object p2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    iget-object p3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mSettingController:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;

    invoke-interface {p2, p3}, Lcom/sonyericsson/android/camera/setting/UserSettings;->register(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;)V

    .line 935
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/CameraActivity;->getStoredSettings()Lcom/sonyericsson/android/camera/setting/StoredSettings;

    move-result-object p1

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getLastSettings()Lcom/sonyericsson/android/camera/setting/LastSettings;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLastSettings:Lcom/sonyericsson/android/camera/setting/LastSettings;

    return-void
.end method

.method static synthetic access$1000(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/controller/StateMachine$State;
    .registers 1

    .line 207
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    return-object p0
.end method

.method static synthetic access$10000(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V
    .registers 2

    .line 207
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->notifyCoolingUltraLow(Z)V

    return-void
.end method

.method static synthetic access$10100(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;)V
    .registers 2

    .line 207
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->updateFusionModeSetting(Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;)V

    return-void
.end method

.method static synthetic access$10200(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V
    .registers 2

    .line 207
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->setCurrentCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    return-void
.end method

.method static synthetic access$10300(Lcom/sonyericsson/android/camera/controller/StateMachine;)V
    .registers 1

    .line 207
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->checkThermalWarning()V

    return-void
.end method

.method static synthetic access$10400(Lcom/sonyericsson/android/camera/controller/StateMachine;)Ljava/util/List;
    .registers 1

    .line 207
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mPendingTaskListForStandby:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$10500(Lcom/sonyericsson/android/camera/controller/StateMachine;)Z
    .registers 1

    .line 207
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isEnoughStorageSizeAvailableForOneShotVideo()Z

    move-result p0

    return p0
.end method

.method static synthetic access$10600(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/recorder/RecordingProfile;)Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;
    .registers 2

    .line 207
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->createVideoSavingRequest(Lcom/sonyericsson/android/camera/recorder/RecordingProfile;)Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$10700(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/recorder/superslowrecorder/OnSuperSlowRecordingFinishedListener;
    .registers 1

    .line 207
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mOnSuperSlowRecordingFinishedListener:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/OnSuperSlowRecordingFinishedListener;

    return-object p0
.end method

.method static synthetic access$11200(Lcom/sonyericsson/android/camera/controller/StateMachine;)V
    .registers 1

    .line 207
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->stopPlaySound()V

    return-void
.end method

.method static synthetic access$11300(Lcom/sonyericsson/android/camera/controller/StateMachine;)V
    .registers 1

    .line 207
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->pauseAudioPlaybackForRecord()V

    return-void
.end method

.method static synthetic access$11500(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/controller/StateMachine$StartRecordingTask;
    .registers 1

    .line 207
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mStartRecordingTask:Lcom/sonyericsson/android/camera/controller/StateMachine$StartRecordingTask;

    return-object p0
.end method

.method static synthetic access$11502(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$StartRecordingTask;)Lcom/sonyericsson/android/camera/controller/StateMachine$StartRecordingTask;
    .registers 2

    .line 207
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mStartRecordingTask:Lcom/sonyericsson/android/camera/controller/StateMachine$StartRecordingTask;

    return-object p1
.end method

.method static synthetic access$11600(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V
    .registers 2

    .line 207
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->transitionToRecordingState(Z)V

    return-void
.end method

.method static synthetic access$11800(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V
    .registers 2

    .line 207
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->onOneShotStoreCompleted(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V

    return-void
.end method

.method static synthetic access$11900(Lcom/sonyericsson/android/camera/controller/StateMachine;F)V
    .registers 2

    .line 207
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->updateBokehStrength(F)V

    return-void
.end method

.method static synthetic access$1200(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;
    .registers 1

    .line 207
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    return-object p0
.end method

.method static synthetic access$12100(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)V
    .registers 2

    .line 207
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->doCapture(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)V

    return-void
.end method

.method static synthetic access$12400(Lcom/sonyericsson/android/camera/controller/StateMachine;)Z
    .registers 1

    .line 207
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isAllSnapshotCompleted()Z

    move-result p0

    return p0
.end method

.method static synthetic access$12502(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/ChapterThumbnail;)Lcom/sonyericsson/android/camera/controller/ChapterThumbnail;
    .registers 2

    .line 207
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mChapterThumbnail:Lcom/sonyericsson/android/camera/controller/ChapterThumbnail;

    return-object p1
.end method

.method static synthetic access$12600(Lcom/sonyericsson/android/camera/controller/StateMachine;)V
    .registers 1

    .line 207
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->doHandleRecordingError()V

    return-void
.end method

.method static synthetic access$12700(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V
    .registers 2

    .line 207
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->doStopRecording(Z)V

    return-void
.end method

.method static synthetic access$12802(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)Z
    .registers 2

    .line 207
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mIsVideoRecording:Z

    return p1
.end method

.method static synthetic access$12908(Lcom/sonyericsson/android/camera/controller/StateMachine;)I
    .registers 3

    .line 207
    iget v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mHighFrameRateVideoRecordingCountInSuperSlowMotion:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mHighFrameRateVideoRecordingCountInSuperSlowMotion:I

    return v0
.end method

.method static synthetic access$1300(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V
    .registers 2

    .line 207
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->switchSceneRecognition(Z)V

    return-void
.end method

.method static synthetic access$13000(Lcom/sonyericsson/android/camera/controller/StateMachine;[Ljava/lang/Object;)V
    .registers 2

    .line 207
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->pauseVideoRecording([Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$13300(Lcom/sonyericsson/android/camera/controller/StateMachine;ZZ)V
    .registers 3

    .line 207
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->doStopRecordingWithForceFlush(ZZ)V

    return-void
.end method

.method static synthetic access$13400(Lcom/sonyericsson/android/camera/controller/StateMachine;)V
    .registers 1

    .line 207
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendVideoChapterThumbnailToViewFinder()V

    return-void
.end method

.method static synthetic access$13500(Lcom/sonyericsson/android/camera/controller/StateMachine;)V
    .registers 1

    .line 207
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->doPauseRecording()V

    return-void
.end method

.method static synthetic access$13700(Lcom/sonyericsson/android/camera/controller/StateMachine;)V
    .registers 1

    .line 207
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->doCaptureWhileRecording()V

    return-void
.end method

.method static synthetic access$13800(Lcom/sonyericsson/android/camera/controller/StateMachine;)V
    .registers 1

    .line 207
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->requestVideoSmileCapture()V

    return-void
.end method

.method static synthetic access$1400(Lcom/sonyericsson/android/camera/controller/StateMachine;)V
    .registers 1

    .line 207
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->doStopObjectTracking()V

    return-void
.end method

.method static synthetic access$14000(Lcom/sonyericsson/android/camera/controller/StateMachine;)V
    .registers 1

    .line 207
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->doResumeRecording()V

    return-void
.end method

.method static synthetic access$14100(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;
    .registers 1

    .line 207
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    return-object p0
.end method

.method static synthetic access$14200(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;)V
    .registers 3

    .line 207
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->changeModeTo(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;)V

    return-void
.end method

.method static synthetic access$14300(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V
    .registers 2

    .line 207
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendResearchSameActivityEvent(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    return-void
.end method

.method static synthetic access$14400(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;)V
    .registers 3

    .line 207
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->requestChangeModeTo(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;)V

    return-void
.end method

.method static synthetic access$14500(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/setting/LastSettings;
    .registers 1

    .line 207
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLastSettings:Lcom/sonyericsson/android/camera/setting/LastSettings;

    return-object p0
.end method

.method static synthetic access$14600(Lcom/sonyericsson/android/camera/controller/StateMachine;)V
    .registers 1

    .line 207
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->removeChangeCameraModeTask()V

    return-void
.end method

.method static synthetic access$14700(Lcom/sonyericsson/android/camera/controller/StateMachine;)V
    .registers 1

    .line 207
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->removeStartRecordingTask()V

    return-void
.end method

.method static synthetic access$14900(Lcom/sonyericsson/android/camera/controller/StateMachine;)V
    .registers 1

    .line 207
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->cleanupPendingState()V

    return-void
.end method

.method static synthetic access$15100(Lcom/sonyericsson/android/camera/controller/StateMachine;)V
    .registers 1

    .line 207
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->storeSavingRequestList()V

    return-void
.end method

.method static synthetic access$15900(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V
    .registers 2

    .line 207
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->doStartRecording(Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/sonyericsson/android/camera/controller/StateMachine;)V
    .registers 1

    .line 207
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->calculateRemainStorage()V

    return-void
.end method

.method static synthetic access$16000(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)Z
    .registers 2

    .line 207
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isNeedRepairRequestId(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$16200(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)V
    .registers 2

    .line 207
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->storePicture(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)V

    return-void
.end method

.method static synthetic access$16300(Lcom/sonyericsson/android/camera/controller/StateMachine;)I
    .registers 1

    .line 207
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getOrientation()I

    move-result p0

    return p0
.end method

.method static synthetic access$16400(Lcom/sonyericsson/android/camera/controller/StateMachine;)Ljava/util/List;
    .registers 1

    .line 207
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mPhotoSavingRequestList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$16700(Lcom/sonyericsson/android/camera/controller/StateMachine;I)V
    .registers 2

    .line 207
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->updateRecordingProgress(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V
    .registers 3

    .line 207
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/sonyericsson/android/camera/controller/StateMachine;)Landroid/os/Handler;
    .registers 1

    .line 207
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;Landroid/graphics/Bitmap;)V
    .registers 3

    .line 207
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->finishOneShot(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/sonyericsson/android/camera/controller/StateMachine;)Z
    .registers 1

    .line 207
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isLazyInitializationRunning()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2200(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/CameraActivity;
    .registers 1

    .line 207
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/setting/UserSettings;
    .registers 1

    .line 207
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;)V
    .registers 2

    .line 207
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->updatePhotoSelftimer(Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V
    .registers 2

    .line 207
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->setIsSceneRecognitionValid(Z)V

    return-void
.end method

.method static synthetic access$2700(Lcom/sonyericsson/android/camera/controller/StateMachine;)V
    .registers 1

    .line 207
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->showBlackScreen()V

    return-void
.end method

.method static synthetic access$2800(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;
    .registers 1

    .line 207
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/faultdetection/FaultDetector;
    .registers 1

    .line 207
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mFaultDetector:Lcom/sonyericsson/android/camera/faultdetection/FaultDetector;

    return-object p0
.end method

.method static synthetic access$300(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/controller/GestureShutter;
    .registers 1

    .line 207
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mGestureShutter:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)V
    .registers 3

    .line 207
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->requestResizeEvf(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)V

    return-void
.end method

.method static synthetic access$3100(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;
    .registers 1

    .line 207
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mObjectTracking:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;

    return-object p0
.end method

.method static synthetic access$3102(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;)Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;
    .registers 2

    .line 207
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mObjectTracking:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/sonyericsson/android/camera/controller/StateMachine;)Landroid/graphics/Rect;
    .registers 1

    .line 207
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getPreviewRect()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3300(Lcom/sonyericsson/android/camera/controller/StateMachine;)V
    .registers 1

    .line 207
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->switchVideoFaceDetection()V

    return-void
.end method

.method static synthetic access$3400(Lcom/sonyericsson/android/camera/controller/StateMachine;)Z
    .registers 1

    .line 207
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mIsSemiAutoEnabled:Z

    return p0
.end method

.method static synthetic access$3402(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)Z
    .registers 2

    .line 207
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mIsSemiAutoEnabled:Z

    return p1
.end method

.method static synthetic access$3500(Lcom/sonyericsson/android/camera/controller/StateMachine;)Z
    .registers 1

    .line 207
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isVideo()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3600(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/recorder/RecordingProfile;
    .registers 1

    .line 207
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->createRecordingProfile()Lcom/sonyericsson/android/camera/recorder/RecordingProfile;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3700(Lcom/sonyericsson/android/camera/controller/StateMachine;)Z
    .registers 1

    .line 207
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isTouchAeEnabled()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3800(Lcom/sonyericsson/android/camera/controller/StateMachine;I)V
    .registers 2

    .line 207
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->onZoomChange(I)V

    return-void
.end method

.method static synthetic access$3900(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/controller/StateMachine$ThermalState;
    .registers 1

    .line 207
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getThermalState()Lcom/sonyericsson/android/camera/controller/StateMachine$ThermalState;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;
    .registers 1

    .line 207
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentStorage()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4000(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V
    .registers 2

    .line 207
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->cancelAutoFocus(Z)V

    return-void
.end method

.method static synthetic access$4100(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)Lcom/sonyericsson/android/camera/controller/StateMachine$NotifyDelayedEventTask;
    .registers 3

    .line 207
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->notifyDelayedEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)Lcom/sonyericsson/android/camera/controller/StateMachine$NotifyDelayedEventTask;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4200(Lcom/sonyericsson/android/camera/controller/StateMachine;)Z
    .registers 1

    .line 207
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->shouldPlayShutterSound()Z

    move-result p0

    return p0
.end method

.method static synthetic access$4300(Lcom/sonyericsson/android/camera/controller/StateMachine;)Z
    .registers 1

    .line 207
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isCurrentStorageExternal()Z

    move-result p0

    return p0
.end method

.method static synthetic access$4400(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)V
    .registers 2

    .line 207
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->requestStorePicture(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;
    .registers 1

    .line 207
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLastStoreDataResult:Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    return-object p0
.end method

.method static synthetic access$4502(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;
    .registers 2

    .line 207
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLastStoreDataResult:Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    return-object p1
.end method

.method static synthetic access$4600(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;
    .registers 1

    .line 207
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mPredictiveApplier:Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;

    return-object p0
.end method

.method static synthetic access$4800(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;
    .registers 1

    .line 207
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLastPhotoSavingRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    return-object p0
.end method

.method static synthetic access$4802(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;
    .registers 2

    .line 207
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLastPhotoSavingRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    return-object p1
.end method

.method static synthetic access$4900(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;
    .registers 1

    .line 207
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLastVideoSavingRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

    return-object p0
.end method

.method static synthetic access$4902(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;)Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;
    .registers 2

    .line 207
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLastVideoSavingRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

    return-object p1
.end method

.method static synthetic access$500(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/storage/Storage;
    .registers 1

    .line 207
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    return-object p0
.end method

.method static synthetic access$5000(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V
    .registers 2

    .line 207
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->onPredictiveCaptureStoreComplete(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V

    return-void
.end method

.method static synthetic access$5400(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonymobile/cameracommon/evf/Evf;)V
    .registers 2

    .line 207
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->setEvfSurfaceToCameraDeviceHandler(Lcom/sonymobile/cameracommon/evf/Evf;)V

    return-void
.end method

.method static synthetic access$5600(Lcom/sonyericsson/android/camera/controller/StateMachine;)V
    .registers 1

    .line 207
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->changeToStandby()V

    return-void
.end method

.method static synthetic access$5700(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;
    .registers 1

    .line 207
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mShutterFeedback:Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;

    return-object p0
.end method

.method static synthetic access$5702(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;)Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;
    .registers 2

    .line 207
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mShutterFeedback:Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;

    return-object p1
.end method

.method static synthetic access$5900(Lcom/sonyericsson/android/camera/controller/StateMachine;)Z
    .registers 1

    .line 207
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->hasRemainSavingRequest()Z

    move-result p0

    return p0
.end method

.method static synthetic access$6200(Lcom/sonyericsson/android/camera/controller/StateMachine;)Ljava/lang/Runnable;
    .registers 1

    .line 207
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mNotifyResumeTimeoutTask:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$6300(Lcom/sonyericsson/android/camera/controller/StateMachine;)Z
    .registers 1

    .line 207
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isFusionMonitoringNeeded()Z

    move-result p0

    return p0
.end method

.method static synthetic access$6400(Lcom/sonyericsson/android/camera/controller/StateMachine;ZLcom/sonyericsson/android/camera/controller/StateMachine$StartupAction;)V
    .registers 3

    .line 207
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->startFastCapture(ZLcom/sonyericsson/android/camera/controller/StateMachine$StartupAction;)V

    return-void
.end method

.method static synthetic access$6500(Lcom/sonyericsson/android/camera/controller/StateMachine;)I
    .registers 1

    .line 207
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCameraOrientation()I

    move-result p0

    return p0
.end method

.method static synthetic access$6700(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;
    .registers 1

    .line 207
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mStorageStateListener:Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;

    return-object p0
.end method

.method static synthetic access$6800(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/UserEventHandler$VirtualKeyEventDispatcher;
    .registers 1

    .line 207
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mVirtualKeyEventDispatcher:Lcom/sonyericsson/android/camera/view/UserEventHandler$VirtualKeyEventDispatcher;

    return-object p0
.end method

.method static synthetic access$6902(Lcom/sonyericsson/android/camera/controller/StateMachine;I)I
    .registers 2

    .line 207
    iput p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLastRequestId:I

    return p1
.end method

.method static synthetic access$700(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z
    .registers 2

    .line 207
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->checkSaveDestinationCanBeChange(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$7000(Lcom/sonyericsson/android/camera/controller/StateMachine;)V
    .registers 1

    .line 207
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->initGeoTagManager()V

    return-void
.end method

.method static synthetic access$7100(Lcom/sonyericsson/android/camera/controller/StateMachine;)V
    .registers 1

    .line 207
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->initSideSenseSetting()V

    return-void
.end method

.method static synthetic access$7600(Lcom/sonyericsson/android/camera/controller/StateMachine;)I
    .registers 1

    .line 207
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getSensorOrientation()I

    move-result p0

    return p0
.end method

.method static synthetic access$7800(Lcom/sonyericsson/android/camera/controller/StateMachine;)V
    .registers 1

    .line 207
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->notifySceneRecognitionDisabled()V

    return-void
.end method

.method static synthetic access$7900(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$NotifyDelayedEventTask;)V
    .registers 2

    .line 207
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->removeDelayedEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$NotifyDelayedEventTask;)V

    return-void
.end method

.method static synthetic access$800(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/LaunchCondition;
    .registers 1

    .line 207
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchCondition;

    return-object p0
.end method

.method static synthetic access$8000(Lcom/sonyericsson/android/camera/controller/StateMachine;)V
    .registers 1

    .line 207
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->doZoomChangeAngle()V

    return-void
.end method

.method static synthetic access$8100(Lcom/sonyericsson/android/camera/controller/StateMachine;)Z
    .registers 1

    .line 207
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->startAutoFocus()Z

    move-result p0

    return p0
.end method

.method static synthetic access$8300([Ljava/lang/Object;ILjava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 207
    invoke-static {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getEventParam([Ljava/lang/Object;ILjava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$8400(Lcom/sonyericsson/android/camera/controller/StateMachine;)Z
    .registers 1

    .line 207
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isStorageAvailableWhenIsTagging()Z

    move-result p0

    return p0
.end method

.method static synthetic access$8700(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)Z
    .registers 2

    .line 207
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->checkBurstConditions(Z)Z

    move-result p0

    return p0
.end method

.method static synthetic access$8900(Lcom/sonyericsson/android/camera/controller/StateMachine;)V
    .registers 1

    .line 207
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->requestPhotoSmileCapture()V

    return-void
.end method

.method static synthetic access$900(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z
    .registers 2

    .line 207
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isStorageWritable(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$9000(Lcom/sonyericsson/android/camera/controller/StateMachine;Landroid/graphics/Point;)V
    .registers 2

    .line 207
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->doChangeSelectedFace(Landroid/graphics/Point;)V

    return-void
.end method

.method static synthetic access$9100(Lcom/sonyericsson/android/camera/controller/StateMachine;Landroid/graphics/Rect;)V
    .registers 2

    .line 207
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->doStartObjectTracking(Landroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$9300(Lcom/sonyericsson/android/camera/controller/StateMachine;Landroid/graphics/Point;Landroid/graphics/RectF;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;)V
    .registers 4

    .line 207
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/controller/StateMachine;->setFocusPosition(Landroid/graphics/Point;Landroid/graphics/RectF;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;)V

    return-void
.end method

.method static synthetic access$9400(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;)V
    .registers 2

    .line 207
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->switchCamera(Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;)V

    return-void
.end method

.method static synthetic access$9500(Lcom/sonyericsson/android/camera/controller/StateMachine;F)V
    .registers 2

    .line 207
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->updateAmberBlueColor(F)V

    return-void
.end method

.method static synthetic access$9600(Lcom/sonyericsson/android/camera/controller/StateMachine;F)V
    .registers 2

    .line 207
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->updateBrightness(F)V

    return-void
.end method

.method static synthetic access$9800(Lcom/sonyericsson/android/camera/controller/StateMachine;)V
    .registers 1

    .line 207
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->closeCamera()V

    return-void
.end method

.method static synthetic access$9900(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z
    .registers 2

    .line 207
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isStorageFull(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z

    move-result p0

    return p0
.end method

.method private calculateRemainStorage()V
    .registers 6

    .line 9421
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    if-eqz v0, :cond_39

    .line 9422
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentStorage()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v0

    if-nez v0, :cond_13

    goto :goto_39

    .line 9428
    :cond_13
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentStorage()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v0

    .line 9429
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    invoke-interface {v1, v0}, Lcom/sonyericsson/cameracommon/storage/Storage;->getRemainStorage(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)J

    move-result-wide v1

    const-wide/32 v3, 0xf000

    cmp-long v1, v1, v3

    if-gtz v1, :cond_38

    .line 9432
    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_STORAGE_ERROR:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    .line 9433
    invoke-interface {v4, v0}, Lcom/sonyericsson/cameracommon/storage/Storage;->getCurrentState(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    move-result-object v0

    aput-object v0, v2, v3

    .line 9432
    invoke-virtual {p0, v1, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    :cond_38
    return-void

    :cond_39
    :goto_39
    return-void
.end method

.method private canInvokePhotoSelfTimer()Z
    .registers 2

    .line 9588
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isLazyInitializationRunning()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isPhotoSelfTimerEnabled()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 9589
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentStorage()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isStorageWritable(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0
.end method

.method private cancelAutoFocus(Z)V
    .registers 2

    if-eqz p1, :cond_7

    .line 8054
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->resetFocusModeAndCommit()V

    .line 8056
    :cond_7
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->cancelAutoFocus()V

    return-void
.end method

.method private changeModeTo(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;)V
    .registers 9

    .line 7881
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2a

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invoke request:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", current:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7882
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 7881
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 7884
    :cond_2a
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mFaultDetector:Lcom/sonyericsson/android/camera/faultdetection/FaultDetector;

    if-eqz v0, :cond_33

    .line 7885
    invoke-interface {v0}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetector;->stopDetection()V

    .line 7886
    iput v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLastRequestId:I

    .line 7889
    :cond_33
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    sget-object v2, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_CAPTURING_MODE_CHANGING:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    new-array v3, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 7891
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->doStopObjectTracking()V

    .line 7893
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->stopAutoFlashMonitoring()V

    .line 7895
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->resetTempParameters()V

    .line 7899
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->clearMessageDialog()V

    .line 7902
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 7903
    invoke-interface {v2, v3}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLastSettings:Lcom/sonyericsson/android/camera/setting/LastSettings;

    iget-object v5, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchCondition;

    .line 7904
    invoke-interface {v5}, Lcom/sonyericsson/android/camera/LaunchCondition;->isOneShot()Z

    move-result v5

    .line 7902
    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->savePreloadSettings(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/setting/LastSettings;Z)V

    .line 7906
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getPhysicalCamera()I

    move-result v0

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getPhysicalCamera()I

    move-result v2

    const/4 v3, 0x0

    if-ne v0, v2, :cond_92

    .line 7907
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->setCurrentCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 7909
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateWaitingEvfPreparedByModeChange;

    invoke-direct {v0, p0, v3}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateWaitingEvfPreparedByModeChange;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$1;)V

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    .line 7911
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$ChangeCameraModeTask;

    invoke-direct {v0, p0, p1, p2, v3}, Lcom/sonyericsson/android/camera/controller/StateMachine$ChangeCameraModeTask;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;Lcom/sonyericsson/android/camera/controller/StateMachine$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mChangeCameraModeTask:Lcom/sonyericsson/android/camera/controller/StateMachine$ChangeCameraModeTask;

    .line 7913
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mChangeCameraModeTask:Lcom/sonyericsson/android/camera/controller/StateMachine$ChangeCameraModeTask;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_b0

    .line 7916
    :cond_92
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->setCurrentCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 7917
    iget-object p2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_ONLY:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    invoke-virtual {p2, v0, p1, v2, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->prepareCameraDeviceHandler(Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/setting/UserSettings;Z)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object p1

    .line 7919
    new-instance p2, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCameraSwitching;

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_ONLY:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    invoke-direct {p2, p0, p1, v0, v3}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCameraSwitching;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;Lcom/sonyericsson/android/camera/controller/StateMachine$1;)V

    new-array p1, v1, [Ljava/lang/Object;

    invoke-direct {p0, p2, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    .line 7920
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->notifyOnEvfPrepared()V

    :goto_b0
    return-void
.end method

.method private varargs declared-synchronized changeTo(Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V
    .registers 7

    monitor-enter p0

    .line 7736
    :try_start_1
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_39

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invoke current:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", to:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7737
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 7736
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 7740
    :cond_39
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->exit()V

    .line 7743
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    .line 7746
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

    .line 7747
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->getCaptureState()Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$OnStateChangedListener;->onStateChanged(Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;[Ljava/lang/Object;)V

    goto :goto_46

    .line 7751
    :cond_5c
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->entry()V
    :try_end_61
    .catchall {:try_start_1 .. :try_end_61} :catchall_63

    .line 7752
    monitor-exit p0

    return-void

    :catchall_63
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private changeToStandby()V
    .registers 4

    .line 9639
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isVideo()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 9640
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    goto :goto_1d

    .line 9642
    :cond_12
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReady;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReady;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    :goto_1d
    return-void
.end method

.method private checkBurstConditions(Z)Z
    .registers 6

    .line 10236
    sget-object v0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->INTERNAL:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isStorageWritable(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 10240
    :cond_a
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getCapturingSchemeCount()I

    move-result v0

    if-lez v0, :cond_13

    return v1

    .line 10249
    :cond_13
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    const/4 v3, 0x1

    if-ne v0, v2, :cond_2c

    if-nez p1, :cond_2c

    .line 10251
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_BURST_REJECTED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    new-array v2, v3, [Ljava/lang/Object;

    sget-object v3, Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;->CANNOT_BURST_IN_DARK_CONDITION:Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;

    aput-object v3, v2, v1

    invoke-interface {p1, v0, v2}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    return v1

    .line 10257
    :cond_2c
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->WIDE_VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq p1, v0, :cond_3e

    .line 10258
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->WIDE_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne p1, v0, :cond_3d

    goto :goto_3e

    :cond_3d
    return v3

    .line 10259
    :cond_3e
    :goto_3e
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_BURST_REJECTED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    new-array v2, v3, [Ljava/lang/Object;

    sget-object v3, Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;->CANNOT_BURST_DUE_TO_WIDE_MODE:Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;

    aput-object v3, v2, v1

    invoke-interface {p1, v0, v2}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    return v1
.end method

.method private checkCallback(Lcom/sonyericsson/cameracommon/storage/RequestFactory$RequestBuilder;)V
    .registers 3

    .line 8873
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mOnStoreCompletedListener:Lcom/sonyericsson/cameracommon/storage/Storage$OnStoreCompletedListener;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$RequestBuilder;->addCallback(Lcom/sonyericsson/cameracommon/storage/Storage$OnStoreCompletedListener;)V

    return-void
.end method

.method private checkSaveDestinationCanBeChange(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z
    .registers 3

    .line 10065
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$cameracommon$storage$Storage$StorageType:[I

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_1c

    const/4 p1, 0x0

    return p1

    .line 10069
    :pswitch_d
    sget-object p1, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->INTERNAL:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isStorageWritable(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z

    move-result p1

    return p1

    .line 10067
    :pswitch_14
    sget-object p1, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->EXTERNAL_CARD:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isStorageWritable(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_14
        :pswitch_d
    .end packed-switch
.end method

.method private checkThermalWarning()V
    .registers 4

    .line 9927
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne v0, v1, :cond_9

    return-void

    .line 9932
    :cond_9
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isPowerSavingSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 9933
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getThermalState()Lcom/sonyericsson/android/camera/controller/StateMachine$ThermalState;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$ThermalState;->WARNING:Lcom/sonyericsson/android/camera/controller/StateMachine$ThermalState;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_24

    .line 9934
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_HEATED_OVER_COOLING_ULTRA_LOW:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    goto :goto_33

    .line 9935
    :cond_24
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getThermalState()Lcom/sonyericsson/android/camera/controller/StateMachine$ThermalState;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$ThermalState;->WARNING_EXTRA:Lcom/sonyericsson/android/camera/controller/StateMachine$ThermalState;

    if-ne v0, v1, :cond_33

    .line 9936
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_HEATED_OVER_COOLING_LOW:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    :cond_33
    :goto_33
    return-void
.end method

.method private cleanupPendingState()V
    .registers 3

    .line 10032
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SELF_TIMER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->updatePhotoSelftimer(Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;)V

    return-void
.end method

.method private closeCamera()V
    .registers 6

    .line 7856
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "invoked"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 7858
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 7859
    invoke-interface {v1, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLastSettings:Lcom/sonyericsson/android/camera/setting/LastSettings;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchCondition;

    .line 7860
    invoke-interface {v4}, Lcom/sonyericsson/android/camera/LaunchCondition;->isOneShot()Z

    move-result v4

    .line 7858
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->savePreloadSettings(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/setting/LastSettings;Z)V

    .line 7865
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->releaseRecorder()V

    .line 7867
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isFusionMonitoringNeeded()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 7868
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->stopFusionMonitoring()V

    .line 7869
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_UPDATE_FUSION_CONDITION:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    check-cast v4, Lcom/sonyericsson/android/camera/device/CameraParameters$FusionResult;

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 7872
    :cond_46
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->stopPreviewSynchronized()V

    .line 7873
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->closeCamera()V

    .line 7874
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mFaultDetector:Lcom/sonyericsson/android/camera/faultdetection/FaultDetector;

    if-eqz v0, :cond_57

    .line 7875
    invoke-interface {v0}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetector;->stopDetection()V

    :cond_57
    return-void
.end method

.method private createRecordingProfile()Lcom/sonyericsson/android/camera/recorder/RecordingProfile;
    .registers 6

    .line 10377
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 10378
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v1, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    .line 10379
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_STABILIZER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 10380
    invoke-interface {v2, v3}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    .line 10381
    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v3, v4}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    .line 10383
    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->STANDARD_SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    if-ne v3, v4, :cond_30

    .line 10384
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->getVideoSize()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v0

    .line 10387
    :cond_30
    new-instance v4, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;

    invoke-direct {v4}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;-><init>()V

    .line 10388
    invoke-virtual {v4, v0}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->videoSize(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;

    move-result-object v0

    .line 10389
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->videoHdr(Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;

    move-result-object v0

    .line 10390
    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->videoStabilizer(Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;)Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;

    move-result-object v0

    .line 10391
    invoke-virtual {v0, v3}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->slowMotion(Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;)Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;

    move-result-object v0

    .line 10392
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->build()Lcom/sonyericsson/android/camera/recorder/RecordingProfile;

    move-result-object v0

    return-object v0
.end method

.method private createTakenStatusCommon(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;Landroid/graphics/Rect;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;
    .registers 22

    move-object/from16 v0, p0

    .line 8604
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 8607
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getOrientation()I

    move-result v4

    .line 8611
    iget-object v1, v0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchCondition;

    invoke-interface {v1}, Lcom/sonyericsson/android/camera/LaunchCondition;->isOneShot()Z

    move-result v1

    if-eqz v1, :cond_1e

    iget-object v1, v0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    .line 8612
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/utility/PermissionsUtil;->areCallerGeoPermissionsGranted(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_1b

    goto :goto_1e

    :cond_1b
    const/4 v1, 0x0

    move-object v5, v1

    goto :goto_29

    .line 8613
    :cond_1e
    :goto_1e
    iget-object v1, v0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->getGeoTagManager()Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v1

    move-object v5, v1

    .line 8619
    :goto_29
    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$cameracommon$storage$SavingTaskManager$SavedFileType:[I

    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->ordinal()I

    move-result v6

    aget v1, v1, v6

    const/4 v6, 0x1

    const/4 v7, 0x0

    packed-switch v1, :pswitch_data_72

    move v13, v7

    goto :goto_49

    .line 8627
    :pswitch_38
    iget-object v1, v0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchCondition;

    invoke-interface {v1}, Lcom/sonyericsson/android/camera/LaunchCondition;->shouldAddToMediaStore()Z

    move-result v1

    move v13, v1

    goto :goto_49

    .line 8624
    :pswitch_40
    iget-object v1, v0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchCondition;

    invoke-interface {v1}, Lcom/sonyericsson/android/camera/LaunchCondition;->shouldAddToMediaStore()Z

    move-result v1

    move v13, v1

    goto :goto_49

    :pswitch_48
    move v13, v6

    .line 8634
    :goto_49
    new-instance v15, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    .line 8638
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v8

    .line 8639
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v9

    const-string v12, ""

    iget-object v1, v0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    .line 8646
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->getCaptureState()Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    move-result-object v1

    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_RESUME_AND_CAPTURE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    if-ne v1, v10, :cond_61

    move v14, v6

    goto :goto_62

    :cond_61
    move v14, v7

    :goto_62
    move-object v1, v15

    move v6, v8

    move v7, v9

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p1

    move-object/from16 v11, p5

    invoke-direct/range {v1 .. v14}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;-><init>(JILandroid/location/Location;IILjava/lang/String;Ljava/lang/String;Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-object v15

    nop

    :pswitch_data_72
    .packed-switch 0x1
        :pswitch_48
        :pswitch_40
        :pswitch_38
    .end packed-switch
.end method

.method private createVideoSavingRequest(Lcom/sonyericsson/android/camera/recorder/RecordingProfile;)Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;
    .registers 14

    .line 8707
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 8709
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne v1, v2, :cond_26

    .line 8710
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getUserSetting()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v1, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    .line 8711
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->STANDARD_SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    if-ne v1, v2, :cond_26

    .line 8712
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->getVideoSize()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v0

    .line 8722
    :cond_26
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentStorage()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v3

    invoke-interface {v1, v2, v3, p1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->getMaxVideoSize(Lcom/sonyericsson/cameracommon/storage/Storage;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/android/camera/recorder/RecordingProfile;)Lcom/sonyericsson/android/camera/util/MaxVideoSize;

    move-result-object v1

    .line 8724
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/util/MaxVideoSize;->getMaxFileSize()J

    move-result-wide v2

    iget-object v4, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    .line 8725
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentStorage()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->getStorageMaximumFileSize(Landroid/content/Context;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)J

    move-result-wide v4

    .line 8724
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 8726
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/util/MaxVideoSize;->getMaxDuration()I

    move-result v1

    int-to-long v4, v1

    .line 8728
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->getMime()Ljava/lang/String;

    move-result-object v9

    .line 8729
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->getExtension()Ljava/lang/String;

    move-result-object v10

    const/4 p1, 0x0

    .line 8732
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v1

    sget-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne v1, v6, :cond_68

    .line 8733
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getUserSetting()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object p1

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p1, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 8736
    :cond_68
    new-instance v1, Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

    sget-object v7, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->VIDEO:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    .line 8739
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoRect()Landroid/graphics/Rect;

    move-result-object v8

    const/4 v11, 0x0

    move-object v6, p0

    .line 8737
    invoke-direct/range {v6 .. v11}, Lcom/sonyericsson/android/camera/controller/StateMachine;->createTakenStatusCommon(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;Landroid/graphics/Rect;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    move-result-object v0

    new-instance v6, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;

    invoke-direct {v6, v4, v5, v2, v3}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;-><init>(JJ)V

    invoke-direct {v1, v0, v6}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;)V

    .line 8746
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mOnStoreCompletedListener:Lcom/sonyericsson/cameracommon/storage/Storage$OnStoreCompletedListener;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;->addCallback(Lcom/sonyericsson/cameracommon/storage/Storage$OnStoreCompletedListener;)V

    .line 8747
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchCondition;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/LaunchCondition;->isOneShotVideo()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;->setOneShot(Z)V

    .line 8748
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchCondition;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/LaunchCondition;->getExtraOutput()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;->setExtraOutput(Landroid/net/Uri;)V

    .line 8749
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentStorage()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;->generateAndSetPath(Ljava/lang/String;Lcom/sonyericsson/cameracommon/storage/Storage;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)V

    .line 8750
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentStorage()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;->setStorageType(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)V

    return-object v1
.end method

.method private doCapture(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)V
    .registers 6

    .line 8114
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLastPhotoSavingRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    .line 8115
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLastPhotoSavingRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    if-eqz v0, :cond_37

    .line 8117
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->applySavingRequest(Lcom/sonyericsson/cameracommon/storage/RequestFactory$RequestBuilder;)V

    .line 8119
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->showDisplayFlashScreen()V

    .line 8122
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLastPhotoSavingRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    .line 8123
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->takePicture(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mShutterFeedback:Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;

    .line 8126
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mPredictiveApplier:Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;

    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;->entrySuppressor(Ljava/lang/Object;)V
    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;->access$7400(Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;Ljava/lang/Object;)V

    .line 8128
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_UPDATE_SETTING_CHANGE_ACCEPTABILITY:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 8130
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isSettingChangeAcceptable()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    .line 8128
    invoke-interface {p1, v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 8132
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendResearchCaptureEvents()V

    :cond_37
    return-void
.end method

.method private doCaptureWhileRecording()V
    .registers 5

    .line 8147
    sget-object v0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->PHOTO_DURING_REC:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->createPhotoSavingRequest(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;)Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 8149
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    const/4 v2, 0x0

    if-eqz v1, :cond_10

    .line 8150
    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->stopAnimation(Z)V

    .line 8152
    :cond_10
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Lcom/sonyericsson/android/camera/view/ViewFinder;->onShutterDone(Z)V

    .line 8155
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->captureWhileRecording(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)V

    .line 8157
    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_SHUTTER_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    invoke-virtual {p0, v1, v3}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    :cond_24
    return-void
.end method

.method private doChangeSelectedFace(Landroid/graphics/Point;)V
    .registers 6

    .line 8005
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mObjectTracking:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->stop()V

    .line 8008
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_FOCUS_POSITION_RELEASED_BY_SELECT_FACE:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v3}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 8012
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_FACE_DETECTION_STARTED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 8016
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    iget v1, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setSelectedFacePosition(II)V

    .line 8019
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isTouchAeEnabled()Z

    move-result p1

    if-eqz p1, :cond_37

    .line 8020
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->METERING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 8021
    invoke-interface {v1, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/Metering;

    .line 8020
    invoke-virtual {p1, v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setMeteringAreaAndCommit(Landroid/graphics/Rect;Lcom/sonyericsson/android/camera/configuration/parameters/Metering;)V

    :cond_37
    return-void
.end method

.method private doFastestCapture()V
    .registers 5

    .line 7932
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentStorage()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isStorageWritable(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_17

    .line 7934
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateWarning;

    invoke-direct {v0, p0, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateWarning;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$1;)V

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    return-void

    .line 7938
    :cond_17
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$PreProcessState:[I

    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getPreProcessState()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_7c

    .line 7978
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Un-Expected state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    .line 7979
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getPreProcessState()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7960
    :pswitch_45
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;

    invoke-direct {v0, p0, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$1;)V

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    goto :goto_7b

    .line 7944
    :pswitch_50
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;

    invoke-direct {v0, p0, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$1;)V

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    goto :goto_7b

    .line 7966
    :pswitch_5b
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;

    invoke-direct {v0, p0, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$1;)V

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    goto :goto_7b

    .line 7955
    :pswitch_66
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;

    invoke-direct {v0, p0, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$1;)V

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    goto :goto_7b

    .line 7950
    :pswitch_71
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;

    invoke-direct {v0, p0, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$1;)V

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    :goto_7b
    :pswitch_7b
    return-void

    :pswitch_data_7c
    .packed-switch 0x1
        :pswitch_71
        :pswitch_66
        :pswitch_5b
        :pswitch_50
        :pswitch_45
        :pswitch_7b
        :pswitch_7b
    .end packed-switch
.end method

.method private doHandleRecordingError()V
    .registers 5

    .line 8540
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    sget-object v1, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ERROR_UNKNOWN:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v3}, Lcom/sonyericsson/android/camera/view/ViewFinder;->showMessageDialog(Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;[Ljava/lang/Object;)V

    .line 8541
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateWarning;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateWarning;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$1;)V

    new-array v1, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    return-void
.end method

.method private doPauseRecording()V
    .registers 3

    .line 8528
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->pauseRecording()V

    .line 8529
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecordingPausing;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecordingPausing;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    return-void
.end method

.method private doResumeRecording()V
    .registers 3

    .line 8534
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->resumeRecording()V

    .line 8535
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    return-void
.end method

.method private doStartObjectTracking(Landroid/graphics/Rect;)V
    .registers 3

    .line 9711
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentStorage()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isStorageWritable(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 9713
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mObjectTracking:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->start(Landroid/graphics/Rect;)V

    :cond_f
    return-void
.end method

.method private doStartRecording(Z)V
    .registers 15

    .line 8163
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    if-eqz v0, :cond_7

    .line 8164
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->disableClick()V

    .line 8167
    :cond_7
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 8168
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v1, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    .line 8169
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v2, v3}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    .line 8170
    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->STANDARD_SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    if-ne v2, v3, :cond_2d

    .line 8171
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->getVideoSize()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v0

    .line 8174
    :cond_2d
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->createRecordingProfile()Lcom/sonyericsson/android/camera/recorder/RecordingProfile;

    move-result-object v7

    .line 8177
    invoke-direct {p0, v7}, Lcom/sonyericsson/android/camera/controller/StateMachine;->createVideoSavingRequest(Lcom/sonyericsson/android/camera/recorder/RecordingProfile;)Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLastVideoSavingRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

    .line 8179
    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLastVideoSavingRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

    if-eqz v3, :cond_14f

    .line 8183
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v3

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-ne v3, v4, :cond_47

    move v0, v10

    goto :goto_4e

    .line 8186
    :cond_47
    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->MMS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    if-ne v0, v3, :cond_4d

    move v0, v9

    goto :goto_4e

    :cond_4d
    move v0, v10

    :goto_4e
    if-nez v0, :cond_5b

    .line 8189
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->isLimitForSizeOrDuration()Z

    move-result v0

    if-eqz v0, :cond_59

    goto :goto_5b

    :cond_59
    move v0, v10

    goto :goto_5c

    :cond_5b
    :goto_5b
    move v0, v9

    :goto_5c
    if-nez v0, :cond_6c

    .line 8191
    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 8192
    invoke-interface {v3, v4}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v3

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq v3, v4, :cond_6c

    move v3, v9

    goto :goto_6d

    :cond_6c
    move v3, v10

    .line 8195
    :goto_6d
    iget-object v4, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    sget-object v5, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_PREPARE_RECORDING_INDICATOR:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLastVideoSavingRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

    iget-object v8, v8, Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;->mVideoStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;

    iget-wide v11, v8, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;->maxDurationMills:J

    long-to-int v8, v11

    .line 8197
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v10

    .line 8198
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v6, v9

    const/4 v0, 0x2

    .line 8199
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v1, v6, v0

    .line 8195
    invoke-interface {v4, v5, v6}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 8206
    :try_start_94
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SlowMotion:[I

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_158

    .line 8214
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    goto :goto_ae

    .line 8209
    :pswitch_a2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLastVideoSavingRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

    .line 8210
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->shouldPlayShutterSound()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->updateRecorder(Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;Z)V

    goto :goto_db

    .line 8215
    :goto_ae
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentStorage()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v1

    const/16 v2, 0xa

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/cameracommon/storage/Storage;->createNotifier(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;I)Lcom/sonyericsson/cameracommon/storage/Storage$StorageWriteNotifier;

    move-result-object v8

    .line 8218
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLastVideoSavingRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;->mCommonStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->location:Landroid/location/Location;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setGpsLocation(Landroid/location/Location;)V

    .line 8220
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLastVideoSavingRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;->mCommonStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget v1, v1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->orientation:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setOrientation(I)V

    .line 8223
    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLastVideoSavingRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

    iget-object v5, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mOnSuperSlowRecordingFinishedListener:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/OnSuperSlowRecordingFinishedListener;

    .line 8226
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->shouldPlayShutterSound()Z

    move-result v6

    .line 8224
    invoke-virtual/range {v3 .. v8}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->prepareRecorder(Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;Lcom/sonyericsson/android/camera/recorder/superslowrecorder/OnSuperSlowRecordingFinishedListener;ZLcom/sonyericsson/android/camera/recorder/RecordingProfile;Lcom/sonyericsson/cameracommon/storage/Storage$StorageWriteNotifier;)V

    .line 8232
    :goto_db
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->requestStartRecording()V

    .line 8234
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isSettingChangeAcceptable()Z

    move-result v0

    if-eqz v0, :cond_14f

    .line 8235
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_UPDATE_SETTING_CHANGE_ACCEPTABILITY:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    new-array v2, v9, [Ljava/lang/Object;

    .line 8237
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v10

    .line 8235
    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V
    :try_end_f5
    .catch Ljava/lang/RuntimeException; {:try_start_94 .. :try_end_f5} :catch_f6

    goto :goto_14f

    :catch_f6
    move-exception v0

    const-string v1, "Prepare recording failed."

    .line 8242
    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8244
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    if-eqz v0, :cond_103

    .line 8245
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->enableClick()V

    .line 8248
    :cond_103
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_UPDATE_SETTING_CHANGE_ACCEPTABILITY:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    new-array v2, v9, [Ljava/lang/Object;

    .line 8250
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v10

    .line 8248
    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 8252
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isCurrentStorageExternal()Z

    move-result v0

    if-eqz v0, :cond_134

    .line 8253
    sget-object v0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->EXTERNAL_CARD:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isStorageWritable(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z

    move-result v0

    if-nez v0, :cond_134

    .line 8254
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    sget-object v0, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->COULD_NOT_START_RECORDING:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    new-array v1, v10, [Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->showMessageDialog(Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;[Ljava/lang/Object;)V

    .line 8255
    new-instance p1, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;

    invoke-direct {p1, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    new-array v0, v10, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    return-void

    .line 8261
    :cond_134
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    sget-object v1, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ERROR_IN_USE_BY_ANOTHER_APPLICATION:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    new-array v2, v10, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinder;->showMessageDialog(Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;[Ljava/lang/Object;)V

    .line 8262
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$CameraNotAvailableTask;

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailable;->ERROR_CAMERA_IN_USE:Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailable;

    .line 8263
    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailable;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailableReason;->RECORDING_ERROR:Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailableReason;

    invoke-direct {v1, p0, v2, v3}, Lcom/sonyericsson/android/camera/controller/StateMachine$CameraNotAvailableTask;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Ljava/lang/String;Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailableReason;)V

    .line 8262
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 8268
    :cond_14f
    :goto_14f
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setRecordBySideSense(Z)V

    return-void

    nop

    :pswitch_data_158
    .packed-switch 0x1
        :pswitch_a2
        :pswitch_a2
    .end packed-switch
.end method

.method private doStopObjectTracking()V
    .registers 4

    .line 9718
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mObjectTracking:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->stop()V

    .line 9720
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_FOCUS_POSITION_RELEASED_EXCEPT_FACE:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method private doStopRecording(Z)V
    .registers 6

    .line 8458
    sget-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->STOP_REC:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/PerfLog;->begin()V

    .line 8460
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    if-eqz v0, :cond_c

    .line 8461
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->enableClick()V

    .line 8464
    :cond_c
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_20

    .line 8466
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    if-eqz v0, :cond_20

    .line 8467
    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_STOP_RECORDING:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v3}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 8471
    :cond_20
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->stopRecording(Z)Ljava/util/Optional;

    move-result-object p1

    .line 8472
    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_60

    .line 8474
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLastVideoSavingRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;->mCommonStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget v1, v1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->orientation:I

    invoke-virtual {v0, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setOrientation(I)V

    .line 8476
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->sendEventSettings()V

    .line 8477
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->SETTINGS_VIDEO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->sendSemiAutoSettingValues(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)V

    .line 8479
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->RECORDING:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    .line 8481
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentRecordingStopOperation()Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;

    move-result-object v3

    .line 8482
    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    .line 8479
    invoke-virtual {v0, v1, v3, p1, v2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->sendRecordingEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;IZ)V

    .line 8486
    :cond_60
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->onCaptureDone()V

    .line 8487
    sget-object p1, Lcom/sonyericsson/android/camera/util/PerfLog;->STOP_REC:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/util/PerfLog;->end()V

    return-void
.end method

.method private doStopRecordingWithForceFlush(ZZ)V
    .registers 7

    const/4 v0, 0x0

    if-nez p2, :cond_22

    .line 8492
    sget-object v1, Lcom/sonyericsson/android/camera/util/PerfLog;->STOP_REC:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/util/PerfLog;->begin()V

    .line 8494
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    if-eqz v1, :cond_f

    .line 8495
    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->enableClick()V

    .line 8497
    :cond_f
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq v1, v2, :cond_22

    .line 8499
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    if-eqz v1, :cond_22

    .line 8500
    sget-object v2, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_STOP_RECORDING:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    new-array v3, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 8506
    :cond_22
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->forceFlushRecordingRequest(Z)Ljava/util/Optional;

    move-result-object p1

    if-nez p2, :cond_6e

    .line 8508
    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result p2

    if-eqz p2, :cond_64

    .line 8510
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p2

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLastVideoSavingRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;->mCommonStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget v1, v1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->orientation:I

    invoke-virtual {p2, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setOrientation(I)V

    .line 8512
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->sendEventSettings()V

    .line 8513
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p2

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->SETTINGS_VIDEO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-virtual {p2, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->sendSemiAutoSettingValues(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)V

    .line 8515
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p2

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->RECORDING:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    .line 8517
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentRecordingStopOperation()Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;

    move-result-object v2

    .line 8518
    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    .line 8515
    invoke-virtual {p2, v1, v2, p1, v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->sendRecordingEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;IZ)V

    .line 8522
    :cond_64
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->onCaptureDone()V

    .line 8523
    sget-object p1, Lcom/sonyericsson/android/camera/util/PerfLog;->STOP_REC:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/util/PerfLog;->end()V

    :cond_6e
    return-void
.end method

.method private doZoomChangeAngle()V
    .registers 3

    .line 9195
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

.method private finishOneShot(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;Landroid/graphics/Bitmap;)V
    .registers 10

    .line 9066
    new-instance v6, Lcom/sonyericsson/android/camera/controller/StateMachine$OneShotResult;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->getUri()Landroid/net/Uri;

    move-result-object v1

    .line 9067
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->getMediaSavingResult()Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->getSavingRequest()Lcom/sonyericsson/cameracommon/storage/SavingRequest;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, v6

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/camera/controller/StateMachine$OneShotResult;-><init>(Landroid/net/Uri;Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;Lcom/sonyericsson/cameracommon/storage/SavingRequest;Landroid/graphics/Bitmap;Lcom/sonyericsson/android/camera/controller/StateMachine$1;)V

    .line 9068
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {p1, v6}, Lcom/sonyericsson/android/camera/CameraActivity;->finishOneShot(Lcom/sonyericsson/android/camera/controller/StateMachine$OneShotResult;)V

    return-void
.end method

.method private getCameraId(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;
    .registers 3

    .line 9513
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_18

    .line 9526
    :pswitch_b
    sget-object p1, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->BACK:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    return-object p1

    .line 9524
    :pswitch_e
    sget-object p1, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->WIDE:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    return-object p1

    .line 9517
    :pswitch_11
    sget-object p1, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->BACK:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    return-object p1

    .line 9521
    :pswitch_14
    sget-object p1, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->FRONT:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    return-object p1

    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_14
        :pswitch_14
        :pswitch_11
        :pswitch_11
        :pswitch_b
        :pswitch_b
        :pswitch_e
        :pswitch_14
        :pswitch_e
        :pswitch_11
    .end packed-switch
.end method

.method private getCameraOrientation()I
    .registers 2

    .line 8593
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getCameraInfo()Lcom/sonyericsson/android/camera/device/CameraInfo;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    goto :goto_c

    .line 8594
    :cond_a
    iget v0, v0, Lcom/sonyericsson/android/camera/device/CameraInfo;->orientation:I

    :goto_c
    return v0
.end method

.method private getCurrentRecordingStopOperation()Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;
    .registers 3

    .line 8448
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getThermalState()Lcom/sonyericsson/android/camera/controller/StateMachine$ThermalState;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$ThermalState;->CRITICAL:Lcom/sonyericsson/android/camera/controller/StateMachine$ThermalState;

    if-ne v0, v1, :cond_b

    .line 8449
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;->THERMAL_STOP:Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;

    return-object v0

    .line 8450
    :cond_b
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->isAlreadyBcl()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 8451
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;->LOWBATTERY_STOP:Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;

    return-object v0

    .line 8453
    :cond_16
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;->USER_STOP:Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;

    return-object v0
.end method

.method private getCurrentStorage()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;
    .registers 4

    .line 10078
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchCondition;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/LaunchCondition;->isOneShot()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 10079
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchCondition;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/LaunchCondition;->getStorageTypeForOneshot()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v0

    return-object v0

    .line 10081
    :cond_f
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->DESTINATION_TO_SAVE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 10082
    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    if-nez v0, :cond_2b

    .line 10084
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchCondition;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/LaunchCondition;->getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    .line 10085
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->DESTINATION_TO_SAVE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v1, v0, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    .line 10088
    :cond_2b
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->getType()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v0

    return-object v0
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

    .line 10358
    array-length v0, p0

    if-le v0, p1, :cond_10

    aget-object v0, p0, p1

    .line 10360
    invoke-virtual {p2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 10361
    aget-object p0, p0, p1

    return-object p0

    :cond_10
    if-nez p0, :cond_1c

    const-string p0, "Specified parameter is empty."

    .line 10364
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_3e

    .line 10366
    :cond_1c
    array-length v0, p0

    if-gt v0, p1, :cond_29

    const-string p0, "Specified parameter count is too short"

    .line 10367
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_3e

    .line 10368
    :cond_29
    aget-object p0, p0, p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3e

    const-string p0, "Specified parameter type is missmatch."

    .line 10369
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_3e
    :goto_3e
    return-object p3
.end method

.method private getOrientation()I
    .registers 8

    .line 8555
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getSensorOrientationDegree()I

    move-result v0

    .line 8556
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/utility/RotationUtil;->getNormalizedRotation(I)I

    move-result v0

    .line 8558
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getCameraInfo()Lcom/sonyericsson/android/camera/device/CameraInfo;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_14

    return v2

    .line 8565
    :cond_14
    sget-boolean v3, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v3, :cond_5d

    const/4 v3, 0x1

    .line 8566
    new-array v4, v3, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ORIENTATION:sensorOrientation:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    const/4 v4, 0x2

    .line 8567
    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "ORIENTATION:cameraOrientation"

    aput-object v5, v4, v2

    iget v5, v1, Lcom/sonyericsson/android/camera/device/CameraInfo;->orientation:I

    .line 8568
    invoke-static {v5}, Lcom/sonyericsson/cameracommon/utility/RotationUtil;->orientationToString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    .line 8567
    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 8569
    new-array v3, v3, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ORIENTATION:cameraFacing:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/sonyericsson/android/camera/device/CameraInfo;->facing:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 8577
    :cond_5d
    sget-object v2, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$device$CameraInfo$CameraId:[I

    iget-object v3, v1, Lcom/sonyericsson/android/camera/device/CameraInfo;->facing:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_7e

    .line 8585
    iget v1, v1, Lcom/sonyericsson/android/camera/device/CameraInfo;->orientation:I

    add-int/2addr v1, v0

    rem-int/lit16 v1, v1, 0x168

    goto :goto_7d

    .line 8582
    :pswitch_70
    iget v1, v1, Lcom/sonyericsson/android/camera/device/CameraInfo;->orientation:I

    add-int/lit16 v1, v1, 0x168

    sub-int/2addr v1, v0

    rem-int/lit16 v1, v1, 0x168

    goto :goto_7d

    .line 8579
    :pswitch_78
    iget v1, v1, Lcom/sonyericsson/android/camera/device/CameraInfo;->orientation:I

    add-int/2addr v1, v0

    rem-int/lit16 v1, v1, 0x168

    :goto_7d
    return v1

    :pswitch_data_7e
    .packed-switch 0x1
        :pswitch_78
        :pswitch_70
    .end packed-switch
.end method

.method private getPreviewRect()Landroid/graphics/Rect;
    .registers 4

    .line 9363
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 9365
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 9366
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v1, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 9367
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoRect()Landroid/graphics/Rect;

    move-result-object v1

    goto :goto_2d

    .line 9369
    :cond_1f
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->RESOLUTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v1, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 9370
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getPictureRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 9372
    :goto_2d
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object v2

    .line 9374
    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getPreviewRect(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 9373
    invoke-virtual {v2, v0}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getRectAccordingToLayoutOrientation(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method private getPreviewRect(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 6

    .line 9387
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 9388
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getUserSetting()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    .line 9389
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 9388
    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    .line 9391
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    if-ne v0, v1, :cond_23

    .line 9393
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p1

    .line 9392
    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getPreferredPreviewSizeForHdrVideo(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Landroid/graphics/Rect;

    move-result-object p1

    goto :goto_3b

    .line 9396
    :cond_23
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p1

    .line 9395
    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getPreferredPreviewSizeForVideo(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Landroid/graphics/Rect;

    move-result-object p1

    .line 9397
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-eqz v0, :cond_37

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-nez v0, :cond_3b

    .line 9399
    :cond_37
    invoke-static {p2}, Lcom/sonyericsson/android/camera/device/PlatformDependencyResolver;->getPreferredPreviewSizeFromCaptureSize(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    .line 9405
    :cond_3b
    :goto_3b
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getSupportedPreviewSizes(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Ljava/util/List;

    move-result-object v0

    .line 9402
    invoke-static {p2, p1, v0}, Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver;->getOptimalVideoPreviewRect(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/util/List;)Landroid/graphics/Rect;

    move-result-object p1

    return-object p1

    .line 9408
    :cond_48
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p1

    .line 9407
    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getPreferredPreviewSizeForStill(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Landroid/graphics/Rect;

    move-result-object p1

    .line 9409
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-eqz v0, :cond_5c

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-nez v0, :cond_60

    .line 9411
    :cond_5c
    invoke-static {p2}, Lcom/sonyericsson/android/camera/device/PlatformDependencyResolver;->getPreferredPreviewSizeFromCaptureSize(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    .line 9416
    :cond_60
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getSupportedPreviewSizes(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Ljava/util/List;

    move-result-object v0

    .line 9413
    invoke-static {p2, p1, v0}, Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver;->getOptimalStillPreviewRect(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/util/List;)Landroid/graphics/Rect;

    move-result-object p1

    return-object p1
.end method

.method private getSensorOrientation()I
    .registers 6

    .line 9444
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getLastDetectedOrientation()Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    move-result-object v0

    .line 9446
    sget-object v1, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->Portrait:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_d

    move v0, v2

    goto :goto_e

    :cond_d
    const/4 v0, 0x2

    .line 9452
    :goto_e
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_2b

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getOrientation: sensor orientation:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2b
    return v0
.end method

.method private getThermalState()Lcom/sonyericsson/android/camera/controller/StateMachine$ThermalState;
    .registers 2

    .line 9685
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->isAlreadyHighTemperature()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 9686
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$ThermalState;->CRITICAL:Lcom/sonyericsson/android/camera/controller/StateMachine$ThermalState;

    return-object v0

    .line 9687
    :cond_b
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->isThermalWarningReceived()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 9688
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$ThermalState;->WARNING:Lcom/sonyericsson/android/camera/controller/StateMachine$ThermalState;

    return-object v0

    .line 9689
    :cond_16
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->isThermalWarningExtraState()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 9690
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$ThermalState;->WARNING_EXTRA:Lcom/sonyericsson/android/camera/controller/StateMachine$ThermalState;

    return-object v0

    .line 9692
    :cond_21
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$ThermalState;->NORMAL:Lcom/sonyericsson/android/camera/controller/StateMachine$ThermalState;

    return-object v0
.end method

.method private hasRemainSavingRequest()Z
    .registers 3

    .line 9955
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getCapturingSchemeCount(Z)I

    move-result v0

    if-lez v0, :cond_a

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    return v1
.end method

.method private initGeoTagManager()V
    .registers 5

    .line 9964
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getGeoTagManager()Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    move-result-object v0

    if-eqz v0, :cond_3f

    .line 9968
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getGeoTagManager()Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->isGeotagPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 9969
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 9970
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getGeoTagManager()Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->setIsGeotagPermissionGranted(Z)V

    .line 9973
    :cond_25
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getGeoTagManager()Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    .line 9974
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->isAllowToUseLocation()Z

    move-result v3

    .line 9973
    invoke-virtual {v0, v1, v2, v3}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->initGeotag(Landroid/app/Activity;Lcom/sonyericsson/android/camera/setting/UserSettings;Z)Z

    .line 9975
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getGeoTagManager()Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->notifyStatus()V

    :cond_3f
    return-void
.end method

.method private initSideSenseSetting()V
    .registers 3

    const/4 v0, 0x1

    .line 9980
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/SettingUtil;->isSideSenseEnabled(Z)Z

    move-result v0

    if-nez v0, :cond_e

    .line 9981
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/SideSense;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SideSense;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    :cond_e
    return-void
.end method

.method private isAllSnapshotCompleted()Z
    .registers 2

    .line 724
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getCapturingSchemeCount()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private isBokehMonitoringNeeded()Z
    .registers 2

    .line 10223
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isBokehSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method private isBurstByCameraKeyEnabled()Z
    .registers 3

    .line 9579
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAMERA_KEY:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CameraKey;->BURST_SHOT:Lcom/sonyericsson/android/camera/configuration/parameters/CameraKey;

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private isCurrentStorageExternal()Z
    .registers 3

    .line 10092
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentStorage()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v0

    .line 10093
    sget-object v1, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->EXTERNAL_CARD:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private isEnoughStorageSizeAvailableForOneShotVideo()Z
    .registers 10

    .line 9787
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchCondition;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/LaunchCondition;->isOneShotVideo()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_a

    return v1

    .line 9791
    :cond_a
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->createRecordingProfile()Lcom/sonyericsson/android/camera/recorder/RecordingProfile;

    move-result-object v0

    .line 9793
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentStorage()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v4

    invoke-interface {v2, v3, v4, v0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->getMaxVideoSize(Lcom/sonyericsson/cameracommon/storage/Storage;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/android/camera/recorder/RecordingProfile;)Lcom/sonyericsson/android/camera/util/MaxVideoSize;

    move-result-object v2

    .line 9794
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/util/MaxVideoSize;->getMaxDuration()I

    move-result v3

    const/4 v4, 0x0

    if-lez v3, :cond_2c

    .line 9795
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/util/MaxVideoSize;->getMaxDuration()I

    move-result v0

    const/16 v2, 0x3e8

    if-lt v0, v2, :cond_2a

    goto :goto_2b

    :cond_2a
    move v1, v4

    :goto_2b
    return v1

    .line 9796
    :cond_2c
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/util/MaxVideoSize;->getMaxFileSize()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-lez v3, :cond_48

    .line 9797
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/util/MaxVideoSize;->getMaxFileSize()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->getMinFileSize()J

    move-result-wide v5

    const-wide/16 v7, 0x400

    mul-long/2addr v5, v7

    cmp-long v0, v2, v5

    if-ltz v0, :cond_46

    goto :goto_47

    :cond_46
    move v1, v4

    :goto_47
    return v1

    :cond_48
    return v1
.end method

.method private isFusionMonitoringNeeded()Z
    .registers 7

    .line 10205
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;->getOptions(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;

    move-result-object v0

    .line 10206
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_b
    if-ge v3, v1, :cond_18

    aget-object v4, v0, v3

    .line 10207
    sget-object v5, Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;

    if-eq v4, v5, :cond_15

    const/4 v0, 0x1

    return v0

    :cond_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_18
    return v2
.end method

.method private isLazyInitializationRunning()Z
    .registers 2

    .line 9584
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->isLazyInitializationRunning()Z

    move-result v0

    return v0
.end method

.method private isNeedRepairRequestId(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)Z
    .registers 5

    .line 10180
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->getRequestId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_16

    .line 10182
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->getCaptureIdForPredictiveCapture()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v1, :cond_f

    return v2

    .line 10187
    :cond_f
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->isPredictiveCaptureCover()Z

    move-result p1

    if-eqz p1, :cond_16

    return v2

    :cond_16
    const/4 p1, 0x0

    return p1
.end method

.method private isPhotoSelfTimerEnabled()Z
    .registers 3

    .line 9575
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->getPhotoSelfTimerSetting()Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    if-eq v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private isSmoothZoomEnabled()Z
    .registers 2

    .line 9567
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isCameraFront()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    return v0

    :cond_a
    const/4 v0, 0x1

    return v0
.end method

.method private isStorageAvailableWhenIsTagging()Z
    .registers 3

    .line 9809
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchCondition;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/LaunchCondition;->isOneShot()Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->TAGGING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 9810
    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Tagging;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/Tagging;

    if-ne v0, v1, :cond_1e

    sget-object v0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->INTERNAL:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    .line 9811
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isStorageWritable(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z

    move-result v0

    if-nez v0, :cond_1e

    const/4 v0, 0x0

    return v0

    :cond_1e
    const/4 v0, 0x1

    return v0
.end method

.method private isStorageFull(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z
    .registers 3

    .line 10049
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    invoke-interface {v0, p1}, Lcom/sonyericsson/cameracommon/storage/Storage;->getCurrentState(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    move-result-object p1

    .line 10050
    sget-object v0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->FULL:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    if-ne p1, v0, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method private isStorageWritable(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z
    .registers 3
    .param p1    # Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 10041
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    invoke-interface {v0, p1}, Lcom/sonyericsson/cameracommon/storage/Storage;->getCurrentState(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    move-result-object p1

    if-eqz p1, :cond_10

    .line 10042
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->isWritable()Z

    move-result p1

    if-eqz p1, :cond_10

    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    return p1
.end method

.method private isTouchAeEnabled()Z
    .registers 4

    .line 7984
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isTouchAeSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return v1

    .line 7988
    :cond_c
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->TOUCH_CAPTURE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;

    if-ne v0, v2, :cond_19

    return v1

    .line 7992
    :cond_19
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq v0, v2, :cond_31

    .line 7993
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SUPERIOR_FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq v0, v2, :cond_31

    .line 7994
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->NORMAL:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne v0, v2, :cond_3f

    .line 7995
    :cond_31
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->TOUCH_INTENTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/TouchIntention;->FOCUS_AND_EXPOSURE:Lcom/sonyericsson/android/camera/configuration/parameters/TouchIntention;

    if-ne v0, v2, :cond_3f

    const/4 v0, 0x1

    return v0

    :cond_3f
    return v1
.end method

.method private isVideo()Z
    .registers 3

    .line 577
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method private needToCheckAudioResource(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Z
    .registers 5

    .line 9986
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_12

    packed-switch p1, :pswitch_data_22

    return v2

    :pswitch_11
    return v1

    .line 9993
    :cond_12
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p1, v0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->SUPER_SLOW_SHOT:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    if-ne p1, v0, :cond_21

    return v2

    :cond_21
    return v1

    :pswitch_data_22
    .packed-switch 0x8
        :pswitch_11
        :pswitch_11
        :pswitch_11
    .end packed-switch
.end method

.method private notifyCoolingUltraLow(Z)V
    .registers 4

    .line 9659
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mFaultDetector:Lcom/sonyericsson/android/camera/faultdetection/FaultDetector;

    if-eqz v0, :cond_7

    .line 9660
    invoke-interface {v0}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetector;->stopDetection()V

    .line 9662
    :cond_7
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    if-eqz v0, :cond_e

    .line 9663
    invoke-interface {v0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->onNotifyCoolingUltraLow(Z)V

    .line 9666
    :cond_e
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setUltraLowPower()V

    .line 9667
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    if-eqz p1, :cond_2f

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->isSetupHeadupDisplayInvoked()Z

    move-result p1

    if-eqz p1, :cond_2f

    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    .line 9668
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isObjectTrackingRunning()Z

    move-result p1

    if-eqz p1, :cond_2f

    .line 9669
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_FOCUS_POSITION_RELEASED_EXCEPT_FACE:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 9673
    :cond_2f
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mObjectTracking:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->stop()V

    .line 9675
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mGestureShutter:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/controller/GestureShutter;->handlePreviewStopped()V

    return-void
.end method

.method private varargs notifyDelayedEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)Lcom/sonyericsson/android/camera/controller/StateMachine$NotifyDelayedEventTask;
    .registers 6

    .line 2348
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$NotifyDelayedEventTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine$NotifyDelayedEventTask;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;Lcom/sonyericsson/android/camera/controller/StateMachine$1;)V

    .line 2349
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-object v0
.end method

.method private notifySceneRecognitionDisabled()V
    .registers 6

    .line 9766
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraParameters$SceneRecognitionResult;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters$SceneRecognitionResult;-><init>()V

    const/4 v1, 0x0

    .line 9767
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->getSceneMode(I)Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    move-result-object v2

    iput-object v2, v0, Lcom/sonyericsson/android/camera/device/CameraParameters$SceneRecognitionResult;->sceneMode:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    .line 9770
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;->getCondition(I)Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;

    move-result-object v2

    iput-object v2, v0, Lcom/sonyericsson/android/camera/device/CameraParameters$SceneRecognitionResult;->deviceStabilityCondition:Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;

    .line 9772
    iput-boolean v1, v0, Lcom/sonyericsson/android/camera/device/CameraParameters$SceneRecognitionResult;->isMacroRange:Z

    .line 9773
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    sget-object v3, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_DETECTED_SCENE_CHANGED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v1

    invoke-interface {v2, v3, v4}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method private onOneShotStoreCompleted(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V
    .registers 3

    .line 9056
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->getExtraOutput()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_a

    .line 9058
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->requestLoadStoredPicture(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V

    goto :goto_e

    :cond_a
    const/4 v0, 0x0

    .line 9061
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->finishOneShot(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;Landroid/graphics/Bitmap;)V

    :goto_e
    return-void
.end method

.method private onPredictiveCaptureStoreComplete(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V
    .registers 4

    .line 9465
    sget-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->BURST_STORE_COMPLETE:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/PerfLog;->transit()V

    .line 9467
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mPredictiveCaptureStoreInfo:Lcom/sonyericsson/cameracommon/contentsview/PredictiveCaptureStoreInfo;

    if-eqz v0, :cond_1d

    .line 9469
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/PredictiveCaptureStoreInfo;->getCaptureTime()Ljava/lang/String;

    move-result-object v0

    .line 9468
    invoke-virtual {p1, v0}, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->isSameSaveTimeForPredictiveCapture(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 9470
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mPredictiveApplier:Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mPredictiveCaptureStoreInfo:Lcom/sonyericsson/cameracommon/contentsview/PredictiveCaptureStoreInfo;

    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;->leaveSuppressor(Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;->access$4700(Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 9471
    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mPredictiveCaptureStoreInfo:Lcom/sonyericsson/cameracommon/contentsview/PredictiveCaptureStoreInfo;

    .line 9475
    :cond_1d
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonyericsson.android.camera.intent.action.PREDICTIVE_CAPTURE_SAVE_COMPLETED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.sonyericsson.android.camera.extra.PREDICTIVE_CAPTURE_DIRECTORY_PATH"

    .line 9478
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->getPredictiveCaptureGroupIdPath()Ljava/lang/String;

    move-result-object p1

    .line 9477
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9479
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private onZoomChange(I)V
    .registers 6

    .line 9199
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "invoke"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 9206
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    if-eqz v0, :cond_28

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->isSetupHeadupDisplayInvoked()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 9208
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_ZOOM_CHANGED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 9210
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    .line 9208
    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 9213
    :cond_28
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mFaultDetector:Lcom/sonyericsson/android/camera/faultdetection/FaultDetector;

    if-eqz p1, :cond_2f

    .line 9214
    invoke-interface {p1}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetector;->clearStoredFaces()V

    :cond_2f
    return-void
.end method

.method private pauseAudioPlaybackForRecord()V
    .registers 2

    .line 9701
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->pauseAudioPlayback()V

    return-void
.end method

.method private varargs pauseVideoRecording([Ljava/lang/Object;)V
    .registers 5

    const/4 v0, 0x0

    .line 9946
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->doStopRecording(Z)V

    .line 9947
    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePause;

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePause;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;ZLcom/sonyericsson/android/camera/controller/StateMachine$1;)V

    invoke-direct {p0, v1, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    return-void
.end method

.method public static final preload()V
    .registers 0

    return-void
.end method

.method private prepareZoom()V
    .registers 1

    return-void
.end method

.method private removeChangeCameraModeTask()V
    .registers 3

    .line 9293
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mChangeCameraModeTask:Lcom/sonyericsson/android/camera/controller/StateMachine$ChangeCameraModeTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private removeDelayedEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$NotifyDelayedEventTask;)V
    .registers 3

    .line 2354
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private removeStartRecordingTask()V
    .registers 3

    .line 8405
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mStartRecordingTask:Lcom/sonyericsson/android/camera/controller/StateMachine$StartRecordingTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private requestChangeModeTo(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;)V
    .registers 10

    .line 8318
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    if-ne v0, p1, :cond_2a

    .line 8319
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-nez p1, :cond_b

    return-void

    .line 8320
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The specified mode is already set, mode:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8322
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8326
    :cond_2a
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_92

    :pswitch_35
    goto :goto_90

    .line 8337
    :pswitch_36
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendResearchSameActivityEvent(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 8340
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 8341
    invoke-interface {v1, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLastSettings:Lcom/sonyericsson/android/camera/setting/LastSettings;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchCondition;

    .line 8342
    invoke-interface {v4}, Lcom/sonyericsson/android/camera/LaunchCondition;->isOneShot()Z

    move-result v4

    .line 8340
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->savePreloadSettings(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/setting/LastSettings;Z)V

    .line 8344
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isFusionMonitoringNeeded()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_6e

    .line 8345
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->stopFusionMonitoring()V

    .line 8346
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    sget-object v4, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_UPDATE_FUSION_CONDITION:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    new-array v5, v3, [Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Lcom/sonyericsson/android/camera/device/CameraParameters$FusionResult;

    aput-object v6, v5, v2

    invoke-interface {v0, v4, v5}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 8350
    :cond_6e
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isBokehMonitoringNeeded()Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 8351
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->stopBokehMonitoring()V

    .line 8352
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mPredictiveApplier:Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/Bokeh;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/Bokeh;

    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;->leaveSuppressor(Ljava/lang/Object;)V
    invoke-static {v0, v4}, Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;->access$4700(Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;Ljava/lang/Object;)V

    .line 8353
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    sget-object v4, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_UPDATE_BOKEH_CONDITION:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    new-array v3, v3, [Ljava/lang/Object;

    check-cast v1, Lcom/sonyericsson/android/camera/device/CameraParameters$BokehResult;

    aput-object v1, v3, v2

    invoke-interface {v0, v4, v3}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 8358
    :cond_8d
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->changeModeTo(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;)V

    :goto_90
    return-void

    nop

    :pswitch_data_92
    .packed-switch 0x1
        :pswitch_36
        :pswitch_36
        :pswitch_36
        :pswitch_36
        :pswitch_36
        :pswitch_35
        :pswitch_36
        :pswitch_36
        :pswitch_36
        :pswitch_36
    .end packed-switch
.end method

.method private requestLoadStoredPicture(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V
    .registers 6

    .line 493
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_30

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invoke uri:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", OneShot:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchCondition;

    .line 494
    invoke-interface {v3}, Lcom/sonyericsson/android/camera/LaunchCondition;->isOneShot()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 493
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 495
    :cond_30
    sget-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->BYPASSCAMERA_ON_STORE_COMPLETE:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/PerfLog;->transit()V

    .line 497
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->getOrientation()I

    move-result v2

    new-instance v3, Lcom/sonyericsson/android/camera/controller/StateMachine$2;

    invoke-direct {v3, p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$2;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/sonyericsson/cameracommon/storage/Storage;->requestLoad(Landroid/net/Uri;ILcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;)V

    return-void
.end method

.method private requestPhotoSmileCapture()V
    .registers 3

    .line 8885
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SMILE_CAPTURE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    .line 8886
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;->getIntValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->requestSmileCapture(I)V

    return-void
.end method

.method private requestResizeEvf(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)V
    .registers 10

    .line 1579
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->getCaptureState()Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_INITIALIZE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    if-eq v0, v1, :cond_14

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    .line 1580
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->getCaptureState()Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_PAUSE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    if-ne v0, v1, :cond_17

    :cond_14
    if-eqz p2, :cond_17

    return-void

    .line 1587
    :cond_17
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isVideo()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_6a

    .line 1588
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, p1, v3}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 1589
    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne p1, v3, :cond_54

    .line 1590
    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v3, p1, v4}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    .line 1592
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->getVideoSize()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoRect()Landroid/graphics/Rect;

    move-result-object v4

    .line 1593
    sget-object v5, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SlowMotion:[I

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->ordinal()I

    move-result v3

    aget v3, v5, v3

    packed-switch v3, :pswitch_data_a4

    move v0, v2

    goto :goto_79

    .line 1596
    :pswitch_4c
    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FULL_HD:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    if-ne v0, v3, :cond_52

    move v0, v1

    goto :goto_79

    :cond_52
    move v0, v2

    goto :goto_79

    .line 1600
    :cond_54
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoRect()Landroid/graphics/Rect;

    move-result-object v4

    .line 1601
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 1602
    invoke-interface {v0, p1, v3}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    if-ne v0, v3, :cond_68

    move v0, v1

    goto :goto_79

    :cond_68
    move v0, v2

    goto :goto_79

    .line 1605
    :cond_6a
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->RESOLUTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, p1, v3}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 1606
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getPictureRect()Landroid/graphics/Rect;

    move-result-object v4

    move v0, v2

    .line 1609
    :goto_79
    invoke-direct {p0, p1, v4}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getPreviewRect(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    if-eqz p1, :cond_a2

    .line 1611
    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/device/PlatformDependencyResolver;->getSurfaceSize(Landroid/graphics/Rect;Z)Landroid/util/Size;

    move-result-object p1

    .line 1614
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    sget-object v3, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_RESIZE_EVF_SCOPE:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v5, Landroid/graphics/Rect;

    .line 1615
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    invoke-direct {v5, v2, v2, v6, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v5, v4, v2

    .line 1616
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v4, v1

    .line 1614
    invoke-interface {v0, v3, v4}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    :cond_a2
    return-void

    nop

    :pswitch_data_a4
    .packed-switch 0x1
        :pswitch_4c
        :pswitch_4c
    .end packed-switch
.end method

.method private requestSmileCapture(I)V
    .registers 6

    .line 8902
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLastSmileCaptureTakenTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_22

    .line 8906
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->getSelectedFaceSmileScore()I

    move-result v0

    if-ge p1, v0, :cond_22

    .line 8907
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLastSmileCaptureTakenTime:J

    .line 8908
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mVirtualKeyEventDispatcher:Lcom/sonyericsson/android/camera/view/UserEventHandler$VirtualKeyEventDispatcher;

    sget-object v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$VirtualKeyEvent;->SMILE_CAPTURE:Lcom/sonyericsson/android/camera/view/UserEventHandler$VirtualKeyEvent;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$VirtualKeyEventDispatcher;->sendVirtualKeyEvent(Lcom/sonyericsson/android/camera/view/UserEventHandler$VirtualKeyEvent;)Z

    :cond_22
    return-void
.end method

.method private declared-synchronized requestStorePicture(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)V
    .registers 4

    monitor-enter p0

    .line 9019
    :try_start_1
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isNeedRepairRequestId(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    if-eqz v0, :cond_15

    .line 9020
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->getRequestId(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->setRequestId(I)V

    .line 9024
    :cond_15
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$RequestStoreTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine$RequestStoreTask;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;Lcom/sonyericsson/android/camera/controller/StateMachine$1;)V

    .line 9026
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mExecService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_22

    .line 9027
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

    .line 9030
    monitor-exit p0

    return-void

    .line 9032
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 9033
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->stopAnimation(Z)V

    .line 9037
    :cond_f
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    if-eqz v0, :cond_1c

    .line 9038
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->getRequestId(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;->setRequestId(I)V

    .line 9042
    :cond_1c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;->setDateTaken(J)V

    .line 9044
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mOnStoreCompletedListener:Lcom/sonyericsson/cameracommon/storage/Storage$OnStoreCompletedListener;

    .line 9045
    invoke-static {p1, v0}, Lcom/sonyericsson/cameracommon/storage/RequestFactory;->createSavingRequest(Lcom/sonyericsson/cameracommon/storage/RequestFactory$RequestBuilder;Lcom/sonyericsson/cameracommon/storage/Storage$OnStoreCompletedListener;)Lcom/sonyericsson/cameracommon/storage/SavingRequest;

    move-result-object p1

    .line 9048
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->getStorageType()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Lcom/sonyericsson/cameracommon/storage/Storage;->requestStore(Lcom/sonyericsson/cameracommon/storage/SavingRequest;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z

    .line 9051
    sget-object p1, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_STORE_REQUESTED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V
    :try_end_39
    .catchall {:try_start_5 .. :try_end_39} :catchall_3b

    .line 9052
    monitor-exit p0

    return-void

    :catchall_3b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private requestVideoSmileCapture()V
    .registers 3

    .line 8890
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SMILE_CAPTURE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;

    .line 8891
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;->getIntValue()I

    move-result v0

    .line 8890
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->requestSmileCapture(I)V

    return-void
.end method

.method private sendResearchCaptureEvents()V
    .registers 3

    .line 8137
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->sendEventSettings()V

    .line 8138
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->SETTINGS_PHOTO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->sendSemiAutoSettingValues(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)V

    .line 8139
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLastPhotoSavingRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mCommonStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget v1, v1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->orientation:I

    invoke-virtual {v0, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setOrientation(I)V

    .line 8141
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->SETTINGS_PHOTO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->sendSemiAutoSettingValues(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)V

    .line 8142
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setTimeCaptureStart()V

    return-void
.end method

.method private sendResearchSameActivityEvent(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V
    .registers 4

    .line 9647
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->clearAllSettings()V

    .line 9648
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->clearTemporarySettingValues()V

    .line 9649
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->onPause(Z)V

    .line 9650
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/LaunchTrigger;->SAME_ACTIVITY:Lcom/sonyericsson/android/camera/LaunchTrigger;

    invoke-virtual {v0, v1, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->sendView(Lcom/sonyericsson/android/camera/LaunchTrigger;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    return-void
.end method

.method private sendVideoChapterThumbnailToViewFinder()V
    .registers 6

    .line 5634
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mChapterThumbnail:Lcom/sonyericsson/android/camera/controller/ChapterThumbnail;

    if-eqz v0, :cond_2b

    .line 5635
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->isHeadUpDisplayReady()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 5636
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLastVideoSavingRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

    if-eqz v0, :cond_19

    .line 5637
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mChapterThumbnail:Lcom/sonyericsson/android/camera/controller/ChapterThumbnail;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;->mCommonStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget v0, v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->orientation:I

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/controller/ChapterThumbnail;->setOrientation(I)V

    .line 5640
    :cond_19
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_ADD_VIDEO_CHAPTER:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mChapterThumbnail:Lcom/sonyericsson/android/camera/controller/ChapterThumbnail;

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 5643
    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mChapterThumbnail:Lcom/sonyericsson/android/camera/controller/ChapterThumbnail;

    :cond_2b
    return-void
.end method

.method private setCurrentCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V
    .registers 4

    .line 9561
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getUserSetting()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->changeCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 9562
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getUserSetting()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setSettingsValue(Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    return-void
.end method

.method private setEvfSurfaceToCameraDeviceHandler(Lcom/sonymobile/cameracommon/evf/Evf;)V
    .registers 4

    .line 10396
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-interface {p1}, Lcom/sonymobile/cameracommon/evf/Evf;->asSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-interface {p1}, Lcom/sonymobile/cameracommon/evf/Evf;->getSurfaceSize()Landroid/util/Size;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setPreviewSurface(Landroid/view/Surface;Landroid/util/Size;)V

    return-void
.end method

.method private setFocusPosition(Landroid/graphics/Point;Landroid/graphics/RectF;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;)V
    .registers 7

    .line 8068
    iget-object p2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SMILE_CAPTURE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p2, v0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p2

    check-cast p2, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    .line 8069
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;->isSmileCaptureOn()Z

    move-result p2

    if-nez p2, :cond_98

    iget-object p2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SHUTTER_TRIGGER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 8070
    invoke-interface {p2, v0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p2

    check-cast p2, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;->isGestureShutterOn()Z

    move-result p2

    if-eqz p2, :cond_22

    goto/16 :goto_98

    .line 8074
    :cond_22
    sget-object p2, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;->RELEASE:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;

    if-ne p3, p2, :cond_59

    .line 8075
    iget-object p2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    invoke-interface {p2, p1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->getPosition(Landroid/graphics/Point;)Landroid/graphics/Rect;

    move-result-object p2

    .line 8077
    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_33

    return-void

    .line 8081
    :cond_33
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FOCUS_RANGE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;->AF:Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;

    if-ne v0, v1, :cond_44

    .line 8087
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setFocusPositionAndCommit(Landroid/graphics/Rect;)V

    .line 8090
    :cond_44
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isTouchAeEnabled()Z

    move-result v0

    if-eqz v0, :cond_59

    .line 8091
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->METERING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 8092
    invoke-interface {v1, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/Metering;

    .line 8091
    invoke-virtual {v0, p2, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setMeteringAreaAndCommit(Landroid/graphics/Rect;Lcom/sonyericsson/android/camera/configuration/parameters/Metering;)V

    .line 8096
    :cond_59
    iget-object p2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FOCUS_RANGE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p2, v0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p2

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;->AF:Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;

    const/4 v1, 0x0

    if-eq p2, v0, :cond_88

    iget-object p2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->TOUCH_INTENTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 8097
    invoke-interface {p2, v0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p2

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/TouchIntention;->FOCUS_AND_EXPOSURE:Lcom/sonyericsson/android/camera/configuration/parameters/TouchIntention;

    if-eq p2, v0, :cond_88

    .line 8099
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object p2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->TOUCH_CAPTURE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p1, p2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p1

    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;

    if-eq p1, p2, :cond_97

    .line 8101
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    sget-object p2, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_TOUCHFOCUS_REJECT:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    new-array p3, v1, [Ljava/lang/Object;

    invoke-interface {p1, p2, p3}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    goto :goto_97

    .line 8107
    :cond_88
    iget-object p2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_FOCUS_POSITION_SELECTED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    const/4 p1, 0x1

    aput-object p3, v2, p1

    invoke-interface {p2, v0, v2}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    :cond_97
    :goto_97
    return-void

    :cond_98
    :goto_98
    return-void
.end method

.method private setIsSceneRecognitionValid(Z)V
    .registers 2

    .line 9742
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mIsSceneRecognitionValid:Z

    return-void
.end method

.method private shouldPlayShutterSound()Z
    .registers 4

    .line 9705
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    .line 9706
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SHUTTER_SOUND:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;

    .line 9707
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;

    if-eq v0, v1, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method private showBlackScreen()V
    .registers 4

    .line 7709
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_SHOW_BLACK_SCREEN:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method private startAutoFocus()Z
    .registers 4

    .line 8031
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const/4 v1, 0x0

    if-eqz v0, :cond_44

    .line 8032
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/storage/Storage;->isStorageActivated()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentStorage()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isStorageWritable(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 8033
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isStorageAvailableWhenIsTagging()Z

    move-result v0

    if-nez v0, :cond_1e

    goto :goto_36

    .line 8038
    :cond_1e
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isMultiAutoFocusSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 8039
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getMultiAutoFocusArea()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_44

    .line 8041
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    invoke-interface {v2, v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->onMultiAutoFocusAreaChanged(Landroid/graphics/Rect;)V

    goto :goto_44

    .line 8034
    :cond_36
    :goto_36
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_43

    const-string v0, "Storage is not ready"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_43
    return v1

    .line 8045
    :cond_44
    :goto_44
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    sget-object v2, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_RESTRICT_FAULT_DETECTION:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, v1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 8046
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->autoFocus()V

    const/4 v0, 0x1

    return v0
.end method

.method private startFastCapture(ZLcom/sonyericsson/android/camera/controller/StateMachine$StartupAction;)V
    .registers 9

    .line 7758
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getPreviewRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 7759
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    .line 7761
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    .line 7762
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/CameraActivity;->getScreenAspect()Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    move-result-object v3

    .line 7759
    invoke-static {v1, v2, v3}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->getSurfaceViewRect(Landroid/content/Context;FLcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;)Landroid/graphics/Rect;

    move-result-object v1

    .line 7763
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getActiveArraySize(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Landroid/graphics/Rect;

    move-result-object v2

    .line 7765
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->getInstance()Lcom/sonyericsson/cameracommon/utility/PositionConverter;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v5, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 7766
    invoke-interface {v4, v5}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isFront()Z

    move-result v4

    .line 7765
    invoke-virtual {v3, v4, v1, v0, v2}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->init(ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 7768
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->getInstance()Lcom/sonyericsson/cameracommon/utility/PositionConverter;

    move-result-object v2

    .line 7769
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 7770
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 7768
    invoke-virtual {v2, v3, v1}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->setSurfaceSize(II)V

    .line 7771
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->getInstance()Lcom/sonyericsson/cameracommon/utility/PositionConverter;

    move-result-object v1

    .line 7772
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 7773
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 7771
    invoke-virtual {v1, v2, v0}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->setPreviewSize(II)V

    .line 7776
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->requestPostLazyInitializationTaskExecute()V

    .line 7779
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->awaitSetupAllReady()Z

    move-result v0

    if-nez v0, :cond_6c

    const-string v0, "Setup failed"

    .line 7781
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 7784
    :cond_6c
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->isHeadUpDisplayReady()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_8c

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isTutorialNeededToBeShownForCurrentMode()Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 7785
    new-instance p1, Lcom/sonyericsson/android/camera/controller/StateMachine$StateOperationRestricted;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateOperationRestricted;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$1;)V

    new-array p2, v2, [Ljava/lang/Object;

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->TUTORIAL:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    aput-object v0, p2, v1

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    goto :goto_aa

    :cond_8c
    if-eqz p1, :cond_8f

    return-void

    .line 7791
    :cond_8f
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isVideo()Z

    move-result p1

    if-eqz p1, :cond_a0

    .line 7792
    new-instance p1, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;

    invoke-direct {p1, p0, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoReady;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$StartupAction;)V

    new-array p2, v1, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    goto :goto_aa

    .line 7794
    :cond_a0
    new-instance p1, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReady;

    invoke-direct {p1, p0, v2, v2, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReady;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;ZZLcom/sonyericsson/android/camera/controller/StateMachine$StartupAction;)V

    new-array p2, v1, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    :goto_aa
    return-void
.end method

.method private stopPlaySound()V
    .registers 2

    .line 8798
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->stopPlayingSound()V

    return-void
.end method

.method private storePicture(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)V
    .registers 6

    .line 8914
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_50

    const/4 v0, 0x1

    .line 8915
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CaptureIdForPredictiveCapture:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->getCaptureIdForPredictiveCapture()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", IsPredictiveCaptureCover:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8916
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->isPredictiveCaptureCover()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", SavedFileType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8917
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->getSavedFileType()Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", requestId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8918
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->getRequestId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mLastRequestId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLastRequestId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 8915
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 8921
    :cond_50
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mFaultDetector:Lcom/sonyericsson/android/camera/faultdetection/FaultDetector;

    if-eqz v0, :cond_7e

    .line 8922
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->getCaptureIdForPredictiveCapture()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_61

    .line 8923
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->isPredictiveCaptureCover()Z

    move-result v0

    if-nez v0, :cond_7e

    .line 8924
    :cond_61
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->getSavedFileType()Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->BURST:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    if-eq v0, v1, :cond_7e

    iget v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLastRequestId:I

    .line 8925
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->getRequestId()I

    move-result v1

    if-ne v0, v1, :cond_7e

    .line 8926
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mFaultDetector:Lcom/sonyericsson/android/camera/faultdetection/FaultDetector;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->getImageData()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->getRequestId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetector;->requestDetection(Ljava/nio/ByteBuffer;I)V

    .line 8929
    :cond_7e
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mOnStoreCompletedListener:Lcom/sonyericsson/cameracommon/storage/Storage$OnStoreCompletedListener;

    .line 8930
    invoke-static {p1, v0}, Lcom/sonyericsson/cameracommon/storage/RequestFactory;->createSavingRequest(Lcom/sonyericsson/cameracommon/storage/RequestFactory$RequestBuilder;Lcom/sonyericsson/cameracommon/storage/Storage$OnStoreCompletedListener;)Lcom/sonyericsson/cameracommon/storage/SavingRequest;

    move-result-object v0

    .line 8933
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mPredictiveApplier:Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;

    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;->entrySuppressor(Ljava/lang/Object;)V
    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;->access$7400(Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;Ljava/lang/Object;)V

    .line 8934
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mPredictiveApplier:Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;

    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;->leaveSuppressor(Ljava/lang/Object;)V
    invoke-static {v1, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;->access$4700(Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;Ljava/lang/Object;)V

    .line 8936
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->getStorageType()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/sonyericsson/cameracommon/storage/Storage;->requestStore(Lcom/sonyericsson/cameracommon/storage/SavingRequest;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z

    return-void
.end method

.method private storeSavingRequestList()V
    .registers 8

    .line 7714
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_24

    new-array v0, v1, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invoke mPhotoSavingRequestList.size():"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mPhotoSavingRequestList:Ljava/util/List;

    .line 7715
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 7714
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 7717
    :cond_24
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mPhotoSavingRequestList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7c

    .line 7719
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mPhotoSavingRequestList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_32
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_77

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    .line 7721
    iget-object v4, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    invoke-interface {v4, v2}, Lcom/sonyericsson/android/camera/view/ViewFinder;->getRequestId(Z)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->setRequestId(I)V

    .line 7724
    sget-boolean v4, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v4, :cond_67

    new-array v4, v1, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "storePicture() requestId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->getRequestId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 7725
    :cond_67
    iget-object v4, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mOnStoreCompletedListener:Lcom/sonyericsson/cameracommon/storage/Storage$OnStoreCompletedListener;

    .line 7726
    invoke-static {v3, v4}, Lcom/sonyericsson/cameracommon/storage/RequestFactory;->createSavingRequest(Lcom/sonyericsson/cameracommon/storage/RequestFactory$RequestBuilder;Lcom/sonyericsson/cameracommon/storage/Storage$OnStoreCompletedListener;)Lcom/sonyericsson/cameracommon/storage/SavingRequest;

    move-result-object v3

    .line 7727
    iget-object v4, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->getStorageType()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Lcom/sonyericsson/cameracommon/storage/Storage;->requestStore(Lcom/sonyericsson/cameracommon/storage/SavingRequest;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z

    goto :goto_32

    .line 7731
    :cond_77
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mPhotoSavingRequestList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_7c
    return-void
.end method

.method private switchCamera(Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;)V
    .registers 9

    .line 7800
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_22

    new-array v0, v1, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invoke current:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 7802
    :cond_22
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    .line 7806
    sget-object v3, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_94

    :pswitch_31
    move-object v3, v0

    goto :goto_44

    .line 7834
    :pswitch_33
    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    goto :goto_44

    .line 7830
    :pswitch_36
    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    goto :goto_44

    .line 7818
    :pswitch_39
    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    goto :goto_44

    .line 7810
    :pswitch_3c
    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SUPERIOR_FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    goto :goto_44

    .line 7822
    :pswitch_3f
    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->NORMAL:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    goto :goto_44

    .line 7814
    :pswitch_42
    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 7838
    :goto_44
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->closeCamera()V

    .line 7840
    invoke-direct {p0, v3, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->changeModeTo(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;)V

    .line 7841
    invoke-direct {p0, v3, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->requestResizeEvf(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)V

    .line 7843
    iget-object v4, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    new-instance v5, Lcom/sonyericsson/android/camera/controller/StateMachine$OnPreviewStartedListenerImpl;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v2, v6}, Lcom/sonyericsson/android/camera/controller/StateMachine$OnPreviewStartedListenerImpl;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;ZLcom/sonyericsson/android/camera/controller/StateMachine$1;)V

    invoke-virtual {v4, v5}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setOnPreviewStartedListener(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnPreviewStartedListener;)V

    .line 7845
    iget-object v4, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    sget-object v5, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_CAPTURING_MODE_CHANGED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v2

    sget-object v2, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;->NONE:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;

    .line 7847
    invoke-virtual {p1, v2}, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v6, v1

    const/4 v1, 0x2

    aput-object p1, v6, v1

    const/4 p1, 0x3

    .line 7848
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getPreviewRect()Landroid/graphics/Rect;

    move-result-object v1

    aput-object v1, v6, p1

    .line 7845
    invoke-interface {v4, v5, v6}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 7849
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendResearchSameActivityEvent(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 7850
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p1

    sget-object v1, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;->ICON_TOUCH:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;

    invoke-virtual {p1, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setModeChangeMethod(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;)V

    .line 7852
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p1

    invoke-virtual {p1, v0, v3}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->sendEventInternalModeChange(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    return-void

    nop

    :pswitch_data_94
    .packed-switch 0x1
        :pswitch_42
        :pswitch_3f
        :pswitch_3c
        :pswitch_39
        :pswitch_36
        :pswitch_31
        :pswitch_3c
        :pswitch_33
        :pswitch_36
        :pswitch_36
    .end packed-switch
.end method

.method private switchSceneRecognition(Z)V
    .registers 3

    .line 9746
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mIsSceneRecognitionValid:Z

    if-eqz v0, :cond_c

    if-eqz p1, :cond_c

    .line 9747
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->startSceneRecognition()V

    goto :goto_11

    .line 9749
    :cond_c
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->stopSceneRecognition()V

    :goto_11
    return-void
.end method

.method private switchVideoFaceDetection()V
    .registers 4

    .line 9754
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 9755
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v1, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    .line 9758
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyCheckUtil;->isFaceDetectionAvailable(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 9759
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->startFaceDetection()V

    goto :goto_29

    .line 9761
    :cond_24
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->stopFaceDetection()V

    :goto_29
    return-void
.end method

.method private transitionToRecordingState(Z)V
    .registers 5

    .line 8274
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    if-eqz v0, :cond_7

    .line 8275
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->disableAutoPowerOffTimer()V

    :cond_7
    const/4 v0, 0x0

    .line 8278
    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mChapterThumbnail:Lcom/sonyericsson/android/camera/controller/ChapterThumbnail;

    if-nez p1, :cond_11

    .line 8280
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->requestOnePreviewFrame()V

    .line 8283
    :cond_11
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    if-eqz p1, :cond_73

    .line 8284
    sget-object p1, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v1

    aget p1, p1, v1

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-eq p1, v1, :cond_34

    packed-switch p1, :pswitch_data_74

    goto :goto_73

    .line 8310
    :pswitch_29
    new-instance p1, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;

    invoke-direct {p1, p0, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    new-array v0, v2, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    goto :goto_73

    .line 8286
    :cond_34
    iput v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mHighFrameRateVideoRecordingCountInSuperSlowMotion:I

    .line 8287
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getUserSetting()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object p1

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p1, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    .line 8289
    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SlowMotion:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->ordinal()I

    move-result p1

    aget p1, v1, p1

    packed-switch p1, :pswitch_data_7e

    goto :goto_73

    .line 8295
    :pswitch_4e
    new-instance p1, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;

    invoke-direct {p1, p0, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$1;)V

    new-array v0, v2, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    goto :goto_73

    .line 8299
    :pswitch_59
    new-instance p1, Lcom/sonyericsson/android/camera/controller/StateMachine$StateHighFrameRateVideoRecordingInSuperSlowMotion;

    invoke-direct {p1, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateHighFrameRateVideoRecordingInSuperSlowMotion;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    new-array v0, v2, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    .line 8300
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->startSlowMotionFeedbackAnimation()V

    goto :goto_73

    .line 8291
    :pswitch_69
    new-instance p1, Lcom/sonyericsson/android/camera/controller/StateMachine$StateLowFrameRateVideoRecordingInSuperSlowMotion;

    invoke-direct {p1, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateLowFrameRateVideoRecordingInSuperSlowMotion;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    new-array v0, v2, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    :cond_73
    :goto_73
    return-void

    :pswitch_data_74
    .packed-switch 0x8
        :pswitch_29
        :pswitch_29
        :pswitch_29
    .end packed-switch

    :pswitch_data_7e
    .packed-switch 0x1
        :pswitch_69
        :pswitch_59
        :pswitch_4e
    .end packed-switch
.end method

.method private updateAmberBlueColor(F)V
    .registers 9

    .line 9601
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v0

    .line 9600
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getCameraCapability(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object v0

    .line 9602
    iget-object v1, v0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->MIN_AWB_AB:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 9603
    iget-object v0, v0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->MAX_AWB_AB:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

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

    .line 9604
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 9606
    sget-boolean v3, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v3, :cond_62

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invoke color-changed slider:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", min:"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", max:"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", value:"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 9611
    :cond_62
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {p1, v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setAmberBlueColorAndCommit(I)V

    .line 9613
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setSemiAutoSettingAmberBlueValue(I)V

    return-void
.end method

.method private updateBokehStrength(F)V
    .registers 5

    .line 9634
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->BOKEH:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v2, p1

    float-to-int v2, v2

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->setInt(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;I)V

    .line 9635
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setBokehStrengthAndCommit(F)V

    return-void
.end method

.method private updateBrightness(F)V
    .registers 9

    .line 9618
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v0

    .line 9617
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getCameraCapability(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object v0

    .line 9619
    iget-object v1, v0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->EV_MIN:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 9620
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

    .line 9621
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 9623
    sget-boolean v3, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v3, :cond_62

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invoke brightness-changed slider:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", min:"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", max:"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", value:"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 9628
    :cond_62
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {p1, v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setBrightnessAndCommit(I)V

    .line 9630
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setSemiAutoSettingBrightnessValue(I)V

    return-void
.end method

.method private updateDateTaken(Lcom/sonyericsson/cameracommon/storage/RequestFactory$RequestBuilder;)V
    .registers 4

    .line 8756
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$RequestBuilder;->setDateTaken(J)V

    return-void
.end method

.method private updateFusionModeSetting(Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;)V
    .registers 6

    .line 8371
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FUSION_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;

    if-ne p1, v0, :cond_d

    return-void

    .line 8377
    :cond_d
    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

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

    .line 8389
    :cond_21
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    invoke-interface {v1, p1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 8390
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v1

    .line 8391
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v2

    .line 8390
    invoke-virtual {v1, v0, p1, v2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setSettingsValue(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    goto :goto_60

    .line 8379
    :cond_32
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ISO:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v1, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    .line 8380
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    invoke-interface {v2, p1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 8381
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ISO:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v2, v3}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v2

    if-eq v1, v2, :cond_55

    .line 8382
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    sget-object v2, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_ISO_CHANGED_BY_FUSION:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 8383
    invoke-interface {v1, v2, v3}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 8385
    :cond_55
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v1

    .line 8386
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v2

    .line 8385
    invoke-virtual {v1, v0, p1, v2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setSettingsValue(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    :goto_60
    return-void
.end method

.method private updatePhotoSelftimer(Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;)V
    .registers 5

    .line 9735
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    if-eqz v0, :cond_11

    .line 9736
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 9737
    invoke-interface {v1, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 9736
    invoke-interface {v0, v1, p1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->setSelfTimer(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;)V

    :cond_11
    return-void
.end method

.method private updateRecordingProgress(I)V
    .registers 6

    .line 8424
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    if-eqz v0, :cond_2f

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->isSetupHeadupDisplayInvoked()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_2f

    :cond_b
    if-lez p1, :cond_16

    .line 8429
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCaptureState()Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_VIDEO_STOPPING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    if-ne v0, v1, :cond_16

    return-void

    .line 8433
    :cond_16
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    if-eqz v0, :cond_1d

    .line 8434
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->disableAutoPowerOffTimer()V

    .line 8438
    :cond_1d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_RECORDING_PROGRESS:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 8440
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    .line 8438
    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    return-void

    :cond_2f
    :goto_2f
    return-void
.end method


# virtual methods
.method public addOnStateChangedListener(Lcom/sonyericsson/android/camera/controller/StateMachine$OnStateChangedListener;)V
    .registers 3

    .line 919
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mOnStateChangedListenerSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public canApplicationBeFinished()Z
    .registers 3

    .line 9532
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    monitor-enter v0

    .line 9533
    :try_start_3
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->getCaptureState()Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    move-result-object v1

    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->canApplicationBeFinished()Z
    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->access$16800(Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;)Z

    move-result v1

    .line 9534
    monitor-exit v0

    return v1

    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public canHandleAsynchronizedTask()Z
    .registers 2

    .line 8401
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->mCaptureState:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->canHandleAsynchronizedTask()Z
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->access$15800(Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;)Z

    move-result v0

    return v0
.end method

.method public canHandleWearableCaptureRequest()Z
    .registers 2

    .line 8397
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->mCaptureState:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->canHandleWearableCaptureRequest()Z
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->access$15700(Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;)Z

    move-result v0

    return v0
.end method

.method public createPhotoSavingRequest(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;)Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;
    .registers 12

    .line 8665
    sget-object v0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->BURST:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    if-eq p1, v0, :cond_24

    sget-object v0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->PHOTO:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    if-eq p1, v0, :cond_24

    sget-object v0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->PHOTO_DURING_REC:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    if-ne p1, v0, :cond_d

    goto :goto_24

    .line 8668
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8671
    :cond_24
    :goto_24
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->RESOLUTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 8672
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->TAGGING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v1, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/Tagging;

    .line 8674
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isFront()Z

    move-result v2

    if-eqz v2, :cond_45

    .line 8675
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto$Facing;->FRONT:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto$Facing;

    goto :goto_47

    .line 8677
    :cond_45
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto$Facing;->BACK:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto$Facing;

    .line 8680
    :goto_47
    new-instance v3, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    .line 8683
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getPictureRect()Landroid/graphics/Rect;

    move-result-object v6

    const-string v7, "image/jpeg"

    const-string v8, ".JPG"

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p1

    .line 8681
    invoke-direct/range {v4 .. v9}, Lcom/sonyericsson/android/camera/controller/StateMachine;->createTakenStatusCommon(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;Landroid/graphics/Rect;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    move-result-object v0

    new-instance v4, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;

    invoke-direct {v4, v2}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto$Facing;)V

    const/4 v2, 0x0

    invoke-direct {v3, v0, v4, v2}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;Z)V

    .line 8690
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mOnStoreCompletedListener:Lcom/sonyericsson/cameracommon/storage/Storage$OnStoreCompletedListener;

    invoke-virtual {v3, v0}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->addCallback(Lcom/sonyericsson/cameracommon/storage/Storage$OnStoreCompletedListener;)V

    .line 8691
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchCondition;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/LaunchCondition;->isOneShotPhoto()Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->setOneShot(Z)V

    .line 8693
    sget-object v0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->BURST:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    if-ne p1, v0, :cond_79

    .line 8694
    sget-object p1, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->INTERNAL:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    invoke-virtual {v3, p1}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->setStorageType(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)V

    goto :goto_9d

    .line 8695
    :cond_79
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Tagging;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/Tagging;

    if-ne v1, v0, :cond_96

    sget-object v0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->PHOTO:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    if-ne p1, v0, :cond_96

    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchCondition;

    .line 8696
    invoke-interface {p1}, Lcom/sonyericsson/android/camera/LaunchCondition;->isOneShot()Z

    move-result p1

    if-nez p1, :cond_96

    .line 8697
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/Tagging;->getBooleanValue()Z

    move-result p1

    invoke-virtual {v3, p1}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->setTransferAndTagging(Z)V

    .line 8698
    sget-object p1, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->INTERNAL:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    invoke-virtual {v3, p1}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->setStorageType(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)V

    goto :goto_9d

    .line 8700
    :cond_96
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentStorage()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->setStorageType(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)V

    .line 8702
    :goto_9d
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchCondition;

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/LaunchCondition;->getExtraOutput()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->setExtraOutput(Landroid/net/Uri;)V

    return-object v3
.end method

.method public getCurrentCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;
    .registers 2

    .line 9509
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCameraId(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getCurrentCaptureState()Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 9596
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

    .line 9501
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getUserSetting()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    if-nez v0, :cond_13

    .line 9502
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchCondition;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/LaunchCondition;->getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    return-object v0

    .line 9504
    :cond_13
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getUserSetting()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    return-object v0
.end method

.method public getLaunchCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    .registers 2

    .line 9779
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchCondition;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/LaunchCondition;->getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    return-object v0
.end method

.method public getPredictiveCaptureStoreInfo()Lcom/sonyericsson/cameracommon/contentsview/PredictiveCaptureStoreInfo;
    .registers 2

    .line 9923
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mPredictiveCaptureStoreInfo:Lcom/sonyericsson/cameracommon/contentsview/PredictiveCaptureStoreInfo;

    return-object v0
.end method

.method public getUserSetting()Lcom/sonyericsson/android/camera/setting/UserSettings;
    .registers 2

    .line 908
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    return-object v0
.end method

.method public getVirtualKeyEventDispatcher()Lcom/sonyericsson/android/camera/view/UserEventHandler$VirtualKeyEventDispatcher;
    .registers 2

    .line 10351
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mVirtualKeyEventDispatcher:Lcom/sonyericsson/android/camera/view/UserEventHandler$VirtualKeyEventDispatcher;

    return-object v0
.end method

.method public getZoom()Ljava/lang/Float;
    .registers 2

    .line 912
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getZoom()Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized isAngleEventReceivable()Z
    .registers 3

    monitor-enter p0

    .line 10332
    :try_start_1
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->getCaptureState()Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v1

    aget v0, v0, v1
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_18

    packed-switch v0, :pswitch_data_1c

    const/4 v0, 0x0

    .line 10343
    monitor-exit p0

    return v0

    :pswitch_15
    const/4 v0, 0x1

    .line 10340
    monitor-exit p0

    return v0

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

.method public declared-synchronized isDialogOpened()Z
    .registers 3

    monitor-enter p0

    .line 720
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

.method public isMenuAvailable()Z
    .registers 2

    .line 9544
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->getCaptureState()Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    move-result-object v0

    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->isMenuAvailable()Z
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->access$16900(Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;)Z

    move-result v0

    return v0
.end method

.method public isRecording()Z
    .registers 2

    .line 9553
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    if-eqz v0, :cond_d

    .line 9554
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->getCaptureState()Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    move-result-object v0

    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->isRecording()Z
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->access$15200(Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;)Z

    move-result v0

    return v0

    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public isSettingChangeAcceptable()Z
    .registers 2

    .line 10319
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isLazyInitializationRunning()Z

    move-result v0

    if-nez v0, :cond_f

    .line 10320
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isAllSnapshotCompleted()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x1

    return v0

    :cond_f
    :goto_f
    const/4 v0, 0x0

    return v0
.end method

.method public isTutorialNeededToBeShownForCurrentMode()Z
    .registers 7

    .line 10135
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchCondition;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/LaunchCondition;->isOneShot()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_ab

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchCondition;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/LaunchCondition;->isGoogleAssistantLaunch()Z

    move-result v0

    if-eqz v0, :cond_13

    goto/16 :goto_ab

    .line 10138
    :cond_13
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getStoredSettings()Lcom/sonyericsson/android/camera/setting/StoredSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getMessageSettings()Lcom/sonyericsson/android/camera/setting/MessageSettings;

    move-result-object v0

    .line 10139
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v2

    .line 10141
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isFront()Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 10142
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_36

    .line 10143
    sget-object v1, Lcom/sonyericsson/android/camera/setting/MessageType;->TUTORIAL_EYE_GUIDE:Lcom/sonyericsson/android/camera/setting/MessageType;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/MessageSettings;->isNeverShow(Lcom/sonyericsson/android/camera/setting/MessageType;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    .line 10145
    :cond_36
    sget-object v1, Lcom/sonyericsson/android/camera/setting/MessageType;->TUTORIAL_HAND_SHUTTER:Lcom/sonyericsson/android/camera/setting/MessageType;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/MessageSettings;->isNeverShow(Lcom/sonyericsson/android/camera/setting/MessageType;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    .line 10148
    :cond_3f
    sget-object v3, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SlowMotion:[I

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getUserSetting()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v4

    sget-object v5, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v4, v5}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_ac

    .line 10159
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isVideo()Z

    move-result v3

    if-eqz v3, :cond_93

    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchCondition;

    invoke-interface {v3}, Lcom/sonyericsson/android/camera/LaunchCondition;->isOneShotVideo()Z

    move-result v3

    if-nez v3, :cond_93

    .line 10160
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v3

    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isHighSensitivityFusionSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v3

    if-eqz v3, :cond_93

    .line 10161
    sget-object v1, Lcom/sonyericsson/android/camera/setting/MessageType;->TUTORIAL_VIDEO_FUSION:Lcom/sonyericsson/android/camera/setting/MessageType;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/MessageSettings;->isNeverShow(Lcom/sonyericsson/android/camera/setting/MessageType;)Z

    move-result v0

    goto :goto_90

    .line 10156
    :pswitch_75
    sget-object v1, Lcom/sonyericsson/android/camera/setting/MessageType;->TUTORIAL_STANDARD_SLOW_MOTION:Lcom/sonyericsson/android/camera/setting/MessageType;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/MessageSettings;->isNeverShow(Lcom/sonyericsson/android/camera/setting/MessageType;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    .line 10153
    :pswitch_7e
    sget-object v1, Lcom/sonyericsson/android/camera/setting/MessageType;->TUTORIAL_SUPER_SLOW_MOTION_SHOT:Lcom/sonyericsson/android/camera/setting/MessageType;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/MessageSettings;->isNeverShow(Lcom/sonyericsson/android/camera/setting/MessageType;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    .line 10150
    :pswitch_87
    sget-object v1, Lcom/sonyericsson/android/camera/setting/MessageType;->TUTORIAL_SUPER_SLOW_MOTION:Lcom/sonyericsson/android/camera/setting/MessageType;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/MessageSettings;->isNeverShow(Lcom/sonyericsson/android/camera/setting/MessageType;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    :goto_90
    xor-int/lit8 v0, v0, 0x1

    return v0

    .line 10164
    :cond_93
    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->WIDE_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne v2, v3, :cond_aa

    .line 10165
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isDistortionCorrectionSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v2

    if-eqz v2, :cond_aa

    .line 10166
    sget-object v1, Lcom/sonyericsson/android/camera/setting/MessageType;->TUTORIAL_LENS_CORRECTION:Lcom/sonyericsson/android/camera/setting/MessageType;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/MessageSettings;->isNeverShow(Lcom/sonyericsson/android/camera/setting/MessageType;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    :cond_aa
    return v1

    :cond_ab
    :goto_ab
    return v1

    :pswitch_data_ac
    .packed-switch 0x1
        :pswitch_87
        :pswitch_7e
        :pswitch_75
    .end packed-switch
.end method

.method public isVideoRecording()Z
    .registers 2

    .line 8367
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mIsVideoRecording:Z

    return v0
.end method

.method public onAutoFlashResultChanged(Z)V
    .registers 5

    .line 9165
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "invoke"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 9166
    :cond_d
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_AUTO_FLASH_CHANGED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendStaticEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method public onAutoFocusDone(ZZZIII)V
    .registers 12

    .line 8776
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2e

    new-array v0, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invoke isHighQualityBurstAvailable:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isAfSuccessed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", requireDisplayFlash:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 8779
    :cond_2e
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    if-eqz v0, :cond_3a

    .line 8780
    invoke-interface {v0, p3}, Lcom/sonyericsson/android/camera/view/ViewFinder;->setDisplayFlashRequired(Z)V

    .line 8781
    iget-object p3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    invoke-interface {p3, p4, p5, p6}, Lcom/sonyericsson/android/camera/view/ViewFinder;->setDisplayFlashColor(III)V

    .line 8783
    :cond_3a
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p3

    invoke-virtual {p3}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setTimeAfDone()V

    .line 8784
    sget-object p3, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_AUTO_FOCUS_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    const/4 p4, 0x2

    new-array p4, p4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, p4, v1

    .line 8785
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, p4, v2

    .line 8784
    invoke-virtual {p0, p3, p4}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method public onAutoFocusFailureDetected(Lcom/sonyericsson/android/camera/faultdetection/DetectionType;)V
    .registers 8

    .line 10274
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getThermalState()Lcom/sonyericsson/android/camera/controller/StateMachine$ThermalState;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$ThermalState;->CRITICAL:Lcom/sonyericsson/android/camera/controller/StateMachine$ThermalState;

    if-eq v0, v1, :cond_71

    .line 10275
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getThermalState()Lcom/sonyericsson/android/camera/controller/StateMachine$ThermalState;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$ThermalState;->WARNING:Lcom/sonyericsson/android/camera/controller/StateMachine$ThermalState;

    if-ne v0, v1, :cond_11

    goto :goto_71

    .line 10279
    :cond_11
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FAULT_DETECTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 10280
    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/FaultDetection;->SNAPSHOT_AND_PREVIEW:Lcom/sonyericsson/android/camera/configuration/parameters/FaultDetection;

    if-eq v0, v1, :cond_1e

    return-void

    .line 10284
    :cond_1e
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    .line 10285
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->NORMAL:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq v0, v1, :cond_2a

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne v0, v1, :cond_3b

    .line 10286
    :cond_2a
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FOCUS_RANGE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v1, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v1

    .line 10287
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;->MF:Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;

    if-eq v1, v2, :cond_70

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;->DEFAULT:Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;

    if-ne v1, v2, :cond_3b

    goto :goto_70

    .line 10292
    :cond_3b
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_42

    return-void

    .line 10296
    :cond_42
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_SHOW_FAULT_DETECTION_NOTIFICATION:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    .line 10298
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 10296
    invoke-interface {v0, v1, v3}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 10300
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_6f

    .line 10301
    new-array v0, v2, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "out of focus reason:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v5

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_6f
    return-void

    :cond_70
    :goto_70
    return-void

    :cond_71
    :goto_71
    return-void
.end method

.method public onCameraAvailableTimeout(Z)V
    .registers 4

    .line 9276
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "invoke"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 9278
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    if-eqz v0, :cond_40

    .line 9279
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    .line 9280
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->getCaptureState()Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_PAUSE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    if-eq v0, v1, :cond_40

    const/4 v0, 0x0

    if-eqz p1, :cond_36

    .line 9282
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    sget-object v1, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ERROR_UNKNOWN:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p1, v1, v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->showMessageDialog(Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;[Ljava/lang/Object;)V

    goto :goto_45

    .line 9284
    :cond_36
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    sget-object v1, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ERROR_IN_USE_BY_ANOTHER_APPLICATION:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p1, v1, v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->showMessageDialog(Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;[Ljava/lang/Object;)V

    goto :goto_45

    .line 9288
    :cond_40
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/CameraActivity;->finishAndKillProcess()V

    :goto_45
    return-void
.end method

.method public onCropRegionReady()V
    .registers 3

    .line 9219
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "invoke"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 9220
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$10;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$10;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDeviceError(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;)V
    .registers 4

    .line 9255
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_d

    const-string p1, "invoke"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_d
    const/4 p1, 0x1

    .line 9259
    invoke-static {p1, p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->setDeviceError(ZZ)V

    .line 9261
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->getCaptureState()Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_PAUSE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    if-eq p1, v0, :cond_2f

    const-string p1, "ERROR:[Screen backlight is ON."

    .line 9263
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 9264
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    sget-object v0, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ERROR_IN_USE_BY_ANOTHER_APPLICATION:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->showMessageDialog(Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;[Ljava/lang/Object;)V

    goto :goto_3d

    :cond_2f
    const-string p1, "ERROR:[Screen backlight is OFF. Force close application.]"

    .line 9269
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 9271
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/CameraActivity;->finishAndKillProcess()V

    :goto_3d
    return-void
.end method

.method public onFaceDetected(Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;)V
    .registers 5

    .line 9170
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "invoke"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 9171
    :cond_d
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getThermalState()Lcom/sonyericsson/android/camera/controller/StateMachine$ThermalState;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$ThermalState;->WARNING:Lcom/sonyericsson/android/camera/controller/StateMachine$ThermalState;

    if-eq v0, v1, :cond_34

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentStorage()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isStorageWritable(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    .line 9172
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isObjectTrackingRunning()Z

    move-result v0

    if-eqz v0, :cond_28

    goto :goto_34

    .line 9175
    :cond_28
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_FACE_DETECTED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendStaticEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;[Ljava/lang/Object;)V

    return-void

    :cond_34
    :goto_34
    return-void
.end method

.method public onIlluminanceReceived(F)V
    .registers 3

    .line 10311
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    invoke-interface {v0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->onIlluminanceChanged(F)V

    return-void
.end method

.method public onInitialAutoFocusDone(Z)V
    .registers 7

    .line 8760
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1e

    new-array v0, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invoke success:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 8765
    :cond_1e
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setTimeAfDone()V

    .line 8766
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    sget-object v3, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->FAST_CAPTURING_LAUNCH:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    invoke-virtual {v0, v3}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setCaptureTrigger(Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;)V

    .line 8767
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_INITIAL_AUTO_FOCUS_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-virtual {p0, v0, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method public onLogicalCameraModeChanged()V
    .registers 3

    .line 1648
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$4;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$4;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onMultiAutoFocusAreaChanged(Landroid/graphics/Rect;)V
    .registers 3

    if-eqz p1, :cond_11

    .line 8789
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_11

    .line 8792
    :cond_9
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    if-eqz v0, :cond_10

    .line 8793
    invoke-interface {v0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->onMultiAutoFocusAreaChanged(Landroid/graphics/Rect;)V

    :cond_10
    return-void

    :cond_11
    :goto_11
    return-void
.end method

.method public onObjectLost(Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingResult;)V
    .registers 5

    .line 9187
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "invoke"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 9188
    :cond_d
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getThermalState()Lcom/sonyericsson/android/camera/controller/StateMachine$ThermalState;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$ThermalState;->WARNING:Lcom/sonyericsson/android/camera/controller/StateMachine$ThermalState;

    if-ne v0, v1, :cond_16

    return-void

    .line 9191
    :cond_16
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_OBJECT_TRACKING_LOST:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendStaticEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method public onObjectTracked(Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingResult;)V
    .registers 5

    .line 9179
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "invoke"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 9180
    :cond_d
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getThermalState()Lcom/sonyericsson/android/camera/controller/StateMachine$ThermalState;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$ThermalState;->WARNING:Lcom/sonyericsson/android/camera/controller/StateMachine$ThermalState;

    if-ne v0, v1, :cond_16

    return-void

    .line 9183
    :cond_16
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_OBJECT_TRACKED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendStaticEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method public onPreShutterDone(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)V
    .registers 5

    .line 8803
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->checkCallback(Lcom/sonyericsson/cameracommon/storage/RequestFactory$RequestBuilder;)V

    .line 8805
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_PRE_SHUTTER_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method public onPreTakePictureDone(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)V
    .registers 5

    .line 8840
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "invoke"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 8842
    :cond_d
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->checkCallback(Lcom/sonyericsson/cameracommon/storage/RequestFactory$RequestBuilder;)V

    .line 8845
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_PRE_TAKE_PICTURE_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method public onPrepareBurstDone(Z)V
    .registers 7

    .line 8868
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1e

    new-array v0, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invoke isSuccess:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 8869
    :cond_1e
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_PREPARE_BURST_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-virtual {p0, v0, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method public onRecordError(II)V
    .registers 6

    const/4 v0, 0x1

    .line 9119
    new-array v0, v0, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERROR:MediaRecorder ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 9120
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mIsVideoRecording:Z

    .line 9122
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/sonyericsson/android/camera/controller/StateMachine$9;

    invoke-direct {p2, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$9;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onRecordFinished(Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;)V
    .registers 4

    .line 9140
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    if-eqz v0, :cond_7

    .line 9141
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->enableClick()V

    .line 9144
    :cond_7
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->onVideoRecordingDone()V

    .line 9147
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->requestStoreVideo(Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;)V

    .line 9149
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne p1, v0, :cond_2c

    .line 9150
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p1

    .line 9151
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getUserSetting()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getValue()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mHighFrameRateVideoRecordingCountInSuperSlowMotion:I

    .line 9150
    invoke-virtual {p1, v0, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendSlowMotionEvent(Ljava/lang/String;I)V

    :cond_2c
    return-void
.end method

.method public onRecordProgress(J)V
    .registers 7

    .line 9107
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invoke progressMillis:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1e
    long-to-int p1, p1

    .line 9109
    iget-object p2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$8;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$8;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;I)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onRecordingStarted(Z)V
    .registers 3

    if-eqz p1, :cond_10

    .line 9076
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLastVideoSavingRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->updateDateTaken(Lcom/sonyericsson/cameracommon/storage/RequestFactory$RequestBuilder;)V

    .line 9077
    sget-object p1, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_RECORDING_STARTED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendStaticEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;[Ljava/lang/Object;)V

    goto :goto_1a

    .line 9079
    :cond_10
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$7;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$7;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1a
    return-void
.end method

.method public onSceneModeChanged(Lcom/sonyericsson/android/camera/device/CameraParameters$SceneRecognitionResult;)V
    .registers 5

    .line 9157
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "invoke"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 9158
    :cond_d
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getThermalState()Lcom/sonyericsson/android/camera/controller/StateMachine$ThermalState;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$ThermalState;->WARNING:Lcom/sonyericsson/android/camera/controller/StateMachine$ThermalState;

    if-ne v0, v1, :cond_16

    return-void

    .line 9161
    :cond_16
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_SCENE_MODE_CHANGED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendStaticEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method public onShutterDone(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;IZ)V
    .registers 9

    .line 8816
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_26

    new-array v0, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invoke captureNum:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", isAfSuccess:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_26
    if-le p2, v2, :cond_44

    .line 8819
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mPredictiveCaptureStoreInfo:Lcom/sonyericsson/cameracommon/contentsview/PredictiveCaptureStoreInfo;

    if-eqz v0, :cond_31

    .line 8821
    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mPredictiveApplier:Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;

    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;->leaveSuppressor(Ljava/lang/Object;)V
    invoke-static {v3, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;->access$4700(Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;Ljava/lang/Object;)V

    .line 8823
    :cond_31
    new-instance v0, Lcom/sonyericsson/cameracommon/contentsview/PredictiveCaptureStoreInfo;

    .line 8824
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->getSaveTimeForPredictiveCapture()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p2, v3}, Lcom/sonyericsson/cameracommon/contentsview/PredictiveCaptureStoreInfo;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mPredictiveCaptureStoreInfo:Lcom/sonyericsson/cameracommon/contentsview/PredictiveCaptureStoreInfo;

    .line 8825
    iget-object p2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mPredictiveApplier:Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mPredictiveCaptureStoreInfo:Lcom/sonyericsson/cameracommon/contentsview/PredictiveCaptureStoreInfo;

    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;->entrySuppressor(Ljava/lang/Object;)V
    invoke-static {p2, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;->access$7400(Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;Ljava/lang/Object;)V

    goto :goto_4e

    .line 8828
    :cond_44
    iget-object p2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mPredictiveApplier:Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mPredictiveCaptureStoreInfo:Lcom/sonyericsson/cameracommon/contentsview/PredictiveCaptureStoreInfo;

    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;->leaveSuppressor(Ljava/lang/Object;)V
    invoke-static {p2, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;->access$4700(Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;Ljava/lang/Object;)V

    const/4 p2, 0x0

    .line 8829
    iput-object p2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mPredictiveCaptureStoreInfo:Lcom/sonyericsson/cameracommon/contentsview/PredictiveCaptureStoreInfo;

    .line 8831
    :goto_4e
    sget-object p2, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_SHUTTER_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v0, v2

    invoke-virtual {p0, p2, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method public onStartRecordingFailed()V
    .registers 3

    .line 9240
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "invoke"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 9241
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$11;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$11;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTakePictureDone(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)V
    .registers 5

    .line 8856
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "invoke"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 8858
    :cond_d
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_TAKE_PICTURE_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method public onVideoRecordingDone()V
    .registers 3

    .line 8877
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "invoke"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_d
    const/4 v0, 0x0

    .line 8878
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mIsVideoRecording:Z

    .line 8881
    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_VIDEO_RECORDING_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method public releaseContentsViewController()V
    .registers 2

    .line 581
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "invoke"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 582
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    if-eqz v0, :cond_14

    .line 583
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->clearContents()V

    :cond_14
    const/4 v0, 0x0

    .line 585
    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    return-void
.end method

.method public removeOnStateChangedListener(Lcom/sonyericsson/android/camera/controller/StateMachine$OnStateChangedListener;)V
    .registers 3

    .line 923
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mOnStateChangedListenerSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public varargs declared-synchronized sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V
    .registers 8

    monitor-enter p0

    .line 7228
    :try_start_1
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_29

    new-array v0, v1, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invoke TransitterEvent:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", current state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 7231
    :cond_29
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_286

    goto/16 :goto_280

    .line 7565
    :pswitch_36
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleFinishZoom([Ljava/lang/Object;)V

    goto/16 :goto_280

    .line 7561
    :pswitch_3d
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handlePerformZoom([Ljava/lang/Object;)V

    goto/16 :goto_280

    .line 7557
    :pswitch_44
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handlePrepareZoom([Ljava/lang/Object;)V

    goto/16 :goto_280

    .line 7553
    :pswitch_4b
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleChangeCapturingMode([Ljava/lang/Object;)V

    goto/16 :goto_280

    .line 7549
    :pswitch_52
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnStorageReadyStateChanged([Ljava/lang/Object;)V

    goto/16 :goto_280

    .line 7545
    :pswitch_59
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleFusionConditionChanged([Ljava/lang/Object;)V

    goto/16 :goto_280

    .line 7541
    :pswitch_60
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleRequestUpdateHighSensitivityFusionMode([Ljava/lang/Object;)V

    goto/16 :goto_280

    .line 7537
    :pswitch_67
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleTriggerSlowMotion([Ljava/lang/Object;)V

    goto/16 :goto_280

    .line 7533
    :pswitch_6e
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handlePauseRecording([Ljava/lang/Object;)V

    goto/16 :goto_280

    .line 7529
    :pswitch_75
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleResumeRecording([Ljava/lang/Object;)V

    goto/16 :goto_280

    .line 7525
    :pswitch_7c
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleStopRecording([Ljava/lang/Object;)V

    goto/16 :goto_280

    .line 7521
    :pswitch_83
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleStartRecording([Ljava/lang/Object;)V

    goto/16 :goto_280

    .line 7517
    :pswitch_8a
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleRecordReady([Ljava/lang/Object;)V

    goto/16 :goto_280

    .line 7513
    :pswitch_91
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleCaptureCancel([Ljava/lang/Object;)V

    goto/16 :goto_280

    .line 7509
    :pswitch_98
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleCaptureBurst([Ljava/lang/Object;)V

    goto/16 :goto_280

    .line 7505
    :pswitch_9f
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleCapture([Ljava/lang/Object;)V

    goto/16 :goto_280

    .line 7501
    :pswitch_a6
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleStartCaptureCountDown([Ljava/lang/Object;)V

    goto/16 :goto_280

    .line 7497
    :pswitch_ad
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleCaptureReady([Ljava/lang/Object;)V

    goto/16 :goto_280

    .line 7493
    :pswitch_b4
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleChangeAngleStart([Ljava/lang/Object;)V

    goto/16 :goto_280

    .line 7489
    :pswitch_bb
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleHighFameRateRecordingDone([Ljava/lang/Object;)V

    goto/16 :goto_280

    .line 7485
    :pswitch_c2
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleSlowMotionFeedbackAnimationEnd([Ljava/lang/Object;)V

    goto/16 :goto_280

    .line 7481
    :pswitch_c9
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleStopRecordingSlowMotion([Ljava/lang/Object;)V

    goto/16 :goto_280

    .line 7477
    :pswitch_d0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnCameraDeviceAvailable([Ljava/lang/Object;)V

    goto/16 :goto_280

    .line 7473
    :pswitch_d7
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnCameraDeviceClosed([Ljava/lang/Object;)V

    goto/16 :goto_280

    .line 7469
    :pswitch_de
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnCameraDeviceOpened([Ljava/lang/Object;)V

    goto/16 :goto_280

    .line 7465
    :pswitch_e5
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleSelfTimerCancel([Ljava/lang/Object;)V

    goto/16 :goto_280

    .line 7461
    :pswitch_ec
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleBokehConditionChanged([Ljava/lang/Object;)V

    goto/16 :goto_280

    .line 7457
    :pswitch_f3
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnBokehStrengthChanged([Ljava/lang/Object;)V

    goto/16 :goto_280

    .line 7453
    :pswitch_fa
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnBokehDisabled([Ljava/lang/Object;)V

    goto/16 :goto_280

    .line 7449
    :pswitch_101
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnBokehEnabled([Ljava/lang/Object;)V

    goto/16 :goto_280

    .line 7445
    :pswitch_108
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnBrightnessChanged([Ljava/lang/Object;)V

    goto/16 :goto_280

    .line 7441
    :pswitch_10f
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnAmberBlueColorChanged([Ljava/lang/Object;)V

    goto/16 :goto_280

    .line 7437
    :pswitch_116
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnSemiAutoDisabled([Ljava/lang/Object;)V

    goto/16 :goto_280

    .line 7433
    :pswitch_11d
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnSemiAutoEnabled([Ljava/lang/Object;)V

    goto/16 :goto_280

    .line 7429
    :pswitch_124
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleCancelTouchedPosition([Ljava/lang/Object;)V

    goto/16 :goto_280

    .line 7425
    :pswitch_12b
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleSwitchCamera([Ljava/lang/Object;)V

    goto/16 :goto_280

    .line 7421
    :pswitch_132
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnContinuousPreviewFrameUpdated([Ljava/lang/Object;)V

    goto/16 :goto_280

    .line 7417
    :pswitch_139
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnOnePreviewFrameUpdated([Ljava/lang/Object;)V

    goto/16 :goto_280

    .line 7411
    :pswitch_140
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnPredictiveCaptureGroupStoreCompleted([Ljava/lang/Object;)V

    goto/16 :goto_280

    .line 7407
    :pswitch_147
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnBurstStoreCompleted([Ljava/lang/Object;)V

    goto/16 :goto_280

    .line 7403
    :pswitch_14e
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnBurstShutterDone([Ljava/lang/Object;)V

    goto/16 :goto_280

    .line 7397
    :pswitch_155
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleStartAfAfterObjectTracked([Ljava/lang/Object;)V

    goto/16 :goto_280

    .line 7393
    :pswitch_15c
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleDeselectObjectPosition([Ljava/lang/Object;)V

    goto/16 :goto_280

    .line 7389
    :pswitch_163
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleSetSelectedObjectPosition([Ljava/lang/Object;)V

    goto/16 :goto_280

    .line 7385
    :pswitch_16a
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleChangeSelectedFace([Ljava/lang/Object;)V

    goto/16 :goto_280

    .line 7381
    :pswitch_171
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnRecordingError([Ljava/lang/Object;)V

    goto/16 :goto_280

    .line 7377
    :pswitch_178
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnRecordingStartWaitDone([Ljava/lang/Object;)V

    goto/16 :goto_280

    .line 7373
    :pswitch_17f
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleRequestSetupHeadUpDisplay([Ljava/lang/Object;)V

    goto/16 :goto_280

    .line 7369
    :pswitch_186
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleSetTouchedPosition([Ljava/lang/Object;)V

    goto/16 :goto_280

    .line 7365
    :pswitch_18d
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleStorageMounted([Ljava/lang/Object;)V

    goto/16 :goto_280

    .line 7361
    :pswitch_194
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleStorageError([Ljava/lang/Object;)V

    goto/16 :goto_280

    .line 7357
    :pswitch_19b
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleDialogClosed([Ljava/lang/Object;)V

    goto/16 :goto_280

    .line 7353
    :pswitch_1a2
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleDialogOpened([Ljava/lang/Object;)V

    goto/16 :goto_280

    .line 7349
    :pswitch_1a9
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleClearFocus([Ljava/lang/Object;)V

    goto/16 :goto_280

    .line 7345
    :pswitch_1b0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleFinishTransitionOperation([Ljava/lang/Object;)V

    goto/16 :goto_280

    .line 7341
    :pswitch_1b7
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleStartTransitionOperation([Ljava/lang/Object;)V

    goto/16 :goto_280

    .line 7337
    :pswitch_1be
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleKeyMenu([Ljava/lang/Object;)V

    goto/16 :goto_280

    .line 7333
    :pswitch_1c5
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnStoreCompleted([Ljava/lang/Object;)V

    goto/16 :goto_280

    .line 7329
    :pswitch_1cc
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnStoreRequested([Ljava/lang/Object;)V

    goto/16 :goto_280

    .line 7325
    :pswitch_1d3
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleTouchContentProgress()V

    goto/16 :goto_280

    .line 7321
    :pswitch_1da
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnVideoRecordingDone([Ljava/lang/Object;)V

    goto/16 :goto_280

    .line 7317
    :pswitch_1e1
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnTakePictureDone([Ljava/lang/Object;)V

    goto/16 :goto_280

    .line 7313
    :pswitch_1e8
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnPreTakePictureDone([Ljava/lang/Object;)V

    goto/16 :goto_280

    .line 7309
    :pswitch_1ef
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnPrepareBurstDone([Ljava/lang/Object;)V

    goto/16 :goto_280

    .line 7305
    :pswitch_1f6
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnShutterDone([Ljava/lang/Object;)V

    goto/16 :goto_280

    .line 7301
    :pswitch_1fd
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnPreShutterDone([Ljava/lang/Object;)V

    goto/16 :goto_280

    .line 7297
    :pswitch_204
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnAutoFocusDone([Ljava/lang/Object;)V

    goto/16 :goto_280

    .line 7293
    :pswitch_20b
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnInitialAutoFocusDone([Ljava/lang/Object;)V

    goto/16 :goto_280

    .line 7289
    :pswitch_212
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnEvfPrepared([Ljava/lang/Object;)V

    goto/16 :goto_280

    .line 7285
    :pswitch_219
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnHeatedOverNormal([Ljava/lang/Object;)V

    goto :goto_280

    .line 7281
    :pswitch_21f
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnHeatedOverCritical([Ljava/lang/Object;)V

    goto :goto_280

    .line 7276
    :pswitch_225
    aget-object p1, p2, v2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 7277
    iget-object p2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v2

    invoke-virtual {p2, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnReachBatteryLevelChanged([Ljava/lang/Object;)V

    goto :goto_280

    .line 7272
    :pswitch_23b
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    new-array p2, v2, [Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnReachBatteryLow([Ljava/lang/Object;)V

    goto :goto_280

    .line 7268
    :pswitch_243
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    new-array p2, v2, [Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnReachBatteryLimit([Ljava/lang/Object;)V

    goto :goto_280

    .line 7265
    :pswitch_24b
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnHeatedOverCoolingUltraLow([Ljava/lang/Object;)V

    goto :goto_280

    .line 7261
    :pswitch_251
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnHeatedOverCoolingLow([Ljava/lang/Object;)V

    goto :goto_280

    .line 7257
    :pswitch_257
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnHeatedOverWarningExtra([Ljava/lang/Object;)V

    goto :goto_280

    .line 7253
    :pswitch_25d
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnHeatedOverWarning([Ljava/lang/Object;)V

    goto :goto_280

    .line 7249
    :pswitch_263
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleFinalize([Ljava/lang/Object;)V

    goto :goto_280

    .line 7245
    :pswitch_269
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handlePause([Ljava/lang/Object;)V

    goto :goto_280

    .line 7241
    :pswitch_26f
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleResumeTimeout([Ljava/lang/Object;)V

    goto :goto_280

    .line 7237
    :pswitch_275
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleResume([Ljava/lang/Object;)V

    goto :goto_280

    .line 7233
    :pswitch_27b
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleInitialize([Ljava/lang/Object;)V
    :try_end_280
    .catchall {:try_start_1 .. :try_end_280} :catchall_282

    .line 7572
    :goto_280
    monitor-exit p0

    return-void

    :catchall_282
    move-exception p1

    monitor-exit p0

    throw p1

    nop

    :pswitch_data_286
    .packed-switch 0x1
        :pswitch_27b
        :pswitch_275
        :pswitch_26f
        :pswitch_269
        :pswitch_263
        :pswitch_25d
        :pswitch_257
        :pswitch_251
        :pswitch_24b
        :pswitch_243
        :pswitch_23b
        :pswitch_225
        :pswitch_21f
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
    .registers 11

    monitor-enter p0

    .line 7576
    :try_start_1
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_29

    new-array v0, v1, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invoke StaticEvent:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", current state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 7579
    :cond_29
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$StaticEvent:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x2

    packed-switch p1, :pswitch_data_16c

    goto/16 :goto_166

    .line 7699
    :pswitch_37
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnCropRegionReady([Ljava/lang/Object;)V

    goto/16 :goto_166

    .line 7695
    :pswitch_3e
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnLogicalModeChanged([Ljava/lang/Object;)V

    goto/16 :goto_166

    .line 7691
    :pswitch_45
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnEvfHide([Ljava/lang/Object;)V

    goto/16 :goto_166

    .line 7687
    :pswitch_4c
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnPreviewStarted([Ljava/lang/Object;)V

    goto/16 :goto_166

    .line 7683
    :pswitch_53
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnRecordingStarted([Ljava/lang/Object;)V

    goto/16 :goto_166

    .line 7674
    :pswitch_5a
    aget-object p1, p2, v2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 7675
    aget-object p2, p2, v1

    check-cast p2, Landroid/graphics/Bitmap;

    .line 7676
    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    sget-object v4, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_SHOW_TEMPORARY_THUBNAIL:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    new-array v0, v0, [Ljava/lang/Object;

    .line 7678
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v2

    aput-object p2, v0, v1

    .line 7676
    invoke-interface {v3, v4, v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    goto/16 :goto_166

    .line 7669
    :pswitch_79
    aget-object p1, p2, v2

    check-cast p1, Ljava/lang/Boolean;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 7670
    iget-object p2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mGestureShutter:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    invoke-virtual {p2, p1}, Lcom/sonyericsson/android/camera/controller/GestureShutter;->handleSettingsChanged(Z)V

    goto/16 :goto_166

    .line 7664
    :pswitch_8a
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnObjectLost([Ljava/lang/Object;)V

    goto/16 :goto_166

    .line 7657
    :pswitch_91
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_LAZY_INITIALIZATION_TASK_RUN:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 7660
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnLazyInitializationTaskRun([Ljava/lang/Object;)V

    goto/16 :goto_166

    .line 7652
    :pswitch_a1
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnOrientationChanged([Ljava/lang/Object;)V

    .line 7653
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getOrientation()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setOrientation(I)V

    goto/16 :goto_166

    .line 7648
    :pswitch_b1
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnObjectTracked([Ljava/lang/Object;)V

    goto/16 :goto_166

    .line 7644
    :pswitch_b8
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnFaceDetected([Ljava/lang/Object;)V

    goto/16 :goto_166

    .line 7640
    :pswitch_bf
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnAutoFlashChanged([Ljava/lang/Object;)V

    goto/16 :goto_166

    .line 7636
    :pswitch_c6
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnSceneModeChanged([Ljava/lang/Object;)V

    goto/16 :goto_166

    .line 7596
    :pswitch_cd
    sget-object p1, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$HeadUpDisplaySetupState:[I

    aget-object p2, p2, v2

    check-cast p2, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->ordinal()I

    move-result p2

    aget p1, p1, p2

    packed-switch p1, :pswitch_data_190

    goto :goto_136

    .line 7607
    :pswitch_dd
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object p2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 7608
    invoke-interface {p1, p2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 7609
    iget-object p2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 7610
    invoke-interface {p2, v3}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p2

    check-cast p2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    if-eqz p1, :cond_fb

    .line 7611
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->isConstraint()Z

    move-result p1

    if-eqz p1, :cond_fb

    move p1, v1

    goto :goto_fc

    :cond_fb
    move p1, v2

    .line 7612
    :goto_fc
    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    sget-object v4, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_PREPARE_RECORDING_INDICATOR:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLastVideoSavingRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

    iget-object v6, v6, Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;->mVideoStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;

    iget-wide v6, v6, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;->maxDurationMills:J

    long-to-int v6, v6

    .line 7615
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    .line 7617
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v5, v1

    .line 7618
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v5, v0

    const/4 p1, 0x3

    aput-object p2, v5, p1

    .line 7612
    invoke-interface {v3, v4, v5}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 7622
    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->updateRecordingProgress(I)V

    .line 7623
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->requestOnePreviewFrame()V

    goto :goto_136

    .line 7600
    :pswitch_12b
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->isMessageDialogOpened()Z

    move-result p1

    if-nez p1, :cond_136

    .line 7601
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->calculateRemainStorage()V

    .line 7629
    :cond_136
    :goto_136
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isFusionMonitoringNeeded()Z

    move-result p1

    if-eqz p1, :cond_166

    .line 7630
    sget-object p1, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_FUSION_CONDITION_CHANGED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array p2, v1, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    .line 7631
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getLatestFusionResult()Lcom/sonyericsson/android/camera/device/CameraParameters$FusionResult;

    move-result-object v0

    aput-object v0, p2, v2

    .line 7630
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    goto :goto_166

    .line 7584
    :pswitch_14c
    aget-object p1, p2, v2

    check-cast p1, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    .line 7585
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->getCaptureState()Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    move-result-object p1

    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->isRecording()Z
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->access$15200(Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;)Z

    move-result p1

    if-eqz p1, :cond_163

    .line 7587
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->disableClick()V

    .line 7590
    :cond_163
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->storeSavingRequestList()V
    :try_end_166
    .catchall {:try_start_1 .. :try_end_166} :catchall_168

    .line 7706
    :cond_166
    :goto_166
    monitor-exit p0

    return-void

    :catchall_168
    move-exception p1

    monitor-exit p0

    throw p1

    nop

    :pswitch_data_16c
    .packed-switch 0x1
        :pswitch_14c
        :pswitch_cd
        :pswitch_c6
        :pswitch_bf
        :pswitch_b8
        :pswitch_b1
        :pswitch_a1
        :pswitch_91
        :pswitch_8a
        :pswitch_79
        :pswitch_5a
        :pswitch_53
        :pswitch_4c
        :pswitch_45
        :pswitch_3e
        :pswitch_37
    .end packed-switch

    :pswitch_data_190
    .packed-switch 0x1
        :pswitch_12b
        :pswitch_12b
        :pswitch_dd
    .end packed-switch
.end method

.method public setDependencies(Lcom/sonyericsson/android/camera/view/ViewFinder;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)V
    .registers 4

    .line 1631
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "invoke"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1632
    :cond_d
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    .line 1633
    iput-object p2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    .line 1634
    new-instance v0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;

    invoke-direct {v0, p1, p2, p0}, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;-><init>(Lcom/sonyericsson/android/camera/view/ViewFinder;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mObjectTracking:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;

    .line 1635
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isFaultPhotoDetectionSupported()Z

    move-result p1

    if-eqz p1, :cond_32

    .line 1636
    new-instance p1, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchCondition;

    .line 1637
    invoke-interface {v0}, Lcom/sonyericsson/android/camera/LaunchCondition;->isOneShot()Z

    move-result v0

    invoke-direct {p1, p2, v0}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Z)V

    .line 1638
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mFaultDetector:Lcom/sonyericsson/android/camera/faultdetection/FaultDetector;

    .line 1639
    iget-object p2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {p2, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setFaultDetectionCameraCallback(Lcom/sonyericsson/android/camera/faultdetection/FaultDetectionCameraCallback;)V

    :cond_32
    return-void
.end method

.method public setFaultDetectListener(Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$FaultPhotoDetectionListener;)V
    .registers 3

    .line 10405
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isFaultPhotoDetectionSupported()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 10406
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mFaultDetector:Lcom/sonyericsson/android/camera/faultdetection/FaultDetector;

    if-eqz v0, :cond_e

    .line 10411
    invoke-interface {v0, p1}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetector;->setDetectionListener(Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$FaultPhotoDetectionListener;)V

    goto :goto_16

    .line 10407
    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Fault detector is not available yet. setDependencies() has not run."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_16
    :goto_16
    return-void
.end method

.method public setGestureShutterWindowHost(Lcom/sonyericsson/android/camera/controller/GestureShutter$WindowHost;)V
    .registers 3

    .line 9725
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "invoke"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 9726
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine;->mGestureShutter:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/controller/GestureShutter;->setWindowHost(Lcom/sonyericsson/android/camera/controller/GestureShutter$WindowHost;)V

    return-void
.end method
