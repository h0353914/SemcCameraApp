.class Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;
.super Lcom/sonyericsson/android/camera/controller/StateMachine$State;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StateRestartPreviewSession"
.end annotation


# instance fields
.field private mEnterByCameraKey:Z

.field private mNextSessionType:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

.field private mParasCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingTask:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mShouldCancelCapture:Z

.field private mShouldCapture:Z

.field private mShouldCaptureBurst:Z

.field private mSwitchBokeh:Z

.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;)V
    .registers 4

    .line 3469
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State-IA;)V

    .line 3417
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;->mPendingTask:Ljava/util/List;

    const/4 p1, 0x0

    .line 3437
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;->mEnterByCameraKey:Z

    .line 3439
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;->mShouldCancelCapture:Z

    .line 3470
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_2c

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "invoke sessionType : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3471
    :cond_2c
    sget-object p1, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_RESTART_PREVIEW_SESSION:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;->mCaptureState:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 3472
    iput-object p2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;->mNextSessionType:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;Z)V
    .registers 5

    .line 3453
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State-IA;)V

    .line 3417
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;->mPendingTask:Ljava/util/List;

    const/4 p1, 0x0

    .line 3437
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;->mEnterByCameraKey:Z

    .line 3439
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;->mShouldCancelCapture:Z

    .line 3454
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_2c

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "invoke sessionType : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3455
    :cond_2c
    sget-object p1, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_RESTART_PREVIEW_SESSION:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;->mCaptureState:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 3456
    iput-object p2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;->mNextSessionType:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    .line 3457
    iput-boolean p3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;->mEnterByCameraKey:Z

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;ZZ)V
    .registers 6

    .line 3461
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State-IA;)V

    .line 3417
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;->mPendingTask:Ljava/util/List;

    const/4 p1, 0x0

    .line 3437
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;->mEnterByCameraKey:Z

    .line 3439
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;->mShouldCancelCapture:Z

    .line 3462
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_2c

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "invoke sessionType : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3463
    :cond_2c
    sget-object p1, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_RESTART_PREVIEW_SESSION:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;->mCaptureState:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 3464
    iput-object p2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;->mNextSessionType:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    .line 3465
    iput-boolean p3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;->mEnterByCameraKey:Z

    .line 3466
    iput-boolean p4, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;->mSwitchBokeh:Z

    return-void
.end method

.method private cacheParameter()V
    .registers 2

    .line 3660
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters()Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 3662
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->cacheParameters()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;->mParasCache:Ljava/util/Map;

    :cond_12
    return-void
.end method

.method private switchBokeh(Z)V
    .registers 7

    .line 3642
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;->cacheParameter()V

    .line 3643
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->clearMessageDialog()V

    .line 3644
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->hideSurface()V

    .line 3645
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->stopPreviewSynchronized()V

    .line 3646
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->closeCamera()V

    .line 3647
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmActivity(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_ONLY:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    .line 3648
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v3}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmUserSettings(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;->mNextSessionType:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    .line 3647
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sonyericsson/android/camera/CameraActivity;->prepareCameraDeviceHandler(Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    .line 3650
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->showSurface()V

    if-eqz p1, :cond_55

    .line 3652
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->enableBokehModeAndCommit()V

    goto :goto_5e

    .line 3654
    :cond_55
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->disableBokehModeAndCommit()V

    .line 3656
    :goto_5e
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p0

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->notifyOnEvfPrepared()V

    return-void
.end method


# virtual methods
.method public entry()V
    .registers 5

    .line 3488
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Entry session, mNextSessionType:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;->mNextSessionType:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3489
    :cond_1c
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$SessionType:[I

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;->mNextSessionType:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_120

    .line 3540
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown session type, mNextSessionType : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;->mNextSessionType:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    goto/16 :goto_11e

    .line 3506
    :pswitch_44
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCurrentSessionType(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    move-result-object v0

    if-nez v0, :cond_53

    .line 3507
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v2, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;->SESSION_TYPE_NORMAL:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    invoke-static {v0, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fputmCurrentSessionType(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;)V

    .line 3509
    :cond_53
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$SessionType:[I

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCurrentSessionType(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    if-eq v0, v1, :cond_cd

    const/4 v1, 0x2

    if-eq v0, v1, :cond_c3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_b9

    const/4 v1, 0x4

    if-eq v0, v1, :cond_98

    const/4 v1, 0x5

    if-eq v0, v1, :cond_8d

    .line 3530
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown session type, mCurrentSessionType : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCurrentSessionType(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    goto/16 :goto_11e

    .line 3526
    :cond_8d
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->finishWalkingPreview()V

    goto/16 :goto_11e

    .line 3520
    :cond_98
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_UPDATE_BOKEH_MODE:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v2, 0x0

    .line 3521
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 3520
    invoke-interface {v0, v1, v3}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 3522
    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;->switchBokeh(Z)V

    .line 3523
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->finishBokehPreview()V

    goto :goto_11e

    .line 3517
    :cond_b9
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->finishNightPortraitCapture()V

    goto :goto_11e

    .line 3514
    :cond_c3
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->finishHDRCapture()V

    goto :goto_11e

    .line 3511
    :cond_cd
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->finishLowLightCapture()V

    goto :goto_11e

    .line 3503
    :pswitch_d7
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->prepareWalkingPreview()V

    goto :goto_11e

    .line 3497
    :pswitch_e1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v0

    sget-object v2, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_UPDATE_BOKEH_MODE:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    .line 3498
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 3497
    invoke-interface {v0, v2, v3}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 3499
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;->switchBokeh(Z)V

    .line 3500
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->prepareBokehPreview()V

    goto :goto_11e

    .line 3494
    :pswitch_101
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->prepareNightPortraitCapture()V

    goto :goto_11e

    .line 3537
    :pswitch_10b
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->prepareHDRCapture()V

    goto :goto_11e

    .line 3491
    :pswitch_115
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->prepareLowLightCapture()V

    :goto_11e
    return-void

    nop

    :pswitch_data_120
    .packed-switch 0x1
        :pswitch_115
        :pswitch_10b
        :pswitch_101
        :pswitch_e1
        :pswitch_d7
        :pswitch_44
    .end packed-switch
.end method

.method public exit()V
    .registers 1

    .line 3668
    invoke-super {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->exit()V

    .line 3669
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;->mParasCache:Ljava/util/Map;

    if-eqz p0, :cond_a

    .line 3670
    invoke-interface {p0}, Ljava/util/Map;->clear()V

    :cond_a
    return-void
.end method

.method public getParametersCache()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 3426
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;->mParasCache:Ljava/util/Map;

    return-object p0
.end method

.method public varargs handleCapture([Ljava/lang/Object;)V
    .registers 2

    const/4 p1, 0x1

    .line 3618
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;->mShouldCapture:Z

    return-void
.end method

.method public varargs handleCaptureBurst([Ljava/lang/Object;)V
    .registers 2

    const/4 p1, 0x1

    .line 3638
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;->mShouldCaptureBurst:Z

    return-void
.end method

.method public varargs handleCaptureCancel([Ljava/lang/Object;)V
    .registers 2

    const/4 p1, 0x1

    .line 3623
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;->mShouldCancelCapture:Z

    return-void
.end method

.method public varargs handleOnEvfPrepared([Ljava/lang/Object;)V
    .registers 3

    .line 3633
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p0

    const/4 v0, 0x0

    aget-object p1, p1, v0

    check-cast p1, Lcom/sonymobile/cameracommon/evf/Evf;

    invoke-interface {p1}, Lcom/sonymobile/cameracommon/evf/Evf;->asSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setPreviewSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public varargs handleOnPreviewStarted([Ljava/lang/Object;)V
    .registers 5

    .line 3548
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;->getParametersCache()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setParameter(Ljava/util/Map;)V

    .line 3549
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters()Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->requestApply()V

    .line 3551
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;->getParametersCache()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_36

    .line 3552
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;->getParametersCache()Ljava/util/Map;

    move-result-object p1

    const-string/jumbo v0, "sony-awb-compensation-ab"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_36

    .line 3553
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;->getParametersCache()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_37

    :cond_36
    const/4 p1, 0x0

    .line 3555
    :goto_37
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCurrentSessionType(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;->SESSION_TYPE_BOKEH:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    if-ne v0, v1, :cond_7d

    .line 3556
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmPredictiveApplier(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Bokeh;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/Bokeh;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;->-$$Nest$mentrySuppressor(Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;Ljava/lang/Object;)V

    .line 3557
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    .line 3558
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getUserSetting()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->BOKEH:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v1, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->getInt(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    .line 3557
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setBokehStrength(F)V

    if-eqz p1, :cond_77

    .line 3561
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setAmberBlueColorAndCommit(I)V

    .line 3563
    :cond_77
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mchangeToStandby(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    goto :goto_86

    .line 3565
    :cond_7d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->commit()V

    :goto_86
    if-eqz p1, :cond_9b

    .line 3567
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_9b

    .line 3568
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p0

    const/16 p1, -0x64

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setAmberBlueColorAndCommit(I)V

    :cond_9b
    return-void
.end method

.method public varargs handlePause([Ljava/lang/Object;)V
    .registers 6

    .line 3628
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePause;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePause;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;ZLcom/sonyericsson/android/camera/controller/StateMachine$StatePause-IA;)V

    invoke-static {v0, v1, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mchangeTo(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    return-void
.end method

.method public handlePreviewSessionConfigured([Ljava/lang/Object;)V
    .registers 6

    .line 3574
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCurrentSessionType(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    move-result-object v0

    .line 3575
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v2, 0x0

    aget-object p1, p1, v2

    check-cast p1, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    invoke-static {v1, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fputmCurrentSessionType(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;)V

    .line 3576
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "LatestSessionType: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", CurrentSessionType: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCurrentSessionType(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3578
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCurrentSessionType(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    move-result-object p1

    if-eq v0, p1, :cond_43

    .line 3579
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {p1, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->onLogicalCameraModeChanged(Z)V

    .line 3581
    :cond_43
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCurrentSessionType(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;->SESSION_TYPE_BOKEH:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    if-ne p1, v0, :cond_64

    .line 3582
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->startBokehMonitoring()V

    .line 3584
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;->mShouldCapture:Z

    if-eqz p1, :cond_63

    .line 3585
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object p1, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_CAPTURE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    :cond_63
    return-void

    .line 3590
    :cond_64
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p1

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->isMenuDialogOpened()Z

    move-result p1

    if-eqz p1, :cond_84

    .line 3591
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateOperationRestricted;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateOperationRestricted;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$StateOperationRestricted-IA;)V

    sget-object p0, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->SETTING_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mchangeTo(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    goto :goto_ee

    .line 3593
    :cond_84
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReady;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReady;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mchangeTo(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    .line 3594
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;->mPendingTask:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_ee

    .line 3595
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;->mPendingTask:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_a1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 3596
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_a1

    .line 3598
    :cond_b1
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;->mShouldCapture:Z

    if-eqz p1, :cond_be

    .line 3599
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_CAPTURE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 3601
    :cond_be
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;->mShouldCaptureBurst:Z

    if-eqz p1, :cond_cb

    .line 3602
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_CAPTURE_BURST:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 3604
    :cond_cb
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;->mShouldCancelCapture:Z

    if-eqz p1, :cond_ee

    .line 3605
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCurrentState(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->getCaptureState()Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    move-result-object p1

    .line 3607
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_BURST_CAPTURE_WAIT_FOR_AF_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    if-eq p1, v0, :cond_e5

    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_BURST_CAPTURE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    if-eq p1, v0, :cond_e5

    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;->mEnterByCameraKey:Z

    if-eqz p1, :cond_ee

    .line 3609
    :cond_e5
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object p1, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_CAPTURE_CANCEL:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    :cond_ee
    :goto_ee
    return-void
.end method

.method public varargs handleStartTransitionOperation([Ljava/lang/Object;)V
    .registers 5

    const/4 v0, 0x0

    .line 3447
    aget-object p1, p1, v0

    check-cast p1, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;

    .line 3448
    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;->mDegree:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;

    sget-object v1, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;->START:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;

    if-ne p1, v1, :cond_1a

    .line 3449
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StateModeChanging;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateModeChanging;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$StateModeChanging-IA;)V

    new-array p0, v0, [Ljava/lang/Object;

    invoke-static {p1, v1, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mchangeTo(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    :cond_1a
    return-void
.end method

.method public isSwitchBokeh()Z
    .registers 1

    .line 3442
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;->mSwitchBokeh:Z

    return p0
.end method

.method public setPendingTask(Ljava/lang/Runnable;)Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;
    .registers 3

    .line 3482
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;->mPendingTask:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
