.class Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector$PreviewDetectionTask;
.super Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$DetectorTask;
.source "InHouseFaultDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreviewDetectionTask"
.end annotation


# instance fields
.field private mPreview:Landroid/graphics/Bitmap;

.field private mRequestId:I

.field final synthetic this$0:Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector;Landroid/graphics/Bitmap;I)V
    .registers 4

    .line 141
    iput-object p1, p0, Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector$PreviewDetectionTask;->this$0:Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$DetectorTask;-><init>(Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;)V

    .line 142
    iput-object p2, p0, Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector$PreviewDetectionTask;->mPreview:Landroid/graphics/Bitmap;

    .line 143
    iput p3, p0, Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector$PreviewDetectionTask;->mRequestId:I

    return-void
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

    if-eqz p1, :cond_74

    .line 153
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_74

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_10

    goto :goto_74

    .line 158
    :cond_10
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_37

    .line 159
    new-array v1, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OnExecuted. result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [F

    invoke-static {v4}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 162
    :cond_37
    iget-object v1, p0, Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector$PreviewDetectionTask;->this$0:Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [F

    # invokes: Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector;->update([F)V
    invoke-static {v1, v3}, Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector;->access$100(Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector;[F)V

    .line 163
    iget-object v1, p0, Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector$PreviewDetectionTask;->this$0:Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector;

    # invokes: Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector;->getLatestType()Lcom/sonyericsson/android/camera/faultdetection/DetectionType;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector;->access$200(Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector;)Lcom/sonyericsson/android/camera/faultdetection/DetectionType;

    move-result-object v1

    .line 164
    sget-object v3, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$DetectionTrigger;->PREVIEW:Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$DetectionTrigger;

    iget v4, p0, Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector$PreviewDetectionTask;->mRequestId:I

    new-array v2, v2, [Lcom/sonyericsson/android/camera/faultdetection/DetectionType;

    aput-object v1, v2, v0

    invoke-virtual {p0, v3, v4, v2}, Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector$PreviewDetectionTask;->notifyDetection(Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$DetectionTrigger;I[Lcom/sonyericsson/android/camera/faultdetection/DetectionType;)V

    .line 166
    sget-object v1, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->INSTANCE:Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;

    .line 167
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->isSaveInHouseEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 168
    invoke-static {}, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;->getInstance()Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;

    move-result-object v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    iget-object v2, p0, Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector$PreviewDetectionTask;->mPreview:Landroid/graphics/Bitmap;

    invoke-virtual {v1, p1, v2, v0}, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;->addInHouseResult([FLandroid/graphics/Bitmap;Z)V

    .line 171
    :cond_6e
    iget-object p1, p0, Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector$PreviewDetectionTask;->mPreview:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return-void

    :cond_74
    :goto_74
    const-string p1, "Failed to execute detection on library."

    .line 154
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return-void
.end method

.method protected preExecuteDetection()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector$PreviewDetectionTask;->mPreview:Landroid/graphics/Bitmap;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
