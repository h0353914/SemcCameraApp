.class Lcom/sonyericsson/android/camera/CameraApplication$CreateUserSettingsLoaderThread;
.super Ljava/lang/Object;
.source "CameraApplication.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/CameraApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CreateUserSettingsLoaderThread"
.end annotation


# instance fields
.field private mService:Ljava/util/concurrent/ExecutorService;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/CameraApplication;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/CameraApplication;Ljava/util/concurrent/ExecutorService;)V
    .registers 3

    .line 365
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraApplication$CreateUserSettingsLoaderThread;->this$0:Lcom/sonyericsson/android/camera/CameraApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 366
    iput-object p2, p0, Lcom/sonyericsson/android/camera/CameraApplication$CreateUserSettingsLoaderThread;->mService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic access$800(Lcom/sonyericsson/android/camera/CameraApplication$CreateUserSettingsLoaderThread;)Ljava/util/concurrent/ExecutorService;
    .registers 1

    .line 362
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraApplication$CreateUserSettingsLoaderThread;->mService:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 362
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraApplication$CreateUserSettingsLoaderThread;->call()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/String;
    .registers 4

    .line 371
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraApplication$CreateUserSettingsLoaderThread;->this$0:Lcom/sonyericsson/android/camera/CameraApplication;

    new-instance v1, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;

    # getter for: Lcom/sonyericsson/android/camera/CameraApplication;->sContext:Landroid/content/Context;
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->access$700()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/sonyericsson/android/camera/CameraApplication;->mUserSettingsLoader:Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/CameraApplication;->access$002(Lcom/sonyericsson/android/camera/CameraApplication;Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;)Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;

    .line 372
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sonyericsson/android/camera/CameraApplication$CreateUserSettingsLoaderThread$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/CameraApplication$CreateUserSettingsLoaderThread$1;-><init>(Lcom/sonyericsson/android/camera/CameraApplication$CreateUserSettingsLoaderThread;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 377
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 378
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraApplication$CreateUserSettingsLoaderThread;->this$0:Lcom/sonyericsson/android/camera/CameraApplication;

    const/4 v1, 0x0

    # setter for: Lcom/sonyericsson/android/camera/CameraApplication;->mCreateUserSettingsLoaderTask:Ljava/util/concurrent/Future;
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/CameraApplication;->access$902(Lcom/sonyericsson/android/camera/CameraApplication;Ljava/util/concurrent/Future;)Ljava/util/concurrent/Future;

    return-object v1
.end method
