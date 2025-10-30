.class Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$1;
.super Ljava/lang/Object;
.source "ViewFinderGestureDetector.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;)V
    .registers 2

    .line 311
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$1;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 7

    const/4 v0, 0x0

    if-eqz p1, :cond_69

    if-nez p2, :cond_6

    goto :goto_69

    .line 361
    :cond_6
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$1;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    # invokes: Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->computeDraggingDirection(FF)Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;
    invoke-static {v1, p3, p4}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->access$200(Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;FF)Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;

    move-result-object p3

    .line 362
    iget-object p4, p0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$1;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    # invokes: Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->isDraggingAccepted(Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;)Z
    invoke-static {p4, p3}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->access$600(Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;)Z

    move-result p4

    if-eqz p4, :cond_68

    .line 364
    new-instance p4, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-direct {p4, v0, p1}, Landroid/graphics/Point;-><init>(II)V

    .line 365
    new-instance p1, Landroid/graphics/Point;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p1, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 367
    sget-object v0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$2;->$SwitchMap$com$sonyericsson$android$camera$view$baselayout$ViewFinderGestureDetector$Direction:[I

    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;->ordinal()I

    move-result p3

    aget p3, v0, p3

    const/4 v0, 0x1

    if-eq p3, v0, :cond_3e

    goto :goto_4b

    .line 369
    :cond_3e
    iget-object p3, p0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$1;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->mModeSwitchDragFinishDistanceForFling:I
    invoke-static {p3}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->access$1100(Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;)I

    move-result p3

    .line 370
    # invokes: Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->computeDistance(Landroid/graphics/Point;Landroid/graphics/Point;)I
    invoke-static {p1, p4}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->access$1200(Landroid/graphics/Point;Landroid/graphics/Point;)I

    move-result p1

    if-le p3, p1, :cond_4b

    goto :goto_67

    .line 380
    :cond_4b
    :goto_4b
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$1;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    # invokes: Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->isDragging()Z
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->access$100(Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;)Z

    move-result p1

    if-nez p1, :cond_5c

    .line 381
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$1;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->mTriggerEvent:Landroid/view/MotionEvent;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->access$700(Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;)Landroid/view/MotionEvent;

    move-result-object p3

    # invokes: Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->notifyOnStartDragging(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V
    invoke-static {p1, p3, p2}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->access$900(Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    .line 383
    :cond_5c
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$1;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->mTriggerEvent:Landroid/view/MotionEvent;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->access$700(Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;)Landroid/view/MotionEvent;

    move-result-object p3

    sget-object p4, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$FinishReason;->FLING:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$FinishReason;

    # invokes: Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->notifyOnFinishDragging(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$FinishReason;)V
    invoke-static {p1, p3, p2, p4}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->access$1300(Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;Landroid/view/MotionEvent;Landroid/view/MotionEvent;Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$FinishReason;)V

    :goto_67
    return v0

    :cond_68
    return v0

    :cond_69
    :goto_69
    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 2

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 6

    .line 328
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$1;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    # invokes: Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->isDragging()Z
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->access$100(Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_3d

    .line 329
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$1;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    # invokes: Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->computeDraggingDirection(FF)Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;
    invoke-static {p1, p3, p4}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->access$200(Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;FF)Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;

    move-result-object p1

    .line 330
    iget-object p3, p0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$1;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    # invokes: Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->isStartDraggingAccepted(Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;Landroid/view/MotionEvent;)Z
    invoke-static {p3, p1, p2}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->access$300(Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;Landroid/view/MotionEvent;)Z

    move-result p3

    if-eqz p3, :cond_53

    .line 331
    iget-object p3, p0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$1;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    # invokes: Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->resetDragStartEvent(Landroid/view/MotionEvent;)V
    invoke-static {p3, p2}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->access$400(Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;Landroid/view/MotionEvent;)V

    .line 332
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$1;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    # setter for: Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->mDragDirection:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;
    invoke-static {p2, p1}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->access$502(Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;)Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;

    .line 333
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$1;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->mDragDirection:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->access$500(Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;)Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;

    move-result-object p2

    # invokes: Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->isDraggingAccepted(Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;)Z
    invoke-static {p1, p2}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->access$600(Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;)Z

    move-result p1

    if-eqz p1, :cond_53

    .line 335
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$1;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->mTriggerEvent:Landroid/view/MotionEvent;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->access$700(Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;)Landroid/view/MotionEvent;

    move-result-object p2

    iget-object p3, p0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$1;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->mDragStartEvent:Landroid/view/MotionEvent;
    invoke-static {p3}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->access$800(Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;)Landroid/view/MotionEvent;

    move-result-object p3

    # invokes: Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->notifyOnStartDragging(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V
    invoke-static {p1, p2, p3}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->access$900(Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    return v0

    .line 340
    :cond_3d
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$1;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->mDragDirection:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->access$500(Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;)Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;

    move-result-object p3

    # invokes: Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->isDraggingAccepted(Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;)Z
    invoke-static {p1, p3}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->access$600(Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;)Z

    move-result p1

    if-eqz p1, :cond_53

    .line 342
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$1;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->mDragStartEvent:Landroid/view/MotionEvent;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->access$800(Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;)Landroid/view/MotionEvent;

    move-result-object p3

    # invokes: Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->notifyOnDragging(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V
    invoke-static {p1, p3, p2}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->access$1000(Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    return v0

    :cond_53
    const/4 p1, 0x0

    return p1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .registers 2

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method
