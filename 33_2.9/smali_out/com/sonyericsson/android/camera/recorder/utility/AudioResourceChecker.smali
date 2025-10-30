.class public Lcom/sonyericsson/android/camera/recorder/utility/AudioResourceChecker;
.super Ljava/lang/Object;
.source "AudioResourceChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/recorder/utility/AudioResourceChecker$AudioResourceCheckerListener;
    }
.end annotation


# static fields
.field private static final MICROPHONE_ACTIVE_KEY:Ljava/lang/String; = "is_microphone_active"

.field private static final MICROPHONE_ACTIVE_VALUE:Ljava/lang/String; = "is_microphone_active=1"

.field public static final TAG:Ljava/lang/String; = "AudioResourceChecker"

.field private static final THREAD_NAME:Ljava/lang/String; = "AudioResChecker"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkAudioResource(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/recorder/utility/AudioResourceChecker$AudioResourceCheckerListener;)V
    .registers 4

    const-string v0, "AudioResChecker"

    .line 113
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/ThreadUtil;->buildExecutor(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 114
    new-instance v1, Lcom/sonyericsson/android/camera/recorder/utility/AudioResourceChecker$1;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/android/camera/recorder/utility/AudioResourceChecker$1;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/recorder/utility/AudioResourceChecker$AudioResourceCheckerListener;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 129
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method public static isAudioResourceAvailable(Lcom/sonyericsson/android/camera/CameraActivity;)Z
    .registers 1

    .line 47
    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/utility/AudioResourceChecker;->isAudioResourceAvailableCheckImmediately(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_b

    .line 52
    invoke-static {}, Lcom/sonyericsson/android/camera/recorder/utility/AudioResourceChecker;->isAudioResourceAvailableCheckWithAudioRecord()Z

    move-result p0

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public static declared-synchronized isAudioResourceAvailableCheckImmediately(Landroid/content/Context;)Z
    .registers 3

    const-class v0, Lcom/sonyericsson/android/camera/recorder/utility/AudioResourceChecker;

    monitor-enter v0

    :try_start_3
    const-string v1, "audio"

    .line 143
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    const-string v1, "is_microphone_active"

    .line 144
    invoke-virtual {p0, v1}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "is_microphone_active=1"

    .line 147
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_29

    .line 149
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_26

    const-string p0, "AudioResChecker : Mic unavailable."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_39

    :cond_26
    const/4 p0, 0x0

    .line 150
    monitor-exit v0

    return p0

    .line 154
    :cond_29
    :try_start_29
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_36

    const-string p0, "AudioResChecker : Mic maybe available."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V
    :try_end_36
    .catchall {:try_start_29 .. :try_end_36} :catchall_39

    :cond_36
    const/4 p0, 0x1

    .line 155
    monitor-exit v0

    return p0

    :catchall_39
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized isAudioResourceAvailableCheckWithAudioRecord()Z
    .registers 13

    const-class v0, Lcom/sonyericsson/android/camera/recorder/utility/AudioResourceChecker;

    monitor-enter v0

    const/4 v1, 0x0

    .line 69
    :try_start_4
    sget-boolean v2, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v2, :cond_11

    const-string v2, "isAudioResourceAvailableCheckWithAudioRecord() called "

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_92

    :cond_11
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 74
    :try_start_13
    new-instance v10, Landroid/media/AudioRecord;

    const/4 v5, 0x5

    const v6, 0xbb80

    const/16 v7, 0xc

    const/4 v8, 0x2

    const/16 v4, 0x5a00

    const v9, 0xbb80

    const/16 v11, 0xc

    const/4 v12, 0x2

    .line 75
    invoke-static {v9, v11, v12}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v9

    invoke-static {v4, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Landroid/media/AudioRecord;-><init>(IIIII)V
    :try_end_30
    .catch Ljava/lang/IllegalArgumentException; {:try_start_13 .. :try_end_30} :catch_5a
    .catch Ljava/lang/IllegalStateException; {:try_start_13 .. :try_end_30} :catch_5a
    .catchall {:try_start_13 .. :try_end_30} :catchall_56

    .line 78
    :try_start_30
    invoke-virtual {v10}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v1

    if-ne v1, v3, :cond_4b

    .line 80
    invoke-virtual {v10}, Landroid/media/AudioRecord;->startRecording()V

    .line 83
    invoke-virtual {v10}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v1
    :try_end_3d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_30 .. :try_end_3d} :catch_52
    .catch Ljava/lang/IllegalStateException; {:try_start_30 .. :try_end_3d} :catch_52
    .catchall {:try_start_30 .. :try_end_3d} :catchall_50

    if-eq v1, v3, :cond_41

    move v1, v3

    goto :goto_42

    :cond_41
    move v1, v2

    .line 92
    :goto_42
    :try_start_42
    invoke-virtual {v10}, Landroid/media/AudioRecord;->stop()V
    :try_end_45
    .catch Ljava/lang/IllegalArgumentException; {:try_start_42 .. :try_end_45} :catch_46
    .catch Ljava/lang/IllegalStateException; {:try_start_42 .. :try_end_45} :catch_46
    .catchall {:try_start_42 .. :try_end_45} :catchall_50

    goto :goto_4c

    :catch_46
    move-exception v4

    move-object v5, v4

    move v4, v1

    move-object v1, v10

    goto :goto_5d

    :cond_4b
    move v1, v2

    .line 101
    :goto_4c
    :try_start_4c
    invoke-virtual {v10}, Landroid/media/AudioRecord;->release()V
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_92

    goto :goto_6c

    :catchall_50
    move-exception v1

    goto :goto_8c

    :catch_52
    move-exception v4

    move-object v5, v4

    move-object v1, v10

    goto :goto_5c

    :catchall_56
    move-exception v2

    move-object v10, v1

    move-object v1, v2

    goto :goto_8c

    :catch_5a
    move-exception v4

    move-object v5, v4

    :goto_5c
    move v4, v2

    .line 95
    :goto_5d
    :try_start_5d
    sget-boolean v6, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v6, :cond_66

    const-string v6, "isAudioResourceAvailableCheckWithAudioRecord() exception occurred: "

    invoke-static {v6, v5}, Lcom/sonyericsson/android/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_66
    .catchall {:try_start_5d .. :try_end_66} :catchall_56

    :cond_66
    if-eqz v1, :cond_6b

    .line 101
    :try_start_68
    invoke-virtual {v1}, Landroid/media/AudioRecord;->release()V

    :cond_6b
    move v1, v4

    .line 106
    :goto_6c
    sget-boolean v4, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v4, :cond_8a

    new-array v3, v3, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isAudioResourceAvailableCheckWithAudioRecord() is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V
    :try_end_8a
    .catchall {:try_start_68 .. :try_end_8a} :catchall_92

    .line 108
    :cond_8a
    monitor-exit v0

    return v1

    :goto_8c
    if-eqz v10, :cond_91

    .line 101
    :try_start_8e
    invoke-virtual {v10}, Landroid/media/AudioRecord;->release()V

    .line 104
    :cond_91
    throw v1
    :try_end_92
    .catchall {:try_start_8e .. :try_end_92} :catchall_92

    :catchall_92
    move-exception v1

    monitor-exit v0

    throw v1
.end method
