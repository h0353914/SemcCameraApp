.class Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl$1;
.super Ljava/lang/Object;
.source "UserSettingsLoaderImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->notifyEntryReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;)V
    .registers 2

    .line 362
    iput-object p1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl$1;->this$0:Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 365
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl$1;->this$0:Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;

    # getter for: Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->mEntryLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->access$1000(Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 366
    :try_start_7
    iget-object p0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl$1;->this$0:Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;

    # getter for: Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->mEntryLock:Ljava/lang/Object;
    invoke-static {p0}, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->access$1000(Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 367
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw p0
.end method
