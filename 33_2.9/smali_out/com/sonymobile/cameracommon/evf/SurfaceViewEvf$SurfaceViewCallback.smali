.class Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf$SurfaceViewCallback;
.super Ljava/lang/Object;
.source "SurfaceViewEvf.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SurfaceViewCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf;


# direct methods
.method private constructor <init>(Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf;)V
    .registers 2

    .line 155
    iput-object p1, p0, Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf$SurfaceViewCallback;->this$0:Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf;Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf$1;)V
    .registers 3

    .line 155
    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf$SurfaceViewCallback;-><init>(Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf;)V

    return-void
.end method

.method private verifySurfaceSize(II)Z
    .registers 7

    .line 208
    iget-object v0, p0, Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf$SurfaceViewCallback;->this$0:Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf;

    # getter for: Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf;->mSurfaceView:Landroid/view/SurfaceView;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf;->access$400(Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf;)Landroid/view/SurfaceView;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_13

    const-string p0, "Surface view has been destroyed"

    .line 209
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    return v1

    .line 213
    :cond_13
    iget-object v0, p0, Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf$SurfaceViewCallback;->this$0:Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf;

    # getter for: Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf;->mSurfaceView:Landroid/view/SurfaceView;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf;->access$400(Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf;)Landroid/view/SurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    const-string v2, " actual = "

    const/4 v3, 0x1

    if-eq p1, v0, :cond_4d

    new-array p0, v3, [Ljava/lang/String;

    .line 215
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Surface width is not matched: expected = "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v1

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    return v1

    .line 220
    :cond_4d
    iget-object p0, p0, Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf$SurfaceViewCallback;->this$0:Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf;

    # getter for: Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf;->mSurfaceView:Landroid/view/SurfaceView;
    invoke-static {p0}, Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf;->access$400(Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf;)Landroid/view/SurfaceView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    if-eq p2, p0, :cond_84

    new-array p1, v3, [Ljava/lang/String;

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Surface height is not matched: expected = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, v1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    return v1

    :cond_84
    return v3
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 7

    .line 180
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_30

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    const/4 p2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "surfaceChanged("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") : E"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, p2

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 184
    :cond_30
    invoke-direct {p0, p3, p4}, Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf$SurfaceViewCallback;->verifySurfaceSize(II)Z

    move-result p1

    if-nez p1, :cond_37

    return-void

    .line 188
    :cond_37
    iget-object p1, p0, Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf$SurfaceViewCallback;->this$0:Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf;

    new-instance p2, Landroid/util/Size;

    invoke-direct {p2, p3, p4}, Landroid/util/Size;-><init>(II)V

    # setter for: Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf;->mSurfaceSize:Landroid/util/Size;
    invoke-static {p1, p2}, Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf;->access$202(Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf;Landroid/util/Size;)Landroid/util/Size;

    .line 189
    iget-object p1, p0, Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf$SurfaceViewCallback;->this$0:Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf;

    # getter for: Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf;->mLifeCycleCallback:Lcom/sonymobile/cameracommon/evf/Evf$LifeCycleCallback;
    invoke-static {p1}, Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf;->access$300(Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf;)Lcom/sonymobile/cameracommon/evf/Evf$LifeCycleCallback;

    move-result-object p1

    iget-object p0, p0, Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf$SurfaceViewCallback;->this$0:Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf;

    invoke-interface {p1, p0, p3, p4}, Lcom/sonymobile/cameracommon/evf/Evf$LifeCycleCallback;->onEvfSizeChanged(Lcom/sonymobile/cameracommon/evf/Evf;II)V

    .line 191
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_59

    const-string p0, "surfaceChanged() : X"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_59
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 7

    .line 158
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object p1

    .line 160
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_3c

    new-array v0, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "surfaceCreated("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 161
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 162
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") : E"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 160
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 164
    :cond_3c
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf$SurfaceViewCallback;->verifySurfaceSize(II)Z

    move-result v0

    if-nez v0, :cond_4b

    return-void

    .line 167
    :cond_4b
    iget-object v0, p0, Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf$SurfaceViewCallback;->this$0:Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf;

    # invokes: Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf;->setSurfaceAvailability(Z)V
    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf;->access$100(Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf;Z)V

    .line 169
    iget-object v0, p0, Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf$SurfaceViewCallback;->this$0:Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf;

    new-instance v1, Landroid/util/Size;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/util/Size;-><init>(II)V

    # setter for: Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf;->mSurfaceSize:Landroid/util/Size;
    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf;->access$202(Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf;Landroid/util/Size;)Landroid/util/Size;

    .line 170
    iget-object v0, p0, Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf$SurfaceViewCallback;->this$0:Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf;

    # getter for: Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf;->mLifeCycleCallback:Lcom/sonymobile/cameracommon/evf/Evf$LifeCycleCallback;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf;->access$300(Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf;)Lcom/sonymobile/cameracommon/evf/Evf$LifeCycleCallback;

    move-result-object v0

    iget-object p0, p0, Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf$SurfaceViewCallback;->this$0:Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf;

    .line 172
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 173
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    .line 170
    invoke-interface {v0, p0, v1, p1}, Lcom/sonymobile/cameracommon/evf/Evf$LifeCycleCallback;->onEvfInitialized(Lcom/sonymobile/cameracommon/evf/Evf;II)V

    .line 175
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_82

    const-string p0, "surfaceCreated() : X"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_82
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 3

    .line 196
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_d

    const-string p1, "surfaceDestroyed() : E"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 198
    :cond_d
    iget-object p1, p0, Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf$SurfaceViewCallback;->this$0:Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf;

    const/4 v0, 0x0

    # invokes: Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf;->setSurfaceAvailability(Z)V
    invoke-static {p1, v0}, Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf;->access$100(Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf;Z)V

    .line 200
    iget-object p1, p0, Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf$SurfaceViewCallback;->this$0:Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf;

    const/4 v0, 0x0

    # setter for: Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf;->mSurfaceSize:Landroid/util/Size;
    invoke-static {p1, v0}, Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf;->access$202(Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf;Landroid/util/Size;)Landroid/util/Size;

    .line 201
    iget-object p1, p0, Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf$SurfaceViewCallback;->this$0:Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf;

    # getter for: Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf;->mLifeCycleCallback:Lcom/sonymobile/cameracommon/evf/Evf$LifeCycleCallback;
    invoke-static {p1}, Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf;->access$300(Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf;)Lcom/sonymobile/cameracommon/evf/Evf$LifeCycleCallback;

    move-result-object p1

    iget-object p0, p0, Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf$SurfaceViewCallback;->this$0:Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf;

    invoke-interface {p1, p0}, Lcom/sonymobile/cameracommon/evf/Evf$LifeCycleCallback;->onEvfFinalized(Lcom/sonymobile/cameracommon/evf/Evf;)V

    .line 203
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_31

    const-string p0, "surfaceDestroyed() : X"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_31
    return-void
.end method
