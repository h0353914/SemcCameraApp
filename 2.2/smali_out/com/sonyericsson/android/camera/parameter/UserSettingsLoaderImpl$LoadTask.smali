.class Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl$LoadTask;
.super Ljava/lang/Object;
.source "UserSettingsLoaderImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;)V
    .registers 2

    .line 62
    iput-object p1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl$LoadTask;->this$0:Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl$1;)V
    .registers 3

    .line 62
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl$LoadTask;-><init>(Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 65
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl$LoadTask;->this$0:Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;

    monitor-enter v0

    .line 66
    :try_start_3
    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl$LoadTask;->this$0:Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;

    # getter for: Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->mIsCompleted:Z
    invoke-static {v1}, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->access$000(Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 67
    monitor-exit v0

    return-void

    .line 69
    :cond_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_ea

    .line 70
    sget-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->LOAD_USER_SETTING_ALL:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/PerfLog;->begin()V

    .line 75
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 76
    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl$LoadTask;->this$0:Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->getSharedPreferencesAccessor()Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    move-result-object v1

    const-string v2, "android.os.Build.FINGERPRINT"

    const-string v3, ""

    .line 77
    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    .line 79
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_47

    const-string v0, "Initialize UserSettings data by default values due to no fingerprint."

    .line 80
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl$LoadTask;->this$0:Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl$LoadTask;->this$0:Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;

    # getter for: Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->access$100(Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl$LoadTask;->this$0:Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;

    # getter for: Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->access$200(Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;)Lcom/sonyericsson/cameracommon/storage/Storage;

    move-result-object v2

    # invokes: Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->applyDefaultParameters(Landroid/content/Context;Lcom/sonyericsson/cameracommon/storage/Storage;)V
    invoke-static {v0, v1, v2}, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->access$300(Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;Landroid/content/Context;Lcom/sonyericsson/cameracommon/storage/Storage;)V

    goto :goto_b3

    .line 82
    :cond_47
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b3

    .line 83
    new-array v2, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Migrate UserSettings. stored-fingerprint:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " current-fingerprint:"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v4

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 86
    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl$LoadTask;->this$0:Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;

    # getter for: Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->access$100(Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl$LoadTask;->this$0:Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;

    # getter for: Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->access$200(Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;)Lcom/sonyericsson/cameracommon/storage/Storage;

    move-result-object v2

    iget-object v4, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl$LoadTask;->this$0:Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;

    invoke-static {v1, v2, v4}, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->migrate(Landroid/content/Context;Lcom/sonyericsson/cameracommon/storage/Storage;Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;)V

    .line 88
    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl$LoadTask;->this$0:Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->getSharedPreferencesAccessor()Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    move-result-object v1

    const-string v2, "android.os.Build.FINGERPRINT"

    .line 89
    invoke-virtual {v1, v2, v0, v3}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->writeString(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 91
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl$LoadTask;->this$0:Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;

    monitor-enter v0

    .line 92
    :try_start_8d
    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl$LoadTask;->this$0:Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;

    # getter for: Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->mMigrateParametersEntries:Ljava/util/Map;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->access$400(Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 93
    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl$LoadTask;->this$0:Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;

    # getter for: Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->mCommonParameters:Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->access$500(Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;)Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl$LoadTask;->this$0:Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;

    # getter for: Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->access$200(Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;)Lcom/sonyericsson/cameracommon/storage/Storage;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;->clear(Lcom/sonyericsson/cameracommon/storage/Storage;)V

    .line 94
    monitor-exit v0
    :try_end_a6
    .catchall {:try_start_8d .. :try_end_a6} :catchall_b0

    .line 95
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl$LoadTask;->this$0:Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;

    # getter for: Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->mSharedPrefsAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->access$600(Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;)Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->reset()V

    goto :goto_b3

    :catchall_b0
    move-exception p0

    .line 94
    :try_start_b1
    monitor-exit v0
    :try_end_b2
    .catchall {:try_start_b1 .. :try_end_b2} :catchall_b0

    throw p0

    .line 98
    :cond_b3
    :goto_b3
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl$LoadTask;->this$0:Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl$LoadTask;->this$0:Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;

    # getter for: Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->mParametersEntries:Ljava/util/Map;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->access$700(Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;)Ljava/util/Map;

    move-result-object v1

    # invokes: Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->loadInternal(Ljava/util/Map;)V
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->access$800(Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;Ljava/util/Map;)V

    .line 99
    sget-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->LOAD_USER_SETTING_ALL:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/PerfLog;->end()V

    .line 103
    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl$LoadTask;->this$0:Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;

    monitor-enter v1

    .line 104
    :try_start_c6
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl$LoadTask;->this$0:Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;

    # setter for: Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->mIsCompleted:Z
    invoke-static {v0, v3}, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->access$002(Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;Z)Z

    .line 105
    iget-object p0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl$LoadTask;->this$0:Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;

    # getter for: Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->mListeners:Ljava/util/LinkedList;
    invoke-static {p0}, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->access$900(Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;)Ljava/util/LinkedList;

    move-result-object p0

    .line 106
    monitor-exit v1
    :try_end_d2
    .catchall {:try_start_c6 .. :try_end_d2} :catchall_e7

    .line 107
    invoke-virtual {p0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_d6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/setting/UserSettingsLoader$OnLoadCompletedListener;

    .line 108
    invoke-interface {v0}, Lcom/sonyericsson/android/camera/setting/UserSettingsLoader$OnLoadCompletedListener;->onLoadCompleted()V

    goto :goto_d6

    :cond_e6
    return-void

    :catchall_e7
    move-exception p0

    .line 106
    :try_start_e8
    monitor-exit v1
    :try_end_e9
    .catchall {:try_start_e8 .. :try_end_e9} :catchall_e7

    throw p0

    :catchall_ea
    move-exception p0

    .line 69
    :try_start_eb
    monitor-exit v0
    :try_end_ec
    .catchall {:try_start_eb .. :try_end_ec} :catchall_ea

    throw p0
.end method
