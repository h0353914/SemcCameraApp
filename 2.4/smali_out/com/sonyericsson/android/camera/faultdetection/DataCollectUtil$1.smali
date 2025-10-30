.class Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil$1;
.super Ljava/lang/Object;
.source "DataCollectUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;->save()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;)V
    .registers 2

    .line 222
    iput-object p1, p0, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil$1;->this$0:Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    .line 225
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "START TO SAVE"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 226
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 227
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 229
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 232
    sget-object v4, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->INSTANCE:Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;

    .line 233
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->isSaveEyeBlinkEnabled(Landroid/content/Context;)Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_12d

    .line 234
    iget-object v4, p0, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil$1;->this$0:Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;

    # getter for: Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;->mFaces:Ljava/util/List;
    invoke-static {v4}, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;->access$300(Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_be

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil$FaceResult;

    .line 235
    sget-boolean v8, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v8, :cond_68

    new-array v8, v6, [Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Save "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil$FaceResult;->fileName:Ljava/lang/String;
    invoke-static {v7}, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil$FaceResult;->access$400(Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil$FaceResult;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-static {v8}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 236
    :cond_68
    # getter for: Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil$FaceResult;->bitmap:Landroid/graphics/Bitmap;
    invoke-static {v7}, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil$FaceResult;->access$500(Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil$FaceResult;)Landroid/graphics/Bitmap;

    move-result-object v8

    # getter for: Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil$FaceResult;->fileName:Ljava/lang/String;
    invoke-static {v7}, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil$FaceResult;->access$400(Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil$FaceResult;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v8, v9}, Lcom/sonyericsson/android/camera/faultdetection/DebugImageSaver;->savePng(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_79

    .line 238
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    :cond_79
    # getter for: Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil$FaceResult;->fileName:Ljava/lang/String;
    invoke-static {v7}, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil$FaceResult;->access$400(Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil$FaceResult;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ","

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    # getter for: Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil$FaceResult;->leftEyeScore:F
    invoke-static {v7}, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil$FaceResult;->access$900(Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil$FaceResult;)F

    move-result v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, ","

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    # getter for: Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil$FaceResult;->rightEyeScore:F
    invoke-static {v7}, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil$FaceResult;->access$800(Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil$FaceResult;)F

    move-result v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, ","

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    # getter for: Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil$FaceResult;->leftEyeConfidenceValue:F
    invoke-static {v7}, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil$FaceResult;->access$700(Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil$FaceResult;)F

    move-result v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, ","

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    # getter for: Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil$FaceResult;->rightEyeConfidenceValue:F
    invoke-static {v7}, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil$FaceResult;->access$600(Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil$FaceResult;)F

    move-result v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, ",\n"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    # getter for: Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil$FaceResult;->bitmap:Landroid/graphics/Bitmap;
    invoke-static {v7}, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil$FaceResult;->access$500(Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil$FaceResult;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_3c

    .line 249
    :cond_be
    iget-object v4, p0, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil$1;->this$0:Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;

    # getter for: Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;->mFaces:Ljava/util/List;
    invoke-static {v4}, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;->access$300(Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_10e

    .line 251
    :try_start_ca
    new-instance v4, Ljava/io/PrintWriter;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/face-score.csv"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/io/PrintWriter;-><init>(Ljava/lang/String;)V

    .line 253
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 254
    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V
    :try_end_ea
    .catch Ljava/io/IOException; {:try_start_ca .. :try_end_ea} :catch_eb

    goto :goto_108

    :catch_eb
    move-exception v0

    .line 256
    new-array v4, v6, [Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PrintWriter failed:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 258
    :goto_108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_12d

    .line 260
    :cond_10e
    sget-object v4, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->INSTANCE:Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;

    .line 261
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->isSaveInHouseEnabled(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_12d

    .line 262
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_127

    const-string v0, "END OF SAVE"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 263
    :cond_127
    iget-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil$1;->this$0:Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;->clear()V

    return-void

    .line 268
    :cond_12d
    :goto_12d
    invoke-static {v1}, Lcom/sonyericsson/android/camera/faultdetection/DebugImageSaver;->createDir(Ljava/lang/String;)V

    .line 270
    sget-object v4, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->INSTANCE:Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;

    .line 271
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->isSaveInHouseEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_257

    .line 274
    iget-object v4, p0, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil$1;->this$0:Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;

    # getter for: Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;->mInHouseResultQueue:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;->access$1000(Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v7, v6

    :goto_147
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1c7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil$InHouseResult;

    .line 276
    sget-boolean v9, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v9, :cond_174

    new-array v9, v6, [Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Save InhouseResult for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "th image"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v5

    invoke-static {v9}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 277
    :cond_174
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "i-p%03d-%s"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    add-int/lit8 v12, v7, 0x1

    .line 278
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v11, v5

    iget-object v7, p0, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil$1;->this$0:Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;

    .line 279
    # getter for: Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;->mCapturingModeName:Ljava/lang/String;
    invoke-static {v7}, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;->access$1100(Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v11, v6

    .line 278
    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 280
    # getter for: Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil$InHouseResult;->bitmap:Landroid/graphics/Bitmap;
    invoke-static {v8}, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil$InHouseResult;->access$200(Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil$InHouseResult;)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-static {v1, v9, v7}, Lcom/sonyericsson/android/camera/faultdetection/DebugImageSaver;->savePng(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_19c

    .line 282
    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    :cond_19c
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ","

    .line 285
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    # getter for: Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil$InHouseResult;->scores:[F
    invoke-static {v8}, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil$InHouseResult;->access$1200(Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil$InHouseResult;)[F

    move-result-object v7

    array-length v9, v7

    move v10, v5

    :goto_1aa
    if-ge v10, v9, :cond_1b9

    aget v11, v7, v10

    .line 287
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v11, ","

    .line 288
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v10, v10, 0x1

    goto :goto_1aa

    :cond_1b9
    const-string v7, "\n"

    .line 290
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    # getter for: Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil$InHouseResult;->bitmap:Landroid/graphics/Bitmap;
    invoke-static {v8}, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil$InHouseResult;->access$200(Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil$InHouseResult;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    move v7, v12

    goto :goto_147

    .line 296
    :cond_1c7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "i-s-"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil$1;->this$0:Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;

    # getter for: Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;->mCapturingModeName:Ljava/lang/String;
    invoke-static {v7}, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;->access$1100(Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 297
    iget-object v7, p0, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil$1;->this$0:Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;

    .line 298
    # getter for: Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;->mInHouseSnapshotResult:Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil$InHouseResult;
    invoke-static {v7}, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;->access$1300(Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;)Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil$InHouseResult;

    move-result-object v7

    # getter for: Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil$InHouseResult;->bitmap:Landroid/graphics/Bitmap;
    invoke-static {v7}, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil$InHouseResult;->access$200(Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil$InHouseResult;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-static {v1, v7, v4}, Lcom/sonyericsson/android/camera/faultdetection/DebugImageSaver;->savePng(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1f1

    .line 300
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    :cond_1f1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    .line 303
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    iget-object v4, p0, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil$1;->this$0:Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;

    # getter for: Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;->mInHouseSnapshotResult:Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil$InHouseResult;
    invoke-static {v4}, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;->access$1300(Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;)Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil$InHouseResult;

    move-result-object v4

    # getter for: Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil$InHouseResult;->scores:[F
    invoke-static {v4}, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil$InHouseResult;->access$1200(Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil$InHouseResult;)[F

    move-result-object v4

    array-length v7, v4

    move v8, v5

    :goto_205
    if-ge v8, v7, :cond_214

    aget v9, v4, v8

    .line 305
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, ","

    .line 306
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_205

    :cond_214
    const-string v4, "\n"

    .line 308
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    :try_start_219
    new-instance v4, Ljava/io/PrintWriter;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/in-house-score.csv"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/io/PrintWriter;-><init>(Ljava/lang/String;)V

    .line 314
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 315
    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V
    :try_end_239
    .catch Ljava/io/IOException; {:try_start_219 .. :try_end_239} :catch_23a

    goto :goto_257

    :catch_23a
    move-exception v0

    .line 317
    new-array v1, v6, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PrintWriter failed:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v5

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 321
    :cond_257
    :goto_257
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 322
    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 324
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    const-string v3, "image/png"

    .line 325
    invoke-static {v1, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 327
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0, v1, v2}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 329
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_27f

    const-string v0, "END OF SAVE"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 330
    :cond_27f
    iget-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil$1;->this$0:Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;->clear()V

    return-void
.end method
