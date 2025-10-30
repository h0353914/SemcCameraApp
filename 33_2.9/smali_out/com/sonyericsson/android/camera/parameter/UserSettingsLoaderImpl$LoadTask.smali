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

    .line 69
    iput-object p1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl$LoadTask;->this$0:Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl$1;)V
    .registers 3

    .line 69
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl$LoadTask;-><init>(Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 72
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl$LoadTask;->this$0:Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;

    monitor-enter v0

    .line 73
    :try_start_3
    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl$LoadTask;->this$0:Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;

    # getter for: Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->mIsCompleted:Z
    invoke-static {v1}, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->access$000(Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 74
    monitor-exit v0

    return-void

    .line 76
    :cond_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_111

    .line 77
    sget-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->LOAD_USER_SETTING_ALL:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/PerfLog;->begin()V

    .line 78
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_20

    const-string v0, "load user setting all start"

    .line 79
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 85
    :cond_20
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 87
    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl$LoadTask;->this$0:Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->getSharedPreferencesAccessor()Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    move-result-object v1

    const-string v2, "android.os.Build.FINGERPRINT"

    const-string v3, ""

    .line 88
    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    .line 90
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_a0

    .line 91
    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl$LoadTask;->this$0:Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;

    # getter for: Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->mSharedPrefsAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->access$200(Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;)Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl$LoadTask;->this$0:Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;

    .line 92
    # getter for: Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->access$100(Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getFileName(I)Ljava/lang/String;

    move-result-object v2

    .line 91
    invoke-static {v1, v2, v4}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "android.os.Build.FINGERPRINT"

    const-string v5, ""

    .line 100
    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    .line 101
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_76

    const-string v0, "Initialize UserSettings data by default values due to no fingerprint."

    .line 102
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl$LoadTask;->this$0:Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;

    # getter for: Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->access$100(Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl$LoadTask;->this$0:Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;

    # getter for: Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->access$300(Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;)Lcom/sonyericsson/cameracommon/storage/Storage;

    move-result-object v2

    # invokes: Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->applyDefaultParameters(Landroid/content/Context;Lcom/sonyericsson/cameracommon/storage/Storage;)V
    invoke-static {v0, v1, v2}, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->access$400(Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;Landroid/content/Context;Lcom/sonyericsson/cameracommon/storage/Storage;)V

    goto :goto_cf

    :cond_76
    new-array v2, v3, [Ljava/lang/String;

    .line 105
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Migrate UserSettings. stored-fingerprint-from-supportvalue:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " current-fingerprint:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v4

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 109
    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl$LoadTask;->this$0:Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;

    # invokes: Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->migrateData(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->access$500(Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;Ljava/lang/String;)V

    goto :goto_cf

    .line 111
    :cond_a0
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_cf

    new-array v2, v3, [Ljava/lang/String;

    .line 112
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Migrate UserSettings. stored-fingerprint-from-preferences:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " current-fingerprint:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v4

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 116
    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl$LoadTask;->this$0:Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;

    # invokes: Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->migrateData(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->access$500(Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;Ljava/lang/String;)V

    .line 119
    :cond_cf
    :goto_cf
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl$LoadTask;->this$0:Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;

    # getter for: Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->mParametersEntries:Ljava/util/Map;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->access$600(Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;)Ljava/util/Map;

    move-result-object v1

    # invokes: Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->loadInternal(Ljava/util/Map;)V
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->access$700(Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;Ljava/util/Map;)V

    .line 120
    sget-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->LOAD_USER_SETTING_ALL:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/PerfLog;->end()V

    .line 121
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_ea

    const-string v0, "load user setting all end"

    .line 122
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 127
    :cond_ea
    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl$LoadTask;->this$0:Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;

    monitor-enter v1

    .line 128
    :try_start_ed
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl$LoadTask;->this$0:Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;

    # setter for: Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->mIsCompleted:Z
    invoke-static {v0, v3}, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->access$002(Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;Z)Z

    .line 129
    iget-object p0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl$LoadTask;->this$0:Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;

    # getter for: Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->mListeners:Ljava/util/LinkedList;
    invoke-static {p0}, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->access$800(Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;)Ljava/util/LinkedList;

    move-result-object p0

    .line 130
    monitor-exit v1
    :try_end_f9
    .catchall {:try_start_ed .. :try_end_f9} :catchall_10e

    .line 131
    invoke-virtual {p0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_fd
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/setting/UserSettingsLoader$OnLoadCompletedListener;

    .line 132
    invoke-interface {v0}, Lcom/sonyericsson/android/camera/setting/UserSettingsLoader$OnLoadCompletedListener;->onLoadCompleted()V

    goto :goto_fd

    :cond_10d
    return-void

    :catchall_10e
    move-exception p0

    .line 130
    :try_start_10f
    monitor-exit v1
    :try_end_110
    .catchall {:try_start_10f .. :try_end_110} :catchall_10e

    throw p0

    :catchall_111
    move-exception p0

    .line 76
    :try_start_112
    monitor-exit v0
    :try_end_113
    .catchall {:try_start_112 .. :try_end_113} :catchall_111

    throw p0
.end method
