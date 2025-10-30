.class Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Up;
.super Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$State;
.source "SideTouchGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Up"
.end annotation


# instance fields
.field private mUpTime:J

.field final synthetic this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;


# direct methods
.method private constructor <init>(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;)V
    .registers 3

    .line 594
    iput-object p1, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Up;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$State;-><init>(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$1;)V
    .registers 3

    .line 594
    invoke-direct {p0, p1}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Up;-><init>(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;)V

    return-void
.end method

.method private isConsideredDoubleTap(Landroid/view/MotionEvent;)Z
    .registers 8

    .line 633
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Up;->mUpTime:J

    sub-long/2addr v0, v2

    .line 635
    iget-object v2, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Up;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    iget-object v2, v2, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->this$0:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;

    # getter for: Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->mDoubleTapInfo:Lcom/sonymobile/sidetouchgesturedetector/DoubleTapInfo;
    invoke-static {v2}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->access$3300(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;)Lcom/sonymobile/sidetouchgesturedetector/DoubleTapInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Up;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    iget-object v3, v3, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->this$0:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;

    # getter for: Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->mIsLearningMode:Z
    invoke-static {v3}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->access$3200(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/sidetouchgesturedetector/DoubleTapInfo;->isLearningMode(Z)Lcom/sonymobile/sidetouchgesturedetector/DoubleTapInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Up;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    # getter for: Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->mDownEvent:Landroid/view/MotionEvent;
    invoke-static {v3}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->access$1800(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;)Landroid/view/MotionEvent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/sidetouchgesturedetector/DoubleTapInfo;->firstDown(Landroid/view/MotionEvent;)Lcom/sonymobile/sidetouchgesturedetector/DoubleTapInfo;

    move-result-object v2

    iget-wide v3, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Up;->mUpTime:J

    .line 636
    invoke-virtual {v2, v3, v4}, Lcom/sonymobile/sidetouchgesturedetector/DoubleTapInfo;->firstUpTime(J)Lcom/sonymobile/sidetouchgesturedetector/DoubleTapInfo;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sonymobile/sidetouchgesturedetector/DoubleTapInfo;->secondDown(Landroid/view/MotionEvent;)Lcom/sonymobile/sidetouchgesturedetector/DoubleTapInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Up;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    iget-object v3, v3, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->this$0:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;

    # getter for: Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->mDoubleTapMinTime:I
    invoke-static {v3}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->access$3100(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/sidetouchgesturedetector/DoubleTapInfo;->doubleTapMinTime(I)Lcom/sonymobile/sidetouchgesturedetector/DoubleTapInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Up;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    iget-object v3, v3, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->this$0:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;

    .line 637
    # getter for: Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->mDoubleTapTimeout:I
    invoke-static {v3}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->access$2100(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/sidetouchgesturedetector/DoubleTapInfo;->doubleTapTimeout(I)Lcom/sonymobile/sidetouchgesturedetector/DoubleTapInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Up;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    iget-object v3, v3, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->this$0:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;

    .line 638
    # getter for: Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->mDoubleTapTimeoutReal:I
    invoke-static {v3}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->access$3000(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/sidetouchgesturedetector/DoubleTapInfo;->doubleTapTimeoutReal(I)Lcom/sonymobile/sidetouchgesturedetector/DoubleTapInfo;

    .line 640
    iget-object v2, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Up;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    iget-object v2, v2, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->this$0:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;

    # getter for: Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->mDoubleTapTimeout:I
    invoke-static {v2}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->access$2100(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;)I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-gtz v2, :cond_d9

    iget-object v2, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Up;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    iget-object v2, v2, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->this$0:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;

    # getter for: Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->mDoubleTapMinTime:I
    invoke-static {v2}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->access$3100(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;)I

    move-result v2

    int-to-long v4, v2

    cmp-long v0, v0, v4

    if-gez v0, :cond_6e

    goto :goto_d9

    .line 645
    :cond_6e
    iget-object v0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Up;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    # getter for: Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->mDownEvent:Landroid/view/MotionEvent;
    invoke-static {v0}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->access$1800(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;)Landroid/view/MotionEvent;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Up;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    # getter for: Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->mDownEvent:Landroid/view/MotionEvent;
    invoke-static {v1}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->access$1800(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    float-to-int v0, v0

    .line 646
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    .line 647
    iget-object v1, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Up;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    # getter for: Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->mDownEvent:Landroid/view/MotionEvent;
    invoke-static {v1}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->access$1800(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;)Landroid/view/MotionEvent;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Up;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    # getter for: Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->mDownEvent:Landroid/view/MotionEvent;
    invoke-static {v2}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->access$1800(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    .line 648
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    float-to-int p1, p1

    sub-int/2addr v1, p1

    .line 649
    iget-object p1, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Up;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    iget-object p1, p1, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->this$0:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;

    # getter for: Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->mDoubleTapSlopSquare:I
    invoke-static {p1}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->access$3400(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;)I

    move-result p1

    mul-int/2addr v0, v0

    mul-int/2addr v1, v1

    add-int/2addr v0, v1

    if-ge v0, p1, :cond_ba

    const/4 v3, 0x1

    .line 652
    :cond_ba
    iget-object v0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Up;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    iget-object v0, v0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->this$0:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;

    # getter for: Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->mDoubleTapInfo:Lcom/sonymobile/sidetouchgesturedetector/DoubleTapInfo;
    invoke-static {v0}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->access$3300(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;)Lcom/sonymobile/sidetouchgesturedetector/DoubleTapInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonymobile/sidetouchgesturedetector/DoubleTapInfo;->doubleTapSlopSquare(I)Lcom/sonymobile/sidetouchgesturedetector/DoubleTapInfo;

    .line 653
    iget-object p1, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Up;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    iget-object p1, p1, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->this$0:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;

    # getter for: Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->mDoubleTapListener:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$OnDoubleTapListener;
    invoke-static {p1}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->access$2000(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;)Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$OnDoubleTapListener;

    move-result-object p1

    iget-object p0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Up;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    iget-object p0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->this$0:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;

    # getter for: Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->mDoubleTapInfo:Lcom/sonymobile/sidetouchgesturedetector/DoubleTapInfo;
    invoke-static {p0}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->access$3300(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;)Lcom/sonymobile/sidetouchgesturedetector/DoubleTapInfo;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$OnDoubleTapListener;->onDoubleTapForLearning(Lcom/sonymobile/sidetouchgesturedetector/DoubleTapInfo;)V

    return v3

    .line 641
    :cond_d9
    :goto_d9
    iget-object p1, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Up;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    iget-object p1, p1, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->this$0:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;

    # getter for: Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->mDoubleTapListener:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$OnDoubleTapListener;
    invoke-static {p1}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->access$2000(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;)Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$OnDoubleTapListener;

    move-result-object p1

    iget-object p0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Up;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    iget-object p0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->this$0:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;

    # getter for: Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->mDoubleTapInfo:Lcom/sonymobile/sidetouchgesturedetector/DoubleTapInfo;
    invoke-static {p0}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->access$3300(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;)Lcom/sonymobile/sidetouchgesturedetector/DoubleTapInfo;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$OnDoubleTapListener;->onDoubleTapForLearning(Lcom/sonymobile/sidetouchgesturedetector/DoubleTapInfo;)V

    return v3
.end method


# virtual methods
.method enter(Landroid/view/MotionEvent;)V
    .registers 4

    .line 600
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Up;->mUpTime:J

    .line 601
    iget-object p0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Up;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    # invokes: Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->moveToWaitingList()V
    invoke-static {p0}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->access$2800(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;)V

    return-void
.end method

.method exit()V
    .registers 1

    .line 606
    iget-object p0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Up;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    # invokes: Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->removeFromWaitingList()V
    invoke-static {p0}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->access$2900(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;)V

    return-void
.end method

.method processDown(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 611
    invoke-direct {p0, p1}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Up;->isConsideredDoubleTap(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 614
    :cond_8
    iget-object v0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Up;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    const/4 v1, 0x2

    # invokes: Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->removeMessages(I)V
    invoke-static {v0, v1}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->access$2700(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;I)V

    .line 615
    iget-object v0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Up;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    iget-object v1, v0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->doubleTapDownState:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$State;

    # invokes: Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->setState(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$State;Landroid/view/MotionEvent;)V
    invoke-static {v0, v1, p1}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->access$1300(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$State;Landroid/view/MotionEvent;)V

    .line 616
    iget-object v0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Up;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    iget-object v0, v0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->this$0:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;

    # getter for: Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->mDoubleTapListener:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$OnDoubleTapListener;
    invoke-static {v0}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->access$2000(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;)Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$OnDoubleTapListener;

    move-result-object v0

    iget-object p0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Up;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    # getter for: Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->mGestureId:I
    invoke-static {p0}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->access$1500(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;)I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$OnDoubleTapListener;->onDoubleTap(ILandroid/view/MotionEvent;)V

    const/4 p0, 0x1

    return p0
.end method

.method processMessage(I)V
    .registers 4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    goto :goto_2d

    .line 624
    :cond_4
    iget-object p1, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Up;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    iget-object p1, p1, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->this$0:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;

    # getter for: Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->mDoubleTapListener:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$OnDoubleTapListener;
    invoke-static {p1}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->access$2000(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;)Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$OnDoubleTapListener;

    move-result-object p1

    if-eqz p1, :cond_25

    .line 625
    iget-object p1, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Up;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    iget-object p1, p1, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->this$0:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;

    # getter for: Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->mDoubleTapListener:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$OnDoubleTapListener;
    invoke-static {p1}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->access$2000(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;)Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$OnDoubleTapListener;

    move-result-object p1

    iget-object v0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Up;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    # getter for: Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->mGestureId:I
    invoke-static {v0}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->access$1500(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;)I

    move-result v0

    iget-object v1, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Up;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    # getter for: Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->mDownEvent:Landroid/view/MotionEvent;
    invoke-static {v1}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->access$1800(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$OnDoubleTapListener;->onSingleTapConfirmed(ILandroid/view/MotionEvent;)V

    .line 627
    :cond_25
    iget-object p0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$Up;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    iget-object p1, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->initialState:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$State;

    const/4 v0, 0x0

    # invokes: Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->setState(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$State;Landroid/view/MotionEvent;)V
    invoke-static {p0, p1, v0}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->access$1300(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture$State;Landroid/view/MotionEvent;)V

    :goto_2d
    return-void
.end method
