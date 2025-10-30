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

.field private mPrefixList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mReader:Lcom/sonyericsson/android/camera/configuration/SharedPreferencesReader;

.field private mWriter:Lcom/sonyericsson/android/camera/configuration/SharedPreferencesWriter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mPreferences:Landroid/content/SharedPreferences;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mPrefixList:Ljava/util/List;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mMaps:Ljava/util/Map;

    .line 55
    invoke-static {p1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mPreferences:Landroid/content/SharedPreferences;

    .line 56
    new-instance p1, Lcom/sonyericsson/android/camera/configuration/SharedPreferencesWriter;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mPreferences:Landroid/content/SharedPreferences;

    invoke-direct {p1, v0}, Lcom/sonyericsson/android/camera/configuration/SharedPreferencesWriter;-><init>(Landroid/content/SharedPreferences;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mWriter:Lcom/sonyericsson/android/camera/configuration/SharedPreferencesWriter;

    .line 57
    new-instance p1, Lcom/sonyericsson/android/camera/configuration/SharedPreferencesReader;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mPreferences:Landroid/content/SharedPreferences;

    invoke-direct {p1, v0}, Lcom/sonyericsson/android/camera/configuration/SharedPreferencesReader;-><init>(Landroid/content/SharedPreferences;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mReader:Lcom/sonyericsson/android/camera/configuration/SharedPreferencesReader;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mPreferences:Landroid/content/SharedPreferences;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mPrefixList:Ljava/util/List;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mMaps:Ljava/util/Map;

    const/4 v0, 0x0

    .line 62
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mPreferences:Landroid/content/SharedPreferences;

    .line 63
    new-instance p1, Lcom/sonyericsson/android/camera/configuration/SharedPreferencesWriter;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mPreferences:Landroid/content/SharedPreferences;

    invoke-direct {p1, p2}, Lcom/sonyericsson/android/camera/configuration/SharedPreferencesWriter;-><init>(Landroid/content/SharedPreferences;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mWriter:Lcom/sonyericsson/android/camera/configuration/SharedPreferencesWriter;

    .line 64
    new-instance p1, Lcom/sonyericsson/android/camera/configuration/SharedPreferencesReader;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mPreferences:Landroid/content/SharedPreferences;

    invoke-direct {p1, p2}, Lcom/sonyericsson/android/camera/configuration/SharedPreferencesReader;-><init>(Landroid/content/SharedPreferences;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mReader:Lcom/sonyericsson/android/camera/configuration/SharedPreferencesReader;

    return-void
.end method

.method private apply(Z)V
    .registers 2

    if-eqz p1, :cond_5

    .line 188
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->apply()V

    :cond_5
    return-void
.end method

.method private commit()V
    .registers 2

    .line 197
    iget-object v0, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mWriter:Lcom/sonyericsson/android/camera/configuration/SharedPreferencesWriter;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/SharedPreferencesWriter;->commit()V

    return-void
.end method

.method public static createPrefix(Lcom/sonyericsson/android/camera/configuration/ParameterCategory;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 239
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/ParameterCategory;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 241
    sget-object v2, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$ParameterCategory:[I

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/ParameterCategory;->ordinal()I

    move-result p0

    aget p0, v2, p0

    packed-switch p0, :pswitch_data_3e

    goto :goto_23

    .line 245
    :pswitch_1d
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_23
    :pswitch_23
    if-eqz p2, :cond_33

    const-string p0, ""

    .line 249
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_33

    .line 250
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_33
    const-string p0, "PARAMS_"

    .line 253
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_23
        :pswitch_1d
    .end packed-switch
.end method

.method public static getSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;
    .registers 3

    .line 269
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public apply()V
    .registers 2

    .line 193
    iget-object v0, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mWriter:Lcom/sonyericsson/android/camera/configuration/SharedPreferencesWriter;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/SharedPreferencesWriter;->apply()V

    return-void
.end method

.method public clear(Z)V
    .registers 3

    .line 178
    iget-object v0, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mWriter:Lcom/sonyericsson/android/camera/configuration/SharedPreferencesWriter;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/SharedPreferencesWriter;->clear()V

    if-eqz p1, :cond_a

    .line 182
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->commit()V

    :cond_a
    return-void
.end method

.method public clearParameters(Z)V
    .registers 2

    .line 95
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->reset()V

    .line 96
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->clear(Z)V

    return-void
.end method

.method public getSharedPreferences()Landroid/content/SharedPreferences;
    .registers 2

    .line 50
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

    .line 218
    iget-object v0, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mMaps:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 219
    iget-object v0, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mMaps:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    return-object p1

    .line 222
    :cond_11
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public readBoolean(Ljava/lang/String;Z)Z
    .registers 7

    .line 109
    iget-object v0, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mReader:Lcom/sonyericsson/android/camera/configuration/SharedPreferencesReader;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/android/camera/configuration/SharedPreferencesReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result p2

    .line 110
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_2c

    const/4 v0, 0x1

    .line 111
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

    .line 125
    iget-object v0, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mReader:Lcom/sonyericsson/android/camera/configuration/SharedPreferencesReader;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/android/camera/configuration/SharedPreferencesReader;->readInt(Ljava/lang/String;I)I

    move-result p2

    .line 126
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_2c

    const/4 v0, 0x1

    .line 127
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

    .line 160
    iget-object v0, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mReader:Lcom/sonyericsson/android/camera/configuration/SharedPreferencesReader;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sonyericsson/android/camera/configuration/SharedPreferencesReader;->readLong(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    .line 161
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_35

    const/4 v0, 0x2

    .line 162
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

.method public readParameters(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/configuration/UserSettingKey;",
            ">;)V"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_12

    .line 69
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_11

    const-string p1, "SharedPreferences is null."

    .line 70
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_11
    return-void

    .line 74
    :cond_12
    iget-object v0, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mPrefixList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 75
    sget-boolean v2, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v2, :cond_42

    const/4 v2, 0x1

    .line 76
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadParameters: prefix: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 78
    :cond_42
    iget-object v2, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mReader:Lcom/sonyericsson/android/camera/configuration/SharedPreferencesReader;

    invoke-virtual {v2, p1, v1}, Lcom/sonyericsson/android/camera/configuration/SharedPreferencesReader;->readStringMap(Ljava/util/List;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 79
    iget-object v3, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mMaps:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_18

    :cond_4e
    return-void
.end method

.method public readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 143
    iget-object v0, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mReader:Lcom/sonyericsson/android/camera/configuration/SharedPreferencesReader;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/android/camera/configuration/SharedPreferencesReader;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 144
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_2c

    const/4 v0, 0x1

    .line 145
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

.method public registerKey(Ljava/lang/String;)V
    .registers 3

    .line 206
    iget-object v0, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mPrefixList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 207
    iget-object v0, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mPrefixList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    return-void
.end method

.method public remove(Ljava/lang/String;Z)V
    .registers 4

    .line 168
    iget-object v0, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mWriter:Lcom/sonyericsson/android/camera/configuration/SharedPreferencesWriter;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/configuration/SharedPreferencesWriter;->remove(Ljava/lang/String;)V

    .line 169
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->apply(Z)V

    return-void
.end method

.method public reset()V
    .registers 2

    .line 173
    iget-object v0, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mMaps:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 174
    iget-object v0, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mPrefixList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

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

    .line 232
    iget-object v0, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mMaps:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public writeBoolean(Ljava/lang/String;ZZ)V
    .registers 8

    .line 100
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_26

    const/4 v0, 0x1

    .line 101
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

    .line 103
    :cond_26
    iget-object v0, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mWriter:Lcom/sonyericsson/android/camera/configuration/SharedPreferencesWriter;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/android/camera/configuration/SharedPreferencesWriter;->writeBoolean(Ljava/lang/String;Z)V

    .line 104
    invoke-direct {p0, p3}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->apply(Z)V

    return-void
.end method

.method public writeInt(Ljava/lang/String;IZ)V
    .registers 8

    .line 117
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_26

    const/4 v0, 0x1

    .line 118
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

    .line 120
    :cond_26
    iget-object v0, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mWriter:Lcom/sonyericsson/android/camera/configuration/SharedPreferencesWriter;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/android/camera/configuration/SharedPreferencesWriter;->writeInt(Ljava/lang/String;I)V

    .line 121
    invoke-direct {p0, p3}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->apply(Z)V

    return-void
.end method

.method public writeLong(Ljava/lang/String;JZ)V
    .registers 9

    .line 151
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_2b

    const/4 v0, 0x2

    .line 152
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

    .line 154
    :cond_2b
    iget-object v0, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mWriter:Lcom/sonyericsson/android/camera/configuration/SharedPreferencesWriter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sonyericsson/android/camera/configuration/SharedPreferencesWriter;->writeLong(Ljava/lang/String;J)V

    .line 155
    invoke-direct {p0, p4}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->apply(Z)V

    return-void
.end method

.method public writeParameters(Z)V
    .registers 8

    .line 84
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

    .line 85
    sget-boolean v2, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v2, :cond_34

    const/4 v2, 0x1

    .line 86
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

    .line 88
    :cond_34
    iget-object v2, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mWriter:Lcom/sonyericsson/android/camera/configuration/SharedPreferencesWriter;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mMaps:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-virtual {v2, v3, v1}, Lcom/sonyericsson/android/camera/configuration/SharedPreferencesWriter;->writeString(Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_a

    .line 91
    :cond_42
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->apply(Z)V

    return-void
.end method

.method public writeString(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 8

    .line 134
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_26

    const/4 v0, 0x1

    .line 135
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

    .line 137
    :cond_26
    iget-object v0, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mWriter:Lcom/sonyericsson/android/camera/configuration/SharedPreferencesWriter;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/android/camera/configuration/SharedPreferencesWriter;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-direct {p0, p3}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->apply(Z)V

    return-void
.end method
