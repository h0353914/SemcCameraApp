.class Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$DetectorTask$1;
.super Ljava/lang/Object;
.source "DetectorBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$DetectorTask;->onExecuted(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$DetectorTask;

.field final synthetic val$results:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$DetectorTask;Ljava/util/List;)V
    .registers 3

    .line 117
    iput-object p1, p0, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$DetectorTask$1;->this$1:Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$DetectorTask;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$DetectorTask$1;->val$results:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 120
    iget-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$DetectorTask$1;->this$1:Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$DetectorTask;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$DetectorTask$1;->val$results:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$DetectorTask;->postExecuteDetection(Ljava/util/List;)V

    return-void
.end method
