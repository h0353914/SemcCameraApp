.class Lcom/sonyericsson/android/camera/device/CameraActionSound$SoundPoolLoadCompleteListener;
.super Ljava/lang/Object;
.source "CameraActionSound.java"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraActionSound;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SoundPoolLoadCompleteListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraActionSound;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/device/CameraActionSound;)V
    .registers 2

    .line 450
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraActionSound$SoundPoolLoadCompleteListener;->this$0:Lcom/sonyericsson/android/camera/device/CameraActionSound;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/CameraActionSound;Lcom/sonyericsson/android/camera/device/CameraActionSound$SoundPoolLoadCompleteListener-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraActionSound$SoundPoolLoadCompleteListener;-><init>(Lcom/sonyericsson/android/camera/device/CameraActionSound;)V

    return-void
.end method


# virtual methods
.method public onLoadComplete(Landroid/media/SoundPool;II)V
    .registers 9

    .line 454
    invoke-static {}, Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;->values()[Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_36

    aget-object v2, p1, v1

    .line 457
    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraActionSound$SoundPoolLoadCompleteListener;->this$0:Lcom/sonyericsson/android/camera/device/CameraActionSound;

    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/CameraActionSound;->-$$Nest$fgetmSoundMapLock(Lcom/sonyericsson/android/camera/device/CameraActionSound;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 458
    :try_start_11
    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/CameraActionSound$SoundPoolLoadCompleteListener;->this$0:Lcom/sonyericsson/android/camera/device/CameraActionSound;

    invoke-static {v4}, Lcom/sonyericsson/android/camera/device/CameraActionSound;->-$$Nest$fgetmSoundMap(Lcom/sonyericsson/android/camera/device/CameraActionSound;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound;

    .line 459
    monitor-exit v3
    :try_end_1e
    .catchall {:try_start_11 .. :try_end_1e} :catchall_33

    if-eqz v2, :cond_30

    .line 460
    invoke-static {v2}, Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound;->-$$Nest$mgetSampleId(Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound;)I

    move-result v3

    if-eq v3, p2, :cond_27

    goto :goto_30

    :cond_27
    if-nez p3, :cond_2d

    .line 466
    invoke-static {v2}, Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound;->-$$Nest$monLoadSuccess(Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound;)V

    goto :goto_30

    .line 468
    :cond_2d
    invoke-static {v2}, Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound;->-$$Nest$minitializeState(Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound;)V

    :cond_30
    :goto_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :catchall_33
    move-exception p0

    .line 459
    :try_start_34
    monitor-exit v3
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw p0

    :cond_36
    return-void
.end method
