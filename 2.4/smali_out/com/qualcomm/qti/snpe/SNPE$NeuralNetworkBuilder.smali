.class public Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;
.super Ljava/lang/Object;
.source "SNPE.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/snpe/SNPE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NeuralNetworkBuilder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder$ModelNotSet;
    }
.end annotation


# instance fields
.field private mDlCachePath:Ljava/lang/String;

.field private mExecutionPriorityHint:Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;

.field private final mInputDimensions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[I>;"
        }
    .end annotation
.end field

.field private mIsCpuFallbackEnabled:Z

.field private mIsDLCacheAvailable:Z

.field private mIsDebugEnabled:Z

.field private mIsInitCacheEnabled:Z

.field private mModelBuffer:Lcom/qualcomm/qti/snpe/internal/util/NativeBufferOutputStream;

.field private mModelFile:Ljava/io/File;

.field private final mOutputLayerNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPerformanceProfile:Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;

.field private mRuntimeOrder:[Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

.field private mStorageDirectory:Ljava/lang/String;

.field private mUseUserSuppliedBuffers:Z


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .registers 6

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 78
    new-array v1, v0, [Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    sget-object v2, Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;->CPU:Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iput-object v1, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mRuntimeOrder:[Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    .line 82
    sget-object v1, Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;->DEFAULT:Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;

    iput-object v1, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mPerformanceProfile:Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;

    .line 84
    sget-object v1, Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;->NORMAL:Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;

    iput-object v1, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mExecutionPriorityHint:Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;

    .line 86
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mInputDimensions:Ljava/util/Map;

    .line 88
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mOutputLayerNames:Ljava/util/Set;

    .line 102
    iput-boolean v0, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mIsDLCacheAvailable:Z

    const-string v0, ""

    .line 104
    iput-object v0, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mStorageDirectory:Ljava/lang/String;

    const-string v0, ""

    .line 106
    iput-object v0, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mDlCachePath:Ljava/lang/String;

    .line 109
    # invokes: Lcom/qualcomm/qti/snpe/SNPE;->init(Landroid/app/Application;)V
    invoke-static {p1}, Lcom/qualcomm/qti/snpe/SNPE;->access$000(Landroid/app/Application;)V

    return-void
.end method

.method private handleDLCaching()V
    .registers 3

    .line 376
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mDlCachePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 377
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    iput-boolean v1, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mIsDLCacheAvailable:Z

    .line 378
    iget-boolean v1, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mIsDLCacheAvailable:Z

    if-eqz v1, :cond_25

    .line 379
    invoke-direct {p0}, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->resetModel()V

    .line 380
    iput-object v0, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mModelFile:Ljava/io/File;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    goto :goto_25

    :catch_17
    move-exception v0

    .line 383
    iget-boolean v1, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mIsDebugEnabled:Z

    if-eqz v1, :cond_25

    const-string v1, "snpe-android"

    .line 384
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    :goto_25
    return-void
.end method

.method private resetFileModel()V
    .registers 2

    const/4 v0, 0x0

    .line 315
    iput-object v0, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mModelFile:Ljava/io/File;

    return-void
.end method

.method private resetModel()V
    .registers 1

    .line 310
    invoke-direct {p0}, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->resetStreamModel()V

    .line 311
    invoke-direct {p0}, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->resetFileModel()V

    return-void
.end method

.method private resetStreamModel()V
    .registers 2

    .line 319
    iget-object v0, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mModelBuffer:Lcom/qualcomm/qti/snpe/internal/util/NativeBufferOutputStream;

    if-eqz v0, :cond_a

    .line 320
    invoke-virtual {v0}, Lcom/qualcomm/qti/snpe/internal/util/NativeBufferOutputStream;->release()V

    const/4 v0, 0x0

    .line 321
    iput-object v0, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mModelBuffer:Lcom/qualcomm/qti/snpe/internal/util/NativeBufferOutputStream;

    :cond_a
    return-void
.end method

.method private selectRuntime()Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;
    .registers 6

    .line 352
    iget-object v0, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mRuntimeOrder:[Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    .line 353
    invoke-virtual {p0, v3}, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->isRuntimeSupported(Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;)Z

    move-result v4

    if-eqz v4, :cond_f

    goto :goto_13

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_12
    const/4 v3, 0x0

    :goto_13
    if-eqz v3, :cond_16

    return-object v3

    .line 360
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "None of the selected runtime targets are supported."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public build()Lcom/qualcomm/qti/snpe/NeuralNetwork;
    .registers 16

    .line 331
    invoke-direct {p0}, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->selectRuntime()Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    move-result-object v0

    sget-object v1, Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;->DSP:Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    if-eq v0, v1, :cond_10

    invoke-direct {p0}, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->selectRuntime()Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    move-result-object v0

    sget-object v1, Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;->AIP:Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    if-ne v0, v1, :cond_17

    :cond_10
    iget-boolean v0, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mIsInitCacheEnabled:Z

    if-eqz v0, :cond_17

    .line 332
    invoke-direct {p0}, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->handleDLCaching()V

    .line 335
    :cond_17
    iget-object v0, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mModelBuffer:Lcom/qualcomm/qti/snpe/internal/util/NativeBufferOutputStream;

    if-eqz v0, :cond_41

    .line 336
    new-instance v0, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;

    invoke-direct {p0}, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->selectRuntime()Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mModelBuffer:Lcom/qualcomm/qti/snpe/internal/util/NativeBufferOutputStream;

    iget-object v4, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mOutputLayerNames:Ljava/util/Set;

    iget-boolean v5, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mIsDebugEnabled:Z

    iget-object v6, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mPerformanceProfile:Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;

    iget-object v7, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mExecutionPriorityHint:Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;

    iget-boolean v8, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mIsCpuFallbackEnabled:Z

    iget-boolean v9, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mUseUserSuppliedBuffers:Z

    iget-boolean v10, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mIsInitCacheEnabled:Z

    iget-boolean v11, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mIsDLCacheAvailable:Z

    iget-object v12, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mStorageDirectory:Ljava/lang/String;

    iget-object v13, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mDlCachePath:Ljava/lang/String;

    iget-object v14, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mInputDimensions:Ljava/util/Map;

    move-object v1, v0

    invoke-direct/range {v1 .. v14}, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;-><init>(Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;Lcom/qualcomm/qti/snpe/internal/util/NativeBufferOutputStream;Ljava/util/Set;ZLcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;ZZZZLjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 339
    invoke-direct {p0}, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->resetStreamModel()V

    return-object v0

    .line 341
    :cond_41
    iget-object v0, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mModelFile:Ljava/io/File;

    if-eqz v0, :cond_68

    .line 342
    new-instance v0, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;

    invoke-direct {p0}, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->selectRuntime()Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mModelFile:Ljava/io/File;

    iget-object v4, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mOutputLayerNames:Ljava/util/Set;

    iget-boolean v5, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mIsDebugEnabled:Z

    iget-object v6, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mPerformanceProfile:Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;

    iget-object v7, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mExecutionPriorityHint:Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;

    iget-boolean v8, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mIsCpuFallbackEnabled:Z

    iget-boolean v9, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mUseUserSuppliedBuffers:Z

    iget-boolean v10, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mIsInitCacheEnabled:Z

    iget-boolean v11, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mIsDLCacheAvailable:Z

    iget-object v12, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mStorageDirectory:Ljava/lang/String;

    iget-object v13, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mDlCachePath:Ljava/lang/String;

    iget-object v14, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mInputDimensions:Ljava/util/Map;

    move-object v1, v0

    invoke-direct/range {v1 .. v14}, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;-><init>(Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;Ljava/io/File;Ljava/util/Set;ZLcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;ZZZZLjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-object v0

    .line 346
    :cond_68
    new-instance v0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder$ModelNotSet;

    invoke-direct {v0}, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder$ModelNotSet;-><init>()V

    throw v0
.end method

.method public isRuntimeSupported(Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;)Z
    .registers 2

    .line 367
    invoke-static {p1}, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->isRuntimeAvailable(Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;)Z

    move-result p1

    return p1
.end method

.method public setCpuFallbackEnabled(Z)Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;
    .registers 2

    .line 248
    iput-boolean p1, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mIsCpuFallbackEnabled:Z

    return-object p0
.end method

.method public setDebugEnabled(Z)Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;
    .registers 2

    .line 209
    iput-boolean p1, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mIsDebugEnabled:Z

    return-object p0
.end method

.method public setExecutionPriorityHint(Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;)Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;
    .registers 3

    if-eqz p1, :cond_5

    .line 237
    iput-object p1, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mExecutionPriorityHint:Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;

    return-object p0

    .line 235
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Execution priority hint can not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setInitCacheEnabled(ZLjava/lang/String;Landroid/content/Context;)Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    if-eqz p2, :cond_40

    .line 267
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_38

    if-eqz p3, :cond_30

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, "/"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".dlc"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mDlCachePath:Ljava/lang/String;

    .line 273
    iput-boolean p1, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mIsInitCacheEnabled:Z

    return-object p0

    .line 270
    :cond_30
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "context is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 268
    :cond_38
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "cacheTag is empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 266
    :cond_40
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "cacheTag is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setInputDimensions(Ljava/util/Map;)Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[I>;)",
            "Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;"
        }
    .end annotation

    if-eqz p1, :cond_d

    .line 145
    iget-object v0, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mInputDimensions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 146
    iget-object v0, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mInputDimensions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0

    .line 142
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Input dimensions can not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setModel(Ljava/io/File;)Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_4a

    .line 195
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 199
    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 203
    invoke-direct {p0}, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->resetModel()V

    .line 204
    iput-object p1, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mModelFile:Ljava/io/File;

    return-object p0

    .line 200
    :cond_14
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not read from file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_2f
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File does not exist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
    :cond_4a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Model file can not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setModel(Ljava/io/InputStream;I)Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 178
    invoke-direct {p0}, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->resetModel()V

    .line 179
    invoke-static {p1, p2}, Lcom/qualcomm/qti/snpe/internal/util/IOUtil;->bufferFromStream(Ljava/io/InputStream;I)Lcom/qualcomm/qti/snpe/internal/util/NativeBufferOutputStream;

    move-result-object p1

    iput-object p1, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mModelBuffer:Lcom/qualcomm/qti/snpe/internal/util/NativeBufferOutputStream;

    return-object p0
.end method

.method public varargs setOutputLayers([Ljava/lang/String;)Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;
    .registers 3

    if-eqz p1, :cond_11

    .line 160
    iget-object v0, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mOutputLayerNames:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 161
    iget-object v0, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mOutputLayerNames:Ljava/util/Set;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p0

    .line 158
    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Output layers can not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPerformanceProfile(Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;)Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;
    .registers 3

    if-eqz p1, :cond_5

    .line 223
    iput-object p1, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mPerformanceProfile:Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;

    return-object p0

    .line 221
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Performance profile can not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs setRuntimeOrder([Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;)Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;
    .registers 6

    if-eqz p1, :cond_25

    .line 119
    array-length v0, p1

    if-eqz v0, :cond_25

    .line 123
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_19

    aget-object v3, p1, v2

    if-eqz v3, :cond_11

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 125
    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Runtime can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 129
    :cond_19
    array-length v0, p1

    new-array v0, v0, [Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    iput-object v0, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mRuntimeOrder:[Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    .line 130
    iget-object v0, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mRuntimeOrder:[Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    array-length v2, p1

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0

    .line 120
    :cond_25
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Runtime order can not be null or empty."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setStorageDirectory(Ljava/lang/String;)Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_a0

    .line 283
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_98

    .line 287
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 289
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_7d

    .line 293
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_62

    .line 297
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_47

    .line 301
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 305
    iput-object p1, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mStorageDirectory:Ljava/lang/String;

    return-object p0

    .line 302
    :cond_2c
    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not write into file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 298
    :cond_47
    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not read from file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 294
    :cond_62
    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a directory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 290
    :cond_7d
    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Directory does not exist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 284
    :cond_98
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Directory path is empty"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 280
    :cond_a0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Directory path is null"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setUseUserSuppliedBuffers(Z)Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;
    .registers 2

    .line 259
    iput-boolean p1, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mUseUserSuppliedBuffers:Z

    return-object p0
.end method
