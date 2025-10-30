.class Lcom/sonyericsson/android/camera/controller/StateMachine$RequestStoreTask;
.super Ljava/lang/Object;
.source "StateMachine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestStoreTask"
.end annotation


# instance fields
.field private final mRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)V
    .registers 3

    .line 8943
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$RequestStoreTask;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8944
    iput-object p2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$RequestStoreTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;Lcom/sonyericsson/android/camera/controller/StateMachine$1;)V
    .registers 4

    .line 8939
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$RequestStoreTask;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)V

    return-void
.end method

.method static synthetic access$16100(Lcom/sonyericsson/android/camera/controller/StateMachine$RequestStoreTask;)Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;
    .registers 1

    .line 8939
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$RequestStoreTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    return-object p0
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 8949
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "invoke RequestStoreTask"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 8951
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$RequestStoreTask;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    monitor-enter v0

    .line 8961
    :try_start_10
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$RequestStoreTask;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$RequestStoreTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine;->isNeedRepairRequestId(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)Z
    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$16000(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)Z

    move-result v1

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$RequestStoreTask;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$14100(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v1

    if-eqz v1, :cond_32

    .line 8962
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$RequestStoreTask;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$2200(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v1

    new-instance v2, Lcom/sonyericsson/android/camera/controller/StateMachine$RequestStoreTask$1;

    invoke-direct {v2, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$RequestStoreTask$1;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine$RequestStoreTask;)V

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 8968
    monitor-exit v0

    return-void

    .line 8973
    :cond_32
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$RequestStoreTask;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$14100(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v1

    if-nez v1, :cond_ac

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$RequestStoreTask;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    .line 8974
    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1000(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->getCaptureState()Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_PAUSE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    if-eq v1, v2, :cond_ac

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$RequestStoreTask;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    .line 8975
    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1000(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->getCaptureState()Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_FINALIZE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    if-ne v1, v2, :cond_57

    goto :goto_ac

    .line 8983
    :cond_57
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$RequestStoreTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->getShouldUpdateOrientationBeforeStoring()Z

    move-result v1

    if-eqz v1, :cond_6b

    .line 8984
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$RequestStoreTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mCommonStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$RequestStoreTask;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine;->getOrientation()I
    invoke-static {v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$16300(Lcom/sonyericsson/android/camera/controller/StateMachine;)I

    move-result v2

    iput v2, v1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->orientation:I

    .line 8986
    :cond_6b
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$RequestStoreTask;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$2200(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->isDeviceInSecurityLock()Z

    move-result v1

    if-eqz v1, :cond_9e

    .line 8987
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$RequestStoreTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mCommonStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-boolean v1, v1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->takenByFastCapture:Z

    if-nez v1, :cond_92

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$RequestStoreTask;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$RequestStoreTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    .line 8988
    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine;->isNeedRepairRequestId(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)Z
    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$16000(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)Z

    move-result v1

    if-eqz v1, :cond_8a

    goto :goto_92

    .line 8994
    :cond_8a
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$RequestStoreTask;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$RequestStoreTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine;->storePicture(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)V
    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$16200(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)V

    goto :goto_b3

    .line 8991
    :cond_92
    :goto_92
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$RequestStoreTask;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mPhotoSavingRequestList:Ljava/util/List;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$16400(Lcom/sonyericsson/android/camera/controller/StateMachine;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$RequestStoreTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b3

    .line 8999
    :cond_9e
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$RequestStoreTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->setRequestId(I)V

    .line 9002
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$RequestStoreTask;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$RequestStoreTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine;->storePicture(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)V
    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$16200(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)V

    goto :goto_b3

    .line 8980
    :cond_ac
    :goto_ac
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$RequestStoreTask;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$RequestStoreTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine;->storePicture(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)V
    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$16200(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)V

    .line 9005
    :goto_b3
    monitor-exit v0
    :try_end_b4
    .catchall {:try_start_10 .. :try_end_b4} :catchall_c3

    .line 9008
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$RequestStoreTask;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1900(Lcom/sonyericsson/android/camera/controller/StateMachine;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$RequestStoreTask$2;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$RequestStoreTask$2;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine$RequestStoreTask;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_c3
    move-exception v1

    .line 9005
    :try_start_c4
    monitor-exit v0
    :try_end_c5
    .catchall {:try_start_c4 .. :try_end_c5} :catchall_c3

    throw v1
.end method
