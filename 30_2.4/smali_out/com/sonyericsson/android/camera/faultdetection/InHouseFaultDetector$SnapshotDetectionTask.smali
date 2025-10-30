.class Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector$SnapshotDetectionTask;
.super Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$DetectorTask;
.source "InHouseFaultDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SnapshotDetectionTask"
.end annotation


# instance fields
.field private mDeviceOrientation:I

.field private mIsFront:Z

.field private mReducedBitmap:Landroid/graphics/Bitmap;

.field private mRequestId:I

.field private mSnapshot:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector;Landroid/graphics/Bitmap;IZI)V
    .registers 6

    .line 183
    iput-object p1, p0, Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector$SnapshotDetectionTask;->this$0:Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$DetectorTask;-><init>(Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;)V

    .line 184
    iput-object p2, p0, Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector$SnapshotDetectionTask;->mSnapshot:Landroid/graphics/Bitmap;

    .line 185
    iput p3, p0, Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector$SnapshotDetectionTask;->mRequestId:I

    .line 186
    iput-boolean p4, p0, Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector$SnapshotDetectionTask;->mIsFront:Z

    .line 187
    iput p5, p0, Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector$SnapshotDetectionTask;->mDeviceOrientation:I

    return-void
.end method

.method private isDetectedFingerCovering([F)Z
    .registers 3

    .line 265
    iget-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector$SnapshotDetectionTask;->this$0:Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector;

    # getter for: Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector;->mIsWideMode:Z
    invoke-static {v0}, Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector;->access$300(Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 266
    sget-object v0, Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector$FaultType;->FINGER_COVERING_FOR_WIDE:Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector$FaultType;

    # getter for: Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector$FaultType;->index:I
    invoke-static {v0}, Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector$FaultType;->access$000(Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector$FaultType;)I

    move-result v0

    aget p1, p1, v0

    goto :goto_19

    .line 268
    :cond_11
    sget-object v0, Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector$FaultType;->FINGER_COVERING:Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector$FaultType;

    # getter for: Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector$FaultType;->index:I
    invoke-static {v0}, Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector$FaultType;->access$000(Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector$FaultType;)I

    move-result v0

    aget p1, p1, v0

    :goto_19
    const v0, 0x3f333333    # 0.7f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_22

    const/4 p1, 0x1

    goto :goto_23

    :cond_22
    const/4 p1, 0x0

    :goto_23
    return p1
.end method

.method private isDetectedHandBlur([F)Z
    .registers 3

    .line 259
    sget-object v0, Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector$FaultType;->HAND_BLUR:Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector$FaultType;

    # getter for: Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector$FaultType;->index:I
    invoke-static {v0}, Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector$FaultType;->access$000(Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector$FaultType;)I

    move-result v0

    aget p1, p1, v0

    const v0, 0x3f333333    # 0.7f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_11

    const/4 p1, 0x1

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    :goto_12
    return p1
.end method


# virtual methods
.method protected postExecuteDetection(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[F>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_8e

    .line 225
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8e

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_12

    goto/16 :goto_8e

    .line 231
    :cond_12
    sget-boolean v2, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v2, :cond_38

    .line 232
    new-array v2, v0, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OnExecuted. result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [F

    invoke-static {v4}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 235
    :cond_38
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    .line 236
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 237
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector$SnapshotDetectionTask;->isDetectedHandBlur([F)Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 238
    sget-object v3, Lcom/sonyericsson/android/camera/faultdetection/DetectionType;->HAND_BLUR:Lcom/sonyericsson/android/camera/faultdetection/DetectionType;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    :cond_4e
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector$SnapshotDetectionTask;->isDetectedFingerCovering([F)Z

    move-result v3

    if-eqz v3, :cond_59

    .line 241
    sget-object v3, Lcom/sonyericsson/android/camera/faultdetection/DetectionType;->FINGER_COVERING:Lcom/sonyericsson/android/camera/faultdetection/DetectionType;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    :cond_59
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_64

    .line 244
    sget-object v3, Lcom/sonyericsson/android/camera/faultdetection/DetectionType;->NONE:Lcom/sonyericsson/android/camera/faultdetection/DetectionType;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    :cond_64
    sget-object v3, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$DetectionTrigger;->SNAPSHOT:Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$DetectionTrigger;

    iget v4, p0, Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector$SnapshotDetectionTask;->mRequestId:I

    new-array v1, v1, [Lcom/sonyericsson/android/camera/faultdetection/DetectionType;

    .line 248
    invoke-interface {v2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/sonyericsson/android/camera/faultdetection/DetectionType;

    .line 247
    invoke-virtual {p0, v3, v4, v1}, Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector$SnapshotDetectionTask;->notifyDetection(Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$DetectionTrigger;I[Lcom/sonyericsson/android/camera/faultdetection/DetectionType;)V

    .line 250
    sget-object v1, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->INSTANCE:Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;

    .line 251
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->isSaveInHouseEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_88

    .line 252
    invoke-static {}, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;->getInstance()Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector$SnapshotDetectionTask;->mReducedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, p1, v2, v0}, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;->addInHouseResult([FLandroid/graphics/Bitmap;Z)V

    .line 255
    :cond_88
    iget-object p1, p0, Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector$SnapshotDetectionTask;->mReducedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return-void

    :cond_8e
    :goto_8e
    const-string p1, "Failed to execute detection on library."

    .line 226
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 227
    sget-object p1, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$DetectionTrigger;->SNAPSHOT:Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$DetectionTrigger;

    iget v2, p0, Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector$SnapshotDetectionTask;->mRequestId:I

    new-array v0, v0, [Lcom/sonyericsson/android/camera/faultdetection/DetectionType;

    sget-object v3, Lcom/sonyericsson/android/camera/faultdetection/DetectionType;->NONE:Lcom/sonyericsson/android/camera/faultdetection/DetectionType;

    aput-object v3, v0, v1

    invoke-virtual {p0, p1, v2, v0}, Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector$SnapshotDetectionTask;->notifyDetection(Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$DetectionTrigger;I[Lcom/sonyericsson/android/camera/faultdetection/DetectionType;)V

    return-void
.end method

.method protected preExecuteDetection()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 192
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 193
    iget-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector$SnapshotDetectionTask;->this$0:Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector;->getInputSize()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector$SnapshotDetectionTask;->mSnapshot:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 194
    iget-object v1, p0, Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector$SnapshotDetectionTask;->this$0:Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector;->getInputSize()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector$SnapshotDetectionTask;->mSnapshot:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 195
    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 198
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector$SnapshotDetectionTask;->mIsFront:Z

    const/high16 v1, 0x42b40000    # 90.0f

    if-eqz v0, :cond_4f

    .line 199
    iget v0, p0, Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector$SnapshotDetectionTask;->mDeviceOrientation:I

    if-eqz v0, :cond_49

    const/16 v2, 0x5a

    if-eq v0, v2, :cond_45

    const/16 v2, 0xb4

    if-eq v0, v2, :cond_49

    const/16 v2, 0x10e

    if-eq v0, v2, :cond_45

    goto :goto_52

    .line 206
    :cond_45
    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_52

    :cond_49
    const/high16 v0, -0x3d4c0000    # -90.0f

    .line 202
    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_52

    .line 213
    :cond_4f
    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 216
    :goto_52
    iget-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector$SnapshotDetectionTask;->mSnapshot:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 217
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector$SnapshotDetectionTask;->mSnapshot:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector$SnapshotDetectionTask;->mReducedBitmap:Landroid/graphics/Bitmap;

    .line 220
    iget-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector$SnapshotDetectionTask;->mReducedBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
