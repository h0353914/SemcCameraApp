.class public Lcom/sonyericsson/android/camera/util/capability/VideoConfigurationMapListCapabilityItem;
.super Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;
.source "VideoConfigurationMapListCapabilityItem.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sonyericsson/android/camera/util/capability/CapabilityItem<",
        "Ljava/util/List<",
        "Lcom/sonyericsson/android/camera/util/capability/VideoConfigurationMap;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/SharedPreferences;)V
    .registers 3

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;-><init>(Ljava/lang/String;Landroid/content/SharedPreferences;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/util/capability/VideoConfigurationMap;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method bridge synthetic getDefaultValue()Ljava/lang/Object;
    .registers 2

    .line 18
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/VideoConfigurationMapListCapabilityItem;->getDefaultValue()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getDefaultValue()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/util/capability/VideoConfigurationMap;",
            ">;"
        }
    .end annotation

    .line 48
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic read(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera/util/capability/VideoConfigurationMapListCapabilityItem;->read(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public read(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/util/capability/VideoConfigurationMap;",
            ">;"
        }
    .end annotation

    .line 31
    invoke-interface {p1, p2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, ""

    .line 32
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 33
    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/capability/SharedPrefsTranslator;->getVideoConfigurationMapList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 35
    :cond_11
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public write(Landroid/content/SharedPreferences$Editor;)V
    .registers 4

    .line 40
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/VideoConfigurationMapListCapabilityItem;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_13

    .line 42
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/VideoConfigurationMapListCapabilityItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/SharedPrefsTranslator;->fromVideoConfigurationMapList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_13
    return-void
.end method
