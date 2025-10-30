.class Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$DrawFrameTask;
.super Ljava/lang/Object;
.source "TextureContextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DrawFrameTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;)V
    .registers 2

    .line 124
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$DrawFrameTask;->this$0:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$1;)V
    .registers 3

    .line 124
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$DrawFrameTask;-><init>(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 128
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$DrawFrameTask;->this$0:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;

    # getter for: Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;->mCanvas:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$AnimationCanvas;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;->access$300(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;)Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$AnimationCanvas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$AnimationCanvas;->lock()Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    .line 132
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$DrawFrameTask;->this$0:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;

    # getter for: Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;->mCanvas:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$AnimationCanvas;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;->access$300(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;)Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$AnimationCanvas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$AnimationCanvas;->clear()V

    .line 134
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$DrawFrameTask;->this$0:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;

    # getter for: Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;->mAnimation:Lcom/sonyericsson/cameracommon/capturefeedback/animation/CaptureFeedbackAnimation;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;->access$400(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;)Lcom/sonyericsson/cameracommon/capturefeedback/animation/CaptureFeedbackAnimation;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_34

    .line 138
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$DrawFrameTask;->this$0:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;

    .line 139
    # getter for: Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;->mCanvas:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$AnimationCanvas;
    invoke-static {v2}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;->access$300(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;)Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$AnimationCanvas;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$DrawFrameTask;->this$0:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;

    .line 140
    # getter for: Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;->mAnimationElapsedTimeCount:Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;
    invoke-static {v3}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;->access$500(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;)Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;->elapsedTimeMillis()J

    move-result-wide v3

    .line 138
    invoke-interface {v0, v2, v3, v4}, Lcom/sonyericsson/cameracommon/capturefeedback/animation/CaptureFeedbackAnimation;->draw(Lcom/sonyericsson/cameracommon/capturefeedback/animation/CaptureFeedbackAnimationCanvas;J)Z

    move-result v0

    xor-int/2addr v1, v0

    .line 145
    :cond_34
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$DrawFrameTask;->this$0:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;

    # getter for: Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;->mCanvas:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$AnimationCanvas;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;->access$300(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;)Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$AnimationCanvas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$AnimationCanvas;->unlock()V

    if-eqz v1, :cond_51

    .line 148
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$DrawFrameTask;->this$0:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;

    # getter for: Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;->mAnimationElapsedTimeCount:Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;->access$500(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;)Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;->stop()V

    .line 149
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$DrawFrameTask;->this$0:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;

    # getter for: Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;->mSetInvisibleTask:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$SetInvisibleTask;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;->access$600(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;)Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$SetInvisibleTask;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;->post(Ljava/lang/Runnable;)Z

    :cond_51
    return-void
.end method
