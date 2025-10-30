.class public Lcom/sonyericsson/android/camera/view/ViewFinderImpl$OnScreenImageQualityControlButtonListener;
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
    name = "OnScreenImageQualityControlButtonListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)V
    .registers 2

    .line 7078
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$OnScreenImageQualityControlButtonListener;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

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

    .line 7085
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$OnScreenImageQualityControlButtonListener;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getBaseLayout()Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$700(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getImageQualityControl()Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_26

    .line 7086
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$OnScreenImageQualityControlButtonListener;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$OnScreenImageQualityControlButtonListener;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getBaseLayout()Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;
    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$700(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getImageQualityControl()Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;

    move-result-object p0

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->disableOverlayControl(Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;)V
    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$7100(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;)V

    goto :goto_35

    .line 7088
    :cond_26
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$OnScreenImageQualityControlButtonListener;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$OnScreenImageQualityControlButtonListener;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getBaseLayout()Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;
    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$700(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getImageQualityControl()Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;

    move-result-object p0

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->enableOverlayControl(Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;)V
    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$7200(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;)V

    :goto_35
    return-void
.end method
