.class Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$3;
.super Ljava/lang/Object;
.source "TutorialController.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->getFadeOutAnimator(J)Landroid/animation/ObjectAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;)V
    .registers 2

    .line 654
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$3;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 663
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$3;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    # invokes: Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->release()V
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->access$600(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;)V

    .line 664
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$3;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    # invokes: Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->hide()V
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->access$700(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;)V

    .line 667
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$3;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    # getter for: Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mContainer:Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->access$200(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView;->setAlpha(F)V

    const-string p1, "close() : Tutorial is closed."

    .line 668
    # invokes: Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->trace(Ljava/lang/String;)V
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->access$400(Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method
