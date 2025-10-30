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

    .line 80
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->DEBUG_ENABLED:Z

    .line 97
    new-instance v0, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator$1;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator$1;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->SETTINGS:Ljava/util/Map;

    const/16 v0, 0x10

    .line 163
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

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SIDE_SENSE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->AUTO_REVIEW:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->DISTORTION_CORRECTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

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

    .line 164
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->COMMON_SETTINGS:Ljava/util/List;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static backupSharedPrefs(Landroid/content/Context;)V
    .registers 7

    const/4 v0, 0x0

    .line 475
    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->getSharedPrefsFile(Landroid/content/Context;Z)Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x1

    .line 477
    invoke-static {p0, v2}, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->getSharedPrefsFile(Landroid/content/Context;Z)Ljava/io/File;

    move-result-object p0

    const/16 v2, 0x1000

    .line 479
    new-array v2, v2, [B

    .line 481
    :try_start_e
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_13
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_13} :catch_76
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_13} :catch_5e

    const/4 v1, 0x0

    .line 482
    :try_start_14
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_19} :catch_4a
    .catchall {:try_start_14 .. :try_end_19} :catchall_48

    .line 483
    :goto_19
    :try_start_19
    invoke-virtual {v3, v2}, Ljava/io/InputStream;->read([B)I

    move-result p0

    if-ltz p0, :cond_23

    .line 484
    invoke-virtual {v4, v2, v0, p0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_22} :catch_31
    .catchall {:try_start_19 .. :try_end_22} :catchall_2e

    goto :goto_19

    :cond_23
    if-eqz v4, :cond_28

    .line 486
    :try_start_25
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_28} :catch_4a
    .catchall {:try_start_25 .. :try_end_28} :catchall_48

    :cond_28
    if-eqz v3, :cond_8d

    :try_start_2a
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2d
    .catch Ljava/io/FileNotFoundException; {:try_start_2a .. :try_end_2d} :catch_76
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_5e

    goto :goto_8d

    :catchall_2e
    move-exception p0

    move-object v0, v1

    goto :goto_37

    :catch_31
    move-exception p0

    .line 481
    :try_start_32
    throw p0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_33

    :catchall_33
    move-exception v0

    move-object v5, v0

    move-object v0, p0

    move-object p0, v5

    :goto_37
    if-eqz v4, :cond_47

    if-eqz v0, :cond_44

    .line 486
    :try_start_3b
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3e} :catch_3f
    .catchall {:try_start_3b .. :try_end_3e} :catchall_48

    goto :goto_47

    :catch_3f
    move-exception v2

    :try_start_40
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_47

    :cond_44
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    :cond_47
    :goto_47
    throw p0
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_48} :catch_4a
    .catchall {:try_start_40 .. :try_end_48} :catchall_48

    :catchall_48
    move-exception p0

    goto :goto_4d

    :catch_4a
    move-exception p0

    move-object v1, p0

    .line 481
    :try_start_4c
    throw v1
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_48

    :goto_4d
    if-eqz v3, :cond_5d

    if-eqz v1, :cond_5a

    .line 486
    :try_start_51
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_54} :catch_55
    .catch Ljava/io/FileNotFoundException; {:try_start_51 .. :try_end_54} :catch_76
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_5e

    goto :goto_5d

    :catch_55
    move-exception v0

    :try_start_56
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5d

    :cond_5a
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_5d
    :goto_5d
    throw p0
    :try_end_5e
    .catch Ljava/io/FileNotFoundException; {:try_start_56 .. :try_end_5e} :catch_76
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_5e} :catch_5e

    :catch_5e
    move-exception p0

    const-string v0, "cameramigrator"

    .line 489
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "backup shared preferences failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8d

    :catch_76
    move-exception p0

    const-string v0, "cameramigrator"

    .line 487
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "backup shared preferences failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8d
    :goto_8d
    return-void
.end method

.method private static convertUnsupportedValue(Lcom/sonyericsson/android/camera/parameter/UserSettingManager;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;
    .registers 5

    .line 642
    sget-object v0, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator$2;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_10

    goto :goto_22

    .line 644
    :cond_10
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->NORMAL:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne p2, v0, :cond_22

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Metering;->TOUCH:Lcom/sonyericsson/android/camera/configuration/parameters/Metering;

    if-ne p1, v0, :cond_22

    .line 645
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/TouchIntention;->FOCUS_AND_EXPOSURE:Lcom/sonyericsson/android/camera/configuration/parameters/TouchIntention;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 646
    invoke-static {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/Metering;->getDefaultValue(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/Metering;

    move-result-object p0

    goto :goto_23

    :cond_22
    :goto_22
    const/4 p0, 0x0

    :goto_23
    return-object p0
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

    .line 602
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "migration_report.xls"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 605
    :try_start_b
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_15} :catch_ce

    const/4 v0, 0x0

    :try_start_16
    const-string v2, "KEY\tLEGACY_VALUE\tDEFAULT_VALUE\tFINAL_VALUE\tSTATUS"

    .line 606
    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 607
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    .line 609
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 610
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 611
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 612
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 613
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 614
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 616
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_44
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_af

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 617
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "NO_VALUE"

    invoke-static {v4, v5}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 618
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "NO_VALUE"

    invoke-static {v5, v6}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 619
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "NO_VALUE"

    invoke-static {v6, v7}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 620
    invoke-interface {p3, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "NO_VALUE"

    invoke-static {v7, v8}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "CAPTURING_MODE_"

    .line 622
    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_90

    .line 623
    invoke-static {v4}, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->parse(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 624
    invoke-static {v6}, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->parse(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_90
    const-string v8, "%s\t%s\t%s\t%s\t%s"

    const/4 v9, 0x5

    .line 627
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

    .line 629
    invoke-virtual {v1, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 630
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    goto :goto_44

    .line 633
    :cond_af
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V
    :try_end_b2
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_b2} :catch_ba
    .catchall {:try_start_16 .. :try_end_b2} :catchall_b8

    if-eqz v1, :cond_e5

    .line 634
    :try_start_b4
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_b7
    .catch Ljava/io/IOException; {:try_start_b4 .. :try_end_b7} :catch_ce

    goto :goto_e5

    :catchall_b8
    move-exception p0

    goto :goto_bd

    :catch_ba
    move-exception p0

    move-object v0, p0

    .line 605
    :try_start_bc
    throw v0
    :try_end_bd
    .catchall {:try_start_bc .. :try_end_bd} :catchall_b8

    :goto_bd
    if-eqz v1, :cond_cd

    if-eqz v0, :cond_ca

    .line 634
    :try_start_c1
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_c4
    .catch Ljava/lang/Throwable; {:try_start_c1 .. :try_end_c4} :catch_c5
    .catch Ljava/io/IOException; {:try_start_c1 .. :try_end_c4} :catch_ce

    goto :goto_cd

    :catch_c5
    move-exception p1

    :try_start_c6
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_cd

    :cond_ca
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    :cond_cd
    :goto_cd
    throw p0
    :try_end_ce
    .catch Ljava/io/IOException; {:try_start_c6 .. :try_end_ce} :catch_ce

    :catch_ce
    move-exception p0

    const-string p1, "cameramigrator"

    .line 635
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "create migration report failed: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e5
    :goto_e5
    return-void
.end method

.method private static createParameterKeyPrefixForCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Ljava/lang/String;
    .registers 3

    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 430
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/ParameterCategory;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 431
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, "PARAMS_"

    .line 432
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
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

    .line 449
    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method private static getSharedPrefsFile(Landroid/content/Context;Z)Ljava/io/File;
    .registers 4

    .line 460
    invoke-virtual {p0}, Landroid/content/Context;->getDataDir()Ljava/io/File;

    move-result-object p0

    .line 461
    new-instance v0, Ljava/io/File;

    const-string v1, "shared_prefs"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string p0, "com.sonyericsson.android.camera.shared_preferences"

    if-eqz p1, :cond_11

    const-string p0, "com.sonyericsson.android.camera.shared_preferences_legacy"

    .line 467
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

    .line 560
    invoke-interface {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v0

    .line 561
    invoke-interface {p0, v0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->getOptions(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)[Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    if-eqz p0, :cond_18

    .line 562
    array-length v0, p0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_f

    goto :goto_18

    .line 566
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

    .line 379
    sget-boolean v0, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->DEBUG_ENABLED:Z

    if-eqz v0, :cond_b

    const-string v0, "cameramigrator"

    const-string v1, "loadMigrationDataSync() E"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    :cond_b
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->loadMigrateParameters()Ljava/util/Map;

    move-result-object p2

    .line 382
    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->replaceParameterEntries(Ljava/util/Map;)V

    .line 384
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/parameter/Parameters;

    .line 386
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->values()[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_2c
    if-ge v4, v3, :cond_1a

    aget-object v5, v2, v4

    .line 387
    sget-object v6, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->NONE:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-virtual {p1, v5, v6}, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->isNeededToLoad(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;)Z

    move-result v6

    if-nez v6, :cond_3d

    .line 388
    iget-object v6, v1, Lcom/sonyericsson/android/camera/parameter/Parameters;->mHolders:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3d
    add-int/lit8 v4, v4, 0x1

    goto :goto_2c

    .line 393
    :cond_40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 395
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_60

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/parameter/Parameters;

    .line 396
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/parameter/Parameters;->updatePhotoLight()V

    .line 397
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4d

    .line 399
    :cond_60
    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->setDefaultToNonExistentResolution(Ljava/util/List;)V

    .line 400
    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->setDefaultToNonExistentVideoSize(Ljava/util/List;)V

    .line 401
    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->setDefaultToNonExistentVideoShutterTrigger(Ljava/util/List;)V

    .line 403
    invoke-virtual {p1, p0}, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->changeCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 405
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

    .line 406
    iget-object v1, v0, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_74

    .line 407
    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/parameter/Parameters;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->setupVideoOption(Lcom/sonyericsson/android/camera/parameter/Parameters;)V

    goto :goto_74

    .line 413
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

    .line 414
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->commit()V

    goto :goto_9d

    .line 417
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
    .registers 16
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ApplySharedPref"
        }
    .end annotation

    .line 185
    sget-boolean v0, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->DEBUG_ENABLED:Z

    if-eqz v0, :cond_b

    const-string v0, "cameramigrator"

    const-string v1, "+ camera settings migration"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_b
    sget-boolean v0, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->DEBUG_ENABLED:Z

    if-eqz v0, :cond_16

    const-string v0, "cameramigrator"

    const-string v1, "+ backup shared preferences"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_16
    invoke-static {p0}, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->backupSharedPrefs(Landroid/content/Context;)V

    .line 190
    sget-boolean v0, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->DEBUG_ENABLED:Z

    if-eqz v0, :cond_24

    const-string v0, "cameramigrator"

    const-string v1, "- backup shared preferences"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_24
    sget-boolean v0, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->DEBUG_ENABLED:Z

    if-eqz v0, :cond_2f

    const-string v0, "cameramigrator"

    const-string v1, "+ cache all camera settings"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f
    const/4 v0, 0x1

    .line 194
    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->getSharedPrefs(Landroid/content/Context;Z)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 195
    sget-boolean v1, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->DEBUG_ENABLED:Z

    if-eqz v1, :cond_43

    const-string v1, "cameramigrator"

    const-string v2, "- cache all camera settings"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_43
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_55

    .line 198
    sget-boolean p0, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->DEBUG_ENABLED:Z

    if-eqz p0, :cond_54

    const-string p0, "cameramigrator"

    const-string p1, "ignore migration since legacy camera settings is empty"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_54
    return-void

    .line 203
    :cond_55
    sget-boolean v1, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->DEBUG_ENABLED:Z

    if-eqz v1, :cond_60

    const-string v1, "cameramigrator"

    const-string v2, "+ cleanup shared preferences"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_60
    const/4 v1, 0x0

    .line 204
    invoke-static {p0, v1}, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->getSharedPrefs(Landroid/content/Context;Z)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 205
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 206
    sget-boolean v2, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->DEBUG_ENABLED:Z

    if-eqz v2, :cond_7b

    const-string v2, "cameramigrator"

    const-string v3, "- cleanup shared preferences"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7b
    const-string v2, "android.permission.CAMERA"

    .line 210
    invoke-virtual {p0, v2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_8f

    .line 212
    sget-boolean p0, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->DEBUG_ENABLED:Z

    if-eqz p0, :cond_8e

    const-string p0, "cameramigrator"

    const-string p1, "ignore migration since not have camera permission"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8e
    return-void

    .line 217
    :cond_8f
    sget-boolean v2, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->DEBUG_ENABLED:Z

    if-eqz v2, :cond_9a

    const-string v2, "cameramigrator"

    const-string v3, "+ setup camera parameter manager"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_9a
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 220
    new-instance v3, Lcom/sonyericsson/android/camera/configuration/IntentReader;

    invoke-direct {v3}, Lcom/sonyericsson/android/camera/configuration/IntentReader;-><init>()V

    .line 221
    invoke-virtual {v3, v2}, Lcom/sonyericsson/android/camera/configuration/IntentReader;->getVideoQualityConfigurations(Landroid/content/Intent;)Lcom/sonyericsson/android/camera/configuration/IntentReader$VideoQualityConfigurations;

    move-result-object v8

    .line 222
    new-instance v2, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;

    invoke-direct {v2, p0, p1}, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;-><init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/storage/Storage;)V

    .line 223
    sget-object v6, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->NONE:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v4 .. v9}, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->prepare(Landroid/content/Context;Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;Landroid/net/Uri;Lcom/sonyericsson/android/camera/configuration/IntentReader$VideoQualityConfigurations;Lcom/sonyericsson/android/camera/setting/ExtraSettings;)V

    .line 224
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->NORMAL:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-static {p0, v2, p2}, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->loadMigrationData(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/parameter/UserSettingManager;Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;)Ljava/util/Map;

    move-result-object p0

    .line 227
    sget-boolean p1, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->DEBUG_ENABLED:Z

    if-eqz p1, :cond_cf

    const-string p1, "cameramigrator"

    const-string v3, "- setup camera parameter manager"

    invoke-static {p1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_cf
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 231
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 234
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 237
    sget-boolean v5, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->DEBUG_ENABLED:Z

    if-eqz v5, :cond_e9

    const-string v5, "cameramigrator"

    const-string v6, "+ migrate capturing mode settings"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_e9
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getValidOptions()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_f1
    :goto_f1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_252

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 239
    sget-boolean v7, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->DEBUG_ENABLED:Z

    if-eqz v7, :cond_124

    const-string v7, "cameramigrator"

    .line 240
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "+ migrate "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " settings"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_124
    invoke-virtual {v2, v6}, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->changeCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 245
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->applyCapturingMode()V

    .line 248
    invoke-static {v6}, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->createParameterKeyPrefixForCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Ljava/lang/String;

    move-result-object v7

    .line 250
    sget-boolean v8, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->DEBUG_ENABLED:Z

    if-eqz v8, :cond_16f

    .line 253
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->getParameters()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v8

    .line 254
    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getHolder()Ljava/util/Map;

    move-result-object v8

    .line 255
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_142
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_16f

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 256
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 257
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_142

    .line 262
    :cond_16f
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 263
    sget-object v9, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->SETTINGS:Ljava/util/Map;

    invoke-interface {v9, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Collection;

    invoke-interface {v8, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 264
    sget-object v9, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->COMMON_SETTINGS:Ljava/util/List;

    invoke-interface {v8, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 265
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_188
    :goto_188
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_229

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 266
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 269
    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    const-string v12, "NO_VALUE"

    invoke-static {v11, v12}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "NO_VALUE"

    .line 270
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1bf

    .line 271
    sget-boolean v9, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->DEBUG_ENABLED:Z

    if-eqz v9, :cond_188

    const-string v9, "ignore-null-legacy-value"

    .line 272
    invoke-interface {p1, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_188

    .line 279
    :cond_1bf
    invoke-static {v11}, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->parse(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v11

    if-nez v11, :cond_1d3

    .line 281
    sget-boolean v9, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->DEBUG_ENABLED:Z

    if-eqz v9, :cond_188

    const-string v9, "ignore-null-current-value"

    .line 282
    invoke-interface {p1, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_188

    .line 305
    :cond_1d3
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->getParameters()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v12

    invoke-static {v9, v12, v11}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->isSelectableValues(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/android/camera/parameter/Parameters;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Z

    move-result v9

    if-nez v9, :cond_1e7

    .line 306
    sget-boolean v9, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->DEBUG_ENABLED:Z

    if-eqz v9, :cond_188

    const-string v9, "ignore-unselectable-current-value"

    .line 307
    invoke-interface {p1, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_188

    .line 315
    :cond_1e7
    invoke-static {v2, v11}, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->isSupported(Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Z

    move-result v9

    if-nez v9, :cond_1fd

    .line 316
    invoke-static {v2, v11, v6}, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->convertUnsupportedValue(Lcom/sonyericsson/android/camera/parameter/UserSettingManager;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v11

    if-nez v11, :cond_1fd

    .line 318
    sget-boolean v9, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->DEBUG_ENABLED:Z

    if-eqz v9, :cond_188

    const-string v9, "ignore-unsupported-current-value"

    .line 319
    invoke-interface {p1, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_188

    .line 326
    :cond_1fd
    invoke-interface {v11}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_20e

    .line 327
    invoke-interface {v11}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 331
    :cond_20e
    sget-object v9, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->NORMAL:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne v6, v9, :cond_21b

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/parameters/ObjectTracking;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/ObjectTracking;

    if-ne v11, v9, :cond_21b

    .line 332
    sget-object v9, Lcom/sonyericsson/android/camera/configuration/parameters/TouchIntention;->OBJECT_TRACKING:Lcom/sonyericsson/android/camera/configuration/parameters/TouchIntention;

    invoke-virtual {v2, v9}, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 335
    :cond_21b
    invoke-virtual {v2, v11}, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 336
    sget-boolean v9, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->DEBUG_ENABLED:Z

    if-eqz v9, :cond_188

    const-string v9, "apply-selectable-supported-current-value"

    .line 337
    invoke-interface {p1, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_188

    .line 341
    :cond_229
    sget-boolean v7, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->DEBUG_ENABLED:Z

    if-eqz v7, :cond_f1

    const-string v7, "cameramigrator"

    .line 342
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "- migrate "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " settings"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f1

    .line 345
    :cond_252
    sget-boolean v4, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->DEBUG_ENABLED:Z

    if-eqz v4, :cond_25d

    const-string v4, "cameramigrator"

    const-string v5, "- migrate capturing mode settings"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :cond_25d
    sget-boolean v4, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->DEBUG_ENABLED:Z

    if-eqz v4, :cond_268

    const-string v4, "cameramigrator"

    const-string v5, "+ release camera parameter manager"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :cond_268
    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {p2, p0, v4}, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->saveMigrateParameters(Ljava/util/Map;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 350
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->release()V

    .line 351
    sget-boolean p0, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->DEBUG_ENABLED:Z

    if-eqz p0, :cond_27b

    const-string p0, "cameramigrator"

    const-string p2, "- release camera parameter manager"

    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :cond_27b
    sget-boolean p0, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->DEBUG_ENABLED:Z

    if-eqz p0, :cond_286

    const-string p0, "cameramigrator"

    const-string p2, "+ migrate non-capturing mode settings"

    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :cond_286
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->migrateOtherSettingsToSharedPrefs(Ljava/util/Map;Landroid/content/SharedPreferences;)Z

    move-result p0

    if-nez p0, :cond_297

    .line 356
    sget-boolean p0, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->DEBUG_ENABLED:Z

    if-eqz p0, :cond_297

    const-string p0, "cameramigrator"

    const-string p2, "- failed to write non-capturing mode settings"

    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :cond_297
    sget-boolean p0, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->DEBUG_ENABLED:Z

    if-eqz p0, :cond_2a2

    const-string p0, "cameramigrator"

    const-string p2, "- migrate non-capturing mode settings"

    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :cond_2a2
    sget-boolean p0, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->DEBUG_ENABLED:Z

    if-eqz p0, :cond_2bf

    const-string p0, "cameramigrator"

    const-string p2, "+ generate camera settings migration report"

    .line 362
    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    .line 364
    invoke-static {v0, v3, p0, p1}, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->createMigrationReport(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    const-string p0, "cameramigrator"

    const-string p1, "- generate camera settings migration report"

    .line 365
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :cond_2bf
    sget-boolean p0, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->DEBUG_ENABLED:Z

    if-eqz p0, :cond_2ca

    const-string p0, "cameramigrator"

    const-string p1, "- camera settings migration"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2ca
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

    .line 521
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 522
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

    .line 523
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 524
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v2, "NO_VALUE"

    invoke-static {v0, v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "NO_VALUE"

    .line 527
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    goto :goto_c

    :cond_31
    const-string v2, "CAPTURING_MODE_"

    .line 532
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3a

    goto :goto_c

    :cond_3a
    const/4 v2, -0x1

    .line 537
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

    .line 547
    :cond_51
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_c

    .line 549
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

    .line 576
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;-><init>(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 577
    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->parseValueString(Ljava/lang/String;)V

    return-object v0
.end method
