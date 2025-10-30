.class final Lcom/sonyericsson/cameracommon/storage/processing/ProviderDbHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "ProviderDbHelper.java"


# static fields
.field private static final DATABASE_VERSION:I = 0x2

.field private static final NAME:Ljava/lang/String; = "provider_db_helper"

.field private static volatile helper:Lcom/sonyericsson/cameracommon/storage/processing/ProviderDbHelper;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 5

    const-string v0, "provider_db_helper"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 29
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method static get(Landroid/content/Context;)Lcom/sonyericsson/cameracommon/storage/processing/ProviderDbHelper;
    .registers 3

    .line 17
    sget-object v0, Lcom/sonyericsson/cameracommon/storage/processing/ProviderDbHelper;->helper:Lcom/sonyericsson/cameracommon/storage/processing/ProviderDbHelper;

    if-nez v0, :cond_17

    .line 18
    const-class v0, Lcom/sonyericsson/cameracommon/storage/processing/ProviderDbHelper;

    monitor-enter v0

    .line 19
    :try_start_7
    sget-object v1, Lcom/sonyericsson/cameracommon/storage/processing/ProviderDbHelper;->helper:Lcom/sonyericsson/cameracommon/storage/processing/ProviderDbHelper;

    if-nez v1, :cond_12

    .line 20
    new-instance v1, Lcom/sonyericsson/cameracommon/storage/processing/ProviderDbHelper;

    invoke-direct {v1, p0}, Lcom/sonyericsson/cameracommon/storage/processing/ProviderDbHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/sonyericsson/cameracommon/storage/processing/ProviderDbHelper;->helper:Lcom/sonyericsson/cameracommon/storage/processing/ProviderDbHelper;

    .line 22
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0

    .line 25
    :cond_17
    :goto_17
    sget-object p0, Lcom/sonyericsson/cameracommon/storage/processing/ProviderDbHelper;->helper:Lcom/sonyericsson/cameracommon/storage/processing/ProviderDbHelper;

    return-object p0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    .line 34
    invoke-static {}, Lcom/sonyericsson/cameracommon/storage/processing/TypeIdTable;->getCreateSql()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 5

    :goto_0
    if-ge p2, p3, :cond_f

    const/4 p0, 0x1

    if-eq p2, p0, :cond_6

    goto :goto_0

    :cond_6
    const-string p0, "type_uri"

    const/4 v0, 0x0

    .line 43
    invoke-virtual {p1, p0, v0, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_f
    return-void
.end method
