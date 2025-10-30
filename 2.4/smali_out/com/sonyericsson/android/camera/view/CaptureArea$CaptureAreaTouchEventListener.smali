.class Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaTouchEventListener;
.super Ljava/lang/Object;
.source "CaptureArea.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/CaptureArea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CaptureAreaTouchEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/CaptureArea;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/CaptureArea;)V
    .registers 2

    .line 79
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaTouchEventListener;->this$0:Lcom/sonyericsson/android/camera/view/CaptureArea;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    monitor-enter p0

    .line 84
    :try_start_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaTouchEventListener;->this$0:Lcom/sonyericsson/android/camera/view/CaptureArea;

    # getter for: Lcom/sonyericsson/android/camera/view/CaptureArea;->mUserInteractionEngine:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/CaptureArea;->access$000(Lcom/sonyericsson/android/camera/view/CaptureArea;)Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_31

    .line 87
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_1a

    const-string p1, "touch event is out of target area"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 90
    :cond_1a
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaTouchEventListener;->this$0:Lcom/sonyericsson/android/camera/view/CaptureArea;

    const/4 p2, 0x0

    # setter for: Lcom/sonyericsson/android/camera/view/CaptureArea;->mIsTouched:Z
    invoke-static {p1, p2}, Lcom/sonyericsson/android/camera/view/CaptureArea;->access$102(Lcom/sonyericsson/android/camera/view/CaptureArea;Z)Z

    .line 92
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaTouchEventListener;->this$0:Lcom/sonyericsson/android/camera/view/CaptureArea;

    # getter for: Lcom/sonyericsson/android/camera/view/CaptureArea;->mListener:Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaStateListener;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/CaptureArea;->access$200(Lcom/sonyericsson/android/camera/view/CaptureArea;)Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaStateListener;

    move-result-object p1

    if-eqz p1, :cond_31

    .line 93
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaTouchEventListener;->this$0:Lcom/sonyericsson/android/camera/view/CaptureArea;

    # getter for: Lcom/sonyericsson/android/camera/view/CaptureArea;->mListener:Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaStateListener;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/CaptureArea;->access$200(Lcom/sonyericsson/android/camera/view/CaptureArea;)Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaStateListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaStateListener;->onCaptureAreaCanceled()V
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_34

    :cond_31
    const/4 p1, 0x1

    .line 97
    monitor-exit p0

    return p1

    :catchall_34
    move-exception p1

    monitor-exit p0

    throw p1
.end method
