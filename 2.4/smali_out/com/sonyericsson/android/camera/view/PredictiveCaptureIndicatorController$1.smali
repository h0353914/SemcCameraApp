.class Lcom/sonyericsson/android/camera/view/PredictiveCaptureIndicatorController$1;
.super Ljava/lang/Object;
.source "PredictiveCaptureIndicatorController.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/PredictiveCaptureIndicatorController;->initPredictiveCaptureIndicator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/PredictiveCaptureIndicatorController;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/PredictiveCaptureIndicatorController;)V
    .registers 2

    .line 148
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/PredictiveCaptureIndicatorController$1;->this$0:Lcom/sonyericsson/android/camera/view/PredictiveCaptureIndicatorController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 3

    .line 156
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PredictiveCaptureIndicatorController$1;->this$0:Lcom/sonyericsson/android/camera/view/PredictiveCaptureIndicatorController;

    const/4 v0, 0x0

    # setter for: Lcom/sonyericsson/android/camera/view/PredictiveCaptureIndicatorController;->mIsAnimationRunning:Z
    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/view/PredictiveCaptureIndicatorController;->access$002(Lcom/sonyericsson/android/camera/view/PredictiveCaptureIndicatorController;Z)Z

    .line 157
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PredictiveCaptureIndicatorController$1;->this$0:Lcom/sonyericsson/android/camera/view/PredictiveCaptureIndicatorController;

    # invokes: Lcom/sonyericsson/android/camera/view/PredictiveCaptureIndicatorController;->update()V
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/PredictiveCaptureIndicatorController;->access$100(Lcom/sonyericsson/android/camera/view/PredictiveCaptureIndicatorController;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method
