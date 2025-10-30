.class Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;
.super Lcom/sonyericsson/android/camera/controller/StateMachine$State;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StateVideoCaptureWhileRecording"
.end annotation


# instance fields
.field private final mIsPaused:Z

.field private mIsPausingRequested:Z

.field private mIsReturnToVideoRecordingRequired:Z

.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V
    .registers 4

    .line 6223
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$1;)V

    const/4 p1, 0x0

    .line 6219
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;->mIsReturnToVideoRecordingRequired:Z

    .line 6224
    sget-object p1, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_VIDEO_CAPTURE_WHILE_RECORDING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;->mCaptureState:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 6225
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;->mIsPaused:Z

    .line 6226
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;->mIsPausingRequested:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine;ZLcom/sonyericsson/android/camera/controller/StateMachine$1;)V
    .registers 4

    .line 6217
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    return-void
.end method


# virtual methods
.method public varargs handleFusionConditionChanged([Ljava/lang/Object;)V
    .registers 4

    .line 6360
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1200(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_UPDATE_FUSION_CONDITION:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-interface {v0, v1, p1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs handleOnFaceDetected([Ljava/lang/Object;)V
    .registers 6

    .line 6333
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1200(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_FACE_DETECTED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object p1, p1, v3

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs handleOnHeatedOverCritical([Ljava/lang/Object;)V
    .registers 4

    .line 6366
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$2800(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isRecorderWorking()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 6367
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v1, 0x0

    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine;->doStopRecording(Z)V
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$12700(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    .line 6369
    :cond_12
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnHeatedOverCritical([Ljava/lang/Object;)V

    return-void
.end method

.method public varargs handleOnOnePreviewFrameUpdated([Ljava/lang/Object;)V
    .registers 7

    .line 6305
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/ChapterThumbnail;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    check-cast v2, [B

    const/4 v3, 0x1

    aget-object v3, p1, v3

    check-cast v3, Ljava/lang/Integer;

    const/4 v4, 0x2

    aget-object p1, p1, v4

    check-cast p1, Landroid/graphics/Rect;

    invoke-direct {v1, v2, v3, p1}, Lcom/sonyericsson/android/camera/controller/ChapterThumbnail;-><init>([BLjava/lang/Integer;Landroid/graphics/Rect;)V

    # setter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mChapterThumbnail:Lcom/sonyericsson/android/camera/controller/ChapterThumbnail;
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$12502(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/ChapterThumbnail;)Lcom/sonyericsson/android/camera/controller/ChapterThumbnail;

    .line 6309
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine;->sendVideoChapterThumbnailToViewFinder()V
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$13400(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    return-void
.end method

.method public varargs handleOnOrientationChanged([Ljava/lang/Object;)V
    .registers 6

    .line 6346
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1200(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_ORIENTATION_CHANGED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object p1, p1, v3

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs handleOnReachBatteryLimit([Ljava/lang/Object;)V
    .registers 7

    .line 6352
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v1, 0x1

    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine;->doStopRecording(Z)V
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$12700(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    .line 6353
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v2, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, v0, v1, v3, v4}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;ZZLcom/sonyericsson/android/camera/controller/StateMachine$1;)V

    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V
    invoke-static {v0, v2, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1800(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    .line 6354
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1200(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_NOTIFY_BATTERY_CRITICAL:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    new-array v2, v1, [Ljava/lang/Object;

    .line 6355
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-interface {p1, v0, v2}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs handleOnRecordingError([Ljava/lang/Object;)V
    .registers 2

    .line 6341
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine;->doHandleRecordingError()V
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$12600(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    return-void
.end method

.method public varargs handleOnShutterDone([Ljava/lang/Object;)V
    .registers 4

    const/4 v0, 0x0

    .line 6285
    aget-object p1, p1, v0

    check-cast p1, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    .line 6286
    monitor-enter p0

    .line 6287
    :try_start_6
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$14100(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 6289
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$14100(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->setClickThumbnailProgressListener(Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$OnClickThumbnailProgressListener;)V

    .line 6294
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$14100(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->createProvisionalContentFrame()I

    move-result v0

    .line 6296
    invoke-virtual {p1, v0}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->setRequestId(I)V

    goto :goto_2a

    :cond_26
    const/4 v0, -0x1

    .line 6298
    invoke-virtual {p1, v0}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->setRequestId(I)V

    .line 6300
    :goto_2a
    monitor-exit p0

    return-void

    :catchall_2c
    move-exception p1

    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_6 .. :try_end_2e} :catchall_2c

    throw p1
.end method

.method public varargs handleOnStoreCompleted([Ljava/lang/Object;)V
    .registers 5

    .line 6239
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnStoreCompleted([Ljava/lang/Object;)V

    .line 6240
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;->mIsPaused:Z

    if-eqz v0, :cond_26

    .line 6241
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;->mIsPausingRequested:Z

    if-eqz v0, :cond_17

    .line 6242
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecordingPausing;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecordingPausing;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$1;)V

    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V
    invoke-static {v0, v1, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1800(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    goto :goto_3c

    .line 6244
    :cond_17
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$2800(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->requestOnePreviewFrame()V

    .line 6245
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine;->doResumeRecording()V
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$14000(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    goto :goto_3c

    .line 6248
    :cond_26
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;->mIsPausingRequested:Z

    if-nez v0, :cond_37

    .line 6249
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;

    iget-boolean v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;->mIsReturnToVideoRecordingRequired:Z

    invoke-direct {v1, v0, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V
    invoke-static {v0, v1, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1800(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    goto :goto_3c

    .line 6251
    :cond_37
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine;->doPauseRecording()V
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$13500(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    .line 6254
    :goto_3c
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;->mIsReturnToVideoRecordingRequired:Z

    if-eqz p1, :cond_46

    .line 6256
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v0, 0x0

    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine;->doStopRecording(Z)V
    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$12700(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    :cond_46
    return-void
.end method

.method public varargs handleOnTakePictureDone([Ljava/lang/Object;)V
    .registers 3

    const/4 v0, 0x0

    .line 6232
    aget-object p1, p1, v0

    check-cast p1, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    .line 6234
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine;->requestStorePicture(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)V
    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$4400(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)V

    return-void
.end method

.method public varargs handleOnVideoRecordingDone([Ljava/lang/Object;)V
    .registers 5

    .line 6326
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoStore;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoStore;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$1;)V

    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V
    invoke-static {v0, v1, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1800(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs handlePause([Ljava/lang/Object;)V
    .registers 6

    .line 6272
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v1, 0x0

    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine;->doStopRecordingWithForceFlush(ZZ)V
    invoke-static {v0, v1, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$13300(Lcom/sonyericsson/android/camera/controller/StateMachine;ZZ)V

    .line 6273
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v2, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePause;

    aget-object v1, p1, v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePause;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;ZLcom/sonyericsson/android/camera/controller/StateMachine$1;)V

    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V
    invoke-static {v0, v2, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1800(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs handlePauseRecording([Ljava/lang/Object;)V
    .registers 2

    const/4 p1, 0x1

    .line 6262
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;->mIsPausingRequested:Z

    return-void
.end method

.method public varargs handleResumeRecording([Ljava/lang/Object;)V
    .registers 2

    const/4 p1, 0x0

    .line 6267
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;->mIsPausingRequested:Z

    return-void
.end method

.method public varargs handleStopRecording([Ljava/lang/Object;)V
    .registers 2

    const/4 p1, 0x1

    .line 6278
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;->mIsReturnToVideoRecordingRequired:Z

    return-void
.end method

.method public varargs handleStorageError([Ljava/lang/Object;)V
    .registers 6

    const/4 v0, 0x1

    .line 6314
    aget-object p1, p1, v0

    check-cast p1, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    .line 6315
    sget-object v1, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->CORRUPT:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    if-ne p1, v1, :cond_33

    .line 6318
    new-array p1, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Storage corruption : state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1000(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    .line 6319
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-nez p1, :cond_2d

    goto :goto_33

    :cond_2d
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 6321
    :cond_33
    :goto_33
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine;->doStopRecording(Z)V
    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$12700(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    return-void
.end method
