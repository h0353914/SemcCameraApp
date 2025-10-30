.class Lcom/sonyericsson/android/camera/view/ViewFinderImpl$26$1;
.super Ljava/lang/Object;
.source "ViewFinderImpl.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController$TransitionAnimationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/ViewFinderImpl$26;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$26;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl$26;)V
    .registers 2

    .line 3798
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$26$1;->this$1:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$26;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationFinished()V
    .registers 3

    .line 3801
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$26$1;->this$1:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$26;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$26;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->resetAnimationProperty()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$6800(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)V

    .line 3802
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$26$1;->this$1:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$26;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$26;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    const/4 v1, 0x0

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->setIsSwitchingAnimationProgress(Z)V
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$5400(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Z)V

    .line 3803
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$26$1;->this$1:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$26;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$26;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$26$1;->this$1:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$26;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$26;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->shouldShowFrontAngleSwitchButton()Z
    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$7100(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Z

    move-result v1

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->setFrontAngleSwitchButtonVisibility(Z)V
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$7200(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Z)V

    .line 3804
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$26$1;->this$1:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$26;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$26;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$26$1;->this$1:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$26;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$26;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->canShowZoomSwitchButton()Z
    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$7300(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Z

    move-result p0

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->setZoomSwitchButtonVisibility(Z)V
    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$7400(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Z)V

    return-void
.end method
