.class Lcom/sonyericsson/android/camera/CameraApplication$CreateUserSettingsLoaderThread$1;
.super Ljava/lang/Object;
.source "CameraApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/CameraApplication$CreateUserSettingsLoaderThread;->call()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/camera/CameraApplication$CreateUserSettingsLoaderThread;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/CameraApplication$CreateUserSettingsLoaderThread;)V
    .registers 2

    .line 372
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraApplication$CreateUserSettingsLoaderThread$1;->this$1:Lcom/sonyericsson/android/camera/CameraApplication$CreateUserSettingsLoaderThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 375
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraApplication$CreateUserSettingsLoaderThread$1;->this$1:Lcom/sonyericsson/android/camera/CameraApplication$CreateUserSettingsLoaderThread;

    # getter for: Lcom/sonyericsson/android/camera/CameraApplication$CreateUserSettingsLoaderThread;->mService:Ljava/util/concurrent/ExecutorService;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/CameraApplication$CreateUserSettingsLoaderThread;->access$800(Lcom/sonyericsson/android/camera/CameraApplication$CreateUserSettingsLoaderThread;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method
