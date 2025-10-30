.class Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector$SnapshotDetectionTask;
.super Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$DetectorTask;
.source "EyeBlinkDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SnapshotDetectionTask"
.end annotation


# instance fields
.field private mBitmaps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mFaceIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mFacesOnSnapshot:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/faultdetection/Face;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestId:I

.field final synthetic this$0:Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;Ljava/util/List;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/faultdetection/Face;",
            ">;I)V"
        }
    .end annotation

    .line 296
    iput-object p1, p0, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector$SnapshotDetectionTask;->this$0:Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$DetectorTask;-><init>(Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;)V

    .line 292
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector$SnapshotDetectionTask;->mFaceIds:Ljava/util/List;

    .line 297
    iput-object p2, p0, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector$SnapshotDetectionTask;->mFacesOnSnapshot:Ljava/util/List;

    .line 298
    iput p3, p0, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector$SnapshotDetectionTask;->mRequestId:I

    return-void
.end method


# virtual methods
.method protected postExecuteDetection(Ljava/util/List;)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[F>;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1c6

    move v4, v3

    move v5, v4

    .line 322
    :goto_a
    :try_start_a
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_1c7

    .line 323
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [F

    if-nez v6, :cond_57

    const-string v0, "Failed to execute detection on library."

    .line 325
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 326
    iget-object v0, v1, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector$SnapshotDetectionTask;->this$0:Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;

    # getter for: Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;->mLeftEyeAverageScores:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;->access$100(Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 327
    iget-object v0, v1, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector$SnapshotDetectionTask;->this$0:Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;

    # getter for: Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;->mRightEyeAverageScores:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;->access$200(Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 328
    sget-object v0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$DetectionTrigger;->SNAPSHOT:Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$DetectionTrigger;

    iget v4, v1, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector$SnapshotDetectionTask;->mRequestId:I

    new-array v2, v2, [Lcom/sonyericsson/android/camera/faultdetection/DetectionType;

    sget-object v5, Lcom/sonyericsson/android/camera/faultdetection/DetectionType;->NONE:Lcom/sonyericsson/android/camera/faultdetection/DetectionType;

    aput-object v5, v2, v3

    invoke-virtual {v1, v0, v4, v2}, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector$SnapshotDetectionTask;->notifyDetection(Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$DetectionTrigger;I[Lcom/sonyericsson/android/camera/faultdetection/DetectionType;)V
    :try_end_40
    .catchall {:try_start_a .. :try_end_40} :catchall_1ae

    .line 400
    iget-object v0, v1, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector$SnapshotDetectionTask;->mBitmaps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_46
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_56

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 401
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_46

    :cond_56
    return-void

    .line 333
    :cond_57
    :try_start_57
    iget-object v7, v1, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector$SnapshotDetectionTask;->mFaceIds:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 334
    iget-object v7, v1, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector$SnapshotDetectionTask;->this$0:Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;

    # invokes: Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;->calculateRightEyeOpeningScore([F)F
    invoke-static {v7, v6}, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;->access$800(Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;[F)F

    move-result v11

    .line 335
    iget-object v7, v1, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector$SnapshotDetectionTask;->this$0:Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;

    # invokes: Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;->calculateLeftEyeOpeningScore([F)F
    invoke-static {v7, v6}, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;->access$900(Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;[F)F

    move-result v10

    .line 336
    iget-object v7, v1, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector$SnapshotDetectionTask;->this$0:Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;

    # getter for: Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;->mRightEyeAverageScores:Landroid/util/SparseArray;
    invoke-static {v7}, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;->access$200(Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;)Landroid/util/SparseArray;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v7, v9, v12}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    .line 337
    iget-object v12, v1, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector$SnapshotDetectionTask;->this$0:Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;

    # getter for: Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;->mLeftEyeAverageScores:Landroid/util/SparseArray;
    invoke-static {v12}, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;->access$100(Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;)Landroid/util/SparseArray;

    move-result-object v12

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    invoke-virtual {v12, v9, v13}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    .line 338
    iget-object v13, v1, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector$SnapshotDetectionTask;->this$0:Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;

    .line 340
    # getter for: Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;->EYE_POINT_INDEX_UPPER_R:Ljava/util/List;
    invoke-static {}, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;->access$300()Ljava/util/List;

    move-result-object v14

    # getter for: Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;->EYE_POINT_INDEX_LOWER_R:Ljava/util/List;
    invoke-static {}, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;->access$400()Ljava/util/List;

    move-result-object v15

    .line 339
    # invokes: Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;->getEyeConfidenceValueAverage([FLjava/util/List;Ljava/util/List;)F
    invoke-static {v13, v6, v14, v15}, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;->access$500(Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;[FLjava/util/List;Ljava/util/List;)F

    move-result v13

    .line 341
    iget-object v14, v1, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector$SnapshotDetectionTask;->this$0:Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;

    .line 342
    # getter for: Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;->EYE_POINT_INDEX_UPPER_L:Ljava/util/List;
    invoke-static {}, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;->access$600()Ljava/util/List;

    move-result-object v15

    # getter for: Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;->EYE_POINT_INDEX_LOWER_L:Ljava/util/List;
    invoke-static {}, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;->access$700()Ljava/util/List;

    move-result-object v3

    .line 341
    # invokes: Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;->getEyeConfidenceValueAverage([FLjava/util/List;Ljava/util/List;)F
    invoke-static {v14, v6, v15, v3}, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;->access$500(Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;[FLjava/util/List;Ljava/util/List;)F

    move-result v3

    const v6, 0x3f333333    # 0.7f

    cmpg-float v14, v13, v6

    if-ltz v14, :cond_c7

    cmpl-float v14, v7, v8

    if-nez v14, :cond_c0

    goto :goto_c7

    :cond_c0
    add-float v14, v11, v8

    add-float v15, v7, v8

    move/from16 v16, v2

    goto :goto_cb

    :cond_c7
    :goto_c7
    move v14, v8

    move v15, v14

    const/16 v16, 0x0

    :goto_cb
    cmpg-float v6, v3, v6

    if-ltz v6, :cond_d7

    cmpl-float v6, v12, v8

    if-nez v6, :cond_d4

    goto :goto_d7

    :cond_d4
    add-float/2addr v14, v10

    add-float/2addr v15, v12

    goto :goto_d9

    :cond_d7
    :goto_d7
    const/16 v16, 0x0

    :goto_d9
    if-eqz v16, :cond_e1

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v14, v6

    div-float/2addr v15, v6

    move v6, v14

    goto :goto_e2

    :cond_e1
    move v6, v14

    .line 369
    :goto_e2
    sget-boolean v8, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v8, :cond_175

    .line 370
    new-array v8, v2, [Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FaceID:"

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v14, 0x0

    aput-object v2, v8, v14

    invoke-static {v8}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 371
    new-array v8, v2, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Preview Score L:"

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v12, " R:"

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, " Total:"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x0

    aput-object v2, v8, v7

    invoke-static {v8}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 373
    new-array v7, v2, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Snapshot Score L:"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, " R:"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, " Total:"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x0

    aput-object v2, v7, v8

    invoke-static {v7}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 375
    new-array v7, v2, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Snapshot ConfidenceValue L:"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, " R:"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x0

    aput-object v2, v7, v8

    invoke-static {v7}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 380
    :cond_175
    sget-object v2, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->INSTANCE:Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;

    .line 381
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->isSaveEyeBlinkEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_192

    .line 382
    invoke-static {}, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;->getInstance()Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;

    move-result-object v8

    iget-object v2, v1, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector$SnapshotDetectionTask;->mBitmaps:Ljava/util/List;

    .line 387
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/graphics/Bitmap;

    move v12, v3

    .line 383
    invoke-virtual/range {v8 .. v14}, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;->addSnapshotFace(IFFFFLandroid/graphics/Bitmap;)V

    :cond_192
    sub-float/2addr v15, v6

    const/high16 v2, 0x41500000    # 13.0f

    cmpl-float v2, v15, v2

    if-lez v2, :cond_1a8

    .line 392
    sget-object v2, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->INSTANCE:Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;

    .line 393
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->isSaveEyeBlinkEnabled(Landroid/content/Context;)Z

    move-result v2
    :try_end_1a3
    .catchall {:try_start_57 .. :try_end_1a3} :catchall_1ae

    if-nez v2, :cond_1a7

    const/4 v5, 0x1

    goto :goto_1c7

    :cond_1a7
    const/4 v5, 0x1

    :cond_1a8
    add-int/lit8 v4, v4, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    goto/16 :goto_a

    :catchall_1ae
    move-exception v0

    .line 400
    iget-object v2, v1, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector$SnapshotDetectionTask;->mBitmaps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1b5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    .line 401
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1b5

    .line 403
    :cond_1c5
    throw v0

    :cond_1c6
    const/4 v5, 0x0

    .line 400
    :cond_1c7
    :goto_1c7
    iget-object v0, v1, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector$SnapshotDetectionTask;->mBitmaps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1cd
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1dd

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 401
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1cd

    :cond_1dd
    if-eqz v5, :cond_1ef

    .line 406
    sget-object v0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$DetectionTrigger;->SNAPSHOT:Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$DetectionTrigger;

    iget v2, v1, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector$SnapshotDetectionTask;->mRequestId:I

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/sonyericsson/android/camera/faultdetection/DetectionType;

    sget-object v4, Lcom/sonyericsson/android/camera/faultdetection/DetectionType;->EYE_BLINK:Lcom/sonyericsson/android/camera/faultdetection/DetectionType;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v0, v2, v3}, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector$SnapshotDetectionTask;->notifyDetection(Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$DetectionTrigger;I[Lcom/sonyericsson/android/camera/faultdetection/DetectionType;)V

    goto :goto_1fe

    :cond_1ef
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 408
    sget-object v0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$DetectionTrigger;->SNAPSHOT:Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$DetectionTrigger;

    iget v2, v1, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector$SnapshotDetectionTask;->mRequestId:I

    new-array v3, v3, [Lcom/sonyericsson/android/camera/faultdetection/DetectionType;

    sget-object v4, Lcom/sonyericsson/android/camera/faultdetection/DetectionType;->NONE:Lcom/sonyericsson/android/camera/faultdetection/DetectionType;

    aput-object v4, v3, v5

    invoke-virtual {v1, v0, v2, v3}, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector$SnapshotDetectionTask;->notifyDetection(Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$DetectionTrigger;I[Lcom/sonyericsson/android/camera/faultdetection/DetectionType;)V

    .line 411
    :goto_1fe
    sget-object v0, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->INSTANCE:Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;

    .line 412
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->isSaveEyeBlinkEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_211

    .line 413
    invoke-static {}, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;->getInstance()Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;->onSnapshotFaceDone()V

    :cond_211
    return-void
.end method

.method protected preExecuteDetection()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 303
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector$SnapshotDetectionTask;->mBitmaps:Ljava/util/List;

    .line 304
    iget-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector$SnapshotDetectionTask;->mFaceIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 306
    iget-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector$SnapshotDetectionTask;->mFacesOnSnapshot:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_12
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/faultdetection/Face;

    .line 307
    iget-object v2, v1, Lcom/sonyericsson/android/camera/faultdetection/Face;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_12

    .line 308
    iget-object v2, p0, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector$SnapshotDetectionTask;->mBitmaps:Ljava/util/List;

    # invokes: Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;->getRotationFixedBitmap(Lcom/sonyericsson/android/camera/faultdetection/Face;)Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;->access$000(Lcom/sonyericsson/android/camera/faultdetection/Face;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    iget-object v2, v1, Lcom/sonyericsson/android/camera/faultdetection/Face;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 310
    iget-object v2, p0, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector$SnapshotDetectionTask;->mFaceIds:Ljava/util/List;

    iget v1, v1, Lcom/sonyericsson/android/camera/faultdetection/Face;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 314
    :cond_3c
    iget-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector$SnapshotDetectionTask;->mBitmaps:Ljava/util/List;

    return-object v0
.end method
