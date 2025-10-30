.class Lcom/sonymobile/camera/faultdetector/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/camera/faultdetector/b$c;,
        Lcom/sonymobile/camera/faultdetector/b$b;,
        Lcom/sonymobile/camera/faultdetector/b$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "Decryptor"

.field private static final b:Lcom/sonymobile/camera/faultdetector/b$a;

.field private static final c:Lcom/sonymobile/camera/faultdetector/b$a;

.field private static final d:Z


# instance fields
.field private e:[B

.field private f:Ljava/lang/String;

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/sonymobile/camera/faultdetector/b$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sonymobile/camera/faultdetector/b$b;-><init>(Lcom/sonymobile/camera/faultdetector/b$1;)V

    sput-object v0, Lcom/sonymobile/camera/faultdetector/b;->b:Lcom/sonymobile/camera/faultdetector/b$a;

    new-instance v0, Lcom/sonymobile/camera/faultdetector/b$c;

    invoke-direct {v0, v1}, Lcom/sonymobile/camera/faultdetector/b$c;-><init>(Lcom/sonymobile/camera/faultdetector/b$1;)V

    sput-object v0, Lcom/sonymobile/camera/faultdetector/b;->c:Lcom/sonymobile/camera/faultdetector/b$a;

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v1, "userdebug"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/sonymobile/camera/faultdetector/b;->d:Z

    return-void
.end method

.method constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "com.sonyericsson.sdo.appid.141"

    sget-object v1, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/camera/faultdetector/b;->e:[B

    const-string v0, "-12710-52-72-5542293-419-95-1113968-305398414"

    iput-object v0, p0, Lcom/sonymobile/camera/faultdetector/b;->f:Ljava/lang/String;

    return-void
.end method

.method private a(Landroid/app/Application;)Ljava/io/InputStream;
    .registers 2

    iget-boolean p0, p0, Lcom/sonymobile/camera/faultdetector/b;->g:Z

    if-eqz p0, :cond_7

    sget p0, Lcom/sonymobile/camera/faultdetector/R$raw;->data3:I

    goto :goto_9

    :cond_7
    sget p0, Lcom/sonymobile/camera/faultdetector/R$raw;->data4:I

    :goto_9
    invoke-virtual {p1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method private a()Ljava/lang/String;
    .registers 4

    sget-object v0, Lcom/sonymobile/camera/faultdetector/b;->c:Lcom/sonymobile/camera/faultdetector/b$a;

    invoke-virtual {v0}, Lcom/sonymobile/camera/faultdetector/b$a;->a()[B

    move-result-object v0

    sget-object v1, Lcom/sonymobile/camera/faultdetector/b;->b:Lcom/sonymobile/camera/faultdetector/b$a;

    invoke-virtual {v1}, Lcom/sonymobile/camera/faultdetector/b$a;->a()[B

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/camera/faultdetector/b;->e:[B

    invoke-direct {p0, v0, v1, v2}, Lcom/sonymobile/camera/faultdetector/b;->a([B[B[B)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonymobile/camera/faultdetector/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/camera/faultdetector/b;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    const/4 v1, 0x1

    goto :goto_21

    :cond_20
    const/4 v1, 0x0

    :goto_21
    iput-boolean v1, p0, Lcom/sonymobile/camera/faultdetector/b;->g:Z

    return-object v0
.end method

.method private a(Landroid/app/Application;Lcom/sonymobile/camera/faultdetector/a;)Ljava/lang/String;
    .registers 7

    const-string v0, "Decryptor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/sonymobile/camera/faultdetector/b;->a()Ljava/lang/String;

    move-result-object v2

    :try_start_b
    invoke-direct {p0, p1}, Lcom/sonymobile/camera/faultdetector/b;->a(Landroid/app/Application;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_f} :catch_75
    .catch Ljava/lang/SecurityException; {:try_start_b .. :try_end_f} :catch_72

    :try_start_f
    invoke-virtual {p2, p0, v2}, Lcom/sonymobile/camera/faultdetector/a;->a(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    if-nez p1, :cond_21

    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1a
    .catchall {:try_start_f .. :try_end_1a} :catchall_64

    :cond_1a
    if-eqz p0, :cond_1f

    :try_start_1c
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1f} :catch_75
    .catch Ljava/lang/SecurityException; {:try_start_1c .. :try_end_1f} :catch_72

    :cond_1f
    const/4 p0, 0x0

    return-object p0

    :cond_21
    :try_start_21
    new-instance p2, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p2, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_2b} :catch_47
    .catchall {:try_start_21 .. :try_end_2b} :catchall_45

    :goto_2b
    :try_start_2b
    invoke-virtual {p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_35

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_34
    .catchall {:try_start_2b .. :try_end_34} :catchall_39

    goto :goto_2b

    :cond_35
    :try_start_35
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_47
    .catchall {:try_start_35 .. :try_end_38} :catchall_45

    goto :goto_4c

    :catchall_39
    move-exception v2

    :try_start_3a
    throw v2
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_3b

    :catchall_3b
    move-exception v3

    :try_start_3c
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_40

    goto :goto_44

    :catchall_40
    move-exception p2

    :try_start_41
    invoke-virtual {v2, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_44
    throw v3
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_45} :catch_47
    .catchall {:try_start_41 .. :try_end_45} :catchall_45

    :catchall_45
    move-exception p2

    goto :goto_57

    :catch_47
    :try_start_47
    const-string p2, "Failed to read encrypt key."

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c
    .catchall {:try_start_47 .. :try_end_4c} :catchall_45

    :goto_4c
    if-eqz p1, :cond_51

    :try_start_4e
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_51
    .catchall {:try_start_4e .. :try_end_51} :catchall_64

    :cond_51
    if-eqz p0, :cond_7a

    :try_start_53
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_56} :catch_75
    .catch Ljava/lang/SecurityException; {:try_start_53 .. :try_end_56} :catch_72

    goto :goto_7a

    :goto_57
    :try_start_57
    throw p2
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_58

    :catchall_58
    move-exception v2

    if-eqz p1, :cond_63

    :try_start_5b
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5e
    .catchall {:try_start_5b .. :try_end_5e} :catchall_5f

    goto :goto_63

    :catchall_5f
    move-exception p1

    :try_start_60
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_63
    :goto_63
    throw v2
    :try_end_64
    .catchall {:try_start_60 .. :try_end_64} :catchall_64

    :catchall_64
    move-exception p1

    :try_start_65
    throw p1
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_66

    :catchall_66
    move-exception p2

    if-eqz p0, :cond_71

    :try_start_69
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_6c
    .catchall {:try_start_69 .. :try_end_6c} :catchall_6d

    goto :goto_71

    :catchall_6d
    move-exception p0

    :try_start_6e
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_71
    :goto_71
    throw p2
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_72} :catch_75
    .catch Ljava/lang/SecurityException; {:try_start_6e .. :try_end_72} :catch_72

    :catch_72
    const-string p0, "No permission to decrypt."

    goto :goto_77

    :catch_75
    const-string p0, "Failed to get encrypt key."

    :goto_77
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7a
    :goto_7a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string p0, ""

    if-nez p1, :cond_5

    return-object p0

    :cond_5
    :try_start_5
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    :goto_1c
    array-length v2, p1

    if-ge v1, v2, :cond_27

    aget-byte v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :cond_27
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_2b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_2b} :catch_2b

    :catch_2b
    return-object p0
.end method

.method private static a([B)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a([B[B[B)Ljava/lang/String;
    .registers 4

    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/sonymobile/securedatamanager/SecureDataManager;->getSecureData([B[B[B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/sonymobile/camera/faultdetector/b;->a([B)Ljava/lang/String;

    move-result-object p0
    :try_end_8
    .catch Lcom/sonymobile/securedatamanager/SecureDataManagerException; {:try_start_0 .. :try_end_8} :catch_9
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_8} :catch_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Failed to get secure key."

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Decryptor"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean p0, Lcom/sonymobile/camera/faultdetector/b;->d:Z

    if-nez p0, :cond_28

    const/4 p0, 0x0

    return-object p0

    :cond_28
    new-instance p0, Lcom/sonymobile/camera/faultdetector/GetSecureDataException;

    invoke-direct {p0, p2}, Lcom/sonymobile/camera/faultdetector/GetSecureDataException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic a([S)[B
    .registers 1

    invoke-static {p0}, Lcom/sonymobile/camera/faultdetector/b;->b([S)[B

    move-result-object p0

    return-object p0
.end method

.method private static b([S)[B
    .registers 4

    array-length v0, p0

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_4
    array-length v2, p0

    if-ge v1, v2, :cond_f

    aget-short v2, p0, v1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_f
    return-object v0
.end method


# virtual methods
.method a(Landroid/app/Application;I)Ljava/io/InputStream;
    .registers 5

    new-instance v0, Lcom/sonymobile/camera/faultdetector/a;

    invoke-direct {v0}, Lcom/sonymobile/camera/faultdetector/a;-><init>()V

    invoke-virtual {p1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p2

    invoke-direct {p0, p1, v0}, Lcom/sonymobile/camera/faultdetector/b;->a(Landroid/app/Application;Lcom/sonymobile/camera/faultdetector/a;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p2, p0}, Lcom/sonymobile/camera/faultdetector/a;->a(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method
