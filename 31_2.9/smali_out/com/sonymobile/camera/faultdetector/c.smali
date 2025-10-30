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

    const-string v1, "userdebug"

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

    packed-switch v0, :pswitch_data_5c

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported DetectorType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_2e
    sget-object p2, Lcom/sonymobile/camera/faultdetector/c$c;->b:Lcom/sonymobile/camera/faultdetector/c$c;

    goto :goto_33

    :pswitch_31
    sget-object p2, Lcom/sonymobile/camera/faultdetector/c$c;->a:Lcom/sonymobile/camera/faultdetector/c$c;

    :goto_33
    iput-object p2, p0, Lcom/sonymobile/camera/faultdetector/c;->g:Lcom/sonymobile/camera/faultdetector/c$c;

    sget-object p2, Lcom/sonymobile/camera/faultdetector/c$d;->a:Lcom/sonymobile/camera/faultdetector/c$d;

    invoke-direct {p0, p2}, Lcom/sonymobile/camera/faultdetector/c;->a(Lcom/sonymobile/camera/faultdetector/c$d;)V

    invoke-direct {p0}, Lcom/sonymobile/camera/faultdetector/c;->f()V

    sget-boolean p2, Lcom/sonymobile/camera/faultdetector/c;->c:Z

    if-eqz p2, :cond_5b

    const-string p2, "DetectorImpl"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Prepare detector for version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/qualcomm/qti/snpe/SNPE;->getRuntimeVersion(Landroid/app/Application;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5b
    return-void

    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_31
        :pswitch_2e
    .end packed-switch
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

    if-eqz v1, :cond_b9

    const-string v1, "DetectorImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "buildNetwork application.getProcessName(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/app/Application;->getProcessName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "DetectorImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "buildNetwork model.name(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/sonymobile/camera/faultdetector/c$c;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "DetectorImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "buildNetwork model.runtime: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p2, Lcom/sonymobile/camera/faultdetector/c$c;->d:Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "DetectorImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "buildNetwork model.resourceId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/sonymobile/camera/faultdetector/c$c;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "DetectorImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "buildNetwork model.isCpuFallbackNeeded: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p2, Lcom/sonymobile/camera/faultdetector/c$c;->f:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "DetectorImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "buildNetwork model.isQuantized: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p2, Lcom/sonymobile/camera/faultdetector/c$c;->e:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "DetectorImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "buildNetwork builder.isRuntimeSupported(model.runtime): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p2, Lcom/sonymobile/camera/faultdetector/c$c;->d:Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    invoke-virtual {v0, v3}, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->isRuntimeSupported(Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b9
    iget-object v1, p2, Lcom/sonymobile/camera/faultdetector/c$c;->d:Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    invoke-virtual {v0, v1}, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->isRuntimeSupported(Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_19a

    :try_start_c2
    iget-object v1, p0, Lcom/sonymobile/camera/faultdetector/c;->n:Lcom/sonymobile/camera/faultdetector/b;

    iget v3, p2, Lcom/sonymobile/camera/faultdetector/c$c;->c:I

    invoke-virtual {v1, p1, v3}, Lcom/sonymobile/camera/faultdetector/b;->a(Landroid/app/Application;I)Ljava/io/InputStream;

    move-result-object p1
    :try_end_ca
    .catch Ljava/io/IOException; {:try_start_c2 .. :try_end_ca} :catch_17b

    if-nez p1, :cond_d9

    :try_start_cc
    const-string v0, "DetectorImpl"

    const-string v1, "Failed to get decrypted stream."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d3
    .catch Ljava/lang/Throwable; {:try_start_cc .. :try_end_d3} :catch_15e
    .catchall {:try_start_cc .. :try_end_d3} :catchall_15b

    if-eqz p1, :cond_d8

    :try_start_d5
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_d8
    .catch Ljava/io/IOException; {:try_start_d5 .. :try_end_d8} :catch_17b

    :cond_d8
    return-object v2

    :cond_d9
    :try_start_d9
    sget-boolean v1, Lcom/sonymobile/camera/faultdetector/c;->c:Z

    if-eqz v1, :cond_f7

    const-string v1, "DetectorImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "buildNetwork is.available(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f7
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->setDebugEnabled(Z)Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    iget-object v5, p2, Lcom/sonymobile/camera/faultdetector/c$c;->d:Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    aput-object v5, v4, v1

    invoke-virtual {v3, v4}, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->setRuntimeOrder([Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;)Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v3

    invoke-virtual {v1, p1, v3}, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->setModel(Ljava/io/InputStream;I)Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;

    move-result-object v1

    iget-boolean v3, p2, Lcom/sonymobile/camera/faultdetector/c$c;->f:Z

    invoke-virtual {v1, v3}, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->setCpuFallbackEnabled(Z)Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;

    move-result-object v1

    iget-boolean v3, p2, Lcom/sonymobile/camera/faultdetector/c$c;->e:Z

    invoke-virtual {v1, v3}, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->setUseUserSuppliedBuffers(Z)Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;

    move-result-object v1

    sget-object v3, Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;->LOW:Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;

    invoke-virtual {v1, v3}, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->setExecutionPriorityHint(Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;)Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v0}, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->build()Lcom/qualcomm/qti/snpe/NeuralNetwork;

    move-result-object v0
    :try_end_128
    .catch Ljava/lang/Throwable; {:try_start_d9 .. :try_end_128} :catch_15e
    .catchall {:try_start_d9 .. :try_end_128} :catchall_15b

    :try_start_128
    sget-boolean v1, Lcom/sonymobile/camera/faultdetector/c;->c:Z

    if-eqz v1, :cond_14c

    const-string v1, "DetectorImpl_PERF"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Detector build time = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v3

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " ms"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14c
    .catch Ljava/lang/Throwable; {:try_start_128 .. :try_end_14c} :catch_158
    .catchall {:try_start_128 .. :try_end_14c} :catchall_163

    :cond_14c
    if-eqz p1, :cond_155

    :try_start_14e
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_151
    .catch Ljava/io/IOException; {:try_start_14e .. :try_end_151} :catch_152

    goto :goto_155

    :catch_152
    move-exception p1

    move-object v2, v0

    goto :goto_17c

    :cond_155
    :goto_155
    move-object v2, v0

    goto/16 :goto_1b6

    :catch_158
    move-exception v1

    move-object v2, v1

    goto :goto_162

    :catchall_15b
    move-exception v0

    move-object v1, v2

    goto :goto_167

    :catch_15e
    move-exception v0

    move-object v8, v2

    move-object v2, v0

    move-object v0, v8

    :goto_162
    :try_start_162
    throw v2
    :try_end_163
    .catchall {:try_start_162 .. :try_end_163} :catchall_163

    :catchall_163
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    :goto_167
    if-eqz p1, :cond_177

    if-eqz v2, :cond_174

    :try_start_16b
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_16e
    .catch Ljava/lang/Throwable; {:try_start_16b .. :try_end_16e} :catch_16f
    .catch Ljava/io/IOException; {:try_start_16b .. :try_end_16e} :catch_178

    goto :goto_177

    :catch_16f
    move-exception p1

    :try_start_170
    invoke-virtual {v2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_177

    :cond_174
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_177
    :goto_177
    throw v0
    :try_end_178
    .catch Ljava/io/IOException; {:try_start_170 .. :try_end_178} :catch_178

    :catch_178
    move-exception p1

    move-object v2, v1

    goto :goto_17c

    :catch_17b
    move-exception p1

    :goto_17c
    const-string v0, "DetectorImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to build network: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/sonymobile/camera/faultdetector/c$c;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1b6

    :cond_19a
    const-string p1, "DetectorImpl"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported runtime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/sonymobile/camera/faultdetector/c$c;->d:Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    invoke-virtual {p2}, Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1b6
    return-object v2
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

    iget-object p3, p0, Lcom/sonymobile/camera/faultdetector/c;->g:Lcom/sonymobile/camera/faultdetector/c$c;

    iget v5, p3, Lcom/sonymobile/camera/faultdetector/c$c;->g:F

    invoke-interface/range {v1 .. v6}, Lcom/qualcomm/qti/snpe/NeuralNetwork;->createTF8UserBufferTensor(I[IIFLjava/nio/ByteBuffer;)Lcom/qualcomm/qti/snpe/TF8UserBufferTensor;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

    iget-object v6, p0, Lcom/sonymobile/camera/faultdetector/c;->k:Ljava/lang/String;

    invoke-interface {p2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v6, p2

    check-cast v6, Ljava/nio/ByteBuffer;

    invoke-interface/range {v1 .. v6}, Lcom/qualcomm/qti/snpe/NeuralNetwork;->createTF8UserBufferTensor(I[IIFLjava/nio/ByteBuffer;)Lcom/qualcomm/qti/snpe/TF8UserBufferTensor;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final varargs a([Ljava/util/Map;)V
    .registers 6
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

    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_21

    aget-object v2, p1, v1

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qualcomm/qti/snpe/UserBufferTensor;

    invoke-virtual {v3}, Lcom/qualcomm/qti/snpe/UserBufferTensor;->release()V

    goto :goto_e

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_21
    return-void
.end method

.method private a(Landroid/graphics/Bitmap;)[F
    .registers 14

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, p1, v2, v4}, Lcom/sonymobile/camera/faultdetector/c;->a(Landroid/graphics/Bitmap;Ljava/util/Map;Ljava/util/Map;)V

    invoke-direct {p0, v3, v5}, Lcom/sonymobile/camera/faultdetector/c;->a(Ljava/util/Map;Ljava/util/Map;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const/4 p1, 0x0

    :try_start_23
    iget-object v4, p0, Lcom/sonymobile/camera/faultdetector/c;->h:Lcom/qualcomm/qti/snpe/NeuralNetwork;

    if-eqz v4, :cond_36

    iget-object v4, p0, Lcom/sonymobile/camera/faultdetector/c;->h:Lcom/qualcomm/qti/snpe/NeuralNetwork;

    invoke-interface {v4, v2, v3}, Lcom/qualcomm/qti/snpe/NeuralNetwork;->execute(Ljava/util/Map;Ljava/util/Map;)Z

    move-result v4
    :try_end_2d
    .catch Ljava/lang/IllegalStateException; {:try_start_23 .. :try_end_2d} :catch_2e

    goto :goto_37

    :catch_2e
    move-exception v4

    const-string v8, "DetectorImpl"

    const-string v9, "Failed to execute in native."

    invoke-static {v8, v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_36
    move v4, p1

    :goto_37
    sget-boolean v8, Lcom/sonymobile/camera/faultdetector/c;->c:Z

    if-eqz v8, :cond_5b

    const-string v8, "DetectorImpl_PERF"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Network execution time = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v6

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " ms"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5b
    const/4 v6, 0x0

    if-nez v4, :cond_66

    const-string p1, "DetectorImpl"

    const-string v0, "Failed to execute"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    :cond_66
    iget-object v4, p0, Lcom/sonymobile/camera/faultdetector/c;->k:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/qualcomm/qti/snpe/TF8UserBufferTensor;

    iget-object v7, p0, Lcom/sonymobile/camera/faultdetector/c;->k:Ljava/lang/String;

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/nio/ByteBuffer;

    if-nez v5, :cond_80

    const-string p1, "DetectorImpl"

    const-string v0, "Failed to get output buffers"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    :cond_80
    invoke-direct {p0, v4, v5}, Lcom/sonymobile/camera/faultdetector/c;->a(Lcom/qualcomm/qti/snpe/TF8UserBufferTensor;Ljava/nio/ByteBuffer;)[F

    move-result-object v4

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/util/Map;

    aput-object v2, v6, p1

    invoke-direct {p0, v6}, Lcom/sonymobile/camera/faultdetector/c;->a([Ljava/util/Map;)V

    new-array v2, v5, [Ljava/util/Map;

    aput-object v3, v2, p1

    invoke-direct {p0, v2}, Lcom/sonymobile/camera/faultdetector/c;->a([Ljava/util/Map;)V

    sget-boolean p1, Lcom/sonymobile/camera/faultdetector/c;->c:Z

    if-eqz p1, :cond_b7

    const-string p1, "DetectorImpl_PERF"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Total execution time = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b7
    return-object v4
.end method

.method private a(Lcom/qualcomm/qti/snpe/TF8UserBufferTensor;Ljava/nio/ByteBuffer;)[F
    .registers 9

    if-eqz p1, :cond_28

    if-nez p2, :cond_5

    goto :goto_28

    :cond_5
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    new-array v1, v0, [B

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    new-array p2, v0, [F

    const/4 v2, 0x0

    :goto_11
    if-ge v2, v0, :cond_27

    aget-byte v3, v1, v2

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {p1}, Lcom/qualcomm/qti/snpe/TF8UserBufferTensor;->getMin()F

    move-result v4

    int-to-float v3, v3

    invoke-virtual {p1}, Lcom/qualcomm/qti/snpe/TF8UserBufferTensor;->getQuantizedStepSize()F

    move-result v5

    mul-float/2addr v3, v5

    add-float/2addr v4, v3

    aput v4, p2, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_27
    return-object p2

    :cond_28
    :goto_28
    const/4 p1, 0x0

    return-object p1
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
    move-exception p1

    :try_start_3c
    monitor-exit v2
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw p1

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

    iget-object v2, p0, Lcom/sonymobile/camera/faultdetector/c;->g:Lcom/sonymobile/camera/faultdetector/c$c;

    iget-object v2, v2, Lcom/sonymobile/camera/faultdetector/c$c;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sonymobile/camera/faultdetector/c;->l:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/sonymobile/camera/faultdetector/c;->l:Landroid/os/HandlerThread;

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

    iget-object p1, p0, Lcom/sonymobile/camera/faultdetector/c;->m:Lcom/sonymobile/camera/faultdetector/c$a;

    const/4 p2, 0x3

    invoke-static {p1, p2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method a()Z
    .registers 6

    invoke-direct {p0}, Lcom/sonymobile/camera/faultdetector/c;->h()Lcom/sonymobile/camera/faultdetector/c$d;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/camera/faultdetector/c$d;->b:Lcom/sonymobile/camera/faultdetector/c$d;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_77

    invoke-direct {p0}, Lcom/sonymobile/camera/faultdetector/c;->h()Lcom/sonymobile/camera/faultdetector/c$d;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/camera/faultdetector/c$d;->c:Lcom/sonymobile/camera/faultdetector/c$d;

    if-ne v0, v1, :cond_12

    goto :goto_77

    :cond_12
    sget-object v0, Lcom/sonymobile/camera/faultdetector/c$d;->b:Lcom/sonymobile/camera/faultdetector/c$d;

    invoke-direct {p0, v0}, Lcom/sonymobile/camera/faultdetector/c;->a(Lcom/sonymobile/camera/faultdetector/c$d;)V

    invoke-direct {p0}, Lcom/sonymobile/camera/faultdetector/c;->f()V

    iget-object v0, p0, Lcom/sonymobile/camera/faultdetector/c;->m:Lcom/sonymobile/camera/faultdetector/c$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/camera/faultdetector/c$a;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iget-object v1, p0, Lcom/sonymobile/camera/faultdetector/c;->m:Lcom/sonymobile/camera/faultdetector/c$a;

    new-instance v3, Lcom/sonymobile/camera/faultdetector/c$1;

    invoke-direct {v3, p0, v0}, Lcom/sonymobile/camera/faultdetector/c$1;-><init>(Lcom/sonymobile/camera/faultdetector/c;Ljava/util/concurrent/CountDownLatch;)V

    invoke-static {v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v1

    iput v2, v1, Landroid/os/Message;->what:I

    iget-object v3, p0, Lcom/sonymobile/camera/faultdetector/c;->m:Lcom/sonymobile/camera/faultdetector/c$a;

    invoke-virtual {v3, v1}, Lcom/sonymobile/camera/faultdetector/c$a;->sendMessage(Landroid/os/Message;)Z

    const-wide/16 v3, 0x3

    :try_start_39
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v3, v4, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_6d

    const-string v0, "DetectorImpl"

    const-string v1, "Initialization timeout"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/sonymobile/camera/faultdetector/c;->c:Z

    if-eqz v0, :cond_6d

    iget-object v0, p0, Lcom/sonymobile/camera/faultdetector/c;->m:Lcom/sonymobile/camera/faultdetector/c$a;

    new-instance v1, Lcom/sonymobile/camera/faultdetector/c$2;

    invoke-direct {v1, p0}, Lcom/sonymobile/camera/faultdetector/c$2;-><init>(Lcom/sonymobile/camera/faultdetector/c;)V

    invoke-virtual {v0, v1}, Lcom/sonymobile/camera/faultdetector/c$a;->post(Ljava/lang/Runnable;)Z
    :try_end_56
    .catch Ljava/lang/InterruptedException; {:try_start_39 .. :try_end_56} :catch_57

    goto :goto_6d

    :catch_57
    move-exception v0

    const-string v1, "DetectorImpl"

    const-string v3, "Initialization failed"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-boolean v0, Lcom/sonymobile/camera/faultdetector/c;->c:Z

    if-eqz v0, :cond_6d

    iget-object v0, p0, Lcom/sonymobile/camera/faultdetector/c;->m:Lcom/sonymobile/camera/faultdetector/c$a;

    new-instance v1, Lcom/sonymobile/camera/faultdetector/c$3;

    invoke-direct {v1, p0}, Lcom/sonymobile/camera/faultdetector/c$3;-><init>(Lcom/sonymobile/camera/faultdetector/c;)V

    invoke-virtual {v0, v1}, Lcom/sonymobile/camera/faultdetector/c$a;->post(Ljava/lang/Runnable;)Z

    :cond_6d
    :goto_6d
    invoke-direct {p0}, Lcom/sonymobile/camera/faultdetector/c;->h()Lcom/sonymobile/camera/faultdetector/c$d;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/camera/faultdetector/c$d;->c:Lcom/sonymobile/camera/faultdetector/c$d;

    if-ne v0, v1, :cond_76

    goto :goto_77

    :cond_76
    const/4 v2, 0x0

    :cond_77
    :goto_77
    return v2
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

    iget-object v1, p0, Lcom/sonymobile/camera/faultdetector/c;->m:Lcom/sonymobile/camera/faultdetector/c$a;

    invoke-virtual {v1, v0}, Lcom/sonymobile/camera/faultdetector/c$a;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    :cond_22
    :goto_22
    return-void
.end method

.method c()V
    .registers 4

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
    move-exception v0

    const-string v1, "DetectorImpl"

    const-string v2, "Failed to join worker thread."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2b
    :goto_2b
    return-void
.end method

.method d()Landroid/util/Size;
    .registers 5

    iget-object v0, p0, Lcom/sonymobile/camera/faultdetector/c;->h:Lcom/qualcomm/qti/snpe/NeuralNetwork;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/sonymobile/camera/faultdetector/c;->h:Lcom/qualcomm/qti/snpe/NeuralNetwork;

    invoke-interface {v0}, Lcom/qualcomm/qti/snpe/NeuralNetwork;->getInputTensorsShapes()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/camera/faultdetector/c;->j:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    if-eqz v0, :cond_24

    array-length v1, v0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_24

    new-instance v1, Landroid/util/Size;

    const/4 v2, 0x1

    aget v2, v0, v2

    const/4 v3, 0x2

    aget v0, v0, v3

    invoke-direct {v1, v2, v0}, Landroid/util/Size;-><init>(II)V

    goto :goto_2d

    :cond_24
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to obtain appropriate shape of tensor"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2c
    const/4 v1, 0x0

    :goto_2d
    return-object v1
.end method
