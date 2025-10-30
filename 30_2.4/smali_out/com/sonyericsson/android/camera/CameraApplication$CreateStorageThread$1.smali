.class Lcom/sonyericsson/android/camera/CameraApplication$CreateStorageThread$1;
.super Ljava/lang/Object;
.source "CameraApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/CameraApplication$CreateStorageThread;->call()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/camera/CameraApplication$CreateStorageThread;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/CameraApplication$CreateStorageThread;)V
    .registers 2

    .line 351
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraApplication$CreateStorageThread$1;->this$1:Lcom/sonyericsson/android/camera/CameraApplication$CreateStorageThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 354
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraApplication$CreateStorageThread$1;->this$1:Lcom/sonyericsson/android/camera/CameraApplication$CreateStorageThread;

    # getter for: Lcom/sonyericsson/android/camera/CameraApplication$CreateStorageThread;->mService:Ljava/util/concurrent/ExecutorService;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/CameraApplication$CreateStorageThread;->access$500(Lcom/sonyericsson/android/camera/CameraApplication$CreateStorageThread;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method
