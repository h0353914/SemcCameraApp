.class Lcom/sonyericsson/android/camera/device/zsl/ReprocessDataFactory$FactoryHandler;
.super Landroid/os/Handler;
.source "ReprocessDataFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/zsl/ReprocessDataFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FactoryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/zsl/ReprocessDataFactory;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/device/zsl/ReprocessDataFactory;Landroid/os/Looper;)V
    .registers 3

    .line 54
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/zsl/ReprocessDataFactory$FactoryHandler;->this$0:Lcom/sonyericsson/android/camera/device/zsl/ReprocessDataFactory;

    .line 55
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    .line 60
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 61
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_25

    new-array v0, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage() msg.what : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 62
    :cond_25
    iget v0, p1, Landroid/os/Message;->what:I

    if-eq v0, v1, :cond_2a

    goto :goto_33

    .line 64
    :cond_2a
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/zsl/ReprocessDataFactory$FactoryHandler;->this$0:Lcom/sonyericsson/android/camera/device/zsl/ReprocessDataFactory;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sonyericsson/android/camera/device/zsl/ReprocessData;

    # invokes: Lcom/sonyericsson/android/camera/device/zsl/ReprocessDataFactory;->process(Lcom/sonyericsson/android/camera/device/zsl/ReprocessData;)V
    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/device/zsl/ReprocessDataFactory;->access$000(Lcom/sonyericsson/android/camera/device/zsl/ReprocessDataFactory;Lcom/sonyericsson/android/camera/device/zsl/ReprocessData;)V

    :goto_33
    return-void
.end method
