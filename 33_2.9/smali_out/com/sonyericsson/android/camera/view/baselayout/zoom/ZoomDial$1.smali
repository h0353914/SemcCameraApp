.class Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$1;
.super Ljava/lang/Object;
.source "ZoomDial.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)V
    .registers 2

    .line 193
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$1;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 196
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 197
    sget-boolean v2, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_44

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    .line 198
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mDialbarAreaHideEvent#run mIsDrugging:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$1;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    .line 199
    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsZooming:Z
    invoke-static {v5}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$000(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "current:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " HideStart:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$1;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    .line 200
    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mDialbarHideStart:J
    invoke-static {v5}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$100(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 198
    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 202
    :cond_44
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$1;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsZooming:Z
    invoke-static {v2}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$000(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Z

    move-result v2

    if-nez v2, :cond_6d

    .line 203
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$1;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mDialbarHideStart:J
    invoke-static {v2}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$100(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)J

    move-result-wide v4

    sub-long/2addr v0, v4

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$1;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mDelayZoomDialHideMillis:I
    invoke-static {v2}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$200(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)I

    move-result v2

    int-to-long v4, v2

    cmp-long v0, v0, v4

    if-ltz v0, :cond_6d

    .line 204
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$1;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    # invokes: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->hideZoomBarArea()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$300(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)V

    .line 205
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$1;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    # invokes: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->circleSwitch(Z)V
    invoke-static {v0, v3}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$400(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;Z)V

    .line 206
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$1;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->zoomEnd()V

    :cond_6d
    return-void
.end method
