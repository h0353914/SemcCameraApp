.class Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$2;
.super Ljava/lang/Object;
.source "TutorialController.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->getSlideInAnimator(J)Landroid/animation/ObjectAnimator;
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

    .line 632
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$2;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    const-string p1, "open()  : Tutorial is opened."

    .line 643
    # invokes: Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->trace(Ljava/lang/String;)V
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->access$400(Ljava/lang/String;)V

    .line 646
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$2;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    # invokes: Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->updateUiOrientation()V
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->access$500(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    .line 635
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$2;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    # getter for: Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mContainer:Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->access$200(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_16

    .line 636
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$2;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    # getter for: Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->mContainer:Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->access$200(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView;->setVisibility(I)V

    .line 638
    :cond_16
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$2;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    const/4 v0, 0x1

    # invokes: Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->setNavigationBarThemeLight(Z)V
    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->access$300(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;Z)V

    return-void
.end method
