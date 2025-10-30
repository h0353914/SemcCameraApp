.class public Lcom/sonyericsson/android/camera/setting/LastSettings;
.super Ljava/lang/Object;
.source "LastSettings.java"


# static fields
.field private static final LAUNCH_AND_RECORDING:Ljava/lang/String; = "LAUNCH_AND_RECORDING"


# instance fields
.field private final mAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

.field private final mZoomAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    const-string v1, "com.sonyericsson.android.camera.shared_preferences"

    invoke-direct {v0, p1, v1}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/setting/LastSettings;->mAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    .line 50
    new-instance v0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    const-string v1, "zoom_value"

    invoke-direct {v0, p1, v1}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/setting/LastSettings;->mZoomAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    return-void
.end method

.method private getLastPreviewSizeKey(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Ljava/lang/String;
    .registers 4

    .line 156
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

    .line 135
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 136
    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2c

    .line 137
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v1, 0x0

    .line 138
    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    const/4 v1, 0x1

    .line 139
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

    .line 231
    iget-object v0, p0, Lcom/sonyericsson/android/camera/setting/LastSettings;->mAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    monitor-enter v0

    .line 232
    :try_start_3
    iget-object v1, p0, Lcom/sonyericsson/android/camera/setting/LastSettings;->mAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    const-string v2, "key-last-fast-capture-setting"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->remove(Ljava/lang/String;Z)V

    .line 233
    iget-object v1, p0, Lcom/sonyericsson/android/camera/setting/LastSettings;->mAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    const-string v2, "KEY_LAST_MODE"

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->remove(Ljava/lang/String;Z)V

    .line 234
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v1

    array-length v2, v1

    move v4, v3

    :goto_18
    if-ge v4, v2, :cond_2d

    aget-object v5, v1, v4

    .line 235
    sget-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->UNKNOWN:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne v5, v6, :cond_21

    goto :goto_2a

    .line 238
    :cond_21
    iget-object v6, p0, Lcom/sonyericsson/android/camera/setting/LastSettings;->mAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    invoke-direct {p0, v5}, Lcom/sonyericsson/android/camera/setting/LastSettings;->getLastPreviewSizeKey(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5, v3}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->remove(Ljava/lang/String;Z)V

    :goto_2a
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    .line 240
    :cond_2d
    iget-object v1, p0, Lcom/sonyericsson/android/camera/setting/LastSettings;->mAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->apply()V

    .line 241
    monitor-exit v0

    return-void

    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public clearZoomInfo()V
    .registers 4

    .line 249
    iget-object v0, p0, Lcom/sonyericsson/android/camera/setting/LastSettings;->mZoomAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    monitor-enter v0

    .line 250
    :try_start_3
    iget-object v1, p0, Lcom/sonyericsson/android/camera/setting/LastSettings;->mZoomAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->clear(Z)V

    .line 251
    iget-object v1, p0, Lcom/sonyericsson/android/camera/setting/LastSettings;->mAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->apply()V

    .line 252
    monitor-exit v0

    return-void

    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public getBokehSetting(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/Bokeh;
    .registers 6

    .line 160
    iget-object v0, p0, Lcom/sonyericsson/android/camera/setting/LastSettings;->mAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "last-bokeh-setting-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/Bokeh;->DEFAULT:Lcom/sonyericsson/android/camera/configuration/parameters/Bokeh;

    .line 161
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/Bokeh;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 160
    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 162
    iget-object v1, p0, Lcom/sonyericsson/android/camera/setting/LastSettings;->mAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "last-bokeh-setting-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->remove(Ljava/lang/String;Z)V

    .line 163
    invoke-static {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/Bokeh;->valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/Bokeh;

    move-result-object p1

    return-object p1
.end method

.method public getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    .registers 4

    .line 60
    iget-object v0, p0, Lcom/sonyericsson/android/camera/setting/LastSettings;->mAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    const-string v1, "KEY_LAST_MODE"

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->UNKNOWN:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 61
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->name()Ljava/lang/String;

    move-result-object v2

    .line 60
    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->UNKNOWN:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->convertFrom(Ljava/lang/String;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    return-object v0
.end method

.method public getFastCapture()Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;
    .registers 4

    .line 89
    iget-object v0, p0, Lcom/sonyericsson/android/camera/setting/LastSettings;->mAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    const-string v1, "key-last-fast-capture-setting"

    .line 90
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->getDefault()Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 100
    :try_start_10
    invoke-static {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    move-result-object v0
    :try_end_14
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_14} :catch_15

    return-object v0

    .line 102
    :catch_15
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->getDefault()Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    move-result-object v0

    return-object v0
.end method

.method public getLatestPhotoSize()Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;
    .registers 4

    .line 219
    iget-object v0, p0, Lcom/sonyericsson/android/camera/setting/LastSettings;->mZoomAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    const-string v1, "last-photo-size"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 220
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 221
    invoke-static {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    move-result-object v0

    return-object v0

    :cond_14
    return-object v2
.end method

.method public getLatestVideoSize()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;
    .registers 4

    .line 207
    iget-object v0, p0, Lcom/sonyericsson/android/camera/setting/LastSettings;->mZoomAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    const-string v1, "last-video-size"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 208
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 209
    invoke-static {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v0

    return-object v0

    :cond_14
    return-object v2
.end method

.method public getLatestZoomRatio(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)F
    .registers 5

    .line 175
    iget-object v0, p0, Lcom/sonyericsson/android/camera/setting/LastSettings;->mZoomAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "last-zoom-ratio-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_27

    .line 177
    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    return p1

    :cond_27
    const/4 p1, 0x0

    return p1
.end method

.method public getLatestZoomStep(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)I
    .registers 6

    .line 192
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq p1, v0, :cond_f

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq p1, v0, :cond_f

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->NORMAL:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne p1, v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_11

    :cond_f
    :goto_f
    const/16 v0, 0xa8

    .line 197
    :goto_11
    iget-object v1, p0, Lcom/sonyericsson/android/camera/setting/LastSettings;->mZoomAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "last-zoom-step-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->readInt(Ljava/lang/String;I)I

    move-result p1

    .line 198
    iget-object v0, p0, Lcom/sonyericsson/android/camera/setting/LastSettings;->mZoomAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    const-string v1, "last-zoom-step"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->remove(Ljava/lang/String;Z)V

    return p1
.end method

.method public getPreviewSize(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Landroid/graphics/Rect;
    .registers 4

    .line 121
    iget-object v0, p0, Lcom/sonyericsson/android/camera/setting/LastSettings;->mAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/setting/LastSettings;->getLastPreviewSizeKey(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 122
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/setting/LastSettings;->getRect(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object p1

    return-object p1
.end method

.method public save()V
    .registers 2

    .line 227
    iget-object v0, p0, Lcom/sonyericsson/android/camera/setting/LastSettings;->mAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->apply()V

    return-void
.end method

.method public saveZoomInfo()V
    .registers 2

    .line 245
    iget-object v0, p0, Lcom/sonyericsson/android/camera/setting/LastSettings;->mZoomAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->apply()V

    return-void
.end method

.method public setBokehSetting(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/parameters/Bokeh;)V
    .registers 6

    .line 167
    iget-object v0, p0, Lcom/sonyericsson/android/camera/setting/LastSettings;->mAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "last-bokeh-setting-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/Bokeh;->getValue()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->writeString(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public setCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V
    .registers 5

    .line 72
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

    .line 112
    iget-object v0, p0, Lcom/sonyericsson/android/camera/setting/LastSettings;->mAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    const-string v1, "key-last-fast-capture-setting"

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->name()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->writeString(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public setLatestPhotoSize(Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;)V
    .registers 5

    .line 215
    iget-object v0, p0, Lcom/sonyericsson/android/camera/setting/LastSettings;->mZoomAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    const-string v1, "last-photo-size"

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getValue()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->writeString(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public setLatestVideoSize(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)V
    .registers 5

    .line 203
    iget-object v0, p0, Lcom/sonyericsson/android/camera/setting/LastSettings;->mZoomAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    const-string v1, "last-video-size"

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getValue()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->writeString(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public setLatestZoomRatio(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;F)V
    .registers 6

    .line 171
    iget-object v0, p0, Lcom/sonyericsson/android/camera/setting/LastSettings;->mZoomAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "last-zoom-ratio-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->writeString(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public setLatestZoomStep(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;I)V
    .registers 6

    .line 187
    iget-object v0, p0, Lcom/sonyericsson/android/camera/setting/LastSettings;->mZoomAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "last-zoom-step-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->writeInt(Ljava/lang/String;IZ)V

    return-void
.end method

.method public setLatestZoomValue(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;F)V
    .registers 6

    .line 183
    iget-object v0, p0, Lcom/sonyericsson/android/camera/setting/LastSettings;->mZoomAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "last-zoom-value-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->writeString(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public setPreviewSize(Landroid/graphics/Rect;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V
    .registers 6

    .line 151
    iget-object v0, p0, Lcom/sonyericsson/android/camera/setting/LastSettings;->mAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/setting/LastSettings;->getLastPreviewSizeKey(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
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

    .line 151
    invoke-virtual {v0, p2, p1, v1}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->writeString(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public writePauseTime()V
    .registers 6

    .line 79
    iget-object v0, p0, Lcom/sonyericsson/android/camera/setting/LastSettings;->mAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    const-string v1, "KEY_TIME_APP_PAUSED"

    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    .line 79
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->writeLong(Ljava/lang/String;JZ)V

    return-void
.end method
