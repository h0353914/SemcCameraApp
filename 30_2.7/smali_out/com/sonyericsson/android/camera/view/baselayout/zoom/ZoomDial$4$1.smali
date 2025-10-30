.class Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$4$1;
.super Ljava/lang/Object;
.source "ZoomDial.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$4;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$4;

.field final synthetic val$moveStep:F


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$4;F)V
    .registers 3

    .line 296
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$4$1;->this$1:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$4;

    iput p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$4$1;->val$moveStep:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 299
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$4$1;->this$1:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$4;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$4;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomUiEventListener:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomUiEventListener;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$1000(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomUiEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$4$1;->this$1:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$4;

    iget v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$4$1;->val$moveStep:F

    # invokes: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$4;->calcMovedRatio(F)F
    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$4;->access$1300(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$4;F)F

    move-result v1

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomUiEventListener;->onZoomChanged(F)V

    return-void
.end method
