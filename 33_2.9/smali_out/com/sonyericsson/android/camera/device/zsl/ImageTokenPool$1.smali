.class Lcom/sonyericsson/android/camera/device/zsl/ImageTokenPool$1;
.super Ljava/lang/Object;
.source "ImageTokenPool.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/device/zsl/ImageTokenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/zsl/ImageTokenPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/zsl/ImageTokenPool;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/device/zsl/ImageTokenPool;)V
    .registers 2

    .line 44
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/zsl/ImageTokenPool$1;->this$0:Lcom/sonyericsson/android/camera/device/zsl/ImageTokenPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTokenRecycled(Lcom/sonyericsson/android/camera/device/zsl/ImageToken;)V
    .registers 6

    .line 47
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_20

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTokenRecycled() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 48
    :cond_20
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/zsl/ImageTokenPool$1;->this$0:Lcom/sonyericsson/android/camera/device/zsl/ImageTokenPool;

    # getter for: Lcom/sonyericsson/android/camera/device/zsl/ImageTokenPool;->mImageTokenDeque:Ljava/util/Deque;
    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/zsl/ImageTokenPool;->access$000(Lcom/sonyericsson/android/camera/device/zsl/ImageTokenPool;)Ljava/util/Deque;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    return-void
.end method
