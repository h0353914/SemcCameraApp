.class Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector$TouchStopDetectorTimerTask;
.super Ljava/util/TimerTask;
.source "TouchMoveAndStopDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TouchStopDetectorTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;)V
    .registers 2

    .line 152
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector$TouchStopDetectorTimerTask;->this$0:Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector$1;)V
    .registers 3

    .line 152
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector$TouchStopDetectorTimerTask;-><init>(Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 156
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector$TouchStopDetectorTimerTask;->this$0:Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;

    # getter for: Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mCurrentTouchPos:Landroid/graphics/Point;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->access$100(Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector$TouchStopDetectorTimerTask;->this$0:Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;

    # getter for: Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mLatestCheckedPos:Landroid/graphics/Point;
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->access$200(Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    .line 157
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector$TouchStopDetectorTimerTask;->this$0:Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;

    # getter for: Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mCurrentTouchPos:Landroid/graphics/Point;
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->access$100(Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector$TouchStopDetectorTimerTask;->this$0:Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;

    # getter for: Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mLatestCheckedPos:Landroid/graphics/Point;
    invoke-static {v2}, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->access$200(Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;)Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v2

    .line 158
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 159
    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3, v2}, Landroid/graphics/PointF;-><init>(Landroid/graphics/Point;)V

    new-instance v4, Landroid/graphics/PointF;

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector$TouchStopDetectorTimerTask;->this$0:Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;

    .line 160
    # getter for: Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mLatestCheckedTrackVec:Landroid/graphics/Point;
    invoke-static {v5}, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->access$300(Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;)Landroid/graphics/Point;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/PointF;-><init>(Landroid/graphics/Point;)V

    .line 159
    invoke-static {v3, v4}, Lcom/sonyericsson/cameracommon/interaction/VectorCalculator;->getRadianFrom2Vector(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v3

    .line 163
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector$TouchStopDetectorTimerTask;->this$0:Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;

    # getter for: Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mCurrentTouchPos:Landroid/graphics/Point;
    invoke-static {v4}, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->access$100(Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;)Landroid/graphics/Point;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->x:I

    iget-object v6, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector$TouchStopDetectorTimerTask;->this$0:Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;

    # getter for: Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mCurrentTouchPos:Landroid/graphics/Point;
    invoke-static {v6}, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->access$100(Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;)Landroid/graphics/Point;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Point;->y:I

    # invokes: Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->updateLastCheckedParameters(IILandroid/graphics/Point;)V
    invoke-static {v4, v5, v6, v2}, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->access$400(Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;IILandroid/graphics/Point;)V

    .line 166
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector$TouchStopDetectorTimerTask;->this$0:Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;

    # getter for: Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mIsFingerAlreadyMoved:Z
    invoke-static {v2}, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->access$500(Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;)Z

    move-result v2

    if-nez v2, :cond_57

    return-void

    :cond_57
    if-nez v0, :cond_61

    if-nez v1, :cond_61

    .line 176
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector$TouchStopDetectorTimerTask;->this$0:Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;

    # invokes: Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->onTouchStopDetected()V
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->access$600(Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;)V

    return-void

    :cond_61
    mul-int/2addr v0, v0

    mul-int/2addr v1, v1

    add-int/2addr v0, v1

    .line 181
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector$TouchStopDetectorTimerTask;->this$0:Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;

    # getter for: Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mTouchSlop:I
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->access$700(Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;)I

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector$TouchStopDetectorTimerTask;->this$0:Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;

    # getter for: Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mTouchSlop:I
    invoke-static {v2}, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->access$700(Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;)I

    move-result v2

    mul-int/2addr v1, v2

    if-ge v0, v1, :cond_84

    .line 184
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3f860a92

    cmpg-float v0, v0, v1

    if-gez v0, :cond_7f

    return-void

    .line 191
    :cond_7f
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector$TouchStopDetectorTimerTask;->this$0:Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;

    # invokes: Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->onTouchStopDetected()V
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->access$600(Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;)V

    :cond_84
    return-void
.end method
