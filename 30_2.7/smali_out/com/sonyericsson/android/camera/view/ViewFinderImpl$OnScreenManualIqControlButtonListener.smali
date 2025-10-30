.class public Lcom/sonyericsson/android/camera/view/ViewFinderImpl$OnScreenManualIqControlButtonListener;
.super Ljava/lang/Object;
.source "ViewFinderImpl.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnScreenManualIqControlButtonListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)V
    .registers 2

    .line 7702
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$OnScreenManualIqControlButtonListener;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;Landroid/view/MotionEvent;)V
    .registers 3

    return-void
.end method

.method public onDown(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;Landroid/view/MotionEvent;)V
    .registers 3

    return-void
.end method

.method public onLongPress(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;)V
    .registers 2

    return-void
.end method

.method public onMove(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;Landroid/view/MotionEvent;)V
    .registers 3

    return-void
.end method

.method public onUp(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;Landroid/view/MotionEvent;)V
    .registers 3

    .line 7709
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$OnScreenManualIqControlButtonListener;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getBaseLayout()Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$900(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getManualIqControl()Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_2d

    .line 7710
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$OnScreenManualIqControlButtonListener;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getBaseLayout()Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$900(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getManualIqControl()Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;

    move-result-object p2

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->disableOverlayControl(Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;)V
    invoke-static {p1, p2}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$9000(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;)V

    .line 7711
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$OnScreenManualIqControlButtonListener;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->canShowZoomSwitchButton()Z
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$6800(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Z

    move-result p2

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->setZoomSwitchButtonVisibility(Z)V
    invoke-static {p1, p2}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$6900(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Z)V

    goto :goto_40

    .line 7713
    :cond_2d
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$OnScreenManualIqControlButtonListener;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getBaseLayout()Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$900(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getManualIqControl()Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;

    move-result-object p2

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->enableOverlayControl(Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;)V
    invoke-static {p1, p2}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$9100(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;)V

    .line 7714
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$OnScreenManualIqControlButtonListener;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    const/4 p2, 0x0

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->setZoomSwitchButtonVisibility(Z)V
    invoke-static {p1, p2}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$6900(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Z)V

    :goto_40
    return-void
.end method
