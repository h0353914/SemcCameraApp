.class Lcom/sonyericsson/android/camera/controller/GestureShutter$StateStopped;
.super Lcom/sonyericsson/android/camera/controller/GestureShutter$State;
.source "GestureShutter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/GestureShutter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateStopped"
.end annotation


# instance fields
.field private final mStopForRelease:Z

.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/controller/GestureShutter;Z)V
    .registers 5

    .line 454
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateStopped;->this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 455
    invoke-direct {p0, p1, v0, v1}, Lcom/sonyericsson/android/camera/controller/GestureShutter$State;-><init>(Lcom/sonyericsson/android/camera/controller/GestureShutter;ZZ)V

    .line 456
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateStopped;->mStopForRelease:Z

    return-void
.end method

.method private releaseDetectorIfNeeded()V
    .registers 2

    .line 460
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateStopped;->this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    # getter for: Lcom/sonyericsson/android/camera/controller/GestureShutter;->mHandSignsDetector:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/GestureShutter;->access$200(Lcom/sonyericsson/android/camera/controller/GestureShutter;)Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 461
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateStopped;->this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    # getter for: Lcom/sonyericsson/android/camera/controller/GestureShutter;->mIsGestureShutterOn:Z
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/GestureShutter;->access$800(Lcom/sonyericsson/android/camera/controller/GestureShutter;)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateStopped;->mStopForRelease:Z

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateStopped;->this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    .line 463
    # invokes: Lcom/sonyericsson/android/camera/controller/GestureShutter;->isOperableMode()Z
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/GestureShutter;->access$900(Lcom/sonyericsson/android/camera/controller/GestureShutter;)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateStopped;->this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    .line 464
    # getter for: Lcom/sonyericsson/android/camera/controller/GestureShutter;->mIsEnabled:Z
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/GestureShutter;->access$1000(Lcom/sonyericsson/android/camera/controller/GestureShutter;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 465
    :cond_24
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateStopped;->this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    # getter for: Lcom/sonyericsson/android/camera/controller/GestureShutter;->mHandSignsDetector:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/GestureShutter;->access$200(Lcom/sonyericsson/android/camera/controller/GestureShutter;)Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface;->release()V

    .line 466
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateStopped;->this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    const/4 v0, 0x0

    # setter for: Lcom/sonyericsson/android/camera/controller/GestureShutter;->mHandSignsDetector:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface;
    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera/controller/GestureShutter;->access$202(Lcom/sonyericsson/android/camera/controller/GestureShutter;Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface;)Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface;

    :cond_33
    return-void
.end method


# virtual methods
.method entry()V
    .registers 3

    .line 473
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateStopped;->this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    # getter for: Lcom/sonyericsson/android/camera/controller/GestureShutter;->mWindowHost:Lcom/sonyericsson/android/camera/controller/GestureShutter$WindowHost;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/GestureShutter;->access$500(Lcom/sonyericsson/android/camera/controller/GestureShutter;)Lcom/sonyericsson/android/camera/controller/GestureShutter$WindowHost;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 474
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateStopped;->this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    # getter for: Lcom/sonyericsson/android/camera/controller/GestureShutter;->mWindowHost:Lcom/sonyericsson/android/camera/controller/GestureShutter$WindowHost;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/GestureShutter;->access$500(Lcom/sonyericsson/android/camera/controller/GestureShutter;)Lcom/sonyericsson/android/camera/controller/GestureShutter$WindowHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/controller/GestureShutter$WindowHost;->hideGestureShutterView()V

    .line 476
    :cond_11
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateStopped;->this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    # getter for: Lcom/sonyericsson/android/camera/controller/GestureShutter;->mHandSignsDetector:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/GestureShutter;->access$200(Lcom/sonyericsson/android/camera/controller/GestureShutter;)Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 477
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateStopped;->this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    # getter for: Lcom/sonyericsson/android/camera/controller/GestureShutter;->mHandSignsDetector:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/GestureShutter;->access$200(Lcom/sonyericsson/android/camera/controller/GestureShutter;)Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 478
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateStopped;->this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    # getter for: Lcom/sonyericsson/android/camera/controller/GestureShutter;->mHandSignsDetector:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/GestureShutter;->access$200(Lcom/sonyericsson/android/camera/controller/GestureShutter;)Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface;->stopDetect()V

    .line 480
    :cond_2e
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateStopped;->releaseDetectorIfNeeded()V

    .line 482
    :cond_31
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateStopped;->mStopForRelease:Z

    if-eqz v0, :cond_41

    .line 483
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateStopped;->this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateReleasing;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateStopped;->this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateReleasing;-><init>(Lcom/sonyericsson/android/camera/controller/GestureShutter;)V

    # invokes: Lcom/sonyericsson/android/camera/controller/GestureShutter;->changeState(Lcom/sonyericsson/android/camera/controller/GestureShutter$State;)V
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/controller/GestureShutter;->access$400(Lcom/sonyericsson/android/camera/controller/GestureShutter;Lcom/sonyericsson/android/camera/controller/GestureShutter$State;)V

    :cond_41
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/sonyericsson/android/camera/controller/GestureShutter$State;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " [mStopForRelease="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateStopped;->mStopForRelease:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method updateDetectionStatus()V
    .registers 1

    .line 489
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateStopped;->releaseDetectorIfNeeded()V

    .line 490
    invoke-super {p0}, Lcom/sonyericsson/android/camera/controller/GestureShutter$State;->updateDetectionStatus()V

    return-void
.end method
