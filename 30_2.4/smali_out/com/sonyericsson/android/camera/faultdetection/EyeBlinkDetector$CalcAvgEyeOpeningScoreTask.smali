.class Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector$CalcAvgEyeOpeningScoreTask;
.super Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$DetectorTask;
.source "EyeBlinkDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CalcAvgEyeOpeningScoreTask"
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

.field private mFaceStore:Lcom/sonyericsson/android/camera/faultdetection/FaceStore;

.field private mFacesOnShutter:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/faultdetection/Face;",
            ">;"
        }
    .end annotation
.end field

.field mNumberOfBitmapsPerId:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;Ljava/util/List;Lcom/sonyericsson/android/camera/faultdetection/FaceStore;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/faultdetection/Face;",
            ">;",
            "Lcom/sonyericsson/android/camera/faultdetection/FaceStore;",
            ")V"
        }
    .end annotation

    .line 152
    iput-object p1, p0, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector$CalcAvgEyeOpeningScoreTask;->this$0:Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$DetectorTask;-><init>(Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;)V

    .line 147
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector$CalcAvgEyeOpeningScoreTask;->mNumberOfBitmapsPerId:Ljava/util/List;

    .line 153
    iput-object p2, p0, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector$CalcAvgEyeOpeningScoreTask;->mFacesOnShutter:Ljava/util/List;

    .line 154
    iput-object p3, p0, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector$CalcAvgEyeOpeningScoreTask;->mFaceStore:Lcom/sonyericsson/android/camera/faultdetection/FaceStore;

    return-void
.end method

.method private splitResultsById(Ljava/util/List;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[F>;)",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "[F>;>;"
        }
    .end annotation

    .line 269
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 272
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5e

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_e
    move v4, v3

    .line 273
    iget-object v5, p0, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector$CalcAvgEyeOpeningScoreTask;->mNumberOfBitmapsPerId:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_5e

    .line 274
    iget-object v5, p0, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector$CalcAvgEyeOpeningScoreTask;->mNumberOfBitmapsPerId:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v3, v5

    .line 275
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-le v3, v5, :cond_54

    const/4 v2, 0x1

    .line 276
    new-array v2, v2, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid results: size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " toIndex="

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    goto :goto_5e

    .line 279
    :cond_54
    invoke-interface {p1, v4, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_5e
    :goto_5e
    return-object v0
.end method


# virtual methods
.method protected postExecuteDetection(Ljava/util/List;)V
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[F>;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 182
    iget-object v0, v1, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector$CalcAvgEyeOpeningScoreTask;->this$0:Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;

    # getter for: Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;->mLeftEyeAverageScores:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;->access$100(Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 183
    iget-object v0, v1, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector$CalcAvgEyeOpeningScoreTask;->this$0:Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;

    # getter for: Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;->mRightEyeAverageScores:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;->access$200(Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    if-nez p1, :cond_17

    return-void

    .line 188
    :cond_17
    invoke-direct/range {p0 .. p1}, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector$CalcAvgEyeOpeningScoreTask;->splitResultsById(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    .line 192
    :goto_1e
    :try_start_1e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_17d

    .line 193
    iget-object v5, v1, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector$CalcAvgEyeOpeningScoreTask;->mNumberOfBitmapsPerId:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 200
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move v8, v2

    move/from16 v16, v8

    move v13, v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    move/from16 v4, v16

    :goto_46
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_d1

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [F

    .line 204
    iget-object v10, v1, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector$CalcAvgEyeOpeningScoreTask;->this$0:Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;

    .line 205
    # getter for: Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;->EYE_POINT_INDEX_UPPER_R:Ljava/util/List;
    invoke-static {}, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;->access$300()Ljava/util/List;

    move-result-object v11

    # getter for: Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;->EYE_POINT_INDEX_LOWER_R:Ljava/util/List;
    invoke-static {}, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;->access$400()Ljava/util/List;

    move-result-object v12

    .line 204
    # invokes: Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;->getEyeConfidenceValueAverage([FLjava/util/List;Ljava/util/List;)F
    invoke-static {v10, v9, v11, v12}, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;->access$500(Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;[FLjava/util/List;Ljava/util/List;)F

    move-result v12

    .line 206
    iget-object v10, v1, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector$CalcAvgEyeOpeningScoreTask;->this$0:Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;

    .line 207
    # getter for: Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;->EYE_POINT_INDEX_UPPER_L:Ljava/util/List;
    invoke-static {}, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;->access$600()Ljava/util/List;

    move-result-object v11

    # getter for: Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;->EYE_POINT_INDEX_LOWER_L:Ljava/util/List;
    invoke-static {}, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;->access$700()Ljava/util/List;

    move-result-object v15

    .line 206
    # invokes: Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;->getEyeConfidenceValueAverage([FLjava/util/List;Ljava/util/List;)F
    invoke-static {v10, v9, v11, v15}, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;->access$500(Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;[FLjava/util/List;Ljava/util/List;)F

    move-result v11

    const v10, 0x3f333333    # 0.7f

    cmpl-float v15, v12, v10

    if-ltz v15, :cond_82

    add-int/lit8 v4, v4, 0x1

    .line 210
    iget-object v15, v1, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector$CalcAvgEyeOpeningScoreTask;->this$0:Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;

    # invokes: Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;->calculateRightEyeOpeningScore([F)F
    invoke-static {v15, v9}, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;->access$800(Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;[F)F

    move-result v15

    add-float/2addr v6, v15

    move/from16 v17, v4

    move v4, v6

    goto :goto_86

    :cond_82
    move/from16 v17, v4

    move v4, v6

    const/4 v15, 0x0

    :goto_86
    cmpl-float v6, v11, v10

    if-ltz v6, :cond_99

    add-int/lit8 v8, v8, 0x1

    .line 216
    iget-object v6, v1, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector$CalcAvgEyeOpeningScoreTask;->this$0:Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;

    # invokes: Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;->calculateLeftEyeOpeningScore([F)F
    invoke-static {v6, v9}, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;->access$900(Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;[F)F

    move-result v6

    add-float/2addr v7, v6

    move v9, v6

    move/from16 v18, v7

    move/from16 v19, v8

    goto :goto_9e

    :cond_99
    move/from16 v18, v7

    move/from16 v19, v8

    const/4 v9, 0x0

    .line 220
    :goto_9e
    sget-object v6, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->INSTANCE:Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;

    .line 221
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->isSaveEyeBlinkEnabled(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_c7

    .line 222
    invoke-static {}, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;->getInstance()Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;

    move-result-object v6

    iget-object v7, v1, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector$CalcAvgEyeOpeningScoreTask;->mBitmaps:Ljava/util/List;

    .line 226
    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v20, v7

    check-cast v20, Landroid/graphics/Bitmap;

    move v7, v5

    move/from16 v8, v16

    move v10, v15

    move v15, v13

    move-object/from16 v13, v20

    .line 223
    invoke-virtual/range {v6 .. v13}, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;->addPreviewFace(IIFFFFLandroid/graphics/Bitmap;)V

    add-int/lit8 v16, v16, 0x1

    add-int/lit8 v13, v15, 0x1

    goto :goto_c8

    :cond_c7
    move v15, v13

    :goto_c8
    move v6, v4

    move/from16 v4, v17

    move/from16 v7, v18

    move/from16 v8, v19

    goto/16 :goto_46

    :cond_d1
    move v15, v13

    const/4 v9, 0x4

    if-lt v4, v9, :cond_e6

    int-to-float v10, v4

    div-float v10, v6, v10

    .line 237
    iget-object v11, v1, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector$CalcAvgEyeOpeningScoreTask;->this$0:Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;

    # getter for: Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;->mRightEyeAverageScores:Landroid/util/SparseArray;
    invoke-static {v11}, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;->access$200(Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;)Landroid/util/SparseArray;

    move-result-object v11

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v11, v5, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_e7

    :cond_e6
    const/4 v10, 0x0

    :goto_e7
    if-lt v8, v9, :cond_fa

    int-to-float v9, v8

    div-float v9, v7, v9

    .line 242
    iget-object v11, v1, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector$CalcAvgEyeOpeningScoreTask;->this$0:Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;

    # getter for: Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;->mLeftEyeAverageScores:Landroid/util/SparseArray;
    invoke-static {v11}, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;->access$100(Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;)Landroid/util/SparseArray;

    move-result-object v11

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v11, v5, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_fb

    :cond_fa
    const/4 v9, 0x0

    .line 245
    :goto_fb
    sget-boolean v11, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v11, :cond_178

    const/4 v11, 0x1

    .line 246
    new-array v12, v11, [Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Finish to calculate for FaceID:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v12, v2

    invoke-static {v12}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 247
    new-array v5, v11, [Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Preview Score L:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, " R:"

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v5}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 249
    new-array v5, v11, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Preview Average L:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, " R:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v5}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 251
    new-array v5, v11, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Preview ConfidenceValueCount L:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " R:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v2

    invoke-static {v5}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V
    :try_end_178
    .catchall {:try_start_1e .. :try_end_178} :catchall_1a7

    :cond_178
    add-int/lit8 v3, v3, 0x1

    move v4, v15

    goto/16 :goto_1e

    .line 257
    :cond_17d
    iget-object v0, v1, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector$CalcAvgEyeOpeningScoreTask;->mBitmaps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_183
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_193

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 258
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_183

    .line 262
    :cond_193
    sget-object v0, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->INSTANCE:Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;

    .line 263
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->isSaveEyeBlinkEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1a6

    .line 264
    invoke-static {}, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;->getInstance()Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;->onPreviewFaceDone()V

    :cond_1a6
    return-void

    :catchall_1a7
    move-exception v0

    .line 257
    iget-object v2, v1, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector$CalcAvgEyeOpeningScoreTask;->mBitmaps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1ae
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1be

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    .line 258
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1ae

    .line 260
    :cond_1be
    throw v0
.end method

.method protected preExecuteDetection()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector$CalcAvgEyeOpeningScoreTask;->mBitmaps:Ljava/util/List;

    .line 161
    iget-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector$CalcAvgEyeOpeningScoreTask;->mFacesOnShutter:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_63

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/faultdetection/Face;

    .line 162
    iget-object v2, p0, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector$CalcAvgEyeOpeningScoreTask;->mFaceStore:Lcom/sonyericsson/android/camera/faultdetection/FaceStore;

    iget v3, v1, Lcom/sonyericsson/android/camera/faultdetection/Face;->id:I

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera/faultdetection/FaceStore;->getFaceList(I)Ljava/util/List;

    move-result-object v2

    .line 164
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_25
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_44

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 165
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/android/camera/faultdetection/Face;

    if-nez v4, :cond_3a

    goto :goto_25

    .line 169
    :cond_3a
    iget-object v5, p0, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector$CalcAvgEyeOpeningScoreTask;->mBitmaps:Ljava/util/List;

    # invokes: Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;->getRotationFixedBitmap(Lcom/sonyericsson/android/camera/faultdetection/Face;)Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;->access$000(Lcom/sonyericsson/android/camera/faultdetection/Face;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_25

    .line 172
    :cond_44
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_d

    .line 173
    iget-object v3, p0, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector$CalcAvgEyeOpeningScoreTask;->mNumberOfBitmapsPerId:Ljava/util/List;

    new-instance v4, Landroid/util/Pair;

    iget v1, v1, Lcom/sonyericsson/android/camera/faultdetection/Face;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v4, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 177
    :cond_63
    iget-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector$CalcAvgEyeOpeningScoreTask;->mBitmaps:Ljava/util/List;

    return-object v0
.end method
