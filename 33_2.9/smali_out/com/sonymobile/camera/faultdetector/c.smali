.class Lcom/sonymobile/camera/faultdetector/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/camera/faultdetector/c$c;,
        Lcom/sonymobile/camera/faultdetector/c$b;,
        Lcom/sonymobile/camera/faultdetector/c$a;,
        Lcom/sonymobile/camera/faultdetector/c$d;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "DetectorImpl"

.field private static final b:Ljava/lang/String; = "DetectorImpl_PERF"

.field private static final c:Z

.field private static final d:J = 0x3L

.field private static final e:Ljava/lang/Object;


# instance fields
.field private final f:Landroid/app/Application;

.field private final g:Lcom/sonymobile/camera/faultdetector/c$c;

.field private volatile h:Lcom/qualcomm/qti/snpe/NeuralNetwork;

.field private volatile i:Lcom/sonymobile/camera/faultdetector/c$d;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Landroid/os/HandlerThread;

.field private m:Lcom/sonymobile/camera/faultdetector/c$a;

.field private n:Lcom/sonymobile/camera/faultdetector/b;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v1, "userdebug"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/sonymobile/camera/faultdetector/c;->c:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sonymobile/camera/faultdetector/c;->e:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Landroid/app/Application;Lcom/sonymobile/camera/faultdetector/DetectorManager$DetectorType;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sonymobile/camera/faultdetector/c;->f:Landroid/app/Application;

    new-instance v0, Lcom/sonymobile/camera/faultdetector/b;

    invoke-direct {v0}, Lcom/sonymobile/camera/faultdetector/b;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/camera/faultdetector/c;->n:Lcom/sonymobile/camera/faultdetector/b;

    sget-object v0, Lcom/sonymobile/camera/faultdetector/c$4;->a:[I

    invoke-virtual {p2}, Lcom/sonymobile/camera/faultdetector/DetectorManager$DetectorType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_36

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1d

    sget-object p2, Lcom/sonymobile/camera/faultdetector/c$c;->b:Lcom/sonymobile/camera/faultdetector/c$c;

    goto :goto_38

    :cond_1d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported DetectorType: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_36
    sget-object p2, Lcom/sonymobile/camera/faultdetector/c$c;->a:Lcom/sonymobile/camera/faultdetector/c$c;

    :goto_38
    iput-object p2, p0, Lcom/sonymobile/camera/faultdetector/c;->g:Lcom/sonymobile/camera/faultdetector/c$c;

    sget-object p2, Lcom/sonymobile/camera/faultdetector/c$d;->a:Lcom/sonymobile/camera/faultdetector/c$d;

    invoke-direct {p0, p2}, Lcom/sonymobile/camera/faultdetector/c;->a(Lcom/sonymobile/camera/faultdetector/c$d;)V

    invoke-direct {p0}, Lcom/sonymobile/camera/faultdetector/c;->f()V

    sget-boolean p0, Lcom/sonymobile/camera/faultdetector/c;->c:Z

    if-eqz p0, :cond_62

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Prepare detector for version: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p1}, Lcom/qualcomm/qti/snpe/SNPE;->getRuntimeVersion(Landroid/app/Application;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DetectorImpl"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_62
    return-void
.end method

.method static synthetic a(Lcom/sonymobile/camera/faultdetector/c;)Landroid/app/Application;
    .registers 1

    iget-object p0, p0, Lcom/sonymobile/camera/faultdetector/c;->f:Landroid/app/Application;

    return-object p0
.end method

.method private a(Landroid/app/Application;Lcom/sonymobile/camera/faultdetector/c$c;)Lcom/qualcomm/qti/snpe/NeuralNetwork;
    .registers 12

    new-instance v0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;

    invoke-direct {v0, p1}, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;-><init>(Landroid/app/Application;)V

    sget-boolean v1, Lcom/sonymobile/camera/faultdetector/c;->c:Z

    const-string v2, "DetectorImpl"

    if-eqz v1, :cond_bb

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "buildNetwork application.getProcessName(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/app/Application;->getProcessName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "buildNetwork model.name(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/sonymobile/camera/faultdetector/c$c;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "buildNetwork model.runtime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p2, Lcom/sonymobile/camera/faultdetector/c$c;->d:Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "buildNetwork model.resourceId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Lcom/sonymobile/camera/faultdetector/c$c;->c:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "buildNetwork model.isCpuFallbackNeeded: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p2, Lcom/sonymobile/camera/faultdetector/c$c;->f:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "buildNetwork model.isQuantized: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p2, Lcom/sonymobile/camera/faultdetector/c$c;->e:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "buildNetwork builder.isRuntimeSupported(model.runtime): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p2, Lcom/sonymobile/camera/faultdetector/c$c;->d:Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    invoke-virtual {v0, v4}, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->isRuntimeSupported(Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_bb
    iget-object v3, p2, Lcom/sonymobile/camera/faultdetector/c$c;->d:Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    invoke-virtual {v0, v3}, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->isRuntimeSupported(Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_180

    :try_start_c4
    iget-object p0, p0, Lcom/sonymobile/camera/faultdetector/c;->n:Lcom/sonymobile/camera/faultdetector/b;

    iget v3, p2, Lcom/sonymobile/camera/faultdetector/c$c;->c:I

    invoke-virtual {p0, p1, v3}, Lcom/sonymobile/camera/faultdetector/b;->a(Landroid/app/Application;I)Ljava/io/InputStream;

    move-result-object p0
    :try_end_cc
    .catch Ljava/io/IOException; {:try_start_c4 .. :try_end_cc} :catch_161

    if-nez p0, :cond_dc

    :try_start_ce
    const-string p1, "Failed to get decrypted stream."

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d3
    .catchall {:try_start_ce .. :try_end_d3} :catchall_d9

    if-eqz p0, :cond_d8

    :try_start_d5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_d8
    .catch Ljava/io/IOException; {:try_start_d5 .. :try_end_d8} :catch_161

    :cond_d8
    return-object v4

    :catchall_d9
    move-exception p1

    goto/16 :goto_154

    :cond_dc
    if-eqz v1, :cond_f8

    :try_start_de
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "buildNetwork is.available(): "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f8
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->setDebugEnabled(Z)Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;

    move-result-object v3

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    iget-object v6, p2, Lcom/sonymobile/camera/faultdetector/c$c;->d:Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    aput-object v6, v5, p1

    invoke-virtual {v3, v5}, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->setRuntimeOrder([Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;)Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v3

    invoke-virtual {p1, p0, v3}, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->setModel(Ljava/io/InputStream;I)Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;

    move-result-object p1

    iget-boolean v3, p2, Lcom/sonymobile/camera/faultdetector/c$c;->f:Z

    invoke-virtual {p1, v3}, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->setCpuFallbackEnabled(Z)Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;

    move-result-object p1

    iget-boolean v3, p2, Lcom/sonymobile/camera/faultdetector/c$c;->e:Z

    invoke-virtual {p1, v3}, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->setUseUserSuppliedBuffers(Z)Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;

    move-result-object p1

    sget-object v3, Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;->LOW:Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;

    invoke-virtual {p1, v3}, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->setExecutionPriorityHint(Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;)Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-virtual {v0}, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->build()Lcom/qualcomm/qti/snpe/NeuralNetwork;

    move-result-object v4

    if-eqz v1, :cond_14e

    const-string p1, "DetectorImpl_PERF"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Detector build time = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v5

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14e
    .catchall {:try_start_de .. :try_end_14e} :catchall_d9

    :cond_14e
    if-eqz p0, :cond_19c

    :try_start_150
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_153
    .catch Ljava/io/IOException; {:try_start_150 .. :try_end_153} :catch_161

    goto :goto_19c

    :goto_154
    :try_start_154
    throw p1
    :try_end_155
    .catchall {:try_start_154 .. :try_end_155} :catchall_155

    :catchall_155
    move-exception v0

    if-eqz p0, :cond_160

    :try_start_158
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_15b
    .catchall {:try_start_158 .. :try_end_15b} :catchall_15c

    goto :goto_160

    :catchall_15c
    move-exception p0

    :try_start_15d
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_160
    :goto_160
    throw v0
    :try_end_161
    .catch Ljava/io/IOException; {:try_start_15d .. :try_end_161} :catch_161

    :catch_161
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to build network: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Lcom/sonymobile/camera/faultdetector/c$c;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_19c

    :cond_180
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unsupported runtime: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget-object p1, p2, Lcom/sonymobile/camera/faultdetector/c$c;->d:Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    invoke-virtual {p1}, Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19c
    :goto_19c
    return-object v4
.end method

.method static synthetic a(Lcom/sonymobile/camera/faultdetector/c;Landroid/app/Application;Lcom/sonymobile/camera/faultdetector/c$c;)Lcom/qualcomm/qti/snpe/NeuralNetwork;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/sonymobile/camera/faultdetector/c;->a(Landroid/app/Application;Lcom/sonymobile/camera/faultdetector/c$c;)Lcom/qualcomm/qti/snpe/NeuralNetwork;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/sonymobile/camera/faultdetector/c;Lcom/qualcomm/qti/snpe/NeuralNetwork;)Lcom/qualcomm/qti/snpe/NeuralNetwork;
    .registers 2

    iput-object p1, p0, Lcom/sonymobile/camera/faultdetector/c;->h:Lcom/qualcomm/qti/snpe/NeuralNetwork;

    return-object p1
.end method

.method static synthetic a(Lcom/sonymobile/camera/faultdetector/c;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/sonymobile/camera/faultdetector/c;->j:Ljava/lang/String;

    return-object p1
.end method

.method private a(Landroid/graphics/Bitmap;Ljava/util/Map;Ljava/util/Map;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/qualcomm/qti/snpe/TF8UserBufferTensor;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/nio/ByteBuffer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sonymobile/camera/faultdetector/c;->h:Lcom/qualcomm/qti/snpe/NeuralNetwork;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/sonymobile/camera/faultdetector/c;->h:Lcom/qualcomm/qti/snpe/NeuralNetwork;

    iget-object v1, p0, Lcom/sonymobile/camera/faultdetector/c;->j:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/qualcomm/qti/snpe/NeuralNetwork;->getTensorAttributes(Ljava/lang/String;)Lcom/qualcomm/qti/snpe/TensorAttributes;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/camera/faultdetector/c;->a(Lcom/qualcomm/qti/snpe/TensorAttributes;)[I

    move-result-object v3

    const/4 v0, 0x0

    aget v2, v3, v0

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    iget-object p1, p0, Lcom/sonymobile/camera/faultdetector/c;->j:Ljava/lang/String;

    invoke-interface {p3, p1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/sonymobile/camera/faultdetector/c;->j:Ljava/lang/String;

    iget-object v1, p0, Lcom/sonymobile/camera/faultdetector/c;->h:Lcom/qualcomm/qti/snpe/NeuralNetwork;

    iget-object p3, p0, Lcom/sonymobile/camera/faultdetector/c;->g:Lcom/sonymobile/camera/faultdetector/c$c;

    iget v4, p3, Lcom/sonymobile/camera/faultdetector/c$c;->h:I

    iget-object p0, p0, Lcom/sonymobile/camera/faultdetector/c;->g:Lcom/sonymobile/camera/faultdetector/c$c;

    iget v5, p0, Lcom/sonymobile/camera/faultdetector/c$c;->g:F

    invoke-interface/range {v1 .. v6}, Lcom/qualcomm/qti/snpe/NeuralNetwork;->createTF8UserBufferTensor(I[IIFLjava/nio/ByteBuffer;)Lcom/qualcomm/qti/snpe/TF8UserBufferTensor;

    move-result-object p0

    invoke-interface {p2, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private declared-synchronized a(Lcom/sonymobile/camera/faultdetector/c$d;)V
    .registers 2

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/sonymobile/camera/faultdetector/c;->i:Lcom/sonymobile/camera/faultdetector/c$d;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic a(Lcom/sonymobile/camera/faultdetector/c;Lcom/sonymobile/camera/faultdetector/c$d;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/sonymobile/camera/faultdetector/c;->a(Lcom/sonymobile/camera/faultdetector/c$d;)V

    return-void
.end method

.method static synthetic a(Lcom/sonymobile/camera/faultdetector/c;Ljava/util/List;Lcom/sonymobile/camera/faultdetector/DetectorInterface$Callback;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/sonymobile/camera/faultdetector/c;->b(Ljava/util/List;Lcom/sonymobile/camera/faultdetector/DetectorInterface$Callback;)V

    return-void
.end method

.method private a(Ljava/util/Map;Ljava/util/Map;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/qualcomm/qti/snpe/TF8UserBufferTensor;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/nio/ByteBuffer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sonymobile/camera/faultdetector/c;->h:Lcom/qualcomm/qti/snpe/NeuralNetwork;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/sonymobile/camera/faultdetector/c;->h:Lcom/qualcomm/qti/snpe/NeuralNetwork;

    iget-object v1, p0, Lcom/sonymobile/camera/faultdetector/c;->k:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/qualcomm/qti/snpe/NeuralNetwork;->getTensorAttributes(Ljava/lang/String;)Lcom/qualcomm/qti/snpe/TensorAttributes;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/camera/faultdetector/c;->a(Lcom/qualcomm/qti/snpe/TensorAttributes;)[I

    move-result-object v3

    const/4 v0, 0x0

    aget v2, v3, v0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/sonymobile/camera/faultdetector/c;->k:Ljava/lang/String;

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sonymobile/camera/faultdetector/c;->k:Ljava/lang/String;

    iget-object v1, p0, Lcom/sonymobile/camera/faultdetector/c;->h:Lcom/qualcomm/qti/snpe/NeuralNetwork;

    iget-object p0, p0, Lcom/sonymobile/camera/faultdetector/c;->k:Ljava/lang/String;

    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Ljava/nio/ByteBuffer;

    invoke-interface/range {v1 .. v6}, Lcom/qualcomm/qti/snpe/NeuralNetwork;->createTF8UserBufferTensor(I[IIFLjava/nio/ByteBuffer;)Lcom/qualcomm/qti/snpe/TF8UserBufferTensor;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final varargs a([Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lcom/qualcomm/qti/snpe/UserBufferTensor;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    array-length p0, p1

    const/4 v0, 0x0

    :goto_2
    if-ge v0, p0, :cond_21

    aget-object v1, p1, v0

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qualcomm/qti/snpe/UserBufferTensor;

    invoke-virtual {v2}, Lcom/qualcomm/qti/snpe/UserBufferTensor;->release()V

    goto :goto_e

    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_21
    return-void
.end method

.method private a(Landroid/graphics/Bitmap;)[F
    .registers 19

    move-object/from16 v1, p0

    const-string v2, "DetectorImpl"

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v8, p1

    invoke-direct {v1, v8, v5, v0}, Lcom/sonymobile/camera/faultdetector/c;->a(Landroid/graphics/Bitmap;Ljava/util/Map;Ljava/util/Map;)V

    invoke-direct {v1, v6, v7}, Lcom/sonymobile/camera/faultdetector/c;->a(Ljava/util/Map;Ljava/util/Map;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const/4 v10, 0x0

    :try_start_29
    iget-object v0, v1, Lcom/sonymobile/camera/faultdetector/c;->h:Lcom/qualcomm/qti/snpe/NeuralNetwork;

    if-eqz v0, :cond_3a

    iget-object v0, v1, Lcom/sonymobile/camera/faultdetector/c;->h:Lcom/qualcomm/qti/snpe/NeuralNetwork;

    invoke-interface {v0, v5, v6}, Lcom/qualcomm/qti/snpe/NeuralNetwork;->execute(Ljava/util/Map;Ljava/util/Map;)Z

    move-result v0
    :try_end_33
    .catch Ljava/lang/IllegalStateException; {:try_start_29 .. :try_end_33} :catch_34

    goto :goto_3b

    :catch_34
    move-exception v0

    const-string v11, "Failed to execute in native."

    invoke-static {v2, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3a
    move v0, v10

    :goto_3b
    sget-boolean v11, Lcom/sonymobile/camera/faultdetector/c;->c:Z

    const-string v12, " ms"

    const-string v13, "DetectorImpl_PERF"

    if-eqz v11, :cond_63

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Network execution time = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v15

    sub-long v8, v15, v8

    invoke-virtual {v14, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v13, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_63
    const/4 v8, 0x0

    if-nez v0, :cond_6c

    const-string v0, "Failed to execute"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v8

    :cond_6c
    iget-object v0, v1, Lcom/sonymobile/camera/faultdetector/c;->k:Ljava/lang/String;

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/qti/snpe/TF8UserBufferTensor;

    iget-object v9, v1, Lcom/sonymobile/camera/faultdetector/c;->k:Ljava/lang/String;

    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/nio/ByteBuffer;

    if-nez v7, :cond_84

    const-string v0, "Failed to get output buffers"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v8

    :cond_84
    invoke-direct {v1, v0, v7}, Lcom/sonymobile/camera/faultdetector/c;->a(Lcom/qualcomm/qti/snpe/TF8UserBufferTensor;Ljava/nio/ByteBuffer;)[F

    move-result-object v0

    const/4 v2, 0x1

    new-array v7, v2, [Ljava/util/Map;

    aput-object v5, v7, v10

    invoke-direct {v1, v7}, Lcom/sonymobile/camera/faultdetector/c;->a([Ljava/util/Map;)V

    new-array v2, v2, [Ljava/util/Map;

    aput-object v6, v2, v10

    invoke-direct {v1, v2}, Lcom/sonymobile/camera/faultdetector/c;->a([Ljava/util/Map;)V

    if-eqz v11, :cond_b8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Total execution time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b8
    return-object v0
.end method

.method private a(Lcom/qualcomm/qti/snpe/TF8UserBufferTensor;Ljava/nio/ByteBuffer;)[F
    .registers 8

    if-eqz p1, :cond_28

    if-nez p2, :cond_5

    goto :goto_28

    :cond_5
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p0

    new-array v0, p0, [B

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    new-array p2, p0, [F

    const/4 v1, 0x0

    :goto_11
    if-ge v1, p0, :cond_27

    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {p1}, Lcom/qualcomm/qti/snpe/TF8UserBufferTensor;->getMin()F

    move-result v3

    int-to-float v2, v2

    invoke-virtual {p1}, Lcom/qualcomm/qti/snpe/TF8UserBufferTensor;->getQuantizedStepSize()F

    move-result v4

    mul-float/2addr v2, v4

    add-float/2addr v3, v2

    aput v3, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_27
    return-object p2

    :cond_28
    :goto_28
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Lcom/qualcomm/qti/snpe/TensorAttributes;)[I
    .registers 6

    invoke-interface {p0}, Lcom/qualcomm/qti/snpe/TensorAttributes;->getDims()[I

    move-result-object v0

    array-length v0, v0

    new-array v1, v0, [I

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    aput v2, v1, v0

    :goto_b
    if-lez v0, :cond_1d

    add-int/lit8 v2, v0, -0x1

    aget v3, v1, v0

    invoke-interface {p0}, Lcom/qualcomm/qti/snpe/TensorAttributes;->getDims()[I

    move-result-object v4

    aget v4, v4, v0

    mul-int/2addr v3, v4

    aput v3, v1, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    :cond_1d
    return-object v1
.end method

.method static synthetic b(Lcom/sonymobile/camera/faultdetector/c;)Lcom/sonymobile/camera/faultdetector/c$c;
    .registers 1

    iget-object p0, p0, Lcom/sonymobile/camera/faultdetector/c;->g:Lcom/sonymobile/camera/faultdetector/c$c;

    return-object p0
.end method

.method static synthetic b(Lcom/sonymobile/camera/faultdetector/c;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/sonymobile/camera/faultdetector/c;->k:Ljava/lang/String;

    return-object p1
.end method

.method private b(Ljava/util/List;Lcom/sonymobile/camera/faultdetector/DetectorInterface$Callback;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/sonymobile/camera/faultdetector/DetectorInterface$Callback;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/sonymobile/camera/faultdetector/c;->h:Lcom/qualcomm/qti/snpe/NeuralNetwork;

    if-eqz v1, :cond_3e

    if-eqz p1, :cond_3e

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-direct {p0}, Lcom/sonymobile/camera/faultdetector/c;->h()Lcom/sonymobile/camera/faultdetector/c$d;

    move-result-object v2

    sget-object v3, Lcom/sonymobile/camera/faultdetector/c$d;->d:Lcom/sonymobile/camera/faultdetector/c$d;

    if-eq v2, v3, :cond_27

    :goto_23
    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_3e

    :cond_27
    sget-object v2, Lcom/sonymobile/camera/faultdetector/c;->e:Ljava/lang/Object;

    monitor-enter v2

    :try_start_2a
    invoke-direct {p0, v1}, Lcom/sonymobile/camera/faultdetector/c;->a(Landroid/graphics/Bitmap;)[F

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v2
    :try_end_32
    .catchall {:try_start_2a .. :try_end_32} :catchall_3b

    invoke-direct {p0}, Lcom/sonymobile/camera/faultdetector/c;->h()Lcom/sonymobile/camera/faultdetector/c$d;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/camera/faultdetector/c$d;->d:Lcom/sonymobile/camera/faultdetector/c$d;

    if-eq v1, v2, :cond_f

    goto :goto_23

    :catchall_3b
    move-exception p0

    :try_start_3c
    monitor-exit v2
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw p0

    :cond_3e
    :goto_3e
    if-eqz p2, :cond_43

    invoke-interface {p2, v0}, Lcom/sonymobile/camera/faultdetector/DetectorInterface$Callback;->onExecuted(Ljava/util/List;)V

    :cond_43
    return-void
.end method

.method static synthetic c(Lcom/sonymobile/camera/faultdetector/c;)Lcom/qualcomm/qti/snpe/NeuralNetwork;
    .registers 1

    iget-object p0, p0, Lcom/sonymobile/camera/faultdetector/c;->h:Lcom/qualcomm/qti/snpe/NeuralNetwork;

    return-object p0
.end method

.method static synthetic d(Lcom/sonymobile/camera/faultdetector/c;)V
    .registers 1

    invoke-direct {p0}, Lcom/sonymobile/camera/faultdetector/c;->g()V

    return-void
.end method

.method static synthetic e(Lcom/sonymobile/camera/faultdetector/c;)Lcom/sonymobile/camera/faultdetector/c$d;
    .registers 1

    invoke-direct {p0}, Lcom/sonymobile/camera/faultdetector/c;->h()Lcom/sonymobile/camera/faultdetector/c$d;

    move-result-object p0

    return-object p0
.end method

.method static synthetic e()Z
    .registers 1

    sget-boolean v0, Lcom/sonymobile/camera/faultdetector/c;->c:Z

    return v0
.end method

.method private f()V
    .registers 4

    iget-object v0, p0, Lcom/sonymobile/camera/faultdetector/c;->l:Landroid/os/HandlerThread;

    if-nez v0, :cond_32

    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WT_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/camera/faultdetector/c;->g:Lcom/sonymobile/camera/faultdetector/c$c;

    iget-object v2, v2, Lcom/sonymobile/camera/faultdetector/c$c;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sonymobile/camera/faultdetector/c;->l:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/sonymobile/camera/faultdetector/c$a;

    iget-object v1, p0, Lcom/sonymobile/camera/faultdetector/c;->l:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/camera/faultdetector/c$a;-><init>(Lcom/sonymobile/camera/faultdetector/c;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sonymobile/camera/faultdetector/c;->m:Lcom/sonymobile/camera/faultdetector/c$a;

    :cond_32
    return-void
.end method

.method private g()V
    .registers 4

    iget-object v0, p0, Lcom/sonymobile/camera/faultdetector/c;->m:Lcom/sonymobile/camera/faultdetector/c$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/camera/faultdetector/c$a;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sonymobile/camera/faultdetector/c;->h:Lcom/qualcomm/qti/snpe/NeuralNetwork;

    if-eqz v0, :cond_19

    :try_start_a
    iget-object v0, p0, Lcom/sonymobile/camera/faultdetector/c;->h:Lcom/qualcomm/qti/snpe/NeuralNetwork;

    invoke-interface {v0}, Lcom/qualcomm/qti/snpe/NeuralNetwork;->release()V
    :try_end_f
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_f} :catch_10

    goto :goto_17

    :catch_10
    const-string v0, "DetectorImpl"

    const-string v2, "Failed to release network resources."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_17
    iput-object v1, p0, Lcom/sonymobile/camera/faultdetector/c;->h:Lcom/qualcomm/qti/snpe/NeuralNetwork;

    :cond_19
    iput-object v1, p0, Lcom/sonymobile/camera/faultdetector/c;->j:Ljava/lang/String;

    iput-object v1, p0, Lcom/sonymobile/camera/faultdetector/c;->k:Ljava/lang/String;

    return-void
.end method

.method private declared-synchronized h()Lcom/sonymobile/camera/faultdetector/c$d;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sonymobile/camera/faultdetector/c;->i:Lcom/sonymobile/camera/faultdetector/c$d;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method a(Ljava/util/List;Lcom/sonymobile/camera/faultdetector/DetectorInterface$Callback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/sonymobile/camera/faultdetector/DetectorInterface$Callback;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/sonymobile/camera/faultdetector/c$b;

    invoke-direct {v0, p1, p2}, Lcom/sonymobile/camera/faultdetector/c$b;-><init>(Ljava/util/List;Lcom/sonymobile/camera/faultdetector/DetectorInterface$Callback;)V

    iget-object p0, p0, Lcom/sonymobile/camera/faultdetector/c;->m:Lcom/sonymobile/camera/faultdetector/c$a;

    const/4 p1, 0x3

    invoke-static {p0, p1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method a()Z
    .registers 7

    const-string v0, "DetectorImpl"

    invoke-direct {p0}, Lcom/sonymobile/camera/faultdetector/c;->h()Lcom/sonymobile/camera/faultdetector/c$d;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/camera/faultdetector/c$d;->b:Lcom/sonymobile/camera/faultdetector/c$d;

    const/4 v3, 0x1

    if-eq v1, v2, :cond_75

    invoke-direct {p0}, Lcom/sonymobile/camera/faultdetector/c;->h()Lcom/sonymobile/camera/faultdetector/c$d;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/camera/faultdetector/c$d;->c:Lcom/sonymobile/camera/faultdetector/c$d;

    if-ne v1, v2, :cond_14

    goto :goto_75

    :cond_14
    sget-object v1, Lcom/sonymobile/camera/faultdetector/c$d;->b:Lcom/sonymobile/camera/faultdetector/c$d;

    invoke-direct {p0, v1}, Lcom/sonymobile/camera/faultdetector/c;->a(Lcom/sonymobile/camera/faultdetector/c$d;)V

    invoke-direct {p0}, Lcom/sonymobile/camera/faultdetector/c;->f()V

    iget-object v1, p0, Lcom/sonymobile/camera/faultdetector/c;->m:Lcom/sonymobile/camera/faultdetector/c$a;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sonymobile/camera/faultdetector/c$a;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iget-object v2, p0, Lcom/sonymobile/camera/faultdetector/c;->m:Lcom/sonymobile/camera/faultdetector/c$a;

    new-instance v4, Lcom/sonymobile/camera/faultdetector/c$1;

    invoke-direct {v4, p0, v1}, Lcom/sonymobile/camera/faultdetector/c$1;-><init>(Lcom/sonymobile/camera/faultdetector/c;Ljava/util/concurrent/CountDownLatch;)V

    invoke-static {v2, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v2

    iput v3, v2, Landroid/os/Message;->what:I

    iget-object v4, p0, Lcom/sonymobile/camera/faultdetector/c;->m:Lcom/sonymobile/camera/faultdetector/c$a;

    invoke-virtual {v4, v2}, Lcom/sonymobile/camera/faultdetector/c$a;->sendMessage(Landroid/os/Message;)Z

    const-wide/16 v4, 0x3

    :try_start_3b
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v5, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_6b

    const-string v1, "Initialization timeout"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lcom/sonymobile/camera/faultdetector/c;->c:Z

    if-eqz v1, :cond_6b

    iget-object v1, p0, Lcom/sonymobile/camera/faultdetector/c;->m:Lcom/sonymobile/camera/faultdetector/c$a;

    new-instance v2, Lcom/sonymobile/camera/faultdetector/c$2;

    invoke-direct {v2, p0}, Lcom/sonymobile/camera/faultdetector/c$2;-><init>(Lcom/sonymobile/camera/faultdetector/c;)V

    invoke-virtual {v1, v2}, Lcom/sonymobile/camera/faultdetector/c$a;->post(Ljava/lang/Runnable;)Z
    :try_end_56
    .catch Ljava/lang/InterruptedException; {:try_start_3b .. :try_end_56} :catch_57

    goto :goto_6b

    :catch_57
    move-exception v1

    const-string v2, "Initialization failed"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-boolean v0, Lcom/sonymobile/camera/faultdetector/c;->c:Z

    if-eqz v0, :cond_6b

    iget-object v0, p0, Lcom/sonymobile/camera/faultdetector/c;->m:Lcom/sonymobile/camera/faultdetector/c$a;

    new-instance v1, Lcom/sonymobile/camera/faultdetector/c$3;

    invoke-direct {v1, p0}, Lcom/sonymobile/camera/faultdetector/c$3;-><init>(Lcom/sonymobile/camera/faultdetector/c;)V

    invoke-virtual {v0, v1}, Lcom/sonymobile/camera/faultdetector/c$a;->post(Ljava/lang/Runnable;)Z

    :cond_6b
    :goto_6b
    invoke-direct {p0}, Lcom/sonymobile/camera/faultdetector/c;->h()Lcom/sonymobile/camera/faultdetector/c$d;

    move-result-object p0

    sget-object v0, Lcom/sonymobile/camera/faultdetector/c$d;->c:Lcom/sonymobile/camera/faultdetector/c$d;

    if-ne p0, v0, :cond_74

    goto :goto_75

    :cond_74
    const/4 v3, 0x0

    :cond_75
    :goto_75
    return v3
.end method

.method b()V
    .registers 3

    invoke-direct {p0}, Lcom/sonymobile/camera/faultdetector/c;->h()Lcom/sonymobile/camera/faultdetector/c$d;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/camera/faultdetector/c$d;->a:Lcom/sonymobile/camera/faultdetector/c$d;

    if-eq v0, v1, :cond_22

    invoke-direct {p0}, Lcom/sonymobile/camera/faultdetector/c;->h()Lcom/sonymobile/camera/faultdetector/c$d;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/camera/faultdetector/c$d;->e:Lcom/sonymobile/camera/faultdetector/c$d;

    if-ne v0, v1, :cond_11

    goto :goto_22

    :cond_11
    sget-object v0, Lcom/sonymobile/camera/faultdetector/c$d;->e:Lcom/sonymobile/camera/faultdetector/c$d;

    invoke-direct {p0, v0}, Lcom/sonymobile/camera/faultdetector/c;->a(Lcom/sonymobile/camera/faultdetector/c$d;)V

    iget-object v0, p0, Lcom/sonymobile/camera/faultdetector/c;->m:Lcom/sonymobile/camera/faultdetector/c$a;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sonymobile/camera/faultdetector/c$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object p0, p0, Lcom/sonymobile/camera/faultdetector/c;->m:Lcom/sonymobile/camera/faultdetector/c$a;

    invoke-virtual {p0, v0}, Lcom/sonymobile/camera/faultdetector/c$a;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    :cond_22
    :goto_22
    return-void
.end method

.method c()V
    .registers 3

    invoke-direct {p0}, Lcom/sonymobile/camera/faultdetector/c;->h()Lcom/sonymobile/camera/faultdetector/c$d;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/camera/faultdetector/c$d;->a:Lcom/sonymobile/camera/faultdetector/c$d;

    if-eq v0, v1, :cond_13

    invoke-direct {p0}, Lcom/sonymobile/camera/faultdetector/c;->h()Lcom/sonymobile/camera/faultdetector/c$d;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/camera/faultdetector/c$d;->e:Lcom/sonymobile/camera/faultdetector/c$d;

    if-eq v0, v1, :cond_13

    invoke-virtual {p0}, Lcom/sonymobile/camera/faultdetector/c;->b()V

    :cond_13
    iget-object v0, p0, Lcom/sonymobile/camera/faultdetector/c;->l:Landroid/os/HandlerThread;

    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    :try_start_1a
    iget-object v0, p0, Lcom/sonymobile/camera/faultdetector/c;->l:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/camera/faultdetector/c;->l:Landroid/os/HandlerThread;
    :try_end_22
    .catch Ljava/lang/InterruptedException; {:try_start_1a .. :try_end_22} :catch_23

    goto :goto_2b

    :catch_23
    move-exception p0

    const-string v0, "DetectorImpl"

    const-string v1, "Failed to join worker thread."

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2b
    :goto_2b
    return-void
.end method

.method d()Landroid/util/Size;
    .registers 4

    iget-object v0, p0, Lcom/sonymobile/camera/faultdetector/c;->h:Lcom/qualcomm/qti/snpe/NeuralNetwork;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/sonymobile/camera/faultdetector/c;->h:Lcom/qualcomm/qti/snpe/NeuralNetwork;

    invoke-interface {v0}, Lcom/qualcomm/qti/snpe/NeuralNetwork;->getInputTensorsShapes()Ljava/util/Map;

    move-result-object v0

    iget-object p0, p0, Lcom/sonymobile/camera/faultdetector/c;->j:Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-eqz p0, :cond_24

    array-length v0, p0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_24

    new-instance v0, Landroid/util/Size;

    const/4 v1, 0x1

    aget v1, p0, v1

    const/4 v2, 0x2

    aget p0, p0, v2

    invoke-direct {v0, v1, p0}, Landroid/util/Size;-><init>(II)V

    goto :goto_2d

    :cond_24
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Failed to obtain appropriate shape of tensor"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2c
    const/4 v0, 0x0

    :goto_2d
    return-object v0
.end method
