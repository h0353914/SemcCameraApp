.class public Lcom/sonyericsson/android/camera/setting/LastSettings;
.super Ljava/lang/Object;
.source "LastSettings.java"


# static fields
.field private static final LAUNCH_AND_RECORDING:Ljava/lang/String; = "LAUNCH_AND_RECORDING"


# instance fields
.field private final mAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    const-string v1, "com.sonyericsson.android.camera.shared_preferences"

    invoke-direct {v0, p1, v1}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/setting/LastSettings;->mAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    return-void
.end method

.method private getLastPreviewSizeKey(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Ljava/lang/String;
    .registers 4

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "last-preview-size-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getRect(Ljava/lang/String;)Landroid/graphics/Rect;
    .registers 4

    if-eqz p1, :cond_2c

    const-string v0, "x"

    .line 119
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 120
    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2c

    .line 121
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v1, 0x0

    .line 122
    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    const/4 v1, 0x1

    .line 123
    aget-object p1, p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_2d

    :cond_2c
    const/4 v0, 0x0

    :goto_2d
    return-object v0
.end method


# virtual methods
.method public clear()V
    .registers 8

    .line 148
    iget-object v0, p0, Lcom/sonyericsson/android/camera/setting/LastSettings;->mAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    monitor-enter v0

    .line 149
    :try_start_3
    iget-object v1, p0, Lcom/sonyericsson/android/camera/setting/LastSettings;->mAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    const-string v2, "key-last-fast-capture-setting"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->remove(Ljava/lang/String;Z)V

    .line 150
    iget-object v1, p0, Lcom/sonyericsson/android/camera/setting/LastSettings;->mAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    const-string v2, "KEY_LAST_MODE"

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->remove(Ljava/lang/String;Z)V

    .line 151
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v1

    array-length v2, v1

    move v4, v3

    :goto_18
    if-ge v4, v2, :cond_2d

    aget-object v5, v1, v4

    .line 152
    sget-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->UNKNOWN:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne v5, v6, :cond_21

    goto :goto_2a

    .line 155
    :cond_21
    iget-object v6, p0, Lcom/sonyericsson/android/camera/setting/LastSettings;->mAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    invoke-direct {p0, v5}, Lcom/sonyericsson/android/camera/setting/LastSettings;->getLastPreviewSizeKey(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5, v3}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->remove(Ljava/lang/String;Z)V

    :goto_2a
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    .line 157
    :cond_2d
    iget-object v1, p0, Lcom/sonyericsson/android/camera/setting/LastSettings;->mAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->apply()V

    .line 158
    monitor-exit v0

    return-void

    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    .registers 4

    .line 45
    iget-object v0, p0, Lcom/sonyericsson/android/camera/setting/LastSettings;->mAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    const-string v1, "KEY_LAST_MODE"

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->UNKNOWN:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 46
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->name()Ljava/lang/String;

    move-result-object v2

    .line 45
    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->UNKNOWN:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->convertFrom(Ljava/lang/String;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    return-object v0
.end method

.method public getFastCapture()Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;
    .registers 4

    .line 74
    iget-object v0, p0, Lcom/sonyericsson/android/camera/setting/LastSettings;->mAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    const-string v1, "key-last-fast-capture-setting"

    .line 75
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->getDefault()Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "LAUNCH_AND_RECORDING"

    .line 80
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 81
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->getDefault()Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    move-result-object v0

    return-object v0

    .line 85
    :cond_1d
    :try_start_1d
    invoke-static {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    move-result-object v0
    :try_end_21
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1d .. :try_end_21} :catch_22

    return-object v0

    .line 87
    :catch_22
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->getDefault()Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    move-result-object v0

    return-object v0
.end method

.method public getPreviewSize(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Landroid/graphics/Rect;
    .registers 4

    .line 106
    iget-object v0, p0, Lcom/sonyericsson/android/camera/setting/LastSettings;->mAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/setting/LastSettings;->getLastPreviewSizeKey(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 107
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/setting/LastSettings;->getRect(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object p1

    return-object p1
.end method

.method public save()V
    .registers 2

    .line 144
    iget-object v0, p0, Lcom/sonyericsson/android/camera/setting/LastSettings;->mAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->apply()V

    return-void
.end method

.method public setCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V
    .registers 5

    .line 57
    iget-object v0, p0, Lcom/sonyericsson/android/camera/setting/LastSettings;->mAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    const-string v1, "KEY_LAST_MODE"

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->name()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->writeString(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public setFastCapture(Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;)V
    .registers 5

    .line 97
    iget-object v0, p0, Lcom/sonyericsson/android/camera/setting/LastSettings;->mAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    const-string v1, "key-last-fast-capture-setting"

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->name()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->writeString(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public setPreviewSize(Landroid/graphics/Rect;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V
    .registers 6

    .line 135
    iget-object v0, p0, Lcom/sonyericsson/android/camera/setting/LastSettings;->mAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/setting/LastSettings;->getLastPreviewSizeKey(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 135
    invoke-virtual {v0, p2, p1, v1}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->writeString(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public writePauseTime()V
    .registers 6

    .line 64
    iget-object v0, p0, Lcom/sonyericsson/android/camera/setting/LastSettings;->mAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    const-string v1, "KEY_TIME_APP_PAUSED"

    .line 65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    .line 64
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->writeLong(Ljava/lang/String;JZ)V

    return-void
.end method
