.class Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressCircleView$ValueAnimationUpdater;
.super Ljava/lang/Object;
.source "CaptureProgressCircleView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressCircleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ValueAnimationUpdater"
.end annotation


# instance fields
.field private mLastUpdateTimeInSeconds:J

.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressCircleView;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressCircleView;)V
    .registers 4

    .line 127
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressCircleView$ValueAnimationUpdater;->this$0:Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressCircleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 128
    iput-wide v0, p0, Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressCircleView$ValueAnimationUpdater;->mLastUpdateTimeInSeconds:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressCircleView;Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressCircleView$1;)V
    .registers 3

    .line 127
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressCircleView$ValueAnimationUpdater;-><init>(Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressCircleView;)V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 6

    .line 132
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressCircleView$ValueAnimationUpdater;->this$0:Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressCircleView;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressCircleView;->invalidate()V

    .line 133
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressCircleView$ValueAnimationUpdater;->this$0:Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressCircleView;

    # getter for: Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressCircleView;->mAnimationProgressListener:Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressCircleView$AnimationProgressListener;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressCircleView;->access$100(Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressCircleView;)Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressCircleView$AnimationProgressListener;

    move-result-object v0

    if-eqz v0, :cond_27

    if-eqz p1, :cond_27

    .line 134
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 135
    iget-wide v2, p0, Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressCircleView$ValueAnimationUpdater;->mLastUpdateTimeInSeconds:J

    cmp-long p1, v0, v2

    if-lez p1, :cond_27

    .line 136
    iput-wide v0, p0, Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressCircleView$ValueAnimationUpdater;->mLastUpdateTimeInSeconds:J

    .line 137
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressCircleView$ValueAnimationUpdater;->this$0:Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressCircleView;

    # getter for: Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressCircleView;->mAnimationProgressListener:Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressCircleView$AnimationProgressListener;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressCircleView;->access$100(Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressCircleView;)Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressCircleView$AnimationProgressListener;

    move-result-object p1

    invoke-interface {p1, v0, v1}, Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressCircleView$AnimationProgressListener;->onProgressUpdate(J)V

    :cond_27
    return-void
.end method
