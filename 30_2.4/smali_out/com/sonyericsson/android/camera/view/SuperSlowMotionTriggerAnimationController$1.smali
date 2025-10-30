.class Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController$1;
.super Ljava/lang/Object;
.source "SuperSlowMotionTriggerAnimationController.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;->prepareViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;)V
    .registers 2

    .line 74
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController$1;->this$0:Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 3

    .line 83
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController$1;->this$0:Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;

    # getter for: Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;->mListener:Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController$OnAnimationEndListener;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;->access$000(Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;)Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController$OnAnimationEndListener;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 84
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController$1;->this$0:Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;

    # getter for: Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;->mListener:Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController$OnAnimationEndListener;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;->access$000(Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;)Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController$OnAnimationEndListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController$OnAnimationEndListener;->onAnimationEnd()V

    .line 86
    :cond_11
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController$1;->this$0:Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;

    # getter for: Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;->mBackground:Landroid/view/View;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;->access$100(Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 87
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController$1;->this$0:Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;

    # getter for: Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;->mLineLandscape:Landroid/view/View;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;->access$200(Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 88
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController$1;->this$0:Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;

    # getter for: Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;->mLinePortrait:Landroid/view/View;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;->access$300(Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

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
