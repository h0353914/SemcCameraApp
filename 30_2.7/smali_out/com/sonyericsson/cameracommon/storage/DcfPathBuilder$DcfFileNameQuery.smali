.class Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$DcfFileNameQuery;
.super Ljava/lang/Object;
.source "DcfPathBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DcfFileNameQuery"
.end annotation


# instance fields
.field private mQueryDirNo:I

.field private mQueryFileNo:I

.field final synthetic this$0:Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;)V
    .registers 2

    .line 121
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$DcfFileNameQuery;->this$0:Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$1;)V
    .registers 3

    .line 121
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$DcfFileNameQuery;-><init>(Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;)V

    return-void
.end method

.method static synthetic access$300(Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$DcfFileNameQuery;)I
    .registers 1

    .line 121
    iget p0, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$DcfFileNameQuery;->mQueryDirNo:I

    return p0
.end method

.method static synthetic access$302(Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$DcfFileNameQuery;I)I
    .registers 2

    .line 121
    iput p1, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$DcfFileNameQuery;->mQueryDirNo:I

    return p1
.end method

.method static synthetic access$400(Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$DcfFileNameQuery;)I
    .registers 1

    .line 121
    iget p0, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$DcfFileNameQuery;->mQueryFileNo:I

    return p0
.end method

.method static synthetic access$402(Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$DcfFileNameQuery;I)I
    .registers 2

    .line 121
    iput p1, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$DcfFileNameQuery;->mQueryFileNo:I

    return p1
.end method


# virtual methods
.method public query()Z
    .registers 15

    .line 126
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$DcfFileNameQuery;->this$0:Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;

    # getter for: Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->mStorageType:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->access$000(Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v0

    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->getVolume(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 127
    new-instance v1, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;

    invoke-direct {v1}, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;-><init>()V

    const-string v2, "bucket_display_name"

    const-string v3, "_display_name"

    .line 128
    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->projection:[Ljava/lang/String;

    .line 132
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%s DESC, %s DESC"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "relative_path"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-string v6, "_id"

    const/4 v8, 0x1

    aput-object v6, v5, v8

    invoke-static {v2, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->sortOrder:Ljava/lang/String;

    .line 134
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%s like \'%s\' AND %s like \'%s\' AND %s like \'%s\' AND (%s like \'%s\' OR %s like \'%s\')"

    const/16 v5, 0xa

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "bucket_display_name"

    aput-object v6, v5, v7

    const-string v6, "%ANDRO%"

    aput-object v6, v5, v8

    const-string v6, "relative_path"

    aput-object v6, v5, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "%"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "%"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x3

    aput-object v4, v5, v6

    const-string v4, "volume_name"

    const/4 v9, 0x4

    aput-object v4, v5, v9

    const/4 v4, 0x5

    aput-object v0, v5, v4

    const-string v0, "_display_name"

    const/4 v4, 0x6

    aput-object v0, v5, v4

    const-string v0, "%DSC_%"

    const/4 v4, 0x7

    aput-object v0, v5, v4

    const-string v0, "_display_name"

    const/16 v4, 0x8

    aput-object v0, v5, v4

    const-string v0, "%MOV_%"

    const/16 v10, 0x9

    aput-object v0, v5, v10

    invoke-static {v2, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->where:Ljava/lang/String;

    const-string v0, "external"

    .line 148
    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 147
    invoke-static {v0}, Landroid/provider/MediaStore;->setIncludePending(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 150
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 149
    invoke-static {v2, v0, v1}, Lcom/sonyericsson/cameracommon/contentsview/PhotoStackQueryHelper;->crQuery(Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x64

    if-eqz v0, :cond_129

    .line 153
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ge v2, v8, :cond_a9

    goto/16 :goto_129

    .line 159
    :catch_a9
    :cond_a9
    :goto_a9
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_125

    :try_start_af
    const-string v2, "bucket_display_name"

    .line 161
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 163
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v4, :cond_a9

    .line 165
    invoke-virtual {v2, v7, v6}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 164
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 166
    iget v5, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$DcfFileNameQuery;->mQueryDirNo:I

    if-lt v3, v5, :cond_a9

    if-gt v1, v3, :cond_fc

    const/16 v5, 0x3e7

    if-gt v3, v5, :cond_fc

    .line 168
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v11, "%03d"

    new-array v12, v8, [Ljava/lang/Object;

    .line 169
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v7

    .line 168
    invoke-static {v10, v11, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "ANDRO"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 170
    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_fc

    .line 171
    iput v3, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$DcfFileNameQuery;->mQueryDirNo:I

    :cond_fc
    const-string v2, "_display_name"

    .line 174
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 176
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v5, 0xc

    if-ne v3, v5, :cond_a9

    .line 178
    invoke-virtual {v2, v9, v4}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 177
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 179
    iget v3, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$DcfFileNameQuery;->mQueryFileNo:I

    if-lt v2, v3, :cond_a9

    if-gt v8, v2, :cond_a9

    const/16 v3, 0x270f

    if-gt v2, v3, :cond_a9

    .line 181
    iput v2, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$DcfFileNameQuery;->mQueryFileNo:I
    :try_end_124
    .catch Ljava/lang/NumberFormatException; {:try_start_af .. :try_end_124} :catch_a9

    goto :goto_a9

    .line 192
    :cond_125
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return v8

    .line 154
    :cond_129
    :goto_129
    iput v1, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$DcfFileNameQuery;->mQueryDirNo:I

    .line 155
    iput v8, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$DcfFileNameQuery;->mQueryFileNo:I

    return v7
.end method
