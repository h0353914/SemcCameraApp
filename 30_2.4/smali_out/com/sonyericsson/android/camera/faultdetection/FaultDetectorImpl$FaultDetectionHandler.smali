.class Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;
.super Landroid/os/Handler;
.source "FaultDetectorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FaultDetectionHandler"
.end annotation


# instance fields
.field private final mLastDetectedFaces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/faultdetection/Face;",
            ">;"
        }
    .end annotation
.end field

.field private mLastSnapshotRequestId:I

.field private final mLock:Ljava/lang/Object;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;Landroid/os/Looper;)V
    .registers 3

    .line 697
    iput-object p1, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;->this$0:Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;

    .line 698
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 693
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;->mLock:Ljava/lang/Object;

    .line 694
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;->mLastDetectedFaces:Ljava/util/List;

    const/4 p1, -0x1

    .line 695
    iput p1, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;->mLastSnapshotRequestId:I

    return-void
.end method

.method static synthetic access$1800(Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;)Ljava/lang/Object;
    .registers 1

    .line 692
    iget-object p0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;)Ljava/util/List;
    .registers 1

    .line 692
    iget-object p0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;->mLastDetectedFaces:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;Ljava/util/List;)V
    .registers 2

    .line 692
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;->clearFaceList(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$600(Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;)V
    .registers 1

    .line 692
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;->removeCallbacksAndMessages()V

    return-void
.end method

.method private clearFaceList(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/faultdetection/Face;",
            ">;)V"
        }
    .end annotation

    .line 847
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/faultdetection/Face;

    .line 848
    iget-object v2, v1, Lcom/sonyericsson/android/camera/faultdetection/Face;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_4

    iget-object v2, v1, Lcom/sonyericsson/android/camera/faultdetection/Face;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_4

    .line 849
    iget-object v1, v1, Lcom/sonyericsson/android/camera/faultdetection/Face;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_4

    .line 852
    :cond_22
    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method private removeCallbacksAndMessages()V
    .registers 3

    const/4 v0, 0x0

    .line 856
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 857
    iget-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 858
    :try_start_7
    iget-object v1, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;->mLastDetectedFaces:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;->clearFaceList(Ljava/util/List;)V

    .line 859
    monitor-exit v0

    return-void

    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw v1
.end method

.method private requestCropFaces()V
    .registers 5

    .line 816
    iget-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;->this$0:Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;

    # getter for: Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mEyeBlinkDetector:Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->access$400(Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;)Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 820
    :cond_9
    new-instance v0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$CropInfo;

    sget-object v1, Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$CropInfo$Target;->FACES:Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$CropInfo$Target;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;->this$0:Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;

    .line 821
    # getter for: Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mEyeBlinkDetector:Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->access$400(Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;)Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;->getDetectionImageSizeBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$CropInfo;-><init>(Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$CropInfo$Target;Landroid/graphics/Bitmap;)V

    .line 822
    iget-object v1, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;->this$0:Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;

    # getter for: Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->access$1200(Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;->this$0:Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;

    # getter for: Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mDeviceOrientation:I
    invoke-static {v2}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->access$1000(Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;)I

    move-result v2

    new-instance v3, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler$2;

    invoke-direct {v3, p0}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler$2;-><init>(Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;)V

    invoke-virtual {v1, v0, v2, v3, p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->requestCrop(Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$CropInfo;ILcom/sonyericsson/android/camera/device/SurfaceCropper$OnCropListener;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 11

    .line 704
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_1cc

    goto/16 :goto_1ca

    .line 797
    :pswitch_9
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_16

    const-string p1, "Reset crop faces"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 798
    :cond_16
    iget-object p1, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;->this$0:Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;

    # getter for: Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mEyeBlinkDetector:Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->access$400(Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;)Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;

    move-result-object p1

    if-eqz p1, :cond_1ca

    .line 799
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_27

    .line 800
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;->removeMessages(I)V

    .line 802
    :cond_27
    iget-object p1, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 803
    :try_start_2a
    iget-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;->mLastDetectedFaces:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;->clearFaceList(Ljava/util/List;)V

    .line 804
    iget-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;->this$0:Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;

    # getter for: Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mFaceStore:Lcom/sonyericsson/android/camera/faultdetection/FaceStore;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->access$1400(Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;)Lcom/sonyericsson/android/camera/faultdetection/FaceStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/faultdetection/FaceStore;->clear()V

    .line 805
    monitor-exit p1
    :try_end_39
    .catchall {:try_start_2a .. :try_end_39} :catchall_40

    .line 806
    iget-object p1, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;->this$0:Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;

    # invokes: Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->restartCropFaceTimer()V
    invoke-static {p1}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->access$1500(Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;)V

    goto/16 :goto_1ca

    :catchall_40
    move-exception v0

    .line 805
    :try_start_41
    monitor-exit p1
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    throw v0

    .line 734
    :pswitch_43
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_50

    const-string p1, "Snapshot requested"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 735
    :cond_50
    iget-object p1, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;->this$0:Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;

    # getter for: Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mEyeBlinkDetector:Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->access$400(Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;)Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;

    move-result-object p1

    if-eqz p1, :cond_1ca

    .line 736
    iget-object p1, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;->this$0:Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;

    # invokes: Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->stopCropFaceTimer()V
    invoke-static {p1}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->access$1300(Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;)V

    .line 737
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_1ca

    .line 738
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;->removeMessages(I)V

    goto/16 :goto_1ca

    .line 761
    :pswitch_68
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 762
    sget-boolean v3, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v3, :cond_86

    new-array v3, v2, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Snapshot done: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 763
    :cond_86
    iget v3, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;->mLastSnapshotRequestId:I

    if-le v3, v0, :cond_99

    .line 765
    iget-object p1, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;->this$0:Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;

    # getter for: Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mEyeBlinkDetector:Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->access$400(Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;)Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;

    move-result-object p1

    if-eqz p1, :cond_1ca

    .line 766
    iget-object p1, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;->this$0:Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;

    # invokes: Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->restartCropFaceTimer()V
    invoke-static {p1}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->access$1500(Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;)V

    goto/16 :goto_1ca

    .line 770
    :cond_99
    iget-object v3, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;->this$0:Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;

    # getter for: Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mSnapshotDetectionTypeList:Ljava/util/List;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->access$1600(Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 771
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/nio/ByteBuffer;

    .line 772
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    new-array v3, v3, [B

    .line 773
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 774
    array-length p1, v3

    invoke-static {v3, v1, p1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 776
    iget-object v3, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;->this$0:Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;

    # getter for: Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mInHouseDetector:Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->access$300(Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;)Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector;

    move-result-object v3

    sget-object v5, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$DetectionTrigger;->SNAPSHOT:Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$DetectionTrigger;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;->this$0:Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;

    .line 777
    # getter for: Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mIsFront:Z
    invoke-static {v4}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->access$1100(Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;)Z

    move-result v7

    iget-object v4, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;->this$0:Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;

    .line 778
    # getter for: Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mDeviceOrientation:I
    invoke-static {v4}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->access$1000(Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;)I

    move-result v8

    move-object v4, p1

    move v6, v0

    .line 777
    invoke-virtual/range {v3 .. v8}, Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector;->createTask(Landroid/graphics/Bitmap;Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$DetectionTrigger;IZI)Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$DetectorTask;

    move-result-object v3

    .line 779
    iget-object v4, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;->this$0:Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;

    # getter for: Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mInHouseDetector:Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector;
    invoke-static {v4}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->access$300(Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;)Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector;->detect(Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$DetectorTask;)V

    .line 781
    iget-object v3, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;->this$0:Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;

    # getter for: Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mEyeBlinkDetector:Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->access$400(Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;)Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;

    move-result-object v3

    if-eqz v3, :cond_12e

    .line 782
    iget-object v3, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 783
    :try_start_e2
    iget-object v4, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;->mLastDetectedFaces:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_e8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonyericsson/android/camera/faultdetection/Face;

    .line 784
    iget v6, v5, Lcom/sonyericsson/android/camera/faultdetection/Face;->rotation:I

    const/16 v7, 0x5a

    if-eq v6, v7, :cond_103

    iget v6, v5, Lcom/sonyericsson/android/camera/faultdetection/Face;->rotation:I

    const/16 v7, 0x10e

    if-ne v6, v7, :cond_101

    goto :goto_103

    :cond_101
    move v6, v1

    goto :goto_104

    :cond_103
    :goto_103
    move v6, v2

    .line 785
    :goto_104
    iget-object v7, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;->this$0:Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;

    iget-object v8, v5, Lcom/sonyericsson/android/camera/faultdetection/Face;->rect:Landroid/graphics/Rect;

    # invokes: Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->cropFaceWithMargin(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Z)Landroid/graphics/Bitmap;
    invoke-static {v7, p1, v8, v6}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->access$1700(Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Z)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, v5, Lcom/sonyericsson/android/camera/faultdetection/Face;->bitmap:Landroid/graphics/Bitmap;

    goto :goto_e8

    .line 787
    :cond_10f
    iget-object v1, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;->this$0:Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;

    # getter for: Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mEyeBlinkDetector:Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->access$400(Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;)Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;->mLastDetectedFaces:Ljava/util/List;

    .line 788
    invoke-virtual {v1, v2, v0}, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;->createDetectionTask(Ljava/util/List;I)Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$DetectorTask;

    move-result-object v0

    .line 789
    iget-object v1, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;->this$0:Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;

    # getter for: Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mEyeBlinkDetector:Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->access$400(Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;)Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;->detect(Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$DetectorTask;)V

    .line 790
    monitor-exit v3
    :try_end_125
    .catchall {:try_start_e2 .. :try_end_125} :catchall_12b

    .line 791
    iget-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;->this$0:Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;

    # invokes: Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->restartCropFaceTimer()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->access$1500(Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;)V

    goto :goto_12e

    :catchall_12b
    move-exception p1

    .line 790
    :try_start_12c
    monitor-exit v3
    :try_end_12d
    .catchall {:try_start_12c .. :try_end_12d} :catchall_12b

    throw p1

    .line 793
    :cond_12e
    :goto_12e
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_1ca

    .line 744
    :pswitch_133
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 745
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_151

    new-array v0, v2, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Shutter done: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 746
    :cond_151
    iget-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;->this$0:Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;

    # getter for: Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mEyeBlinkDetector:Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->access$400(Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;)Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;

    move-result-object v0

    if-eqz v0, :cond_1ca

    const/4 v0, -0x1

    if-eq p1, v0, :cond_181

    .line 748
    iput p1, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;->mLastSnapshotRequestId:I

    .line 749
    iget-object p1, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 750
    :try_start_161
    iget-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;->this$0:Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;

    # getter for: Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mEyeBlinkDetector:Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->access$400(Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;)Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;->mLastDetectedFaces:Ljava/util/List;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;->this$0:Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;

    .line 751
    # getter for: Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mFaceStore:Lcom/sonyericsson/android/camera/faultdetection/FaceStore;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->access$1400(Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;)Lcom/sonyericsson/android/camera/faultdetection/FaceStore;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;->createCalcAvgTask(Ljava/util/List;Lcom/sonyericsson/android/camera/faultdetection/FaceStore;)Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$DetectorTask;

    move-result-object v0

    .line 752
    iget-object v1, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;->this$0:Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;

    # getter for: Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mEyeBlinkDetector:Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->access$400(Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;)Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;->detect(Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$DetectorTask;)V

    .line 753
    monitor-exit p1

    goto :goto_1ca

    :catchall_17e
    move-exception v0

    monitor-exit p1
    :try_end_180
    .catchall {:try_start_161 .. :try_end_180} :catchall_17e

    throw v0

    .line 755
    :cond_181
    iget-object p1, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;->this$0:Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;

    # invokes: Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->restartCropFaceTimer()V
    invoke-static {p1}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->access$1500(Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;)V

    goto :goto_1ca

    .line 729
    :pswitch_187
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_194

    const-string p1, "Request crop faces"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 730
    :cond_194
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;->requestCropFaces()V

    goto :goto_1ca

    .line 706
    :pswitch_198
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_1a5

    const-string p1, "Request crop preview"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 707
    :cond_1a5
    new-instance p1, Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$CropInfo;

    sget-object v0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$CropInfo$Target;->PREVIEW:Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$CropInfo$Target;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;->this$0:Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;

    .line 708
    # getter for: Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mInHouseDetector:Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->access$300(Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;)Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector;->getDetectionImageSizeBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$CropInfo;-><init>(Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$CropInfo$Target;Landroid/graphics/Bitmap;)V

    .line 709
    iget-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;->this$0:Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;

    # getter for: Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->access$1200(Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;->this$0:Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;

    .line 710
    # getter for: Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mDeviceOrientation:I
    invoke-static {v1}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->access$1000(Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;)I

    move-result v1

    new-instance v2, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler$1;

    invoke-direct {v2, p0}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler$1;-><init>(Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;)V

    invoke-virtual {v0, p1, v1, v2, p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->requestCrop(Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$CropInfo;ILcom/sonyericsson/android/camera/device/SurfaceCropper$OnCropListener;Landroid/os/Handler;)V

    :cond_1ca
    :goto_1ca
    return-void

    nop

    :pswitch_data_1cc
    .packed-switch 0x0
        :pswitch_198
        :pswitch_187
        :pswitch_133
        :pswitch_68
        :pswitch_43
        :pswitch_9
    .end packed-switch
.end method
