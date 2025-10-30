.class Lcom/sonyericsson/android/camera/CameraImageActivity$1;
.super Ljava/lang/Object;
.source "CameraImageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/CameraImageActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/CameraImageActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/CameraImageActivity;)V
    .registers 2

    .line 99
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraImageActivity$1;->this$0:Lcom/sonyericsson/android/camera/CameraImageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 102
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraImageActivity$1;->this$0:Lcom/sonyericsson/android/camera/CameraImageActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraImageActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_d

    .line 103
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraImageActivity$1;->this$0:Lcom/sonyericsson/android/camera/CameraImageActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraImageActivity;->finish()V

    :cond_d
    return-void
.end method
