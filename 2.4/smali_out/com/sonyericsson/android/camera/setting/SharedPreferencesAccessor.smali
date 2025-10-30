.class public Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;
.super Ljava/lang/Object;
.source "SharedPreferencesAccessor.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "SharedPreferencesAccessor"


# instance fields
.field private mMaps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPreferences:Landroid/content/SharedPreferences;

.field private mReader:Lcom/sonyericsson/android/camera/configuration/SharedPreferencesReader;

.field private mWriter:Lcom/sonyericsson/android/camera/configuration/SharedPreferencesWriter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mPreferences:Landroid/content/SharedPreferences;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mMaps:Ljava/util/Map;

    .line 52
    invoke-static {p1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mPreferences:Landroid/content/SharedPreferences;

    .line 53
    new-instance p1, Lcom/sonyericsson/android/camera/configuration/SharedPreferencesWriter;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mPreferences:Landroid/content/SharedPreferences;

    invoke-direct {p1, v0}, Lcom/sonyericsson/android/camera/configuration/SharedPreferencesWriter;-><init>(Landroid/content/SharedPreferences;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mWriter:Lcom/sonyericsson/android/camera/configuration/SharedPreferencesWriter;

    .line 54
    new-instance p1, Lcom/sonyericsson/android/camera/configuration/SharedPreferencesReader;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mPreferences:Landroid/content/SharedPreferences;

    invoke-direct {p1, v0}, Lcom/sonyericsson/android/camera/configuration/SharedPreferencesReader;-><init>(Landroid/content/SharedPreferences;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mReader:Lcom/sonyericsson/android/camera/configuration/SharedPreferencesReader;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mPreferences:Landroid/content/SharedPreferences;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mMaps:Ljava/util/Map;

    const/4 v0, 0x0

    .line 59
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mPreferences:Landroid/content/SharedPreferences;

    .line 60
    new-instance p1, Lcom/sonyericsson/android/camera/configuration/SharedPreferencesWriter;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mPreferences:Landroid/content/SharedPreferences;

    invoke-direct {p1, p2}, Lcom/sonyericsson/android/camera/configuration/SharedPreferencesWriter;-><init>(Landroid/content/SharedPreferences;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mWriter:Lcom/sonyericsson/android/camera/configuration/SharedPreferencesWriter;

    .line 61
    new-instance p1, Lcom/sonyericsson/android/camera/configuration/SharedPreferencesReader;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mPreferences:Landroid/content/SharedPreferences;

    invoke-direct {p1, p2}, Lcom/sonyericsson/android/camera/configuration/SharedPreferencesReader;-><init>(Landroid/content/SharedPreferences;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mReader:Lcom/sonyericsson/android/camera/configuration/SharedPreferencesReader;

    return-void
.end method

.method private apply(Z)V
    .registers 2

    if-eqz p1, :cond_5

    .line 178
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->apply()V

    :cond_5
    return-void
.end method

.method public static createPrefix(Lcom/sonyericsson/android/camera/configuration/ParameterCategory;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Ljava/lang/String;
    .registers 5

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 213
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/ParameterCategory;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 215
    sget-object v2, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$ParameterCategory:[I

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/ParameterCategory;->ordinal()I

    move-result p0

    aget p0, v2, p0

    packed-switch p0, :pswitch_data_2e

    goto :goto_23

    .line 219
    :pswitch_1d
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_23
    :pswitch_23
    const-string p0, "PARAMS_"

    .line 223
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_23
        :pswitch_1d
    .end packed-switch
.end method

.method public static getSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;
    .registers 3

    .line 239
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public apply()V
    .registers 2

    .line 183
    iget-object v0, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mWriter:Lcom/sonyericsson/android/camera/configuration/SharedPreferencesWriter;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/SharedPreferencesWriter;->apply()V

    return-void
.end method

.method public clear(Z)V
    .registers 3

    .line 172
    iget-object v0, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mWriter:Lcom/sonyericsson/android/camera/configuration/SharedPreferencesWriter;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/SharedPreferencesWriter;->clear()V

    .line 173
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->apply(Z)V

    return-void
.end method

.method public clearParameters(Z)V
    .registers 2

    .line 90
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->reset()V

    .line 91
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->clear(Z)V

    return-void
.end method

.method public getSharedPreferences()Landroid/content/SharedPreferences;
    .registers 2

    .line 47
    iget-object v0, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public getStringMap(Ljava/lang/String;)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mMaps:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 194
    iget-object v0, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mMaps:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    return-object p1

    .line 197
    :cond_11
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public readBoolean(Ljava/lang/String;Z)Z
    .registers 7

    .line 104
    iget-object v0, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mReader:Lcom/sonyericsson/android/camera/configuration/SharedPreferencesReader;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/android/camera/configuration/SharedPreferencesReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result p2

    .line 105
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_2c

    const/4 v0, 0x1

    .line 106
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readBoolean: key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", value: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2c
    return p2
.end method

.method public readInt(Ljava/lang/String;I)I
    .registers 7

    .line 120
    iget-object v0, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mReader:Lcom/sonyericsson/android/camera/configuration/SharedPreferencesReader;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/android/camera/configuration/SharedPreferencesReader;->readInt(Ljava/lang/String;I)I

    move-result p2

    .line 121
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_2c

    const/4 v0, 0x1

    .line 122
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readInt: key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", value: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2c
    return p2
.end method

.method public readLong(Ljava/lang/String;J)J
    .registers 8

    .line 155
    iget-object v0, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mReader:Lcom/sonyericsson/android/camera/configuration/SharedPreferencesReader;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sonyericsson/android/camera/configuration/SharedPreferencesReader;->readLong(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    .line 156
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_35

    const/4 v0, 0x2

    .line 157
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "SharedPreferencesAccessor"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readLong: key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", value: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_35
    return-wide p2
.end method

.method public readParameters(Ljava/util/List;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/configuration/UserSettingKey;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_12

    .line 66
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_11

    const-string p1, "SharedPreferences is null."

    .line 67
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_11
    return-void

    .line 71
    :cond_12
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_30

    const/4 v0, 0x1

    .line 72
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadParameters: prefix: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 74
    :cond_30
    iget-object v0, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mReader:Lcom/sonyericsson/android/camera/configuration/SharedPreferencesReader;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/android/camera/configuration/SharedPreferencesReader;->readStringMap(Ljava/util/List;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    .line 75
    iget-object v0, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mMaps:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 138
    iget-object v0, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mReader:Lcom/sonyericsson/android/camera/configuration/SharedPreferencesReader;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/android/camera/configuration/SharedPreferencesReader;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 139
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_2c

    const/4 v0, 0x1

    .line 140
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readString: key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", value: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2c
    return-object p2
.end method

.method public remove(Ljava/lang/String;Z)V
    .registers 4

    .line 163
    iget-object v0, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mWriter:Lcom/sonyericsson/android/camera/configuration/SharedPreferencesWriter;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/configuration/SharedPreferencesWriter;->remove(Ljava/lang/String;)V

    .line 164
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->apply(Z)V

    return-void
.end method

.method public reset()V
    .registers 2

    .line 168
    iget-object v0, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mMaps:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public setStringMap(Ljava/lang/String;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 207
    iget-object v0, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mMaps:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public writeBoolean(Ljava/lang/String;ZZ)V
    .registers 8

    .line 95
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_26

    const/4 v0, 0x1

    .line 96
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writeBoolean: key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 98
    :cond_26
    iget-object v0, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mWriter:Lcom/sonyericsson/android/camera/configuration/SharedPreferencesWriter;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/android/camera/configuration/SharedPreferencesWriter;->writeBoolean(Ljava/lang/String;Z)V

    .line 99
    invoke-direct {p0, p3}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->apply(Z)V

    return-void
.end method

.method public writeInt(Ljava/lang/String;IZ)V
    .registers 8

    .line 112
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_26

    const/4 v0, 0x1

    .line 113
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writeInt: key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 115
    :cond_26
    iget-object v0, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mWriter:Lcom/sonyericsson/android/camera/configuration/SharedPreferencesWriter;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/android/camera/configuration/SharedPreferencesWriter;->writeInt(Ljava/lang/String;I)V

    .line 116
    invoke-direct {p0, p3}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->apply(Z)V

    return-void
.end method

.method public writeLong(Ljava/lang/String;JZ)V
    .registers 9

    .line 146
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_2b

    const/4 v0, 0x2

    .line 147
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "SharedPreferencesAccessor"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writeLong: key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 149
    :cond_2b
    iget-object v0, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mWriter:Lcom/sonyericsson/android/camera/configuration/SharedPreferencesWriter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sonyericsson/android/camera/configuration/SharedPreferencesWriter;->writeLong(Ljava/lang/String;J)V

    .line 150
    invoke-direct {p0, p4}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->apply(Z)V

    return-void
.end method

.method public writeParameters(Z)V
    .registers 8

    .line 79
    iget-object v0, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mMaps:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 80
    sget-boolean v2, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v2, :cond_34

    const/4 v2, 0x1

    .line 81
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "writeSharedPreferences: prefix: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 83
    :cond_34
    iget-object v2, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mWriter:Lcom/sonyericsson/android/camera/configuration/SharedPreferencesWriter;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mMaps:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-virtual {v2, v3, v1}, Lcom/sonyericsson/android/camera/configuration/SharedPreferencesWriter;->writeString(Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_a

    .line 86
    :cond_42
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->apply(Z)V

    return-void
.end method

.method public writeString(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 8

    .line 129
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_26

    const/4 v0, 0x1

    .line 130
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writeString: key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 132
    :cond_26
    iget-object v0, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mWriter:Lcom/sonyericsson/android/camera/configuration/SharedPreferencesWriter;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/android/camera/configuration/SharedPreferencesWriter;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-direct {p0, p3}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->apply(Z)V

    return-void
.end method
