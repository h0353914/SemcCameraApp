.class Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl$ViewFactory;
.super Ljava/lang/Object;
.source "ManualIqControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewFactory"
.end annotation


# static fields
.field private static final VIEW_TAG:Ljava/lang/String; = "ManualIqControl-view"


# instance fields
.field private final mContainerRect:Landroid/graphics/Rect;

.field private final mParent:Landroid/view/ViewGroup;

.field private final mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;Landroid/view/ViewGroup;Landroid/graphics/Rect;Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;)V
    .registers 5

    .line 96
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl$ViewFactory;->this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl$ViewFactory;->mParent:Landroid/view/ViewGroup;

    .line 98
    iput-object p3, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl$ViewFactory;->mContainerRect:Landroid/graphics/Rect;

    .line 99
    iput-object p4, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl$ViewFactory;->mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    return-void
.end method


# virtual methods
.method public create()Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;
    .registers 4

    .line 103
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl$ViewFactory;->mParent:Landroid/view/ViewGroup;

    const-string v1, "ManualIqControl-view"

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 105
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl$ViewFactory;->this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;

    # getter for: Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->mIsSliderPressed:Z
    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->access$200(Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 106
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl$ViewFactory;->this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;

    # getter for: Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->mOnSlideListener:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/OnSlideListener;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->access$300(Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;)Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/OnSlideListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/OnSlideListener;->onSlideStopped()V

    .line 108
    :cond_1b
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl$ViewFactory;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 111
    :cond_20
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl$ViewFactory;->mParent:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl$ViewFactory;->mContainerRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl$ViewFactory;->mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;->create(Landroid/view/ViewGroup;Landroid/graphics/Rect;Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;)Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;

    move-result-object v0

    const-string v1, "ManualIqControl-view"

    .line 113
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;->setTag(Ljava/lang/Object;)V

    .line 114
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl$ViewFactory;->this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl$ViewFactory;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    # invokes: Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->createAdapter(Landroid/content/Context;)Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;
    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->access$400(Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;Landroid/content/Context;)Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;->setAdapter(Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;)V

    .line 115
    new-instance v1, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl$ViewFactory$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl$ViewFactory$1;-><init>(Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl$ViewFactory;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;->setOnDialogTabSelectListener(Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView$OnDialogTabSelectListener;)V

    return-object v0
.end method
