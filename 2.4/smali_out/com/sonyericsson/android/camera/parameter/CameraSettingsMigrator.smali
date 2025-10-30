.class Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;
.super Ljava/lang/Object;
.source "CameraSettingsMigrator.java"


# static fields
.field private static COMMON_SETTINGS:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/configuration/UserSettingKey;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG_CREATE_REPORT:Z = false

.field private static final DEBUG_ENABLED:Z

.field private static SETTINGS:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/configuration/UserSettingKey;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "cameramigrator"


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-string v0, "cameramigrator"

    const/4 v1, 0x3

    .line 78
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->DEBUG_ENABLED:Z

    .line 97
    new-instance v0, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator$1;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator$1;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->SETTINGS:Ljava/util/Map;

    const/16 v0, 0x11

    .line 181
    new-array v0, v0, [Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FLASH:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->PHOTO_LIGHT:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/4 v3, 0x1

    aput-object v2, v0, v3

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->DISPLAY_FLASH:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/4 v3, 0x2

    aput-object v2, v0, v3

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FRONT_ANGLE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v2, v0, v1

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->GEO_TAG:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAMERA_KEY:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->TOUCH_CAPTURE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->GRID_LINE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->HORIZONTAL_LEVEL_METER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SIDE_SENSE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->AUTO_REVIEW:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VOLUME_KEY:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SHUTTER_SOUND:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->DESTINATION_TO_SAVE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->PREDICTIVE_LAUNCH:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FAST_CAPTURE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->TAGGING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 182
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->COMMON_SETTINGS:Ljava/util/List;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static backupSharedPrefs(Landroid/content/Context;)V
    .registers 7

    const/4 v0, 0x0

    .line 506
    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->getSharedPrefsFile(Landroid/content/Context;Z)Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x1

    .line 508
    invoke-static {p0, v2}, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->getSharedPrefsFile(Landroid/content/Context;Z)Ljava/io/File;

    move-result-object p0

    const/16 v2, 0x1000

    .line 510
    new-array v2, v2, [B

    .line 512
    :try_start_e
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_13
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_13} :catch_6e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_13} :catch_56

    const/4 v1, 0x0

    .line 513
    :try_start_14
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_19} :catch_44
    .catchall {:try_start_14 .. :try_end_19} :catchall_42

    .line 514
    :goto_19
    :try_start_19
    invoke-virtual {v3, v2}, Ljava/io/InputStream;->read([B)I

    move-result p0

    if-ltz p0, :cond_23

    .line 515
    invoke-virtual {v4, v2, v0, p0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_22} :catch_2d
    .catchall {:try_start_19 .. :try_end_22} :catchall_2a

    goto :goto_19

    .line 517
    :cond_23
    :try_start_23
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_26} :catch_44
    .catchall {:try_start_23 .. :try_end_26} :catchall_42

    :try_start_26
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_29
    .catch Ljava/io/FileNotFoundException; {:try_start_26 .. :try_end_29} :catch_6e
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_56

    goto :goto_85

    :catchall_2a
    move-exception p0

    move-object v0, v1

    goto :goto_33

    :catch_2d
    move-exception p0

    .line 512
    :try_start_2e
    throw p0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2f

    :catchall_2f
    move-exception v0

    move-object v5, v0

    move-object v0, p0

    move-object p0, v5

    :goto_33
    if-eqz v0, :cond_3e

    .line 517
    :try_start_35
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_38} :catch_39
    .catchall {:try_start_35 .. :try_end_38} :catchall_42

    goto :goto_41

    :catch_39
    move-exception v2

    :try_start_3a
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_41

    :cond_3e
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    :goto_41
    throw p0
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_42} :catch_44
    .catchall {:try_start_3a .. :try_end_42} :catchall_42

    :catchall_42
    move-exception p0

    goto :goto_47

    :catch_44
    move-exception p0

    move-object v1, p0

    .line 512
    :try_start_46
    throw v1
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_42

    :goto_47
    if-eqz v1, :cond_52

    .line 517
    :try_start_49
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_4c} :catch_4d
    .catch Ljava/io/FileNotFoundException; {:try_start_49 .. :try_end_4c} :catch_6e
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_56

    goto :goto_55

    :catch_4d
    move-exception v0

    :try_start_4e
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_55

    :cond_52
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :goto_55
    throw p0
    :try_end_56
    .catch Ljava/io/FileNotFoundException; {:try_start_4e .. :try_end_56} :catch_6e
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_56} :catch_56

    :catch_56
    move-exception p0

    const-string v0, "cameramigrator"

    .line 520
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "backup shared preferences failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_85

    :catch_6e
    move-exception p0

    const-string v0, "cameramigrator"

    .line 518
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "backup shared preferences failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_85
    return-void
.end method

.method private static convertUnselectableValue(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;
    .registers 4

    .line 674
    sget-object v0, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator$2;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_10

    goto :goto_1e

    .line 676
    :cond_10
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SUPERIOR_FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne p1, v0, :cond_1e

    .line 677
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;

    if-ne p0, p1, :cond_1b

    .line 678
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/FrontSoftSkin;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/FrontSoftSkin;

    goto :goto_1f

    .line 680
    :cond_1b
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/FrontSoftSkin;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/FrontSoftSkin;

    goto :goto_1f

    :cond_1e
    :goto_1e
    const/4 p0, 0x0

    :goto_1f
    return-object p0
.end method

.method private static convertUnsupportedValue(Lcom/sonyericsson/android/camera/parameter/UserSettingManager;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;
    .registers 5

    .line 693
    sget-object v0, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator$2;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2c

    goto :goto_29

    .line 701
    :pswitch_10
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    if-eq p1, p0, :cond_29

    .line 702
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    goto :goto_2a

    .line 695
    :pswitch_17
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->NORMAL:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne p2, v0, :cond_29

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Metering;->TOUCH:Lcom/sonyericsson/android/camera/configuration/parameters/Metering;

    if-ne p1, v0, :cond_29

    .line 696
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/TouchIntention;->FOCUS_AND_EXPOSURE:Lcom/sonyericsson/android/camera/configuration/parameters/TouchIntention;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 697
    invoke-static {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/Metering;->getDefaultValue(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/Metering;

    move-result-object p0

    goto :goto_2a

    :cond_29
    :goto_29
    const/4 p0, 0x0

    :goto_2a
    return-object p0

    nop

    :pswitch_data_2c
    .packed-switch 0x2
        :pswitch_17
        :pswitch_10
    .end packed-switch
.end method

.method private static createMigrationReport(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 633
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v3, "migration_report.xls"

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 637
    :try_start_10
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_1a} :catch_ce

    :try_start_1a
    const-string v0, "KEY\tLEGACY_VALUE\tDEFAULT_VALUE\tFINAL_VALUE\tSTATUS"

    .line 638
    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 639
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    .line 641
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 642
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 643
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 644
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 645
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 646
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 648
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_48
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 649
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "NO_VALUE"

    invoke-static {v4, v5}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 650
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "NO_VALUE"

    invoke-static {v5, v6}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 651
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "NO_VALUE"

    invoke-static {v6, v7}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 652
    invoke-interface {p3, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "NO_VALUE"

    invoke-static {v7, v8}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "CAPTURING_MODE_"

    .line 654
    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_94

    .line 655
    invoke-static {v4}, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->parse(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 656
    invoke-static {v6}, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->parse(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_94
    const-string v8, "%s\t%s\t%s\t%s\t%s"

    const/4 v9, 0x5

    .line 659
    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    const/4 v3, 0x1

    aput-object v4, v9, v3

    const/4 v3, 0x2

    aput-object v5, v9, v3

    const/4 v3, 0x3

    aput-object v6, v9, v3

    const/4 v3, 0x4

    aput-object v7, v9, v3

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 661
    invoke-virtual {v1, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 662
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    goto :goto_48

    .line 665
    :cond_b3
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V
    :try_end_b6
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_b6} :catch_bc
    .catchall {:try_start_1a .. :try_end_b6} :catchall_ba

    .line 666
    :try_start_b6
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_b9
    .catch Ljava/io/IOException; {:try_start_b6 .. :try_end_b9} :catch_ce

    goto :goto_e5

    :catchall_ba
    move-exception p0

    goto :goto_bf

    :catch_bc
    move-exception p0

    move-object v2, p0

    .line 637
    :try_start_be
    throw v2
    :try_end_bf
    .catchall {:try_start_be .. :try_end_bf} :catchall_ba

    :goto_bf
    if-eqz v2, :cond_ca

    .line 666
    :try_start_c1
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_c4
    .catch Ljava/lang/Throwable; {:try_start_c1 .. :try_end_c4} :catch_c5
    .catch Ljava/io/IOException; {:try_start_c1 .. :try_end_c4} :catch_ce

    goto :goto_cd

    :catch_c5
    move-exception p1

    :try_start_c6
    invoke-virtual {v2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_cd

    :cond_ca
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    :goto_cd
    throw p0
    :try_end_ce
    .catch Ljava/io/IOException; {:try_start_c6 .. :try_end_ce} :catch_ce

    :catch_ce
    move-exception p0

    const-string p1, "cameramigrator"

    .line 667
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "create migration report failed: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_e5
    return-void
.end method

.method private static createParameterKeyPrefixForCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Ljava/lang/String;
    .registers 3

    .line 460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 461
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/ParameterCategory;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 462
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, "PARAMS_"

    .line 463
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getSharedPrefs(Landroid/content/Context;Z)Landroid/content/SharedPreferences;
    .registers 3

    const-string v0, "com.sonyericsson.android.camera.shared_preferences"

    if-eqz p1, :cond_6

    const-string v0, "com.sonyericsson.android.camera.shared_preferences_legacy"

    :cond_6
    const/4 p1, 0x0

    .line 480
    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method private static getSharedPrefsFile(Landroid/content/Context;Z)Ljava/io/File;
    .registers 4

    .line 491
    invoke-virtual {p0}, Landroid/content/Context;->getDataDir()Ljava/io/File;

    move-result-object p0

    .line 492
    new-instance v0, Ljava/io/File;

    const-string v1, "shared_prefs"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string p0, "com.sonyericsson.android.camera.shared_preferences"

    if-eqz p1, :cond_11

    const-string p0, "com.sonyericsson.android.camera.shared_preferences_legacy"

    .line 498
    :cond_11
    new-instance p1, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".xml"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p1
.end method

.method private static isSupported(Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Z
    .registers 4

    .line 591
    invoke-interface {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v0

    .line 592
    invoke-interface {p0, v0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->getOptions(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)[Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    if-eqz p0, :cond_18

    .line 593
    array-length v0, p0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_f

    goto :goto_18

    .line 597
    :cond_f
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_18
    :goto_18
    const/4 p0, 0x0

    return p0
.end method

.method private static loadMigrationData(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/parameter/UserSettingManager;Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;)Ljava/util/Map;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;",
            "Lcom/sonyericsson/android/camera/parameter/UserSettingManager;",
            "Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;",
            ")",
            "Ljava/util/Map<",
            "Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;",
            "Lcom/sonyericsson/android/camera/parameter/Parameters;",
            ">;"
        }
    .end annotation

    .line 410
    sget-boolean v0, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->DEBUG_ENABLED:Z

    if-eqz v0, :cond_b

    const-string v0, "cameramigrator"

    const-string v1, "loadMigrationDataSync() E"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    :cond_b
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->loadMigrateParameters()Ljava/util/Map;

    move-result-object p2

    .line 413
    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->replaceParameterEntries(Ljava/util/Map;)V

    .line 415
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_40

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/parameter/Parameters;

    .line 417
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->values()[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v3

    array-length v4, v3

    :goto_2c
    if-ge v2, v4, :cond_1a

    aget-object v5, v3, v2

    .line 418
    sget-object v6, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->NONE:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-virtual {p1, v5, v6}, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->isNeededToLoad(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;)Z

    move-result v6

    if-nez v6, :cond_3d

    .line 419
    iget-object v6, v1, Lcom/sonyericsson/android/camera/parameter/Parameters;->mHolders:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3d
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    .line 424
    :cond_40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 426
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_60

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/camera/parameter/Parameters;

    .line 427
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/parameter/Parameters;->updatePhotoLight()V

    .line 428
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4d

    .line 430
    :cond_60
    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->setDefaultToNonExistentResolution(Ljava/util/List;)V

    .line 431
    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->setDefaultToNonExistentVideoSize(Ljava/util/List;)V

    .line 432
    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->setDefaultToNonExistentVideoShutterTrigger(Ljava/util/List;)V

    .line 434
    invoke-virtual {p1, p0}, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->changeCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 436
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_74
    :goto_74
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_95

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/parameter/Parameters;

    .line 437
    iget-object v1, v0, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getType()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_74

    .line 438
    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/parameter/Parameters;

    invoke-virtual {p1, v0, v2}, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->setupVideoOption(Lcom/sonyericsson/android/camera/parameter/Parameters;Z)V

    goto :goto_74

    .line 444
    :cond_95
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_ad

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/parameter/Parameters;

    .line 445
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->commit()V

    goto :goto_9d

    .line 448
    :cond_ad
    sget-boolean p0, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->DEBUG_ENABLED:Z

    if-eqz p0, :cond_b8

    const-string p0, "cameramigrator"

    const-string p1, "loadMigrationDataSync() X"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b8
    return-object p2
.end method

.method static migrate(Landroid/content/Context;Lcom/sonyericsson/cameracommon/storage/Storage;Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;)V
    .registers 19
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ApplySharedPref"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 204
    sget-boolean v2, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->DEBUG_ENABLED:Z

    if-eqz v2, :cond_f

    const-string v2, "cameramigrator"

    const-string v3, "+ camera settings migration"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_f
    sget-boolean v2, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->DEBUG_ENABLED:Z

    if-eqz v2, :cond_1a

    const-string v2, "cameramigrator"

    const-string v3, "+ backup shared preferences"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_1a
    invoke-static/range {p0 .. p0}, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->backupSharedPrefs(Landroid/content/Context;)V

    .line 209
    sget-boolean v2, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->DEBUG_ENABLED:Z

    if-eqz v2, :cond_28

    const-string v2, "cameramigrator"

    const-string v3, "- backup shared preferences"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_28
    sget-boolean v2, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->DEBUG_ENABLED:Z

    if-eqz v2, :cond_33

    const-string v2, "cameramigrator"

    const-string v3, "+ cache all camera settings"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    const/4 v2, 0x1

    .line 213
    invoke-static {v0, v2}, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->getSharedPrefs(Landroid/content/Context;Z)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    .line 214
    sget-boolean v3, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->DEBUG_ENABLED:Z

    if-eqz v3, :cond_47

    const-string v3, "cameramigrator"

    const-string v4, "- cache all camera settings"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :cond_47
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_59

    .line 217
    sget-boolean v0, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->DEBUG_ENABLED:Z

    if-eqz v0, :cond_58

    const-string v0, "cameramigrator"

    const-string v1, "ignore migration since legacy camera settings is empty"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_58
    return-void

    .line 222
    :cond_59
    sget-boolean v3, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->DEBUG_ENABLED:Z

    if-eqz v3, :cond_64

    const-string v3, "cameramigrator"

    const-string v4, "+ cleanup shared preferences"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_64
    const/4 v3, 0x0

    .line 223
    invoke-static {v0, v3}, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->getSharedPrefs(Landroid/content/Context;Z)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 224
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 225
    sget-boolean v4, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->DEBUG_ENABLED:Z

    if-eqz v4, :cond_7f

    const-string v4, "cameramigrator"

    const-string v5, "- cleanup shared preferences"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7f
    const-string v4, "android.permission.CAMERA"

    .line 229
    invoke-virtual {v0, v4}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_93

    .line 231
    sget-boolean v0, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->DEBUG_ENABLED:Z

    if-eqz v0, :cond_92

    const-string v0, "cameramigrator"

    const-string v1, "ignore migration since not have camera permission"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_92
    return-void

    .line 236
    :cond_93
    sget-boolean v4, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->DEBUG_ENABLED:Z

    if-eqz v4, :cond_9e

    const-string v4, "cameramigrator"

    const-string v5, "+ setup camera parameter manager"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_9e
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "android.intent.category.LAUNCHER"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 239
    new-instance v5, Lcom/sonyericsson/android/camera/configuration/IntentReader;

    invoke-direct {v5}, Lcom/sonyericsson/android/camera/configuration/IntentReader;-><init>()V

    .line 240
    invoke-virtual {v5, v4}, Lcom/sonyericsson/android/camera/configuration/IntentReader;->getVideoQualityConfigurations(Landroid/content/Intent;)Lcom/sonyericsson/android/camera/configuration/IntentReader$VideoQualityConfigurations;

    move-result-object v4

    .line 241
    new-instance v5, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;

    move-object/from16 v6, p1

    invoke-direct {v5, v0, v6}, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;-><init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/storage/Storage;)V

    .line 242
    sget-object v6, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->NONE:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    const/4 v7, 0x0

    invoke-virtual {v5, v0, v6, v7, v4}, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->prepare(Landroid/content/Context;Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;Landroid/net/Uri;Lcom/sonyericsson/android/camera/configuration/IntentReader$VideoQualityConfigurations;)V

    .line 243
    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->NORMAL:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-static {v4, v5, v1}, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->loadMigrationData(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/parameter/UserSettingManager;Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;)Ljava/util/Map;

    move-result-object v4

    .line 246
    sget-boolean v6, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->DEBUG_ENABLED:Z

    if-eqz v6, :cond_d2

    const-string v6, "cameramigrator"

    const-string v7, "- setup camera parameter manager"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_d2
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 250
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 253
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 256
    sget-boolean v9, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->DEBUG_ENABLED:Z

    if-eqz v9, :cond_ec

    const-string v9, "cameramigrator"

    const-string v10, "+ migrate capturing mode settings"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :cond_ec
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getValidOptions()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_f4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_275

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 258
    sget-boolean v11, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->DEBUG_ENABLED:Z

    if-eqz v11, :cond_127

    const-string v11, "cameramigrator"

    .line 259
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "+ migrate "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " settings"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :cond_127
    invoke-virtual {v5, v10}, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->changeCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 264
    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->applyCapturingMode()V

    .line 267
    invoke-static {v10}, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->createParameterKeyPrefixForCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Ljava/lang/String;

    move-result-object v11

    .line 269
    sget-boolean v12, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->DEBUG_ENABLED:Z

    if-eqz v12, :cond_172

    .line 272
    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->getParameters()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v12

    .line 273
    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getHolder()Ljava/util/Map;

    move-result-object v12

    .line 274
    invoke-interface {v12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_145
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_172

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 275
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 276
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {v13}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v7, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_145

    .line 281
    :cond_172
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 282
    sget-object v13, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->SETTINGS:Ljava/util/Map;

    invoke-interface {v13, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Collection;

    invoke-interface {v12, v13}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 283
    sget-object v13, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->COMMON_SETTINGS:Ljava/util/List;

    invoke-interface {v12, v13}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 284
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_18b
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_24a

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 285
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 288
    invoke-interface {v2, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    const-string v0, "NO_VALUE"

    invoke-static {v15, v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v15, "NO_VALUE"

    .line 289
    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1c7

    .line 290
    sget-boolean v0, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->DEBUG_ENABLED:Z

    if-eqz v0, :cond_1c4

    const-string v0, "ignore-null-legacy-value"

    .line 291
    invoke-interface {v6, v14, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    goto :goto_18b

    :cond_1c4
    move-object/from16 v0, p0

    goto :goto_18b

    .line 298
    :cond_1c7
    invoke-static {v0}, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->parse(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    if-nez v0, :cond_1e0

    .line 300
    sget-boolean v0, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->DEBUG_ENABLED:Z

    if-eqz v0, :cond_1dd

    const-string v0, "ignore-null-current-value"

    .line 301
    invoke-interface {v6, v14, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    goto :goto_18b

    :cond_1dd
    move-object/from16 v0, p0

    goto :goto_18b

    .line 326
    :cond_1e0
    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->getParameters()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v15

    invoke-static {v13, v15, v0}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->isSelectableValues(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/android/camera/parameter/Parameters;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Z

    move-result v13

    if-nez v13, :cond_1ff

    .line 327
    invoke-static {v0, v10}, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->convertUnselectableValue(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    if-nez v0, :cond_1ff

    .line 329
    sget-boolean v0, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->DEBUG_ENABLED:Z

    if-eqz v0, :cond_1fc

    const-string v0, "ignore-unselectable-current-value"

    .line 330
    invoke-interface {v6, v14, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    goto :goto_18b

    :cond_1fc
    move-object/from16 v0, p0

    goto :goto_18b

    .line 339
    :cond_1ff
    invoke-static {v5, v0}, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->isSupported(Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Z

    move-result v13

    if-nez v13, :cond_21c

    .line 340
    invoke-static {v5, v0, v10}, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->convertUnsupportedValue(Lcom/sonyericsson/android/camera/parameter/UserSettingManager;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    if-nez v0, :cond_21c

    .line 342
    sget-boolean v0, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->DEBUG_ENABLED:Z

    if-eqz v0, :cond_218

    const-string v0, "ignore-unsupported-current-value"

    .line 343
    invoke-interface {v6, v14, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    goto/16 :goto_18b

    :cond_218
    move-object/from16 v0, p0

    goto/16 :goto_18b

    .line 350
    :cond_21c
    invoke-interface {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v13

    invoke-interface {v8, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_22d

    .line 351
    invoke-interface {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v13

    invoke-interface {v8, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 355
    :cond_22d
    sget-object v13, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->NORMAL:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne v10, v13, :cond_23a

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/parameters/ObjectTracking;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/ObjectTracking;

    if-ne v0, v13, :cond_23a

    .line 356
    sget-object v13, Lcom/sonyericsson/android/camera/configuration/parameters/TouchIntention;->OBJECT_TRACKING:Lcom/sonyericsson/android/camera/configuration/parameters/TouchIntention;

    invoke-virtual {v5, v13}, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 359
    :cond_23a
    invoke-virtual {v5, v0}, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 360
    sget-boolean v0, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->DEBUG_ENABLED:Z

    if-eqz v0, :cond_246

    const-string v0, "apply-selectable-supported-current-value"

    .line 361
    invoke-interface {v6, v14, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_246
    move-object/from16 v0, p0

    goto/16 :goto_18b

    .line 365
    :cond_24a
    sget-boolean v0, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->DEBUG_ENABLED:Z

    if-eqz v0, :cond_271

    const-string v0, "cameramigrator"

    .line 366
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "- migrate "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " settings"

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_271
    move-object/from16 v0, p0

    goto/16 :goto_f4

    .line 369
    :cond_275
    sget-boolean v0, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->DEBUG_ENABLED:Z

    if-eqz v0, :cond_280

    const-string v0, "cameramigrator"

    const-string v6, "- migrate capturing mode settings"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :cond_280
    sget-boolean v0, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->DEBUG_ENABLED:Z

    if-eqz v0, :cond_28b

    const-string v0, "cameramigrator"

    const-string v6, "+ release camera parameter manager"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    :cond_28b
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v1, v4, v0}, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->saveMigrateParameters(Ljava/util/Map;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 374
    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->release()V

    .line 375
    sget-boolean v0, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->DEBUG_ENABLED:Z

    if-eqz v0, :cond_29e

    const-string v0, "cameramigrator"

    const-string v1, "- release camera parameter manager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :cond_29e
    sget-boolean v0, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->DEBUG_ENABLED:Z

    if-eqz v0, :cond_2a9

    const-string v0, "cameramigrator"

    const-string v1, "+ migrate non-capturing mode settings"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    :cond_2a9
    invoke-static {v2, v3}, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->migrateOtherSettingsToSharedPrefs(Ljava/util/Map;Landroid/content/SharedPreferences;)Z

    move-result v0

    if-nez v0, :cond_2ba

    .line 380
    sget-boolean v0, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->DEBUG_ENABLED:Z

    if-eqz v0, :cond_2ba

    const-string v0, "cameramigrator"

    const-string v1, "- failed to write non-capturing mode settings"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    :cond_2ba
    sget-boolean v0, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->DEBUG_ENABLED:Z

    if-eqz v0, :cond_2c5

    const-string v0, "cameramigrator"

    const-string v1, "- migrate non-capturing mode settings"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :cond_2c5
    sget-boolean v0, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->DEBUG_ENABLED:Z

    if-eqz v0, :cond_2d0

    const-string v0, "cameramigrator"

    const-string v1, "+ preference file name check"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    :cond_2d0
    invoke-static/range {p0 .. p0}, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->renamePreferenceFileName(Landroid/content/Context;)V

    .line 389
    sget-boolean v0, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->DEBUG_ENABLED:Z

    if-eqz v0, :cond_2de

    const-string v0, "cameramigrator"

    const-string v1, "- preference file name check"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :cond_2de
    sget-boolean v0, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->DEBUG_ENABLED:Z

    if-eqz v0, :cond_2e9

    const-string v0, "cameramigrator"

    const-string v1, "- camera settings migration"

    .line 399
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e9
    return-void
.end method

.method private static migrateOtherSettingsToSharedPrefs(Ljava/util/Map;Landroid/content/SharedPreferences;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;",
            "Landroid/content/SharedPreferences;",
            ")Z"
        }
    .end annotation

    .line 552
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 553
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_55

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 554
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 555
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v2, "NO_VALUE"

    invoke-static {v0, v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "NO_VALUE"

    .line 558
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    goto :goto_c

    :cond_31
    const-string v2, "CAPTURING_MODE_"

    .line 563
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3a

    goto :goto_c

    :cond_3a
    const/4 v2, -0x1

    .line 568
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, 0x7de027ac

    if-eq v3, v4, :cond_45

    goto :goto_4e

    :cond_45
    const-string v3, "KEY_LAST_MODE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4e

    const/4 v2, 0x0

    :cond_4e
    :goto_4e
    if-eqz v2, :cond_51

    goto :goto_c

    .line 578
    :cond_51
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_c

    .line 580
    :cond_55
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p0

    return p0
.end method

.method private static parse(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder<",
            "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;",
            ">;"
        }
    .end annotation

    .line 607
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;-><init>(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 608
    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->parseValueString(Ljava/lang/String;)V

    return-object v0
.end method

.method private static renamePreferenceFileName(Landroid/content/Context;)V
    .registers 4

    .line 712
    invoke-virtual {p0}, Landroid/content/Context;->getDataDir()Ljava/io/File;

    move-result-object p0

    .line 713
    new-instance v0, Ljava/io/File;

    const-string v1, "shared_prefs"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 714
    new-instance p0, Ljava/io/File;

    const-string v1, "tutorial.xml"

    invoke-direct {p0, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 717
    new-instance v1, Ljava/io/File;

    const-string v2, "messages.xml"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 721
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 722
    invoke-virtual {p0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    if-nez p0, :cond_2c

    const-string p0, "cameramigrator"

    const-string v0, "File rename failed"

    .line 723
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    return-void
.end method
