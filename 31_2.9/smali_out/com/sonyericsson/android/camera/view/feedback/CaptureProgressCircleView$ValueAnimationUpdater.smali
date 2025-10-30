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
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressCircleView;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressCircleView;)V
    .registers 2

    .line 125
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressCircleView$ValueAnimationUpdater;->this$0:Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressCircleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressCircleView;Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressCircleView$1;)V
    .registers 3

    .line 125
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressCircleView$ValueAnimationUpdater;-><init>(Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressCircleView;)V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 128
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressCircleView$ValueAnimationUpdater;->this$0:Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressCircleView;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/feedback/CaptureProgressCircleView;->invalidate()V

    return-void
.end method
