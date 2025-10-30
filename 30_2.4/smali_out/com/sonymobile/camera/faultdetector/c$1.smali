.class Lcom/sonymobile/camera/faultdetector/c$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/camera/faultdetector/c;->a()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/CountDownLatch;

.field final synthetic b:Lcom/sonymobile/camera/faultdetector/c;


# direct methods
.method constructor <init>(Lcom/sonymobile/camera/faultdetector/c;Ljava/util/concurrent/CountDownLatch;)V
    .registers 3

    iput-object p1, p0, Lcom/sonymobile/camera/faultdetector/c$1;->b:Lcom/sonymobile/camera/faultdetector/c;

    iput-object p2, p0, Lcom/sonymobile/camera/faultdetector/c$1;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/camera/faultdetector/c$1;->b:Lcom/sonymobile/camera/faultdetector/c;

    iget-object v1, p0, Lcom/sonymobile/camera/faultdetector/c$1;->b:Lcom/sonymobile/camera/faultdetector/c;

    iget-object v2, p0, Lcom/sonymobile/camera/faultdetector/c$1;->b:Lcom/sonymobile/camera/faultdetector/c;

    invoke-static {v2}, Lcom/sonymobile/camera/faultdetector/c;->a(Lcom/sonymobile/camera/faultdetector/c;)Landroid/app/Application;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/camera/faultdetector/c$1;->b:Lcom/sonymobile/camera/faultdetector/c;

    invoke-static {v3}, Lcom/sonymobile/camera/faultdetector/c;->b(Lcom/sonymobile/camera/faultdetector/c;)Lcom/sonymobile/camera/faultdetector/c$c;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sonymobile/camera/faultdetector/c;->a(Lcom/sonymobile/camera/faultdetector/c;Landroid/app/Application;Lcom/sonymobile/camera/faultdetector/c$c;)Lcom/qualcomm/qti/snpe/NeuralNetwork;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonymobile/camera/faultdetector/c;->a(Lcom/sonymobile/camera/faultdetector/c;Lcom/qualcomm/qti/snpe/NeuralNetwork;)Lcom/qualcomm/qti/snpe/NeuralNetwork;
    :try_end_17
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_17} :catch_18

    goto :goto_26

    :catch_18
    move-exception v0

    const-string v1, "DetectorImpl"

    const-string v2, "Failed to build network."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sonymobile/camera/faultdetector/c;->e()Z

    move-result v1

    if-nez v1, :cond_b7

    :goto_26
    iget-object v0, p0, Lcom/sonymobile/camera/faultdetector/c$1;->b:Lcom/sonymobile/camera/faultdetector/c;

    invoke-static {v0}, Lcom/sonymobile/camera/faultdetector/c;->c(Lcom/sonymobile/camera/faultdetector/c;)Lcom/qualcomm/qti/snpe/NeuralNetwork;

    move-result-object v0

    if-eqz v0, :cond_b1

    iget-object v0, p0, Lcom/sonymobile/camera/faultdetector/c$1;->b:Lcom/sonymobile/camera/faultdetector/c;

    invoke-static {v0}, Lcom/sonymobile/camera/faultdetector/c;->c(Lcom/sonymobile/camera/faultdetector/c;)Lcom/qualcomm/qti/snpe/NeuralNetwork;

    move-result-object v0

    invoke-interface {v0}, Lcom/qualcomm/qti/snpe/NeuralNetwork;->getInputTensorsNames()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/camera/faultdetector/c$1;->b:Lcom/sonymobile/camera/faultdetector/c;

    invoke-static {v1}, Lcom/sonymobile/camera/faultdetector/c;->c(Lcom/sonymobile/camera/faultdetector/c;)Lcom/qualcomm/qti/snpe/NeuralNetwork;

    move-result-object v1

    invoke-interface {v1}, Lcom/qualcomm/qti/snpe/NeuralNetwork;->getOutputTensorsNames()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_a9

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    if-ne v2, v3, :cond_a9

    iget-object v2, p0, Lcom/sonymobile/camera/faultdetector/c$1;->b:Lcom/sonymobile/camera/faultdetector/c;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/sonymobile/camera/faultdetector/c;->a(Lcom/sonymobile/camera/faultdetector/c;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/sonymobile/camera/faultdetector/c$1;->b:Lcom/sonymobile/camera/faultdetector/c;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sonymobile/camera/faultdetector/c;->b(Lcom/sonymobile/camera/faultdetector/c;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/sonymobile/camera/faultdetector/c;->e()Z

    move-result v0

    if-eqz v0, :cond_a1

    const-string v0, "DetectorImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Succeeded to initialize the network of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sonymobile/camera/faultdetector/c$1;->b:Lcom/sonymobile/camera/faultdetector/c;

    invoke-static {v2}, Lcom/sonymobile/camera/faultdetector/c;->b(Lcom/sonymobile/camera/faultdetector/c;)Lcom/sonymobile/camera/faultdetector/c$c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/camera/faultdetector/c$c;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". Input size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sonymobile/camera/faultdetector/c$1;->b:Lcom/sonymobile/camera/faultdetector/c;

    invoke-virtual {v2}, Lcom/sonymobile/camera/faultdetector/c;->d()Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a1
    iget-object v0, p0, Lcom/sonymobile/camera/faultdetector/c$1;->b:Lcom/sonymobile/camera/faultdetector/c;

    sget-object v1, Lcom/sonymobile/camera/faultdetector/c$d;->c:Lcom/sonymobile/camera/faultdetector/c$d;

    invoke-static {v0, v1}, Lcom/sonymobile/camera/faultdetector/c;->a(Lcom/sonymobile/camera/faultdetector/c;Lcom/sonymobile/camera/faultdetector/c$d;)V

    goto :goto_b1

    :cond_a9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected network input and/or output tensors."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b1
    :goto_b1
    iget-object v0, p0, Lcom/sonymobile/camera/faultdetector/c$1;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :cond_b7
    new-instance v1, Lcom/sonymobile/camera/faultdetector/BuildNetworkException;

    const-string v2, "Failed to build network."

    invoke-direct {v1, v2, v0}, Lcom/sonymobile/camera/faultdetector/BuildNetworkException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
