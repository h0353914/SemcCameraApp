.class public Lcom/sonyericsson/android/camera/device/CameraActionSound;
.super Ljava/lang/Object;
.source "CameraActionSound.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/device/CameraActionSound$SoundPoolLoadCompleteListener;,
        Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound;,
        Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;
    }
.end annotation


# static fields
.field private static final NUM_SOUND_STREAMS:I = 0x1

.field private static final RELEASE_MEDIA_ACTION_SOUND_DELAY_MILLIS:I = 0xfa0

.field private static final SOUND_POOL_INVALID_SAMPLE_ID:I = 0x0

.field private static final SOUND_POOL_LOAD_PRIORITY:I = 0x1

.field private static final THREAD_NAME:Ljava/lang/String; = "CAS#Main"

.field private static final THREAD_NAME_ONETIME:Ljava/lang/String; = "CAS#Onetime"


# instance fields
.field private final mApplicationContext:Landroid/content/Context;

.field private mIsReleased:Z

.field private mSoundExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private final mSoundMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;",
            "Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound;",
            ">;"
        }
    .end annotation
.end field

.field private final mSoundMapLock:Ljava/lang/Object;

.field private mSoundPool:Landroid/media/SoundPool;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraActionSound;->mSoundMap:Ljava/util/Map;

    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraActionSound;->mSoundMapLock:Ljava/lang/Object;

    .line 81
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraActionSound;->mApplicationContext:Landroid/content/Context;

    const/4 p1, 0x0

    .line 82
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/device/CameraActionSound;->mIsReleased:Z

    .line 84
    invoke-static {}, Lcom/sonyericsson/android/camera/device/CameraActionSound;->createSoundPool()Landroid/media/SoundPool;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraActionSound;->mSoundPool:Landroid/media/SoundPool;

    .line 85
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraActionSound;->mSoundPool:Landroid/media/SoundPool;

    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraActionSound$SoundPoolLoadCompleteListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/device/CameraActionSound$SoundPoolLoadCompleteListener;-><init>(Lcom/sonyericsson/android/camera/device/CameraActionSound;Lcom/sonyericsson/android/camera/device/CameraActionSound$1;)V

    invoke-virtual {p1, v0}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    const-string p1, "CAS#Main"

    const/16 v0, 0xa

    .line 87
    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/util/ThreadUtil;->buildScheduledExecutor(Ljava/lang/String;I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraActionSound;->mSoundExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 89
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraActionSound;->initializeMaps()V

    return-void
.end method

.method static synthetic access$400(Landroid/media/SoundPool;I)V
    .registers 2

    .line 48
    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraActionSound;->playSoundBySampleId(Landroid/media/SoundPool;I)V

    return-void
.end method

.method static synthetic access$700(Lcom/sonyericsson/android/camera/device/CameraActionSound;)Landroid/media/SoundPool;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraActionSound;->mSoundPool:Landroid/media/SoundPool;

    return-object p0
.end method

.method static synthetic access$702(Lcom/sonyericsson/android/camera/device/CameraActionSound;Landroid/media/SoundPool;)Landroid/media/SoundPool;
    .registers 2

    .line 48
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraActionSound;->mSoundPool:Landroid/media/SoundPool;

    return-object p1
.end method

.method static synthetic access$800(Lcom/sonyericsson/android/camera/device/CameraActionSound;)Ljava/lang/Object;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraActionSound;->mSoundMapLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$900(Lcom/sonyericsson/android/camera/device/CameraActionSound;)Ljava/util/Map;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraActionSound;->mSoundMap:Ljava/util/Map;

    return-object p0
.end method

.method private static createSoundPool()Landroid/media/SoundPool;
    .registers 4

    .line 98
    new-instance v0, Landroid/media/SoundPool$Builder;

    invoke-direct {v0}, Landroid/media/SoundPool$Builder;-><init>()V

    const/4 v1, 0x1

    .line 99
    invoke-virtual {v0, v1}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object v0

    new-instance v2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v3, 0xd

    .line 101
    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    .line 102
    invoke-virtual {v2, v1}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    const/4 v2, 0x4

    .line 103
    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    .line 104
    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    .line 100
    invoke-virtual {v0, v1}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object v0

    .line 105
    invoke-virtual {v0}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v0

    return-object v0
.end method

.method private initializeMaps()V
    .registers 11

    .line 112
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraActionSound;->mSoundMapLock:Ljava/lang/Object;

    monitor-enter v0

    .line 113
    :try_start_3
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraActionSound;->mSoundMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 115
    invoke-static {}, Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;->values()[Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v2, :cond_24

    aget-object v4, v1, v3

    .line 116
    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraActionSound;->mSoundMap:Ljava/util/Map;

    new-instance v6, Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound;

    iget-object v7, p0, Lcom/sonyericsson/android/camera/device/CameraActionSound;->mApplicationContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/sonyericsson/android/camera/device/CameraActionSound;->mSoundPool:Landroid/media/SoundPool;

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v4, v9}, Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound;-><init>(Landroid/content/Context;Landroid/media/SoundPool;Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;Lcom/sonyericsson/android/camera/device/CameraActionSound$1;)V

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 118
    :cond_24
    monitor-exit v0

    return-void

    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw v1
.end method

.method private static playSoundBySampleId(Landroid/media/SoundPool;I)V
    .registers 9
    .param p0    # Landroid/media/SoundPool;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p0

    move v1, p1

    .line 198
    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    return-void
.end method

.method private static playSoundByTemporarySoundPool(Landroid/content/Context;Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;)V
    .registers 5
    .param p1    # Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 211
    invoke-static {}, Lcom/sonyericsson/android/camera/device/CameraActionSound;->createSoundPool()Landroid/media/SoundPool;

    move-result-object v0

    .line 212
    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraActionSound$3;

    invoke-direct {v1}, Lcom/sonyericsson/android/camera/device/CameraActionSound$3;-><init>()V

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 224
    # invokes: Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;->getSoundFile()Ljava/lang/String;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;->access$500(Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    .line 227
    invoke-virtual {v0, v1, v2}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    goto :goto_1e

    .line 230
    :cond_17
    # getter for: Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;->resourceId:I
    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;->access$600(Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;)I

    move-result p1

    invoke-virtual {v0, p0, p1, v2}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    :goto_1e
    const-string p0, "CAS#Onetime"

    .line 235
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/ThreadUtil;->buildScheduledExecutor(Ljava/lang/String;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p0

    .line 236
    new-instance p1, Lcom/sonyericsson/android/camera/device/CameraActionSound$4;

    invoke-direct {p1, v0}, Lcom/sonyericsson/android/camera/device/CameraActionSound$4;-><init>(Landroid/media/SoundPool;)V

    const-wide/16 v0, 0xfa0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, p1, v0, v1, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method private releaseDelay(Ljava/util/concurrent/ScheduledExecutorService;)V
    .registers 6

    .line 266
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraActionSound$5;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/device/CameraActionSound$5;-><init>(Lcom/sonyericsson/android/camera/device/CameraActionSound;)V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xfa0

    invoke-interface {p1, v0, v2, v3, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method


# virtual methods
.method public load(Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;)V
    .registers 6
    .param p1    # Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 126
    monitor-enter p0

    .line 127
    :try_start_1
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_29

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invoked isReleased:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/sonyericsson/android/camera/device/CameraActionSound;->mIsReleased:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 129
    :cond_29
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraActionSound;->mIsReleased:Z

    if-eqz v0, :cond_2f

    .line 130
    monitor-exit p0

    return-void

    .line 134
    :cond_2f
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraActionSound;->mSoundMapLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_32
    .catchall {:try_start_1 .. :try_end_32} :catchall_4a

    .line 135
    :try_start_32
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraActionSound;->mSoundMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound;

    .line 136
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_32 .. :try_end_3b} :catchall_47

    .line 137
    :try_start_3b
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraActionSound;->mSoundExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraActionSound$1;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/android/camera/device/CameraActionSound$1;-><init>(Lcom/sonyericsson/android/camera/device/CameraActionSound;Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 145
    monitor-exit p0
    :try_end_46
    .catchall {:try_start_3b .. :try_end_46} :catchall_4a

    return-void

    :catchall_47
    move-exception p1

    .line 136
    :try_start_48
    monitor-exit v0
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    :try_start_49
    throw p1

    :catchall_4a
    move-exception p1

    .line 145
    monitor-exit p0
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_4a

    throw p1
.end method

.method public play(Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;Z)V
    .registers 7
    .param p1    # Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 160
    monitor-enter p0

    .line 161
    :try_start_1
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_31

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invoked isReleased:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/sonyericsson/android/camera/device/CameraActionSound;->mIsReleased:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " sync:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 164
    :cond_31
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraActionSound;->mIsReleased:Z

    if-eqz v0, :cond_3c

    .line 165
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraActionSound;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraActionSound;->playSoundByTemporarySoundPool(Landroid/content/Context;Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;)V

    const/4 p1, 0x0

    goto :goto_53

    .line 168
    :cond_3c
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraActionSound;->mSoundMapLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3f
    .catchall {:try_start_1 .. :try_end_3f} :catchall_66

    .line 169
    :try_start_3f
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraActionSound;->mSoundMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound;

    .line 170
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_3f .. :try_end_48} :catchall_63

    .line 171
    :try_start_48
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraActionSound;->mSoundExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraActionSound$2;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/android/camera/device/CameraActionSound$2;-><init>(Lcom/sonyericsson/android/camera/device/CameraActionSound;Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 180
    :goto_53
    monitor-exit p0
    :try_end_54
    .catchall {:try_start_48 .. :try_end_54} :catchall_66

    if-eqz p2, :cond_62

    if-eqz p1, :cond_62

    .line 183
    :try_start_58
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_5b
    .catch Ljava/lang/InterruptedException; {:try_start_58 .. :try_end_5b} :catch_5c
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_58 .. :try_end_5b} :catch_5c

    goto :goto_62

    :catch_5c
    move-exception p1

    const-string p2, "play(): Failed to wait for completion."

    .line 185
    invoke-static {p2, p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_62
    :goto_62
    return-void

    :catchall_63
    move-exception p1

    .line 170
    :try_start_64
    monitor-exit v0
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_63

    :try_start_65
    throw p1

    :catchall_66
    move-exception p1

    .line 180
    monitor-exit p0
    :try_end_68
    .catchall {:try_start_65 .. :try_end_68} :catchall_66

    throw p1
.end method

.method public release()V
    .registers 6

    .line 254
    monitor-enter p0

    const/4 v0, 0x1

    .line 255
    :try_start_2
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invoked isReleased:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/sonyericsson/android/camera/device/CameraActionSound;->mIsReleased:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 256
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraActionSound;->mIsReleased:Z

    if-nez v1, :cond_30

    .line 257
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraActionSound;->mIsReleased:Z

    .line 258
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraActionSound;->mSoundExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraActionSound;->releaseDelay(Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 259
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraActionSound;->mSoundExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    const/4 v0, 0x0

    .line 260
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraActionSound;->mSoundExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 262
    :cond_30
    monitor-exit p0

    return-void

    :catchall_32
    move-exception v0

    monitor-exit p0
    :try_end_34
    .catchall {:try_start_2 .. :try_end_34} :catchall_32

    throw v0
.end method
