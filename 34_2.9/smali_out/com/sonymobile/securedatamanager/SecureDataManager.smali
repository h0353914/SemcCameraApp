.class public Lcom/sonymobile/securedatamanager/SecureDataManager;
.super Ljava/lang/Object;


# static fields
.field public static final PERMISSION_SECUREDATAMANAGER:Ljava/lang/String; = "com.sonymobile.permission.SECURE_DATA_MANAGER"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getSecureData([B[B[B)[B
    .registers 3

    const-class p0, Lcom/sonymobile/securedatamanager/SecureDataManager;

    monitor-enter p0

    :try_start_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Not an implementation"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_b

    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method
