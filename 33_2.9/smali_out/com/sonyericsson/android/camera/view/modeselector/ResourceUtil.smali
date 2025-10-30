.class public Lcom/sonyericsson/android/camera/view/modeselector/ResourceUtil;
.super Ljava/lang/Object;
.source "ResourceUtil.java"


# static fields
.field public static final HTTPS_SCHEME:Ljava/lang/String; = "https"

.field public static final HTTP_SCHEME:Ljava/lang/String; = "http"

.field private static final ICON_SIZE_LIMIT_COEFFICIENT:I = 0x2

.field private static final IO_BUFFER_SIZE:I = 0x1000

.field private static final NETWORK_TIMEOUT:I = 0xea60

.field public static final RESOURCE_SCHEME:Ljava/lang/String; = "resource"

.field public static final RES_TYPE_NAME_DRAWABLE:Ljava/lang/String; = "drawable"

.field public static final RES_TYPE_NAME_STRING:Ljava/lang/String; = "string"

.field private static final TAG:Ljava/lang/String; = "ResourceUtil"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 252
    :goto_4
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_10

    const/4 v2, 0x0

    .line 253
    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_4

    :cond_10
    return-void
.end method

.method public static getBitmap(Landroid/content/Context;Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .registers 8

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 127
    :cond_4
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 128
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "resource"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 129
    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    .line 130
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 131
    invoke-static {p0, p1, v0, p2, p3}, Lcom/sonyericsson/android/camera/view/modeselector/ResourceUtil;->getBitmap(Landroid/content/Context;Ljava/lang/String;III)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_46

    .line 132
    :cond_25
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p0

    const-string v2, "https"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_36

    .line 133
    invoke-static {p1, p2, p3}, Lcom/sonyericsson/android/camera/view/modeselector/ResourceUtil;->getRemoteBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_46

    .line 134
    :cond_36
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p0

    const-string v1, "http"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_46

    .line 135
    invoke-static {p1, p2, p3}, Lcom/sonyericsson/android/camera/view/modeselector/ResourceUtil;->getRemoteBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_46
    :goto_46
    return-object v0
.end method

.method public static getBitmap(Landroid/content/Context;Ljava/lang/String;III)Landroid/graphics/Bitmap;
    .registers 13

    const-string v0, ", h="

    .line 147
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 149
    :try_start_9
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0

    .line 151
    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 152
    iput-boolean v3, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    mul-int/lit8 v4, p3, 0x2

    mul-int/lit8 v5, p4, 0x2

    .line 158
    invoke-static {p0, p2, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 160
    iget v6, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lt v4, v6, :cond_32

    iget v6, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ge v5, v6, :cond_24

    goto :goto_32

    .line 170
    :cond_24
    invoke-static {p0, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_28
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_28} :catch_71
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_9 .. :try_end_28} :catch_71
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9 .. :try_end_28} :catch_71

    if-eqz p0, :cond_75

    .line 173
    :try_start_2a
    invoke-static {p0, p3, p4, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_2e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2a .. :try_end_2e} :catch_2f
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2a .. :try_end_2e} :catch_2f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2a .. :try_end_2e} :catch_2f

    goto :goto_75

    :catch_2f
    move-exception p1

    move-object v2, p1

    goto :goto_75

    :cond_32
    :goto_32
    :try_start_32
    new-array p0, v3, [Ljava/lang/String;

    .line 161
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Stop loading drawable. The drawable size is too large. Limit size is [w="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "]. Drawable size is [w="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p3, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p1, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v1

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V
    :try_end_70
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_32 .. :try_end_70} :catch_71
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_32 .. :try_end_70} :catch_71
    .catch Ljava/lang/OutOfMemoryError; {:try_start_32 .. :try_end_70} :catch_71

    return-object v2

    :catch_71
    move-exception p0

    move-object v7, v2

    move-object v2, p0

    move-object p0, v7

    :cond_75
    :goto_75
    if-eqz v2, :cond_95

    new-array p1, v3, [Ljava/lang/String;

    .line 184
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Could not get drawable. Message : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    :cond_95
    return-object p0
.end method

.method private static getRemoteBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .registers 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 195
    :try_start_3
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 197
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;
    :try_end_e
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_e} :catch_9b
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_e} :catch_75
    .catchall {:try_start_3 .. :try_end_e} :catchall_73

    const v3, 0xea60

    .line 198
    :try_start_11
    invoke-virtual {p0, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 199
    invoke-virtual {p0, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V
    :try_end_17
    .catch Ljava/net/MalformedURLException; {:try_start_11 .. :try_end_17} :catch_71
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_17} :catch_6f
    .catchall {:try_start_11 .. :try_end_17} :catchall_c1

    .line 207
    :try_start_17
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_20
    .catchall {:try_start_17 .. :try_end_20} :catchall_61

    .line 208
    :try_start_20
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 209
    new-instance v5, Ljava/io/BufferedOutputStream;

    const/16 v6, 0x1000

    invoke-direct {v5, v4, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_2c
    .catchall {:try_start_20 .. :try_end_2c} :catchall_5e

    .line 211
    :try_start_2c
    invoke-static {v3, v5}, Lcom/sonyericsson/android/camera/view/modeselector/ResourceUtil;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 212
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 214
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 215
    array-length v6, v4

    invoke-static {v4, v0, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v4
    :try_end_3b
    .catchall {:try_start_2c .. :try_end_3b} :catchall_5c

    .line 218
    :try_start_3b
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 221
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_41
    .catch Ljava/net/MalformedURLException; {:try_start_3b .. :try_end_41} :catch_71
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_41} :catch_6f
    .catchall {:try_start_3b .. :try_end_41} :catchall_c1

    if-eqz p0, :cond_46

    .line 232
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_46
    if-eqz v4, :cond_52

    .line 238
    invoke-static {v4, p1, p2, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eq v4, v2, :cond_5b

    .line 240
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_5b

    :cond_52
    const-string p0, "Bitmap is null."

    .line 243
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    :cond_5b
    :goto_5b
    return-object v2

    :catchall_5c
    move-exception p1

    goto :goto_64

    :catchall_5e
    move-exception p1

    move-object v5, v2

    goto :goto_64

    :catchall_61
    move-exception p1

    move-object v3, v2

    move-object v5, v3

    :goto_64
    if-eqz v3, :cond_69

    .line 218
    :try_start_66
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_69
    if-eqz v5, :cond_6e

    .line 221
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 223
    :cond_6e
    throw p1
    :try_end_6f
    .catch Ljava/net/MalformedURLException; {:try_start_66 .. :try_end_6f} :catch_71
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_6f} :catch_6f
    .catchall {:try_start_66 .. :try_end_6f} :catchall_c1

    :catch_6f
    move-exception p1

    goto :goto_77

    :catch_71
    move-exception p1

    goto :goto_9d

    :catchall_73
    move-exception p1

    goto :goto_c3

    :catch_75
    move-exception p1

    move-object p0, v2

    :goto_77
    :try_start_77
    new-array p2, v1, [Ljava/lang/String;

    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not open connection. "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v0

    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V
    :try_end_95
    .catchall {:try_start_77 .. :try_end_95} :catchall_c1

    if-eqz p0, :cond_9a

    .line 232
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_9a
    return-object v2

    :catch_9b
    move-exception p1

    move-object p0, v2

    :goto_9d
    :try_start_9d
    new-array p2, v1, [Ljava/lang/String;

    .line 225
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Malformed URL. "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v0

    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V
    :try_end_bb
    .catchall {:try_start_9d .. :try_end_bb} :catchall_c1

    if-eqz p0, :cond_c0

    .line 232
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_c0
    return-object v2

    :catchall_c1
    move-exception p1

    move-object v2, p0

    :goto_c3
    if-eqz v2, :cond_c8

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 234
    :cond_c8
    throw p1
.end method

.method public static getResourceUri(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .registers 4

    .line 117
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "resource://"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "/"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .registers 5

    .line 74
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 76
    :try_start_4
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0

    .line 77
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_c} :catch_d

    return-object p0

    :catch_d
    move-exception p0

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    const/4 p2, 0x0

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not get string. Message : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, p2

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 81
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static getString(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    .line 92
    :try_start_1
    invoke-static {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/modeselector/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    .line 93
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p0

    if-ge p4, p0, :cond_18

    const-string p0, "Loaded string is over limit length."

    .line 94
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    .line 95
    invoke-virtual {p3, v0, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3
    :try_end_18
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_18} :catch_1a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_18} :catch_1a
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_18} :catch_1a

    :cond_18
    const/4 p0, 0x0

    goto :goto_1b

    :catch_1a
    move-exception p0

    :goto_1b
    if-eqz p0, :cond_3c

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    .line 110
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Could not get string. Message : "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, v0

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    :cond_3c
    return-object p3
.end method

.method private static isCorrectResourceType(Landroid/content/res/Resources;ILjava/lang/String;)Z
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 62
    :try_start_2
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object p0
    :try_end_6
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_6} :catch_7

    goto :goto_27

    :catch_7
    move-exception p0

    new-array p1, v1, [Ljava/lang/String;

    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resource type is not appropriate. Message : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/res/Resources$NotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, v0

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 66
    :goto_27
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_4f

    new-array p1, v1, [Ljava/lang/String;

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkResourceType() : expected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", actual="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 70
    :cond_4f
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isDrawableResource(Landroid/content/res/Resources;I)Z
    .registers 3

    const-string v0, "drawable"

    .line 50
    invoke-static {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/modeselector/ResourceUtil;->isCorrectResourceType(Landroid/content/res/Resources;ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isStringResource(Landroid/content/res/Resources;I)Z
    .registers 3

    const-string v0, "string"

    .line 54
    invoke-static {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/modeselector/ResourceUtil;->isCorrectResourceType(Landroid/content/res/Resources;ILjava/lang/String;)Z

    move-result p0

    return p0
.end method
