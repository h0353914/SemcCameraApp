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


# instance fields
.field private b:Lcom/sonymobile/camera/faultdetector/b$a;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/app/Application;)Ljava/io/InputStream;
    .registers 3

    invoke-virtual {p1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object v0, p0, Lcom/sonymobile/camera/faultdetector/b;->b:Lcom/sonymobile/camera/faultdetector/b$a;

    invoke-virtual {v0}, Lcom/sonymobile/camera/faultdetector/b$a;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method private a(Landroid/app/Application;Lcom/sonymobile/camera/faultdetector/a;)Ljava/lang/String;
    .registers 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_5
    invoke-direct {p0, p1}, Lcom/sonymobile/camera/faultdetector/b;->a(Landroid/app/Application;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_9} :catch_97
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_9} :catch_92

    const/4 v1, 0x0

    :try_start_a
    invoke-direct {p0}, Lcom/sonymobile/camera/faultdetector/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, p1, v2}, Lcom/sonymobile/camera/faultdetector/a;->a(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p2

    if-nez p2, :cond_1f

    if-eqz p2, :cond_19

    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_19} :catch_7e
    .catchall {:try_start_a .. :try_end_19} :catchall_7c

    :cond_19
    if-eqz p1, :cond_1e

    :try_start_1b
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1e} :catch_97
    .catch Ljava/lang/SecurityException; {:try_start_1b .. :try_end_1e} :catch_92

    :cond_1e
    return-object v1

    :cond_1f
    :try_start_1f
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_29} :catch_54
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_29} :catch_52
    .catchall {:try_start_1f .. :try_end_29} :catchall_4f

    :goto_29
    :try_start_29
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_33

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_32} :catch_3a
    .catchall {:try_start_29 .. :try_end_32} :catchall_37

    goto :goto_29

    :cond_33
    :try_start_33
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_36} :catch_54
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_36} :catch_52
    .catchall {:try_start_33 .. :try_end_36} :catchall_4f

    goto :goto_5b

    :catchall_37
    move-exception v3

    move-object v4, v1

    goto :goto_40

    :catch_3a
    move-exception v3

    :try_start_3b
    throw v3
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3c

    :catchall_3c
    move-exception v4

    move-object v5, v4

    move-object v4, v3

    move-object v3, v5

    :goto_40
    if-eqz v4, :cond_4b

    :try_start_42
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_45} :catch_46
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_45} :catch_54
    .catchall {:try_start_42 .. :try_end_45} :catchall_4f

    goto :goto_4e

    :catch_46
    move-exception v2

    :try_start_47
    invoke-virtual {v4, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4e

    :cond_4b
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    :goto_4e
    throw v3
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4f} :catch_54
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_4f} :catch_52
    .catchall {:try_start_47 .. :try_end_4f} :catchall_4f

    :catchall_4f
    move-exception v2

    move-object v3, v1

    goto :goto_6b

    :catch_52
    move-exception v2

    goto :goto_66

    :catch_54
    :try_start_54
    const-string v2, "Decryptor"

    const-string v3, "Failed to read encrypt key."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_54 .. :try_end_5b} :catch_52
    .catchall {:try_start_54 .. :try_end_5b} :catchall_4f

    :goto_5b
    if-eqz p2, :cond_60

    :try_start_5d
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_60
    .catch Ljava/lang/Throwable; {:try_start_5d .. :try_end_60} :catch_7e
    .catchall {:try_start_5d .. :try_end_60} :catchall_7c

    :cond_60
    if-eqz p1, :cond_9e

    :try_start_62
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_65} :catch_97
    .catch Ljava/lang/SecurityException; {:try_start_62 .. :try_end_65} :catch_92

    goto :goto_9e

    :goto_66
    :try_start_66
    throw v2
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_67

    :catchall_67
    move-exception v3

    move-object v5, v3

    move-object v3, v2

    move-object v2, v5

    :goto_6b
    if-eqz p2, :cond_7b

    if-eqz v3, :cond_78

    :try_start_6f
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_72
    .catch Ljava/lang/Throwable; {:try_start_6f .. :try_end_72} :catch_73
    .catchall {:try_start_6f .. :try_end_72} :catchall_7c

    goto :goto_7b

    :catch_73
    move-exception p2

    :try_start_74
    invoke-virtual {v3, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_7b

    :cond_78
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    :cond_7b
    :goto_7b
    throw v2
    :try_end_7c
    .catch Ljava/lang/Throwable; {:try_start_74 .. :try_end_7c} :catch_7e
    .catchall {:try_start_74 .. :try_end_7c} :catchall_7c

    :catchall_7c
    move-exception p2

    goto :goto_81

    :catch_7e
    move-exception p2

    move-object v1, p2

    :try_start_80
    throw v1
    :try_end_81
    .catchall {:try_start_80 .. :try_end_81} :catchall_7c

    :goto_81
    if-eqz p1, :cond_91

    if-eqz v1, :cond_8e

    :try_start_85
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_88
    .catch Ljava/lang/Throwable; {:try_start_85 .. :try_end_88} :catch_89
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_88} :catch_97
    .catch Ljava/lang/SecurityException; {:try_start_85 .. :try_end_88} :catch_92

    goto :goto_91

    :catch_89
    move-exception p1

    :try_start_8a
    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_91

    :cond_8e
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_91
    :goto_91
    throw p2
    :try_end_92
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_92} :catch_97
    .catch Ljava/lang/SecurityException; {:try_start_8a .. :try_end_92} :catch_92

    :catch_92
    const-string p1, "Decryptor"

    const-string p2, "No permission to decrypt."

    goto :goto_9b

    :catch_97
    const-string p1, "Decryptor"

    const-string p2, "Failed to get encrypt key."

    :goto_9b
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9e
    :goto_9e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static a([B)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a([B[B)Ljava/lang/String;
    .registers 3

    :try_start_0
    invoke-static {p1, p2}, Lcom/sonymobile/credentialmanager/CredentialManager;->getCredential([B[B)[B

    move-result-object p1

    invoke-static {p1}, Lcom/sonymobile/camera/faultdetector/b;->a([B)Ljava/lang/String;

    move-result-object p1
    :try_end_8
    .catch Lcom/sonymobile/credentialmanager/CredentialManagerException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p1

    :catch_9
    const-string p1, "Decryptor"

    const-string p2, "Failed to get secure key."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic a([S)[B
    .registers 1

    invoke-static {p0}, Lcom/sonymobile/camera/faultdetector/b;->b([S)[B

    move-result-object p0

    return-object p0
.end method

.method private b()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/sonymobile/camera/faultdetector/b;->b:Lcom/sonymobile/camera/faultdetector/b$a;

    invoke-virtual {v0}, Lcom/sonymobile/camera/faultdetector/b$a;->b()[B

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/camera/faultdetector/b;->b:Lcom/sonymobile/camera/faultdetector/b$a;

    invoke-virtual {v1}, Lcom/sonymobile/camera/faultdetector/b$a;->c()[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sonymobile/camera/faultdetector/b;->a([B[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
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

    iget-object v0, p0, Lcom/sonymobile/camera/faultdetector/b;->b:Lcom/sonymobile/camera/faultdetector/b$a;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return-object p1

    :cond_6
    new-instance v0, Lcom/sonymobile/camera/faultdetector/a;

    invoke-direct {v0}, Lcom/sonymobile/camera/faultdetector/a;-><init>()V

    invoke-virtual {p1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p2

    invoke-direct {p0, p1, v0}, Lcom/sonymobile/camera/faultdetector/b;->a(Landroid/app/Application;Lcom/sonymobile/camera/faultdetector/a;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lcom/sonymobile/camera/faultdetector/a;->a(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method a()Z
    .registers 3

    invoke-static {}, Lcom/sonymobile/devicesecurity/DeviceSecurity;->getSecurityConfig()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_1a

    const/4 v0, 0x0

    return v0

    :pswitch_a
    new-instance v0, Lcom/sonymobile/camera/faultdetector/b$c;

    invoke-direct {v0, v1}, Lcom/sonymobile/camera/faultdetector/b$c;-><init>(Lcom/sonymobile/camera/faultdetector/b$1;)V

    goto :goto_15

    :pswitch_10
    new-instance v0, Lcom/sonymobile/camera/faultdetector/b$b;

    invoke-direct {v0, v1}, Lcom/sonymobile/camera/faultdetector/b$b;-><init>(Lcom/sonymobile/camera/faultdetector/b$1;)V

    :goto_15
    iput-object v0, p0, Lcom/sonymobile/camera/faultdetector/b;->b:Lcom/sonymobile/camera/faultdetector/b$a;

    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_10
        :pswitch_a
    .end packed-switch
.end method
