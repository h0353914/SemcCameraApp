.class abstract Lcom/sonyericsson/android/camera/controller/GestureShutter$State;
.super Ljava/lang/Object;
.source "GestureShutter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/GestureShutter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "State"
.end annotation


# instance fields
.field final mCanStartDetection:Z

.field final mCanStopDetection:Z

.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;


# direct methods
.method protected constructor <init>(Lcom/sonyericsson/android/camera/controller/GestureShutter;ZZ)V
    .registers 4

    .line 389
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$State;->this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 390
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$State;->mCanStartDetection:Z

    .line 391
    iput-boolean p3, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$State;->mCanStopDetection:Z

    return-void
.end method


# virtual methods
.method entry()V
    .registers 1

    return-void
.end method

.method handleConfirmingFinished()V
    .registers 1

    return-void
.end method

.method handleDetectResult(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface$DetectResultInterface;)V
    .registers 2

    return-void
.end method

.method handleProceedFinished()V
    .registers 1

    return-void
.end method

.method handleRewindFinished()V
    .registers 1

    return-void
.end method

.method setWindowHost(Lcom/sonyericsson/android/camera/controller/GestureShutter$WindowHost;)V
    .registers 2

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 426
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method updateDetectionStatus()V
    .registers 4

    .line 395
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$State;->mCanStartDetection:Z

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$State;->this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    # invokes: Lcom/sonyericsson/android/camera/controller/GestureShutter;->shouldPerformDetection()Z
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/GestureShutter;->access$300(Lcom/sonyericsson/android/camera/controller/GestureShutter;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 396
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->startHandSignLostNumCounting()V

    .line 397
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$State;->this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateStandBy;

    invoke-direct {v1, v0}, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateStandBy;-><init>(Lcom/sonyericsson/android/camera/controller/GestureShutter;)V

    # invokes: Lcom/sonyericsson/android/camera/controller/GestureShutter;->changeState(Lcom/sonyericsson/android/camera/controller/GestureShutter$State;)V
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/controller/GestureShutter;->access$400(Lcom/sonyericsson/android/camera/controller/GestureShutter;Lcom/sonyericsson/android/camera/controller/GestureShutter$State;)V

    goto :goto_3c

    .line 398
    :cond_1e
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$State;->mCanStopDetection:Z

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$State;->this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    # invokes: Lcom/sonyericsson/android/camera/controller/GestureShutter;->shouldPerformDetection()Z
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/GestureShutter;->access$300(Lcom/sonyericsson/android/camera/controller/GestureShutter;)Z

    move-result v0

    if-nez v0, :cond_3c

    .line 399
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->resetHandSignLostNum()V

    .line 400
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$State;->this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateStopped;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateStopped;-><init>(Lcom/sonyericsson/android/camera/controller/GestureShutter;Z)V

    # invokes: Lcom/sonyericsson/android/camera/controller/GestureShutter;->changeState(Lcom/sonyericsson/android/camera/controller/GestureShutter$State;)V
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/controller/GestureShutter;->access$400(Lcom/sonyericsson/android/camera/controller/GestureShutter;Lcom/sonyericsson/android/camera/controller/GestureShutter$State;)V

    :cond_3c
    :goto_3c
    return-void
.end method
